package org.telegram.p043ui.Components.voip;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.view.View;
import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.voip.VoIpCoverView */
/* loaded from: classes6.dex */
public class VoIpCoverView extends View {
    private final boolean allowAnimations;
    private final VoIPBackgroundProvider backgroundProvider;
    private final Rect bgRect;
    private int connectedDiffX;
    private int diffX1;
    private int diffX2;
    private int diffX3;
    private int diffX4;
    private int diffX5;
    private int diffY1;
    private int diffY2;
    private int diffY3;
    private int diffY4;
    private int diffY5;
    private boolean isConnected;
    private boolean isEmojiExpanded;
    private boolean isPaused;
    private ValueAnimator positionAnimator;
    private final Paint saveLayerPaint;
    private VoipCoverEmoji[] voipCoverEmojiLeft;
    private VoipCoverEmoji[] voipCoverEmojiRight;

    public VoIpCoverView(Context context, TLRPC$User tLRPC$User, VoIPBackgroundProvider voIPBackgroundProvider) {
        super(context);
        Paint paint = new Paint(1);
        this.saveLayerPaint = paint;
        this.bgRect = new Rect();
        boolean isEnabled = LiteMode.isEnabled(512);
        this.allowAnimations = isEnabled;
        this.backgroundProvider = voIPBackgroundProvider;
        if (isEnabled) {
            this.voipCoverEmojiLeft = new VoipCoverEmoji[]{new VoipCoverEmoji(tLRPC$User, this, AndroidUtilities.m107dp(32)), new VoipCoverEmoji(tLRPC$User, this, AndroidUtilities.m107dp(28)), new VoipCoverEmoji(tLRPC$User, this, AndroidUtilities.m107dp(35)), new VoipCoverEmoji(tLRPC$User, this, AndroidUtilities.m107dp(28)), new VoipCoverEmoji(tLRPC$User, this, AndroidUtilities.m107dp(26))};
            this.voipCoverEmojiRight = new VoipCoverEmoji[]{new VoipCoverEmoji(tLRPC$User, this, AndroidUtilities.m107dp(32)), new VoipCoverEmoji(tLRPC$User, this, AndroidUtilities.m107dp(28)), new VoipCoverEmoji(tLRPC$User, this, AndroidUtilities.m107dp(35)), new VoipCoverEmoji(tLRPC$User, this, AndroidUtilities.m107dp(28)), new VoipCoverEmoji(tLRPC$User, this, AndroidUtilities.m107dp(26))};
            voIPBackgroundProvider.attach(this);
            setLayerType(2, null);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        }
    }

