package org.telegram.p043ui.Components.voip;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.C0483C;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LiteMode;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.voip.ImageWithWavesView;
/* renamed from: org.telegram.ui.Components.voip.ImageWithWavesView */
/* loaded from: classes6.dex */
public class ImageWithWavesView extends FrameLayout {
    private final boolean allowAnimations;
    private AnimatorSet animatorSet;
    private final AvatarWavesDrawable avatarWavesDrawable;
    private final BackupImageView backupImageView;
    private boolean isConnectedCalled;
    private boolean isMuted;

    public ImageWithWavesView(Context context) {
        super(context);
        AvatarWavesDrawable avatarWavesDrawable = new AvatarWavesDrawable(AndroidUtilities.m107dp(104), AndroidUtilities.m107dp(111), AndroidUtilities.m107dp(12), 8);
        this.avatarWavesDrawable = avatarWavesDrawable;
        avatarWavesDrawable.setAmplitude(3.0d);
        avatarWavesDrawable.setShowWaves(true, this);
        BackupImageView backupImageView = new BackupImageView(context);
        this.backupImageView = backupImageView;
        addView(backupImageView, LayoutHelper.createFrame((int) TsExtractor.TS_STREAM_TYPE_E_AC3, (int) TsExtractor.TS_STREAM_TYPE_E_AC3, 17));
        setWillNotDraw(false);
        AnimatorSet animatorSet = new AnimatorSet();
        this.animatorSet = animatorSet;
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, View.SCALE_X, 1.0f, 1.05f, 1.0f, 1.05f, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_Y, 1.0f, 1.05f, 1.0f, 1.05f, 1.0f));
        this.animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.animatorSet.setDuration(C0483C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        boolean isEnabled = LiteMode.isEnabled(512);
        this.allowAnimations = isEnabled;
        if (isEnabled) {
            this.animatorSet.start();
        }
        setClipChildren(false);
    }

    public void setImage(ImageLocation imageLocation, String str, Drawable drawable, Object obj) {
        this.backupImageView.setImage(imageLocation, str, drawable, obj);
    }

    public void setRoundRadius(int i) {
        this.backupImageView.setRoundRadius(i);
    }

    public void setShowWaves(boolean z) {
        this.avatarWavesDrawable.setShowWaves(z, this);
    }

    public void setMute(boolean z, boolean z2) {
        if (this.isMuted != z) {
            this.isMuted = z;
            if (z) {
                this.avatarWavesDrawable.setAmplitude(3.0d);
            }
            this.avatarWavesDrawable.setMuteToStatic(z, z2, this);
        }
    }

    public void setAmplitude(double d) {
        if (this.isMuted) {
            return;
        }
        if (d > 1.5d) {
            this.avatarWavesDrawable.setAmplitude(d);
        } else {
            this.avatarWavesDrawable.setAmplitude(0.0d);
        }
    }

    public void onConnected() {
        if (this.isConnectedCalled) {
            return;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.isConnectedCalled = true;
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.animatorSet = animatorSet2;
        animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.SCALE_X, getScaleX(), 1.05f, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_Y, getScaleY(), 1.05f, 1.0f));
        this.animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.animatorSet.setDuration(400L);
        this.animatorSet.start();
    }

    public void onNeedRating() {
        setShowWaves(false);
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.animatorSet = animatorSet2;
        animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, getAlpha(), 1.0f), ObjectAnimator.ofFloat(this, View.TRANSLATION_Y, getTranslationY(), -AndroidUtilities.m107dp(24)), ObjectAnimator.ofFloat(this, View.SCALE_X, getScaleX(), 0.9f, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_Y, getScaleY(), 0.9f, 1.0f));
        this.animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.animatorSet.setDuration(300L);
        this.animatorSet.setStartDelay(250L);
        this.animatorSet.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.allowAnimations) {
            this.avatarWavesDrawable.update();
            this.avatarWavesDrawable.draw(canvas, getWidth() / 2, getHeight() / 2, this);
        }
        super.onDraw(canvas);
    }

    /* renamed from: org.telegram.ui.Components.voip.ImageWithWavesView$AvatarWavesDrawable */
    /* loaded from: classes6.dex */
    public static class AvatarWavesDrawable {
        float amplitude;
        float animateAmplitudeDiff;
        float animateToAmplitude;
        private ValueAnimator animator;
        private final VoipBlobDrawable blobDrawable;
        private final VoipBlobDrawable blobDrawable2;
        private int muteToStaticInvalidationCount;
        boolean showWaves;
        float wavesEnter = BitmapDescriptorFactory.HUE_RED;
        public boolean muteToStatic = false;
        public float muteToStaticProgress = 1.0f;

        public AvatarWavesDrawable(int i, int i2, int i3, int i4) {
            VoipBlobDrawable voipBlobDrawable = new VoipBlobDrawable(i4 - 1);
            this.blobDrawable = voipBlobDrawable;
            VoipBlobDrawable voipBlobDrawable2 = new VoipBlobDrawable(i4);
            this.blobDrawable2 = voipBlobDrawable2;
            voipBlobDrawable.minRadius = i;
            voipBlobDrawable.maxRadius = i2;
            voipBlobDrawable2.minRadius = i - i3;
            voipBlobDrawable2.maxRadius = i2 - i3;
            voipBlobDrawable.generateBlob();
            voipBlobDrawable2.generateBlob();
            voipBlobDrawable.paint.setColor(-1);
            voipBlobDrawable.paint.setAlpha(20);
            voipBlobDrawable2.paint.setColor(-1);
            voipBlobDrawable2.paint.setAlpha(36);
        }

        public void update() {
            float f = this.animateToAmplitude;
            float f2 = this.amplitude;
            if (f != f2) {
                float f3 = this.animateAmplitudeDiff;
                float f4 = f2 + (16.0f * f3);
                this.amplitude = f4;
                if (f3 > BitmapDescriptorFactory.HUE_RED) {
                    if (f4 > f) {
                        this.amplitude = f;
                    }
                } else if (f4 < f) {
                    this.amplitude = f;
                }
            }
            boolean z = this.showWaves;
            if (z) {
                float f5 = this.wavesEnter;
                if (f5 != 1.0f) {
                    float f6 = f5 + 0.045714285f;
                    this.wavesEnter = f6;
                    if (f6 > 1.0f) {
                        this.wavesEnter = 1.0f;
                        return;
                    }
                    return;
                }
            }
            if (z) {
                return;
            }
            float f7 = this.wavesEnter;
            if (f7 != BitmapDescriptorFactory.HUE_RED) {
                float f8 = f7 - 0.045714285f;
                this.wavesEnter = f8;
                if (f8 < BitmapDescriptorFactory.HUE_RED) {
                    this.wavesEnter = BitmapDescriptorFactory.HUE_RED;
                }
            }
        }

        public void draw(Canvas canvas, float f, float f2, View view) {
            float f3 = (this.amplitude * 0.4f) + 0.8f;
            if (this.showWaves || this.wavesEnter != BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                float interpolation = f3 * CubicBezierInterpolator.DEFAULT.getInterpolation(this.wavesEnter);
                canvas.scale(interpolation, interpolation, f, f2);
                this.blobDrawable.update(this.amplitude, 1.0f, this.muteToStaticProgress);
                VoipBlobDrawable voipBlobDrawable = this.blobDrawable;
                voipBlobDrawable.draw(f, f2, canvas, voipBlobDrawable.paint);
                this.blobDrawable2.update(this.amplitude, 1.0f, this.muteToStaticProgress);
                this.blobDrawable2.draw(f, f2, canvas, this.blobDrawable.paint);
                canvas.restore();
            }
            if (this.muteToStatic && this.muteToStaticInvalidationCount == 0) {
                return;
            }
            int i = this.muteToStaticInvalidationCount;
            if (i != 0) {
                this.muteToStaticInvalidationCount = i - 1;
            }
            if (this.wavesEnter != BitmapDescriptorFactory.HUE_RED) {
                view.invalidate();
            }
        }

        public void setShowWaves(boolean z, View view) {
            if (this.showWaves != z) {
                view.invalidate();
            }
            this.showWaves = z;
        }

        public void setAmplitude(double d) {
            float f = ((float) d) / 80.0f;
            boolean z = this.showWaves;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (!z) {
                f = 0.0f;
            }
            if (f > 1.0f) {
                f2 = 1.0f;
            } else if (f >= BitmapDescriptorFactory.HUE_RED) {
                f2 = f;
            }
            this.animateToAmplitude = f2;
            this.animateAmplitudeDiff = (f2 - this.amplitude) / 200.0f;
        }

        public void setMuteToStatic(boolean z, boolean z2, View view) {
            if (this.muteToStatic != z) {
                this.muteToStatic = z;
                ValueAnimator valueAnimator = this.animator;
                if (valueAnimator != null) {
                    valueAnimator.removeAllUpdateListeners();
                    this.animator.cancel();
                }
                if (z) {
                    this.animator = ValueAnimator.ofFloat(this.muteToStaticProgress, BitmapDescriptorFactory.HUE_RED);
                    this.muteToStaticInvalidationCount = (int) (2000.0f / AndroidUtilities.screenRefreshTime);
                } else {
                    this.muteToStaticInvalidationCount = 0;
                    this.animator = ValueAnimator.ofFloat(this.muteToStaticProgress, 1.0f);
                }
                this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.ImageWithWavesView$AvatarWavesDrawable$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        ImageWithWavesView.AvatarWavesDrawable.this.lambda$setMuteToStatic$0(valueAnimator2);
                    }
                });
                if (z2) {
                    this.animator.setDuration(150L);
                } else {
                    this.animator.setDuration(1000L);
                }
                this.animator.start();
                view.invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setMuteToStatic$0(ValueAnimator valueAnimator) {
            this.muteToStaticProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        }
    }
}
