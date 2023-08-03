package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.p043ui.Components.AnimationProperties;
/* renamed from: org.telegram.ui.Components.ZoomControlView */
/* loaded from: classes6.dex */
public class ZoomControlView extends View {
    public final Property<ZoomControlView, Float> ZOOM_PROPERTY;
    private float animatingToZoom;
    private AnimatorSet animatorSet;
    private ZoomControlViewDelegate delegate;
    public boolean enabledTouch;
    private Drawable filledProgressDrawable;
    private Drawable knobDrawable;
    private boolean knobPressed;
    private float knobStartX;
    private float knobStartY;
    private int minusCx;
    private int minusCy;
    private Drawable minusDrawable;
    private int plusCx;
    private int plusCy;
    private Drawable plusDrawable;
    private boolean pressed;
    private Drawable pressedKnobDrawable;
    private Drawable progressDrawable;
    private int progressEndX;
    private int progressEndY;
    private int progressStartX;
    private int progressStartY;
    private float zoom;

    /* renamed from: org.telegram.ui.Components.ZoomControlView$ZoomControlViewDelegate */
    /* loaded from: classes6.dex */
    public interface ZoomControlViewDelegate {
        void didSetZoom(float f);
    }

    public ZoomControlView(Context context) {
        super(context);
        this.enabledTouch = true;
        this.ZOOM_PROPERTY = new AnimationProperties.FloatProperty<ZoomControlView>("clipProgress") { // from class: org.telegram.ui.Components.ZoomControlView.1
            @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
            public void setValue(ZoomControlView zoomControlView, float f) {
                ZoomControlView.this.zoom = f;
                if (ZoomControlView.this.delegate != null) {
                    ZoomControlView.this.delegate.didSetZoom(ZoomControlView.this.zoom);
                }
                ZoomControlView.this.invalidate();
            }

            @Override // android.util.Property
            public Float get(ZoomControlView zoomControlView) {
                return Float.valueOf(ZoomControlView.this.zoom);
            }
        };
        this.minusDrawable = context.getResources().getDrawable(C3419R.C3421drawable.zoom_minus);
        this.plusDrawable = context.getResources().getDrawable(C3419R.C3421drawable.zoom_plus);
        this.progressDrawable = context.getResources().getDrawable(C3419R.C3421drawable.zoom_slide);
        this.filledProgressDrawable = context.getResources().getDrawable(C3419R.C3421drawable.zoom_slide_a);
        this.knobDrawable = context.getResources().getDrawable(C3419R.C3421drawable.zoom_round);
        this.pressedKnobDrawable = context.getResources().getDrawable(C3419R.C3421drawable.zoom_round_b);
    }

    public float getZoom() {
        if (this.animatorSet != null) {
            return this.animatingToZoom;
        }
        return this.zoom;
    }

    public void setZoom(float f, boolean z) {
        ZoomControlViewDelegate zoomControlViewDelegate;
        if (f == this.zoom) {
            return;
        }
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        this.zoom = f;
        if (z && (zoomControlViewDelegate = this.delegate) != null) {
            zoomControlViewDelegate.didSetZoom(f);
        }
        invalidate();
    }

    public void setDelegate(ZoomControlViewDelegate zoomControlViewDelegate) {
        this.delegate = zoomControlViewDelegate;
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01e4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ZoomControlView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean isTouch() {
        return this.pressed || this.knobPressed;
    }

    private boolean animateToZoom(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
            return false;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.animatingToZoom = f;
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.animatorSet = animatorSet2;
        animatorSet2.playTogether(ObjectAnimator.ofFloat(this, this.ZOOM_PROPERTY, f));
        this.animatorSet.setDuration(180L);
        this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ZoomControlView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ZoomControlView.this.animatorSet = null;
            }
        });
        this.animatorSet.start();
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int measuredWidth = getMeasuredWidth() / 2;
        int measuredHeight = getMeasuredHeight() / 2;
        boolean z = getMeasuredWidth() > getMeasuredHeight();
        if (z) {
            this.minusCx = AndroidUtilities.m72dp(41);
            this.minusCy = measuredHeight;
            this.plusCx = getMeasuredWidth() - AndroidUtilities.m72dp(41);
            this.plusCy = measuredHeight;
            this.progressStartX = this.minusCx + AndroidUtilities.m72dp(18);
            this.progressStartY = measuredHeight;
            this.progressEndX = this.plusCx - AndroidUtilities.m72dp(18);
            this.progressEndY = measuredHeight;
        } else {
            this.minusCx = measuredWidth;
            this.minusCy = AndroidUtilities.m72dp(41);
            this.plusCx = measuredWidth;
            this.plusCy = getMeasuredHeight() - AndroidUtilities.m72dp(41);
            this.progressStartX = measuredWidth;
            this.progressStartY = this.minusCy + AndroidUtilities.m72dp(18);
            this.progressEndX = measuredWidth;
            this.progressEndY = this.plusCy - AndroidUtilities.m72dp(18);
        }
        this.minusDrawable.setBounds(this.minusCx - AndroidUtilities.m72dp(7), this.minusCy - AndroidUtilities.m72dp(7), this.minusCx + AndroidUtilities.m72dp(7), this.minusCy + AndroidUtilities.m72dp(7));
        this.minusDrawable.draw(canvas);
        this.plusDrawable.setBounds(this.plusCx - AndroidUtilities.m72dp(7), this.plusCy - AndroidUtilities.m72dp(7), this.plusCx + AndroidUtilities.m72dp(7), this.plusCy + AndroidUtilities.m72dp(7));
        this.plusDrawable.draw(canvas);
        int i = this.progressEndX;
        int i2 = this.progressStartX;
        int i3 = this.progressEndY;
        int i4 = this.progressStartY;
        float f = this.zoom;
        int i5 = (int) (i2 + ((i - i2) * f));
        int i6 = (int) (i4 + ((i3 - i4) * f));
        if (z) {
            this.progressDrawable.setBounds(i2, i4 - AndroidUtilities.m72dp(3), this.progressEndX, this.progressStartY + AndroidUtilities.m72dp(3));
            this.filledProgressDrawable.setBounds(this.progressStartX, this.progressStartY - AndroidUtilities.m72dp(3), i5, this.progressStartY + AndroidUtilities.m72dp(3));
        } else {
            this.progressDrawable.setBounds(i4, 0, i3, AndroidUtilities.m72dp(6));
            this.filledProgressDrawable.setBounds(this.progressStartY, 0, i6, AndroidUtilities.m72dp(6));
            canvas.save();
            canvas.rotate(90.0f);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (-this.progressStartX) - AndroidUtilities.m72dp(3));
        }
        this.progressDrawable.draw(canvas);
        this.filledProgressDrawable.draw(canvas);
        if (!z) {
            canvas.restore();
        }
        Drawable drawable = this.knobPressed ? this.pressedKnobDrawable : this.knobDrawable;
        int intrinsicWidth = drawable.getIntrinsicWidth() / 2;
        drawable.setBounds(i5 - intrinsicWidth, i6 - intrinsicWidth, i5 + intrinsicWidth, i6 + intrinsicWidth);
        drawable.draw(canvas);
    }
}
