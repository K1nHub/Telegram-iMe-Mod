package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
/* renamed from: org.telegram.ui.Components.BlurredFrameLayout */
/* loaded from: classes6.dex */
public class BlurredFrameLayout extends FrameLayout {
    public int backgroundColor;
    public int backgroundPaddingBottom;
    public int backgroundPaddingTop;
    protected Paint backgroundPaint;
    public boolean drawBlur;
    public boolean isTopView;
    private final SizeNotifierFrameLayout sizeNotifierFrameLayout;

    public BlurredFrameLayout(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout) {
        super(context);
        this.backgroundColor = 0;
        this.isTopView = true;
        this.drawBlur = true;
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (SharedConfig.chatBlurEnabled() && this.sizeNotifierFrameLayout != null && this.drawBlur && this.backgroundColor != 0) {
            if (this.backgroundPaint == null) {
                this.backgroundPaint = new Paint();
            }
            this.backgroundPaint.setColor(this.backgroundColor);
            AndroidUtilities.rectTmp2.set(0, this.backgroundPaddingTop, getMeasuredWidth(), getMeasuredHeight() - this.backgroundPaddingBottom);
            float f = 0.0f;
            View view = this;
            while (true) {
                SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierFrameLayout;
                if (view != sizeNotifierFrameLayout) {
                    f += view.getY();
                    ViewParent parent = view.getParent();
                    if (parent instanceof View) {
                        view = (View) parent;
                    } else {
                        super.dispatchDraw(canvas);
                        return;
                    }
                } else {
                    sizeNotifierFrameLayout.drawBlurRect(canvas, f, AndroidUtilities.rectTmp2, this.backgroundPaint, this.isTopView);
                    break;
                }
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (SharedConfig.chatBlurEnabled() && this.sizeNotifierFrameLayout != null) {
            this.backgroundColor = i;
        } else {
            super.setBackgroundColor(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        SizeNotifierFrameLayout sizeNotifierFrameLayout;
        if (SharedConfig.chatBlurEnabled() && (sizeNotifierFrameLayout = this.sizeNotifierFrameLayout) != null) {
            sizeNotifierFrameLayout.blurBehindViews.add(this);
        }
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierFrameLayout;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.blurBehindViews.remove(this);
        }
        super.onDetachedFromWindow();
    }
}