    public void onConnected() {
        if (this.allowAnimations && !this.isConnected) {
            this.isConnected = true;
            int m107dp = AndroidUtilities.m107dp(12);
            this.connectedDiffX = m107dp;
            ValueAnimator ofInt = ValueAnimator.ofInt(0, m107dp);
            this.positionAnimator = ofInt;
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoIpCoverView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    VoIpCoverView.this.lambda$onConnected$0(valueAnimator);
                }
            });
            this.positionAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            this.positionAnimator.setDuration(200L);
            this.positionAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnected$0(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.diffX1 = intValue;
        this.diffX2 = intValue;
        this.diffX3 = intValue;
        this.diffX4 = intValue;
        this.diffX5 = intValue;
        invalidate();
    }

    public void onEmojiExpanded(boolean z) {
        if (this.allowAnimations && z != this.isEmojiExpanded) {
            this.isEmojiExpanded = z;
            ValueAnimator ofFloat = z ? ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f) : ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
            this.positionAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoIpCoverView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    VoIpCoverView.this.lambda$onEmojiExpanded$1(valueAnimator);
                }
            });
            this.positionAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.positionAnimator.setDuration(200L);
            this.positionAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEmojiExpanded$1(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.diffX1 = AndroidUtilities.lerp(this.connectedDiffX, AndroidUtilities.m107dp(56), floatValue);
        this.diffX2 = AndroidUtilities.lerp(this.connectedDiffX, AndroidUtilities.m107dp(36), floatValue);
        this.diffX3 = AndroidUtilities.lerp(this.connectedDiffX, AndroidUtilities.m107dp(60), floatValue);
        this.diffX4 = AndroidUtilities.lerp(this.connectedDiffX, AndroidUtilities.m107dp(36), floatValue);
        this.diffX5 = AndroidUtilities.lerp(this.connectedDiffX, AndroidUtilities.m107dp(64), floatValue);
        this.diffY1 = AndroidUtilities.lerp(0, AndroidUtilities.m107dp(50), floatValue);
        this.diffY2 = AndroidUtilities.lerp(0, AndroidUtilities.m107dp(20), floatValue);
        this.diffY3 = AndroidUtilities.lerp(0, 0, floatValue);
        this.diffY4 = AndroidUtilities.lerp(0, AndroidUtilities.m107dp(-20), floatValue);
        this.diffY5 = AndroidUtilities.lerp(0, AndroidUtilities.m107dp(-40), floatValue);
        invalidate();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.allowAnimations) {
            for (VoipCoverEmoji voipCoverEmoji : this.voipCoverEmojiLeft) {
                voipCoverEmoji.onLayout(getMeasuredWidth(), getMeasuredHeight());
            }
            for (VoipCoverEmoji voipCoverEmoji2 : this.voipCoverEmojiRight) {
                voipCoverEmoji2.onLayout(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.allowAnimations && !this.isPaused) {
            this.bgRect.set(0, 0, getWidth(), getHeight());
            this.backgroundProvider.setDarkTranslation(getX(), getY());
            int measuredWidth = getMeasuredWidth() / 2;
            this.voipCoverEmojiLeft[0].setPosition((measuredWidth - AndroidUtilities.m107dp(120)) - this.diffX1, AndroidUtilities.m107dp(120) - this.diffY1);
            this.voipCoverEmojiLeft[1].setPosition((measuredWidth - AndroidUtilities.m107dp(180)) - this.diffX2, AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION) - this.diffY2);
            this.voipCoverEmojiLeft[2].setPosition((measuredWidth - AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION)) - this.diffX3, AndroidUtilities.m107dp(185) - this.diffY3);
            this.voipCoverEmojiLeft[3].setPosition((measuredWidth - AndroidUtilities.m107dp(176)) - this.diffX4, AndroidUtilities.m107dp((int) PsExtractor.VIDEO_STREAM_MASK) - this.diffY4);
            this.voipCoverEmojiLeft[4].setPosition((measuredWidth - AndroidUtilities.m107dp((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS)) - this.diffX5, AndroidUtilities.m107dp(265) - this.diffY5);
            for (VoipCoverEmoji voipCoverEmoji : this.voipCoverEmojiLeft) {
                voipCoverEmoji.onDraw(canvas);
            }
            this.voipCoverEmojiRight[0].setPosition(AndroidUtilities.m107dp(50) + measuredWidth + this.diffX1, AndroidUtilities.m107dp(120) - this.diffY1);
            this.voipCoverEmojiRight[1].setPosition(AndroidUtilities.m107dp(110) + measuredWidth + this.diffX2, AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION) - this.diffY2);
            this.voipCoverEmojiRight[2].setPosition(AndroidUtilities.m107dp(80) + measuredWidth + this.diffX3, AndroidUtilities.m107dp(185) - this.diffY3);
            this.voipCoverEmojiRight[3].setPosition(AndroidUtilities.m107dp(106) + measuredWidth + this.diffX4, AndroidUtilities.m107dp((int) PsExtractor.VIDEO_STREAM_MASK) - this.diffY4);
            this.voipCoverEmojiRight[4].setPosition(measuredWidth + AndroidUtilities.m107dp(60) + this.diffX5, AndroidUtilities.m107dp(265) - this.diffY5);
            for (VoipCoverEmoji voipCoverEmoji2 : this.voipCoverEmojiRight) {
                voipCoverEmoji2.onDraw(canvas);
            }
            int alpha = this.backgroundProvider.getDarkPaint().getAlpha();
            this.saveLayerPaint.setAlpha(255);
            canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.saveLayerPaint, 31);
            this.backgroundProvider.getDarkPaint().setAlpha(255);
            canvas.drawRect(this.bgRect, this.backgroundProvider.getDarkPaint());
            this.backgroundProvider.getDarkPaint().setAlpha(alpha);
            if (this.backgroundProvider.isReveal()) {
                int alpha2 = this.backgroundProvider.getRevealDarkPaint().getAlpha();
                this.backgroundProvider.getRevealDarkPaint().setAlpha(255);
                canvas.drawRect(this.bgRect, this.backgroundProvider.getRevealDarkPaint());
                this.backgroundProvider.getRevealDarkPaint().setAlpha(alpha2);
            }
            canvas.restore();
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.allowAnimations) {
            for (VoipCoverEmoji voipCoverEmoji : this.voipCoverEmojiLeft) {
                voipCoverEmoji.onAttachedToWindow();
            }
            for (VoipCoverEmoji voipCoverEmoji2 : this.voipCoverEmojiRight) {
                voipCoverEmoji2.onAttachedToWindow();
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.allowAnimations) {
            for (VoipCoverEmoji voipCoverEmoji : this.voipCoverEmojiLeft) {
                voipCoverEmoji.onDetachedFromWindow();
            }
            for (VoipCoverEmoji voipCoverEmoji2 : this.voipCoverEmojiRight) {
                voipCoverEmoji2.onDetachedFromWindow();
            }
            ValueAnimator valueAnimator = this.positionAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }
    }

    public void setState(boolean z) {
        this.isPaused = z;
        invalidate();
    }
}
