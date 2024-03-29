package org.telegram.p043ui.Components.voip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.voip.VoipCoverEmoji */
/* loaded from: classes6.dex */
public class VoipCoverEmoji {
    private final boolean allowAnimations;
    private int diffX;
    private ValueAnimator diffXAnimator;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emoji;
    private int fromRandomX;
    private int fromRandomY;
    private boolean isShown;
    private final View parent;
    private int posX;
    private int posY;
    private ValueAnimator positionAnimator;
    private int randomX;
    private int randomY;
    private final int size;
    private int toRandomX;
    private int toRandomY;
    private int width;
    private int alpha = 0;
    private float scale = BitmapDescriptorFactory.HUE_RED;

    public VoipCoverEmoji(TLRPC$User tLRPC$User, final View view, int i) {
        this.parent = view;
        this.size = i;
        boolean isEnabled = LiteMode.isEnabled(512);
        this.allowAnimations = isEnabled;
        long profileEmojiId = UserObject.getProfileEmojiId(tLRPC$User);
        if (!isEnabled || profileEmojiId == 0) {
            return;
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(view, false, i, 13);
        this.emoji = swapAnimatedEmojiDrawable;
        swapAnimatedEmojiDrawable.set(profileEmojiId, false);
        this.emoji.setColor(-16777216);
        this.emoji.setAlpha(this.alpha);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.positionAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoipCoverEmoji$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                VoipCoverEmoji.this.lambda$new$0(view, valueAnimator);
            }
        });
        this.fromRandomX = this.toRandomX + AndroidUtilities.m107dp(12);
        this.fromRandomY = this.toRandomY + AndroidUtilities.m107dp(12);
        this.toRandomX = Utilities.random.nextInt(AndroidUtilities.m107dp(16)) + AndroidUtilities.m107dp(12);
        this.toRandomY = Utilities.random.nextInt(AndroidUtilities.m107dp(16)) + AndroidUtilities.m107dp(12);
        this.positionAnimator.setInterpolator(new LinearInterpolator());
        this.positionAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.VoipCoverEmoji.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator, boolean z) {
                VoipCoverEmoji voipCoverEmoji = VoipCoverEmoji.this;
                voipCoverEmoji.fromRandomX = voipCoverEmoji.toRandomX;
                VoipCoverEmoji voipCoverEmoji2 = VoipCoverEmoji.this;
                voipCoverEmoji2.fromRandomY = voipCoverEmoji2.toRandomY;
                VoipCoverEmoji.this.toRandomX = Utilities.random.nextInt(AndroidUtilities.m107dp(16)) + AndroidUtilities.m107dp(12);
                VoipCoverEmoji.this.toRandomY = Utilities.random.nextInt(AndroidUtilities.m107dp(16)) + AndroidUtilities.m107dp(12);
                if (VoipCoverEmoji.this.positionAnimator != null) {
                    VoipCoverEmoji.this.positionAnimator.start();
                }
            }
        });
        this.positionAnimator.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, ValueAnimator valueAnimator) {
        int i = this.fromRandomX;
        this.randomX = (int) (i + ((this.toRandomX - i) * ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        int i2 = this.fromRandomY;
        this.randomY = (int) (i2 + ((this.toRandomY - i2) * ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        view.invalidate();
    }

    private void show() {
        if (this.isShown) {
            return;
        }
        if (this.emoji.getDrawable() instanceof AnimatedEmojiDrawable) {
            AnimatedEmojiDrawable animatedEmojiDrawable = (AnimatedEmojiDrawable) this.emoji.getDrawable();
            if (animatedEmojiDrawable.getImageReceiver() == null || !animatedEmojiDrawable.getImageReceiver().hasImageLoaded()) {
                return;
            }
        }
        this.isShown = true;
        this.diffX = this.posX > getCenterX() ? AndroidUtilities.m107dp(12) : -AndroidUtilities.m107dp(12);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.setInterpolator(new CubicBezierInterpolator(0.34d, 1.36d, 0.64d, 1.0d));
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoipCoverEmoji$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                VoipCoverEmoji.this.lambda$show$2(r2, r3, valueAnimator);
            }
        });
        long j = 350;
        ofFloat.setDuration(j);
        long j2 = 180;
        ofFloat.setStartDelay(j2);
        ofFloat.start();
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 255, 255);
        ofInt.setInterpolator(CubicBezierInterpolator.DEFAULT);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoipCoverEmoji$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                VoipCoverEmoji.this.lambda$show$3(valueAnimator);
            }
        });
        ofInt.setStartDelay(j2);
        ofInt.setDuration(j);
        ofInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$2(int i, int i2, ValueAnimator valueAnimator) {
        this.scale = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.parent.invalidate();
        if (this.scale <= 1.0f || this.diffXAnimator != null) {
            return;
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(AndroidUtilities.m107dp(i), 0);
        this.diffXAnimator = ofInt;
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoipCoverEmoji$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                VoipCoverEmoji.this.lambda$show$1(valueAnimator2);
            }
        });
        this.diffXAnimator.setDuration(i2 - valueAnimator.getCurrentPlayTime());
        this.diffXAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$1(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        if (this.posX <= getCenterX()) {
            intValue = -intValue;
        }
        this.diffX = intValue;
        this.parent.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$3(ValueAnimator valueAnimator) {
        this.alpha = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.parent.invalidate();
    }

    private int getCenterX() {
        return this.width / 2;
    }

    public void onLayout(int i, int i2) {
        this.width = i;
        this.parent.invalidate();
    }

    public void setPosition(int i, int i2) {
        if (this.emoji == null) {
            return;
        }
        this.posX = i;
        this.posY = i2;
        this.parent.invalidate();
        show();
    }

    public void onDraw(Canvas canvas) {
        if (this.emoji == null) {
            return;
        }
        canvas.save();
        float f = this.scale;
        canvas.scale(f, f, this.width / 2.0f, AndroidUtilities.m107dp(300));
        canvas.translate(this.posX - this.diffX, this.posY);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        int i = this.randomX;
        int i2 = this.randomY;
        int i3 = this.size;
        swapAnimatedEmojiDrawable.setBounds(i, i2, i + i3, i3 + i2);
        this.emoji.setAlpha(this.alpha);
        this.emoji.draw(canvas);
        canvas.restore();
    }

    public void onAttachedToWindow() {
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (swapAnimatedEmojiDrawable == null) {
            return;
        }
        swapAnimatedEmojiDrawable.attach();
        ValueAnimator valueAnimator = this.positionAnimator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    public void onDetachedFromWindow() {
        if (this.emoji == null) {
            return;
        }
        ValueAnimator valueAnimator = this.positionAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.positionAnimator = null;
        }
        this.emoji.detach();
    }
}
