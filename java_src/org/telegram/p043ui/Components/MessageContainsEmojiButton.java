package org.telegram.p043ui.Components;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.tgnet.TLRPC$InputStickerSet;
/* renamed from: org.telegram.ui.Components.MessageContainsEmojiButton */
/* loaded from: classes6.dex */
public class MessageContainsEmojiButton extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    public boolean checkWidth;
    private int currentAccount;
    private AnimatedEmojiDrawable emojiDrawable;
    private Rect emojiDrawableBounds;
    private CharSequence endText;
    private TLRPC$InputStickerSet inputStickerSet;
    private int lastLineHeight;
    private int lastLineMargin;
    private int lastLineTop;
    private CharSequence lastMainTextText;
    private int lastMainTextWidth;
    private CharSequence lastSecondPartText;
    private int lastSecondPartTextWidth;
    private int lastWidth;
    private ValueAnimator loadAnimator;
    private float loadT;
    private Rect loadingBoundsFrom;
    private Rect loadingBoundsTo;
    private LoadingDrawable loadingDrawable;
    private boolean loadingDrawableBoundsSet;
    private CharSequence mainText;
    private StaticLayout mainTextLayout;
    private Theme.ResourcesProvider resourcesProvider;
    private CharSequence secondPartText;
    private StaticLayout secondPartTextLayout;
    private TextPaint textPaint;

    /* renamed from: org.telegram.ui.Components.MessageContainsEmojiButton$BoldAndAccent */
    /* loaded from: classes6.dex */
    private class BoldAndAccent extends CharacterStyle {
        private BoldAndAccent() {
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            int alpha = textPaint.getAlpha();
            textPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, MessageContainsEmojiButton.this.resourcesProvider));
            textPaint.setAlpha(alpha);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0107, code lost:
        r4 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MessageContainsEmojiButton(int r10, android.content.Context r11, org.telegram.p043ui.ActionBar.Theme.ResourcesProvider r12, java.util.ArrayList<org.telegram.tgnet.TLRPC$InputStickerSet> r13, int r14) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.MessageContainsEmojiButton.<init>(int, android.content.Context, org.telegram.ui.ActionBar.Theme$ResourcesProvider, java.util.ArrayList, int):void");
    }

    private int updateLayout(int i, boolean z) {
        StaticLayout staticLayout;
        float f;
        if (i <= 0) {
            return 0;
        }
        CharSequence charSequence = this.mainText;
        if (charSequence != this.lastMainTextText || this.lastMainTextWidth != i) {
            if (charSequence != null) {
                CharSequence charSequence2 = this.mainText;
                StaticLayout staticLayout2 = new StaticLayout(charSequence2, 0, charSequence2.length(), this.textPaint, Math.max(i, 0), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.mainTextLayout = staticLayout2;
                if (this.loadingDrawable != null && this.loadingBoundsTo == null) {
                    int lineCount = staticLayout2.getLineCount() - 1;
                    this.lastLineMargin = ((int) this.mainTextLayout.getPrimaryHorizontal(this.mainText.length())) + AndroidUtilities.m54dp(2);
                    this.lastLineTop = this.mainTextLayout.getLineTop(lineCount);
                    this.lastLineHeight = r1 - this.lastLineTop;
                    float min = Math.min(AndroidUtilities.m54dp(100), this.mainTextLayout.getWidth() - this.lastLineMargin);
                    if (this.loadingBoundsFrom == null) {
                        this.loadingBoundsFrom = new Rect();
                    }
                    Rect rect = this.loadingBoundsFrom;
                    int i2 = this.lastLineMargin;
                    rect.set(i2, this.lastLineTop, (int) (i2 + min), r1);
                    this.loadingDrawable.setBounds(this.loadingBoundsFrom);
                    this.loadingDrawableBoundsSet = true;
                }
            } else {
                this.mainTextLayout = null;
                this.loadingDrawableBoundsSet = false;
            }
            this.lastMainTextText = this.mainText;
            this.lastMainTextWidth = i;
        }
        CharSequence charSequence3 = this.secondPartText;
        if (charSequence3 != this.lastSecondPartText || this.lastSecondPartTextWidth != i) {
            if (charSequence3 != null) {
                CharSequence charSequence4 = this.secondPartText;
                this.secondPartTextLayout = new StaticLayout(charSequence4, 0, charSequence4.length(), this.textPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } else {
                this.secondPartTextLayout = null;
            }
            this.lastSecondPartText = this.secondPartText;
            this.lastSecondPartTextWidth = i;
        }
        StaticLayout staticLayout3 = this.mainTextLayout;
        int height = staticLayout3 != null ? staticLayout3.getHeight() : 0;
        if (this.secondPartTextLayout != null) {
            f = (staticLayout.getHeight() - this.lastLineHeight) * (z ? 1.0f : this.loadT);
        } else {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        return height + ((int) f);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        setPadding(AndroidUtilities.m54dp(13), AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(13), AndroidUtilities.m54dp(8));
        int size = View.MeasureSpec.getSize(i);
        if (this.checkWidth && (i3 = this.lastWidth) > 0) {
            size = Math.min(size, i3);
        }
        this.lastWidth = size;
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        if (paddingLeft < 0) {
            paddingLeft = 0;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(updateLayout(paddingLeft, false) + getPaddingTop() + getPaddingBottom(), 1073741824));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Rect rect;
        super.onDraw(canvas);
        if (this.mainTextLayout != null) {
            canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            this.textPaint.setAlpha(255);
            this.mainTextLayout.draw(canvas);
            LoadingDrawable loadingDrawable = this.loadingDrawable;
            if (loadingDrawable != null && this.loadingDrawableBoundsSet) {
                loadingDrawable.setAlpha((int) ((1.0f - this.loadT) * 255.0f));
                Rect rect2 = this.loadingBoundsFrom;
                if (rect2 != null && (rect = this.loadingBoundsTo) != null) {
                    float f = this.loadT;
                    Rect rect3 = AndroidUtilities.rectTmp2;
                    AndroidUtilities.lerp(rect2, rect, f, rect3);
                    this.loadingDrawable.setBounds(rect3);
                }
                this.loadingDrawable.draw(canvas);
                invalidate();
            }
            if (this.secondPartTextLayout != null) {
                canvas.save();
                canvas.translate(BitmapDescriptorFactory.HUE_RED, this.lastLineTop);
                this.textPaint.setAlpha((int) (this.loadT * 255.0f));
                this.secondPartTextLayout.draw(canvas);
                canvas.restore();
            }
            AnimatedEmojiDrawable animatedEmojiDrawable = this.emojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.setAlpha((int) (this.loadT * 255.0f));
                this.emojiDrawable.setBounds(this.emojiDrawableBounds);
                this.emojiDrawable.draw(canvas);
            }
            canvas.restore();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
        r1 = null;
     */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void didReceivedNotification(int r8, int r9, java.lang.Object... r10) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.MessageContainsEmojiButton.didReceivedNotification(int, int, java.lang.Object[]):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$0(boolean z, ValueAnimator valueAnimator) {
        this.loadT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
        if (z) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimatedEmojiDrawable animatedEmojiDrawable = this.emojiDrawable;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.removeView(this);
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.groupStickersDidLoad);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AnimatedEmojiDrawable animatedEmojiDrawable = this.emojiDrawable;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.addView(this);
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.groupStickersDidLoad);
    }
}