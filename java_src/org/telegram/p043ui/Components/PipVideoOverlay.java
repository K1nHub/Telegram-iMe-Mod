package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.math.MathUtils;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.exoplayer2.C0483C;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.MediaController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.GestureDetectorFixDoubleTap;
import org.telegram.p043ui.Components.PipVideoOverlay;
import org.telegram.p043ui.Components.SimpleFloatPropertyCompat;
import org.telegram.p043ui.Components.VideoForwardDrawable;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PhotoViewer;
/* renamed from: org.telegram.ui.Components.PipVideoOverlay */
/* loaded from: classes6.dex */
public class PipVideoOverlay {
    private static final FloatPropertyCompat<PipVideoOverlay> PIP_X_PROPERTY = new SimpleFloatPropertyCompat("pipX", new SimpleFloatPropertyCompat.Getter() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda11
        @Override // org.telegram.p043ui.Components.SimpleFloatPropertyCompat.Getter
        public final float get(Object obj) {
            float f;
            f = ((PipVideoOverlay) obj).pipX;
            return f;
        }
    }, new SimpleFloatPropertyCompat.Setter() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda13
        @Override // org.telegram.p043ui.Components.SimpleFloatPropertyCompat.Setter
        public final void set(Object obj, float f) {
            PipVideoOverlay.lambda$static$1((PipVideoOverlay) obj, f);
        }
    });
    private static final FloatPropertyCompat<PipVideoOverlay> PIP_Y_PROPERTY = new SimpleFloatPropertyCompat("pipY", new SimpleFloatPropertyCompat.Getter() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda10
        @Override // org.telegram.p043ui.Components.SimpleFloatPropertyCompat.Getter
        public final float get(Object obj) {
            float f;
            f = ((PipVideoOverlay) obj).pipY;
            return f;
        }
    }, new SimpleFloatPropertyCompat.Setter() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda12
        @Override // org.telegram.p043ui.Components.SimpleFloatPropertyCompat.Setter
        public final void set(Object obj, float f) {
            PipVideoOverlay.lambda$static$3((PipVideoOverlay) obj, f);
        }
    });
    private static PipVideoOverlay instance = new PipVideoOverlay();
    private Float aspectRatio;
    private float bufferProgress;
    private boolean canLongClick;
    private View consumingChild;
    private FrameLayout contentFrameLayout;
    private ViewGroup contentView;
    private ValueAnimator controlsAnimator;
    private FrameLayout controlsView;
    private GestureDetectorFixDoubleTap gestureDetector;
    private View innerView;
    private boolean isDismissing;
    private boolean isScrollDisallowed;
    private boolean isScrolling;
    private boolean isShowingControls;
    private boolean isVideoCompleted;
    private boolean isVisible;
    private boolean isWebView;
    private int mVideoHeight;
    private int mVideoWidth;
    private boolean onSideToDismiss;
    private EmbedBottomSheet parentSheet;
    private PhotoViewer photoViewer;
    private PhotoViewerWebView photoViewerWebView;
    private PipConfig pipConfig;
    private int pipHeight;
    private int pipWidth;
    private float pipX;
    private SpringAnimation pipXSpring;
    private float pipY;
    private SpringAnimation pipYSpring;
    private ImageView playPauseButton;
    private boolean postedDismissControls;
    private ScaleGestureDetector scaleGestureDetector;
    private float videoProgress;
    private VideoProgressView videoProgressView;
    private WindowManager.LayoutParams windowLayoutParams;
    private WindowManager windowManager;
    private float minScaleFactor = 0.75f;
    private float maxScaleFactor = 1.4f;
    private float scaleFactor = 1.0f;
    private VideoForwardDrawable videoForwardDrawable = new VideoForwardDrawable(false);
    private Runnable progressRunnable = new Runnable() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda8
        @Override // java.lang.Runnable
        public final void run() {
            PipVideoOverlay.this.lambda$new$4();
        }
    };
    private float[] longClickStartPoint = new float[2];
    private Runnable longClickCallback = new Runnable() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda6
        @Override // java.lang.Runnable
        public final void run() {
            PipVideoOverlay.this.onLongClick();
        }
    };
    private Runnable dismissControlsCallback = new Runnable() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda9
        @Override // java.lang.Runnable
        public final void run() {
            PipVideoOverlay.this.lambda$new$5();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$1(PipVideoOverlay pipVideoOverlay, float f) {
        WindowManager.LayoutParams layoutParams = pipVideoOverlay.windowLayoutParams;
        pipVideoOverlay.pipX = f;
        layoutParams.x = (int) f;
        try {
            pipVideoOverlay.windowManager.updateViewLayout(pipVideoOverlay.contentView, layoutParams);
        } catch (IllegalArgumentException unused) {
            pipVideoOverlay.pipXSpring.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$3(PipVideoOverlay pipVideoOverlay, float f) {
        WindowManager.LayoutParams layoutParams = pipVideoOverlay.windowLayoutParams;
        pipVideoOverlay.pipY = f;
        layoutParams.y = (int) f;
        try {
            pipVideoOverlay.windowManager.updateViewLayout(pipVideoOverlay.contentView, layoutParams);
        } catch (IllegalArgumentException unused) {
            pipVideoOverlay.pipYSpring.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4() {
        PhotoViewer photoViewer = this.photoViewer;
        if (photoViewer == null) {
            return;
        }
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null) {
            this.videoProgress = photoViewerWebView.getCurrentPosition() / this.photoViewerWebView.getVideoDuration();
            this.bufferProgress = this.photoViewerWebView.getBufferedPosition();
        } else {
            VideoPlayer videoPlayer = photoViewer.getVideoPlayer();
            if (videoPlayer == null) {
                return;
            }
            float duration = (float) getDuration();
            this.videoProgress = ((float) videoPlayer.getCurrentPosition()) / duration;
            this.bufferProgress = ((float) videoPlayer.getBufferedPosition()) / duration;
        }
        this.videoProgressView.invalidate();
        AndroidUtilities.runOnUIThread(this.progressRunnable, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5() {
        PhotoViewer photoViewer = this.photoViewer;
        if (photoViewer != null && photoViewer.getVideoPlayerRewinder().rewindCount > 0) {
            AndroidUtilities.runOnUIThread(this.dismissControlsCallback, 1500L);
            return;
        }
        this.isShowingControls = false;
        toggleControls(false);
        this.postedDismissControls = false;
    }

    public static void onRewindCanceled() {
        instance.onRewindCanceledInternal();
    }

    private void onRewindCanceledInternal() {
        this.videoForwardDrawable.setShowing(false);
    }

    public static void onUpdateRewindProgressUi(long j, float f, boolean z) {
        instance.onUpdateRewindProgressUiInternal(j, f, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpdateRewindProgressUiInternal(long j, float f, boolean z) {
        this.videoForwardDrawable.setTime(0L);
        if (z) {
            this.videoProgress = f;
            VideoProgressView videoProgressView = this.videoProgressView;
            if (videoProgressView != null) {
                videoProgressView.invalidate();
            }
            FrameLayout frameLayout = this.controlsView;
            if (frameLayout != null) {
                frameLayout.invalidate();
            }
        }
    }

    public static void onRewindStart(boolean z) {
        instance.onRewindStartInternal(z);
    }

    private void onRewindStartInternal(boolean z) {
        this.videoForwardDrawable.setOneShootAnimation(false);
        this.videoForwardDrawable.setLeftSide(!z);
        this.videoForwardDrawable.setShowing(true);
        VideoProgressView videoProgressView = this.videoProgressView;
        if (videoProgressView != null) {
            videoProgressView.invalidate();
        }
        FrameLayout frameLayout = this.controlsView;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getCurrentPosition() {
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null) {
            return photoViewerWebView.getCurrentPosition();
        }
        VideoPlayer videoPlayer = this.photoViewer.getVideoPlayer();
        if (videoPlayer == null) {
            return 0L;
        }
        return videoPlayer.getCurrentPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekTo(long j) {
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null) {
            photoViewerWebView.seekTo(j);
            return;
        }
        VideoPlayer videoPlayer = this.photoViewer.getVideoPlayer();
        if (videoPlayer == null) {
            return;
        }
        videoPlayer.seekTo(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getDuration() {
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null) {
            return photoViewerWebView.getVideoDuration();
        }
        VideoPlayer videoPlayer = this.photoViewer.getVideoPlayer();
        if (videoPlayer == null) {
            return 0L;
        }
        return videoPlayer.getDuration();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onLongClick() {
        PhotoViewer photoViewer = this.photoViewer;
        if (photoViewer != null) {
            if ((photoViewer.getVideoPlayer() == null && this.photoViewerWebView == null) || this.isDismissing || this.isVideoCompleted || this.isScrolling || this.scaleGestureDetector.isInProgress() || !this.canLongClick) {
                return;
            }
            VideoPlayer videoPlayer = this.photoViewer.getVideoPlayer();
            boolean z = this.longClickStartPoint[0] >= (((float) getSuggestedWidth()) * this.scaleFactor) * 0.5f;
            long currentPosition = getCurrentPosition();
            long duration = getDuration();
            if (currentPosition == C0483C.TIME_UNSET || duration < C0483C.DEFAULT_SEEK_FORWARD_INCREMENT_MS) {
                return;
            }
            if (this.photoViewerWebView != null) {
                this.photoViewer.getVideoPlayerRewinder().startRewind(this.photoViewerWebView, z, this.photoViewer.getCurrentVideoSpeed());
            } else {
                this.photoViewer.getVideoPlayerRewinder().startRewind(videoPlayer, z, this.photoViewer.getCurrentVideoSpeed());
            }
            if (this.isShowingControls) {
                return;
            }
            this.isShowingControls = true;
            toggleControls(true);
            if (this.postedDismissControls) {
                return;
            }
            AndroidUtilities.runOnUIThread(this.dismissControlsCallback, 1500L);
            this.postedDismissControls = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PipConfig getPipConfig() {
        if (this.pipConfig == null) {
            Point point = AndroidUtilities.displaySize;
            this.pipConfig = new PipConfig(point.x, point.y);
        }
        return this.pipConfig;
    }

    public static boolean isVisible() {
        return instance.isVisible;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSuggestedWidth() {
        return getSuggestedWidth(getRatio());
    }

    private static int getSuggestedWidth(float f) {
        float min;
        float f2;
        if (f >= 1.0f) {
            Point point = AndroidUtilities.displaySize;
            min = Math.min(point.x, point.y);
            f2 = 0.35f;
        } else {
            Point point2 = AndroidUtilities.displaySize;
            min = Math.min(point2.x, point2.y);
            f2 = 0.6f;
        }
        return (int) (min * f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSuggestedHeight() {
        return getSuggestedHeight(getRatio());
    }

    private static int getSuggestedHeight(float f) {
        return (int) (getSuggestedWidth(f) * f);
    }

    private float getRatio() {
        if (this.aspectRatio == null) {
            this.aspectRatio = Float.valueOf(this.mVideoHeight / this.mVideoWidth);
            Point point = AndroidUtilities.displaySize;
            this.maxScaleFactor = (Math.min(point.x, point.y) - AndroidUtilities.m108dp(32.0f)) / getSuggestedWidth();
            this.videoForwardDrawable.setPlayScaleFactor(this.aspectRatio.floatValue() < 1.0f ? 0.6f : 0.45f);
        }
        return this.aspectRatio.floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleControls(boolean z) {
        float[] fArr = new float[2];
        float f = BitmapDescriptorFactory.HUE_RED;
        fArr[0] = z ? 0.0f : 1.0f;
        if (z) {
            f = 1.0f;
        }
        fArr[1] = f;
        ValueAnimator duration = ValueAnimator.ofFloat(fArr).setDuration(200L);
        this.controlsAnimator = duration;
        duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.controlsAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PipVideoOverlay.this.lambda$toggleControls$6(valueAnimator);
            }
        });
        this.controlsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PipVideoOverlay.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PipVideoOverlay.this.controlsAnimator = null;
            }
        });
        this.controlsAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleControls$6(ValueAnimator valueAnimator) {
        this.controlsView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public static void dismissAndDestroy() {
        PipVideoOverlay pipVideoOverlay = instance;
        EmbedBottomSheet embedBottomSheet = pipVideoOverlay.parentSheet;
        if (embedBottomSheet != null) {
            embedBottomSheet.destroy();
        } else {
            PhotoViewer photoViewer = pipVideoOverlay.photoViewer;
            if (photoViewer != null) {
                photoViewer.destroyPhotoViewer();
                MediaController.getInstance().tryResumePausedAudio();
            }
        }
        dismiss();
    }

    public static void dismiss() {
        dismiss(false);
    }

    public static void dismiss(boolean z) {
        instance.dismissInternal(z, false);
    }

    public static void dismiss(boolean z, boolean z2) {
        instance.dismissInternal(z, z2);
    }

    private void dismissInternal(boolean z, boolean z2) {
        if (this.isDismissing) {
            return;
        }
        this.isDismissing = true;
        ValueAnimator valueAnimator = this.controlsAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (this.postedDismissControls) {
            AndroidUtilities.cancelRunOnUIThread(this.dismissControlsCallback);
            this.postedDismissControls = false;
        }
        SpringAnimation springAnimation = this.pipXSpring;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.pipYSpring.cancel();
        }
        if (z || this.contentView == null) {
            if (z2) {
                onDismissedInternal();
                return;
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        PipVideoOverlay.this.onDismissedInternal();
                    }
                }, 100L);
                return;
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(250L);
        animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.contentView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.contentView, View.SCALE_X, 0.1f), ObjectAnimator.ofFloat(this.contentView, View.SCALE_Y, 0.1f));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PipVideoOverlay.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PipVideoOverlay.this.onDismissedInternal();
            }
        });
        if (this.contentView != null) {
            animatorSet.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDismissedInternal() {
        try {
            ViewGroup viewGroup = this.contentView;
            if (viewGroup != null && viewGroup.getParent() != null) {
                this.windowManager.removeViewImmediate(this.contentView);
            }
        } catch (Exception unused) {
        }
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null) {
            photoViewerWebView.showControls();
        }
        this.videoProgressView = null;
        this.innerView = null;
        this.photoViewer = null;
        this.photoViewerWebView = null;
        this.parentSheet = null;
        this.consumingChild = null;
        this.isScrolling = false;
        this.isVisible = false;
        this.isDismissing = false;
        this.canLongClick = false;
        cancelRewind();
        AndroidUtilities.cancelRunOnUIThread(this.longClickCallback);
    }

    public static View getInnerView() {
        return instance.innerView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelRewind() {
        PhotoViewer photoViewer = this.photoViewer;
        if (photoViewer != null && photoViewer.getVideoPlayerRewinder().rewindCount > 0) {
            this.photoViewer.getVideoPlayerRewinder().cancelRewind();
        }
    }

    public static void updatePlayButton() {
        instance.updatePlayButtonInternal();
    }

    private void updatePlayButtonInternal() {
        boolean isPlaying;
        PhotoViewer photoViewer = this.photoViewer;
        if (photoViewer == null || this.playPauseButton == null) {
            return;
        }
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null) {
            isPlaying = photoViewerWebView.isPlaying();
        } else {
            VideoPlayer videoPlayer = photoViewer.getVideoPlayer();
            if (videoPlayer == null) {
                return;
            }
            isPlaying = videoPlayer.isPlaying();
        }
        AndroidUtilities.cancelRunOnUIThread(this.progressRunnable);
        if (!isPlaying) {
            if (this.isVideoCompleted) {
                this.playPauseButton.setImageResource(C3632R.C3634drawable.pip_replay_large);
                return;
            } else {
                this.playPauseButton.setImageResource(C3632R.C3634drawable.pip_play_large);
                return;
            }
        }
        this.playPauseButton.setImageResource(C3632R.C3634drawable.pip_pause_large);
        AndroidUtilities.runOnUIThread(this.progressRunnable, 500L);
    }

    public static void onVideoCompleted() {
        instance.onVideoCompletedInternal();
    }

    private void onVideoCompletedInternal() {
        VideoProgressView videoProgressView;
        if (!this.isVisible || (videoProgressView = this.videoProgressView) == null) {
            return;
        }
        this.isVideoCompleted = true;
        this.videoProgress = BitmapDescriptorFactory.HUE_RED;
        this.bufferProgress = BitmapDescriptorFactory.HUE_RED;
        if (videoProgressView != null) {
            videoProgressView.invalidate();
        }
        updatePlayButtonInternal();
        AndroidUtilities.cancelRunOnUIThread(this.progressRunnable);
        if (this.isShowingControls) {
            return;
        }
        toggleControls(true);
        AndroidUtilities.cancelRunOnUIThread(this.dismissControlsCallback);
    }

    public static void setBufferedProgress(float f) {
        PipVideoOverlay pipVideoOverlay = instance;
        pipVideoOverlay.bufferProgress = f;
        VideoProgressView videoProgressView = pipVideoOverlay.videoProgressView;
        if (videoProgressView != null) {
            videoProgressView.invalidate();
        }
    }

    public static void setParentSheet(EmbedBottomSheet embedBottomSheet) {
        instance.parentSheet = embedBottomSheet;
    }

    public static void setPhotoViewer(PhotoViewer photoViewer) {
        PipVideoOverlay pipVideoOverlay = instance;
        pipVideoOverlay.photoViewer = photoViewer;
        pipVideoOverlay.updatePlayButtonInternal();
    }

    public static Rect getPipRect(boolean z, float f) {
        Rect rect = new Rect();
        float f2 = 1.0f / f;
        PipVideoOverlay pipVideoOverlay = instance;
        if (pipVideoOverlay.isVisible && !z) {
            rect.f1942x = pipVideoOverlay.pipX;
            rect.f1943y = pipVideoOverlay.pipY + AndroidUtilities.statusBarHeight;
            PipVideoOverlay pipVideoOverlay2 = instance;
            rect.width = pipVideoOverlay2.pipWidth;
            rect.height = pipVideoOverlay2.pipHeight;
            return rect;
        }
        float pipX = pipVideoOverlay.getPipConfig().getPipX();
        float pipY = instance.getPipConfig().getPipY();
        float scaleFactor = instance.getPipConfig().getScaleFactor();
        rect.width = getSuggestedWidth(f2) * scaleFactor;
        rect.height = getSuggestedHeight(f2) * scaleFactor;
        if (pipX != -1.0f) {
            float f3 = rect.width;
            float f4 = pipX + (f3 / 2.0f);
            int i = AndroidUtilities.displaySize.x;
            rect.f1942x = f4 >= ((float) i) / 2.0f ? (i - f3) - AndroidUtilities.m108dp(16.0f) : AndroidUtilities.m108dp(16.0f);
        } else {
            rect.f1942x = (AndroidUtilities.displaySize.x - rect.width) - AndroidUtilities.m108dp(16.0f);
        }
        if (pipY != -1.0f) {
            rect.f1943y = MathUtils.clamp(pipY, AndroidUtilities.m108dp(16.0f), (AndroidUtilities.displaySize.y - AndroidUtilities.m108dp(16.0f)) - rect.height) + AndroidUtilities.statusBarHeight;
        } else {
            rect.f1943y = AndroidUtilities.m108dp(16.0f) + AndroidUtilities.statusBarHeight;
        }
        return rect;
    }

    public static boolean show(boolean z, Activity activity, View view, int i, int i2) {
        return show(z, activity, view, i, i2, false);
    }

    public static boolean show(boolean z, Activity activity, View view, int i, int i2, boolean z2) {
        return show(z, activity, null, view, i, i2, z2);
    }

    public static boolean show(boolean z, Activity activity, PhotoViewerWebView photoViewerWebView, View view, int i, int i2, boolean z2) {
        return instance.showInternal(z, activity, view, photoViewerWebView, i, i2, z2);
    }

    private boolean showInternal(final boolean z, Activity activity, View view, PhotoViewerWebView photoViewerWebView, int i, int i2, boolean z2) {
        int i3;
        PhotoViewerWebView photoViewerWebView2;
        if (this.isVisible) {
            return false;
        }
        this.isVisible = true;
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
        this.aspectRatio = null;
        if (photoViewerWebView != null && photoViewerWebView.isControllable()) {
            this.photoViewerWebView = photoViewerWebView;
            photoViewerWebView.hideControls();
        } else {
            this.photoViewerWebView = null;
        }
        float pipX = getPipConfig().getPipX();
        float pipY = getPipConfig().getPipY();
        this.scaleFactor = getPipConfig().getScaleFactor();
        this.pipWidth = (int) (getSuggestedWidth() * this.scaleFactor);
        this.pipHeight = (int) (getSuggestedHeight() * this.scaleFactor);
        this.isShowingControls = false;
        this.pipXSpring = new SpringAnimation(this, PIP_X_PROPERTY).setSpring(new SpringForce().setDampingRatio(0.75f).setStiffness(650.0f)).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda4
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f, float f2) {
                PipVideoOverlay.this.lambda$showInternal$7(dynamicAnimation, z3, f, f2);
            }
        });
        this.pipYSpring = new SpringAnimation(this, PIP_Y_PROPERTY).setSpring(new SpringForce().setDampingRatio(0.75f).setStiffness(650.0f)).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda5
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f, float f2) {
                PipVideoOverlay.this.lambda$showInternal$8(dynamicAnimation, z3, f, f2);
            }
        });
        Context context = ApplicationLoader.applicationContext;
        int scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        ScaleGestureDetector scaleGestureDetector = new ScaleGestureDetector(context, new ScaleGestureDetector$OnScaleGestureListenerC53763());
        this.scaleGestureDetector = scaleGestureDetector;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 19) {
            scaleGestureDetector.setQuickScaleEnabled(false);
        }
        if (i4 >= 23) {
            this.scaleGestureDetector.setStylusScaleEnabled(false);
        }
        this.gestureDetector = new GestureDetectorFixDoubleTap(context, new C53784(scaledTouchSlop));
        this.contentFrameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.PipVideoOverlay.5
            private Path path = new Path();

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0 || actionMasked == 5) {
                    if (motionEvent.getPointerCount() == 1) {
                        PipVideoOverlay.this.canLongClick = true;
                        PipVideoOverlay.this.longClickStartPoint = new float[]{motionEvent.getX(), motionEvent.getY()};
                        AndroidUtilities.runOnUIThread(PipVideoOverlay.this.longClickCallback, 500L);
                    } else {
                        PipVideoOverlay.this.canLongClick = false;
                        PipVideoOverlay.this.cancelRewind();
                        AndroidUtilities.cancelRunOnUIThread(PipVideoOverlay.this.longClickCallback);
                    }
                }
                if (actionMasked == 1 || actionMasked == 3 || actionMasked == 6) {
                    PipVideoOverlay.this.canLongClick = false;
                    PipVideoOverlay.this.cancelRewind();
                    AndroidUtilities.cancelRunOnUIThread(PipVideoOverlay.this.longClickCallback);
                }
                if (PipVideoOverlay.this.consumingChild != null) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation(PipVideoOverlay.this.consumingChild.getX(), PipVideoOverlay.this.consumingChild.getY());
                    boolean dispatchTouchEvent = PipVideoOverlay.this.consumingChild.dispatchTouchEvent(motionEvent);
                    obtain.recycle();
                    if (actionMasked == 1 || actionMasked == 3 || actionMasked == 6) {
                        PipVideoOverlay.this.consumingChild = null;
                    }
                    if (dispatchTouchEvent) {
                        return true;
                    }
                }
                MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                obtain2.offsetLocation(motionEvent.getRawX() - motionEvent.getX(), motionEvent.getRawY() - motionEvent.getY());
                boolean onTouchEvent = PipVideoOverlay.this.scaleGestureDetector.onTouchEvent(obtain2);
                obtain2.recycle();
                boolean z3 = !PipVideoOverlay.this.scaleGestureDetector.isInProgress() && PipVideoOverlay.this.gestureDetector.onTouchEvent(motionEvent);
                if (actionMasked == 1 || actionMasked == 3 || actionMasked == 6) {
                    PipVideoOverlay.this.isScrolling = false;
                    PipVideoOverlay.this.isScrollDisallowed = false;
                    if (PipVideoOverlay.this.onSideToDismiss) {
                        PipVideoOverlay.this.onSideToDismiss = false;
                        PipVideoOverlay.dismissAndDestroy();
                    } else {
                        if (!PipVideoOverlay.this.pipXSpring.isRunning()) {
                            SpringForce spring = PipVideoOverlay.this.pipXSpring.setStartValue(PipVideoOverlay.this.pipX).getSpring();
                            float f = PipVideoOverlay.this.pipX + (PipVideoOverlay.this.pipWidth / 2.0f);
                            int i5 = AndroidUtilities.displaySize.x;
                            spring.setFinalPosition(f >= ((float) i5) / 2.0f ? (i5 - PipVideoOverlay.this.pipWidth) - AndroidUtilities.m108dp(16.0f) : AndroidUtilities.m108dp(16.0f));
                            PipVideoOverlay.this.pipXSpring.start();
                        }
                        if (!PipVideoOverlay.this.pipYSpring.isRunning()) {
                            PipVideoOverlay.this.pipYSpring.setStartValue(PipVideoOverlay.this.pipY).getSpring().setFinalPosition(MathUtils.clamp(PipVideoOverlay.this.pipY, AndroidUtilities.m108dp(16.0f), (AndroidUtilities.displaySize.y - PipVideoOverlay.this.pipHeight) - AndroidUtilities.m108dp(16.0f)));
                            PipVideoOverlay.this.pipYSpring.start();
                        }
                    }
                }
                return onTouchEvent || z3;
            }

            @Override // android.view.View
            protected void onConfigurationChanged(Configuration configuration) {
                AndroidUtilities.checkDisplaySize(getContext(), configuration);
                PipVideoOverlay.this.pipConfig = null;
                if (PipVideoOverlay.this.pipWidth == PipVideoOverlay.this.getSuggestedWidth() * PipVideoOverlay.this.scaleFactor && PipVideoOverlay.this.pipHeight == PipVideoOverlay.this.getSuggestedHeight() * PipVideoOverlay.this.scaleFactor) {
                    return;
                }
                WindowManager.LayoutParams layoutParams = PipVideoOverlay.this.windowLayoutParams;
                PipVideoOverlay pipVideoOverlay = PipVideoOverlay.this;
                layoutParams.width = pipVideoOverlay.pipWidth = (int) (pipVideoOverlay.getSuggestedWidth() * PipVideoOverlay.this.scaleFactor);
                WindowManager.LayoutParams layoutParams2 = PipVideoOverlay.this.windowLayoutParams;
                PipVideoOverlay pipVideoOverlay2 = PipVideoOverlay.this;
                layoutParams2.height = pipVideoOverlay2.pipHeight = (int) (pipVideoOverlay2.getSuggestedHeight() * PipVideoOverlay.this.scaleFactor);
                PipVideoOverlay.this.windowManager.updateViewLayout(PipVideoOverlay.this.contentView, PipVideoOverlay.this.windowLayoutParams);
                SpringForce spring = PipVideoOverlay.this.pipXSpring.setStartValue(PipVideoOverlay.this.pipX).getSpring();
                float suggestedWidth = PipVideoOverlay.this.pipX + ((PipVideoOverlay.this.getSuggestedWidth() * PipVideoOverlay.this.scaleFactor) / 2.0f);
                int i5 = AndroidUtilities.displaySize.x;
                spring.setFinalPosition(suggestedWidth >= ((float) i5) / 2.0f ? (i5 - (PipVideoOverlay.this.getSuggestedWidth() * PipVideoOverlay.this.scaleFactor)) - AndroidUtilities.m108dp(16.0f) : AndroidUtilities.m108dp(16.0f));
                PipVideoOverlay.this.pipXSpring.start();
                PipVideoOverlay.this.pipYSpring.setStartValue(PipVideoOverlay.this.pipY).getSpring().setFinalPosition(MathUtils.clamp(PipVideoOverlay.this.pipY, AndroidUtilities.m108dp(16.0f), (AndroidUtilities.displaySize.y - (PipVideoOverlay.this.getSuggestedHeight() * PipVideoOverlay.this.scaleFactor)) - AndroidUtilities.m108dp(16.0f)));
                PipVideoOverlay.this.pipYSpring.start();
            }

            @Override // android.view.View
            public void draw(Canvas canvas) {
                if (Build.VERSION.SDK_INT >= 21) {
                    super.draw(canvas);
                    return;
                }
                canvas.save();
                canvas.clipPath(this.path);
                super.draw(canvas);
                canvas.restore();
            }

            @Override // android.view.View
            protected void onSizeChanged(int i5, int i6, int i7, int i8) {
                super.onSizeChanged(i5, i6, i7, i8);
                this.path.rewind();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i5, i6);
                this.path.addRoundRect(rectF, AndroidUtilities.m108dp(10.0f), AndroidUtilities.m108dp(10.0f), Path.Direction.CW);
            }
        };
        PipVideoViewGroup pipVideoViewGroup = new PipVideoViewGroup(context) { // from class: org.telegram.ui.Components.PipVideoOverlay.6
            @Override // android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z3, int i5, int i6, int i7, int i8) {
                PipVideoOverlay.this.contentFrameLayout.layout(0, 0, PipVideoOverlay.this.pipWidth, PipVideoOverlay.this.pipHeight);
            }

            @Override // android.view.View
            protected void onMeasure(int i5, int i6) {
                setMeasuredDimension(View.MeasureSpec.getSize(i5), View.MeasureSpec.getSize(i6));
                PipVideoOverlay.this.contentFrameLayout.measure(View.MeasureSpec.makeMeasureSpec(PipVideoOverlay.this.pipWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(PipVideoOverlay.this.pipHeight, 1073741824));
            }

            @Override // android.view.View
            public void draw(Canvas canvas) {
                canvas.save();
                canvas.scale(PipVideoOverlay.this.pipWidth / PipVideoOverlay.this.contentFrameLayout.getWidth(), PipVideoOverlay.this.pipHeight / PipVideoOverlay.this.contentFrameLayout.getHeight());
                super.draw(canvas);
                canvas.restore();
            }
        };
        this.contentView = pipVideoViewGroup;
        pipVideoViewGroup.addView(this.contentFrameLayout, LayoutHelper.createFrame(-1, -1));
        if (i4 >= 21) {
            this.contentFrameLayout.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.Components.PipVideoOverlay.7
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    outline.setRoundRect(0, 0, view2.getMeasuredWidth(), view2.getMeasuredHeight(), AndroidUtilities.m108dp(10.0f));
                }
            });
            this.contentFrameLayout.setClipToOutline(true);
        }
        this.contentFrameLayout.setBackgroundColor(Theme.getColor(Theme.key_voipgroup_actionBar));
        this.innerView = view;
        if (view.getParent() != null) {
            ((ViewGroup) this.innerView.getParent()).removeView(this.innerView);
        }
        this.contentFrameLayout.addView(this.innerView, LayoutHelper.createFrame(-1, -1));
        this.videoForwardDrawable.setDelegate(new VideoForwardDrawable.VideoForwardDrawableDelegate() { // from class: org.telegram.ui.Components.PipVideoOverlay.8
            @Override // org.telegram.p043ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
            public void onAnimationEnd() {
            }

            @Override // org.telegram.p043ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
            public void invalidate() {
                PipVideoOverlay.this.controlsView.invalidate();
            }
        });
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.PipVideoOverlay.9
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                if (PipVideoOverlay.this.videoForwardDrawable.isAnimating()) {
                    PipVideoOverlay.this.videoForwardDrawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                    PipVideoOverlay.this.videoForwardDrawable.draw(canvas);
                }
            }
        };
        this.controlsView = frameLayout;
        frameLayout.setWillNotDraw(false);
        this.controlsView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        View view2 = new View(context);
        view2.setBackgroundColor(1275068416);
        this.controlsView.addView(view2, LayoutHelper.createFrame(-1, -1));
        int m107dp = AndroidUtilities.m107dp(8);
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C3632R.C3634drawable.pip_video_close);
        int i5 = Theme.key_voipgroup_actionBarItems;
        imageView.setColorFilter(Theme.getColor(i5), PorterDuff.Mode.MULTIPLY);
        int i6 = Theme.key_listSelector;
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(i6)));
        imageView.setPadding(m107dp, m107dp, m107dp, m107dp);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                PipVideoOverlay.dismissAndDestroy();
            }
        });
        this.controlsView.addView(imageView, LayoutHelper.createFrame(38, 38, 5, 0, 4, 4, 0));
        ImageView imageView2 = new ImageView(context);
        imageView2.setImageResource(C3632R.C3634drawable.pip_video_expand);
        imageView2.setColorFilter(Theme.getColor(i5), PorterDuff.Mode.MULTIPLY);
        imageView2.setBackground(Theme.createSelectorDrawable(Theme.getColor(i6)));
        imageView2.setPadding(m107dp, m107dp, m107dp, m107dp);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                PipVideoOverlay.this.lambda$showInternal$10(z, view3);
            }
        });
        this.controlsView.addView(imageView2, LayoutHelper.createFrame(38, 38, 5, 0, 4, 48, 0));
        ImageView imageView3 = new ImageView(context);
        this.playPauseButton = imageView3;
        imageView3.setColorFilter(Theme.getColor(i5), PorterDuff.Mode.MULTIPLY);
        this.playPauseButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(i6)));
        this.playPauseButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                PipVideoOverlay.this.lambda$showInternal$11(view3);
            }
        });
        View view3 = this.innerView;
        boolean z3 = (view3 instanceof WebView) || (view3 instanceof PhotoViewerWebView);
        this.isWebView = z3;
        this.playPauseButton.setVisibility((!z3 || ((photoViewerWebView2 = this.photoViewerWebView) != null && photoViewerWebView2.isControllable())) ? 0 : 8);
        this.controlsView.addView(this.playPauseButton, LayoutHelper.createFrame(38, 38, 17));
        VideoProgressView videoProgressView = new VideoProgressView(context);
        this.videoProgressView = videoProgressView;
        this.controlsView.addView(videoProgressView, LayoutHelper.createFrame(-1, -1));
        this.contentFrameLayout.addView(this.controlsView, LayoutHelper.createFrame(-1, -1));
        this.windowManager = (WindowManager) (z ? activity : ApplicationLoader.applicationContext).getSystemService("window");
        WindowManager.LayoutParams createWindowLayoutParams = createWindowLayoutParams(z);
        this.windowLayoutParams = createWindowLayoutParams;
        int i7 = this.pipWidth;
        createWindowLayoutParams.width = i7;
        createWindowLayoutParams.height = this.pipHeight;
        if (pipX != -1.0f) {
            float m108dp = pipX + (i7 / 2.0f) >= ((float) AndroidUtilities.displaySize.x) / 2.0f ? (i3 - i7) - AndroidUtilities.m108dp(16.0f) : AndroidUtilities.m108dp(16.0f);
            this.pipX = m108dp;
            createWindowLayoutParams.x = (int) m108dp;
        } else {
            float m108dp2 = (AndroidUtilities.displaySize.x - i7) - AndroidUtilities.m108dp(16.0f);
            this.pipX = m108dp2;
            createWindowLayoutParams.x = (int) m108dp2;
        }
        if (pipY != -1.0f) {
            WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
            float clamp = MathUtils.clamp(pipY, AndroidUtilities.m108dp(16.0f), (AndroidUtilities.displaySize.y - AndroidUtilities.m108dp(16.0f)) - this.pipHeight);
            this.pipY = clamp;
            layoutParams.y = (int) clamp;
        } else {
            WindowManager.LayoutParams layoutParams2 = this.windowLayoutParams;
            float m108dp3 = AndroidUtilities.m108dp(16.0f);
            this.pipY = m108dp3;
            layoutParams2.y = (int) m108dp3;
        }
        WindowManager.LayoutParams layoutParams3 = this.windowLayoutParams;
        layoutParams3.dimAmount = BitmapDescriptorFactory.HUE_RED;
        layoutParams3.flags = 520;
        if (z2) {
            this.windowManager.addView(this.contentView, layoutParams3);
        } else {
            this.contentView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.contentView.setScaleX(0.1f);
            this.contentView.setScaleY(0.1f);
            this.windowManager.addView(this.contentView, this.windowLayoutParams);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(250L);
            animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
            animatorSet.playTogether(ObjectAnimator.ofFloat(this.contentView, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.contentView, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.contentView, View.SCALE_Y, 1.0f));
            animatorSet.start();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInternal$7(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        getPipConfig().setPipX(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInternal$8(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        getPipConfig().setPipY(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.PipVideoOverlay$3 */
    /* loaded from: classes6.dex */
    public class ScaleGestureDetector$OnScaleGestureListenerC53763 implements ScaleGestureDetector.OnScaleGestureListener {
        ScaleGestureDetector$OnScaleGestureListenerC53763() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            PipVideoOverlay pipVideoOverlay = PipVideoOverlay.this;
            pipVideoOverlay.scaleFactor = MathUtils.clamp(pipVideoOverlay.scaleFactor * scaleGestureDetector.getScaleFactor(), PipVideoOverlay.this.minScaleFactor, PipVideoOverlay.this.maxScaleFactor);
            PipVideoOverlay pipVideoOverlay2 = PipVideoOverlay.this;
            pipVideoOverlay2.pipWidth = (int) (pipVideoOverlay2.getSuggestedWidth() * PipVideoOverlay.this.scaleFactor);
            PipVideoOverlay pipVideoOverlay3 = PipVideoOverlay.this;
            pipVideoOverlay3.pipHeight = (int) (pipVideoOverlay3.getSuggestedHeight() * PipVideoOverlay.this.scaleFactor);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PipVideoOverlay$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PipVideoOverlay.ScaleGestureDetector$OnScaleGestureListenerC53763.this.lambda$onScale$0();
                }
            });
            float focusX = scaleGestureDetector.getFocusX();
            int i = AndroidUtilities.displaySize.x;
            float m108dp = focusX >= ((float) i) / 2.0f ? (i - PipVideoOverlay.this.pipWidth) - AndroidUtilities.m108dp(16.0f) : AndroidUtilities.m108dp(16.0f);
            if (PipVideoOverlay.this.pipXSpring.isRunning()) {
                PipVideoOverlay.this.pipXSpring.getSpring().setFinalPosition(m108dp);
            } else {
                PipVideoOverlay.this.pipXSpring.setStartValue(PipVideoOverlay.this.pipX).getSpring().setFinalPosition(m108dp);
            }
            PipVideoOverlay.this.pipXSpring.start();
            float clamp = MathUtils.clamp(scaleGestureDetector.getFocusY() - (PipVideoOverlay.this.pipHeight / 2.0f), AndroidUtilities.m108dp(16.0f), (AndroidUtilities.displaySize.y - PipVideoOverlay.this.pipHeight) - AndroidUtilities.m108dp(16.0f));
            if (PipVideoOverlay.this.pipYSpring.isRunning()) {
                PipVideoOverlay.this.pipYSpring.getSpring().setFinalPosition(clamp);
            } else {
                PipVideoOverlay.this.pipYSpring.setStartValue(PipVideoOverlay.this.pipY).getSpring().setFinalPosition(clamp);
            }
            PipVideoOverlay.this.pipYSpring.start();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onScale$0() {
            PipVideoOverlay.this.contentView.invalidate();
            PipVideoOverlay.this.contentFrameLayout.requestLayout();
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            if (PipVideoOverlay.this.isScrolling) {
                PipVideoOverlay.this.isScrolling = false;
                PipVideoOverlay.this.canLongClick = false;
                PipVideoOverlay.this.cancelRewind();
                AndroidUtilities.cancelRunOnUIThread(PipVideoOverlay.this.longClickCallback);
            }
            PipVideoOverlay.this.isScrollDisallowed = true;
            PipVideoOverlay.this.windowLayoutParams.width = (int) (PipVideoOverlay.this.getSuggestedWidth() * PipVideoOverlay.this.maxScaleFactor);
            PipVideoOverlay.this.windowLayoutParams.height = (int) (PipVideoOverlay.this.getSuggestedHeight() * PipVideoOverlay.this.maxScaleFactor);
            PipVideoOverlay.this.windowManager.updateViewLayout(PipVideoOverlay.this.contentView, PipVideoOverlay.this.windowLayoutParams);
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            if (PipVideoOverlay.this.pipXSpring.isRunning() || PipVideoOverlay.this.pipYSpring.isRunning()) {
                final ArrayList arrayList = new ArrayList();
                DynamicAnimation.OnAnimationEndListener onAnimationEndListener = new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.PipVideoOverlay.3.1
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                    public void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                        dynamicAnimation.removeEndListener(this);
                        arrayList.add((SpringAnimation) dynamicAnimation);
                        if (arrayList.size() == 2) {
                            ScaleGestureDetector$OnScaleGestureListenerC53763.this.updateLayout();
                        }
                    }
                };
                if (!PipVideoOverlay.this.pipXSpring.isRunning()) {
                    arrayList.add(PipVideoOverlay.this.pipXSpring);
                } else {
                    PipVideoOverlay.this.pipXSpring.addEndListener(onAnimationEndListener);
                }
                if (!PipVideoOverlay.this.pipYSpring.isRunning()) {
                    arrayList.add(PipVideoOverlay.this.pipYSpring);
                    return;
                } else {
                    PipVideoOverlay.this.pipYSpring.addEndListener(onAnimationEndListener);
                    return;
                }
            }
            updateLayout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateLayout() {
            PipVideoOverlay pipVideoOverlay = PipVideoOverlay.this;
            WindowManager.LayoutParams layoutParams = pipVideoOverlay.windowLayoutParams;
            int suggestedWidth = (int) (PipVideoOverlay.this.getSuggestedWidth() * PipVideoOverlay.this.scaleFactor);
            layoutParams.width = suggestedWidth;
            pipVideoOverlay.pipWidth = suggestedWidth;
            PipVideoOverlay pipVideoOverlay2 = PipVideoOverlay.this;
            WindowManager.LayoutParams layoutParams2 = pipVideoOverlay2.windowLayoutParams;
            int suggestedHeight = (int) (PipVideoOverlay.this.getSuggestedHeight() * PipVideoOverlay.this.scaleFactor);
            layoutParams2.height = suggestedHeight;
            pipVideoOverlay2.pipHeight = suggestedHeight;
            try {
                PipVideoOverlay.this.windowManager.updateViewLayout(PipVideoOverlay.this.contentView, PipVideoOverlay.this.windowLayoutParams);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.PipVideoOverlay$4 */
    /* loaded from: classes6.dex */
    public class C53784 extends GestureDetectorFixDoubleTap.OnGestureListener {
        private float startPipX;
        private float startPipY;
        final /* synthetic */ int val$touchSlop;

        C53784(int i) {
            this.val$touchSlop = i;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            if (PipVideoOverlay.this.isShowingControls) {
                for (int i = 1; i < PipVideoOverlay.this.contentFrameLayout.getChildCount(); i++) {
                    View childAt = PipVideoOverlay.this.contentFrameLayout.getChildAt(i);
                    if (childAt.dispatchTouchEvent(motionEvent)) {
                        PipVideoOverlay.this.consumingChild = childAt;
                        return true;
                    }
                }
            }
            this.startPipX = PipVideoOverlay.this.pipX;
            this.startPipY = PipVideoOverlay.this.pipY;
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (PipVideoOverlay.this.controlsAnimator != null) {
                return true;
            }
            if (PipVideoOverlay.this.postedDismissControls) {
                AndroidUtilities.cancelRunOnUIThread(PipVideoOverlay.this.dismissControlsCallback);
                PipVideoOverlay.this.postedDismissControls = false;
            }
            PipVideoOverlay pipVideoOverlay = PipVideoOverlay.this;
            pipVideoOverlay.isShowingControls = !pipVideoOverlay.isShowingControls;
            PipVideoOverlay pipVideoOverlay2 = PipVideoOverlay.this;
            pipVideoOverlay2.toggleControls(pipVideoOverlay2.isShowingControls);
            if (PipVideoOverlay.this.isShowingControls && !PipVideoOverlay.this.postedDismissControls) {
                AndroidUtilities.runOnUIThread(PipVideoOverlay.this.dismissControlsCallback, 2500L);
                PipVideoOverlay.this.postedDismissControls = true;
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean z;
            if (PipVideoOverlay.this.photoViewer != null && ((PipVideoOverlay.this.photoViewer.getVideoPlayer() != null || PipVideoOverlay.this.photoViewerWebView != null) && !PipVideoOverlay.this.isDismissing && !PipVideoOverlay.this.isVideoCompleted && !PipVideoOverlay.this.isScrolling && !PipVideoOverlay.this.scaleGestureDetector.isInProgress() && PipVideoOverlay.this.canLongClick)) {
                PipVideoOverlay.this.photoViewer.getVideoPlayer();
                boolean z2 = motionEvent.getX() >= (((float) PipVideoOverlay.this.getSuggestedWidth()) * PipVideoOverlay.this.scaleFactor) * 0.5f;
                long currentPosition = PipVideoOverlay.this.getCurrentPosition();
                long duration = PipVideoOverlay.this.getDuration();
                if (currentPosition != C0483C.TIME_UNSET && duration >= C0483C.DEFAULT_SEEK_FORWARD_INCREMENT_MS) {
                    long j = z2 ? currentPosition + 10000 : currentPosition - 10000;
                    if (currentPosition != j) {
                        if (j > duration) {
                            z = true;
                            j = duration;
                        } else if (j < 0) {
                            z = j >= -9000;
                            j = 0;
                        } else {
                            z = true;
                        }
                        if (z) {
                            PipVideoOverlay.this.videoForwardDrawable.setOneShootAnimation(true);
                            PipVideoOverlay.this.videoForwardDrawable.setLeftSide(!z2);
                            PipVideoOverlay.this.videoForwardDrawable.addTime(10000L);
                            PipVideoOverlay.this.seekTo(j);
                            PipVideoOverlay.this.onUpdateRewindProgressUiInternal(z2 ? 10000L : -10000L, ((float) j) / ((float) duration), true);
                            if (!PipVideoOverlay.this.isShowingControls) {
                                PipVideoOverlay pipVideoOverlay = PipVideoOverlay.this;
                                pipVideoOverlay.toggleControls(pipVideoOverlay.isShowingControls = true);
                                if (!PipVideoOverlay.this.postedDismissControls) {
                                    PipVideoOverlay.this.postedDismissControls = true;
                                    AndroidUtilities.runOnUIThread(PipVideoOverlay.this.dismissControlsCallback, 2500L);
                                }
                            }
                        }
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (!hasDoubleTap(motionEvent)) {
                return onSingleTapConfirmed(motionEvent);
            }
            return super.onSingleTapUp(motionEvent);
        }

        @Override // org.telegram.p043ui.Components.GestureDetectorFixDoubleTap.OnGestureListener
        public boolean hasDoubleTap(MotionEvent motionEvent) {
            if (PipVideoOverlay.this.photoViewer != null) {
                if ((PipVideoOverlay.this.photoViewer.getVideoPlayer() == null && PipVideoOverlay.this.photoViewerWebView == null) || PipVideoOverlay.this.isDismissing || PipVideoOverlay.this.isVideoCompleted || PipVideoOverlay.this.isScrolling || PipVideoOverlay.this.scaleGestureDetector.isInProgress() || !PipVideoOverlay.this.canLongClick) {
                    return false;
                }
                return PipVideoOverlay.this.getCurrentPosition() != C0483C.TIME_UNSET && PipVideoOverlay.this.getDuration() >= C0483C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
            }
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!PipVideoOverlay.this.isScrolling || PipVideoOverlay.this.isScrollDisallowed) {
                return false;
            }
            SpringForce spring = PipVideoOverlay.this.pipXSpring.setStartVelocity(f).setStartValue(PipVideoOverlay.this.pipX).getSpring();
            float f3 = PipVideoOverlay.this.pipX + (PipVideoOverlay.this.pipWidth / 2.0f) + (f / 7.0f);
            int i = AndroidUtilities.displaySize.x;
            spring.setFinalPosition(f3 >= ((float) i) / 2.0f ? (i - PipVideoOverlay.this.pipWidth) - AndroidUtilities.m108dp(16.0f) : AndroidUtilities.m108dp(16.0f));
            PipVideoOverlay.this.pipXSpring.start();
            PipVideoOverlay.this.pipYSpring.setStartVelocity(f).setStartValue(PipVideoOverlay.this.pipY).getSpring().setFinalPosition(MathUtils.clamp(PipVideoOverlay.this.pipY + (f2 / 10.0f), AndroidUtilities.m108dp(16.0f), (AndroidUtilities.displaySize.y - PipVideoOverlay.this.pipHeight) - AndroidUtilities.m108dp(16.0f)));
            PipVideoOverlay.this.pipYSpring.start();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            int i;
            if (!PipVideoOverlay.this.isScrolling && PipVideoOverlay.this.controlsAnimator == null && !PipVideoOverlay.this.isScrollDisallowed && (Math.abs(f) >= this.val$touchSlop || Math.abs(f2) >= this.val$touchSlop)) {
                PipVideoOverlay.this.isScrolling = true;
                PipVideoOverlay.this.pipXSpring.cancel();
                PipVideoOverlay.this.pipYSpring.cancel();
                PipVideoOverlay.this.canLongClick = false;
                PipVideoOverlay.this.cancelRewind();
                AndroidUtilities.cancelRunOnUIThread(PipVideoOverlay.this.longClickCallback);
            }
            if (PipVideoOverlay.this.isScrolling) {
                float f3 = PipVideoOverlay.this.pipX;
                final float rawX = (this.startPipX + motionEvent2.getRawX()) - motionEvent.getRawX();
                PipVideoOverlay.this.pipY = (this.startPipY + motionEvent2.getRawY()) - motionEvent.getRawY();
                if (rawX <= (-PipVideoOverlay.this.pipWidth) * 0.25f || rawX >= AndroidUtilities.displaySize.x - (PipVideoOverlay.this.pipWidth * 0.75f)) {
                    if (!PipVideoOverlay.this.onSideToDismiss) {
                        SpringForce spring = PipVideoOverlay.this.pipXSpring.setStartValue(f3).getSpring();
                        float f4 = rawX + (PipVideoOverlay.this.pipWidth / 2.0f);
                        int i2 = AndroidUtilities.displaySize.x;
                        if (f4 >= i2 / 2.0f) {
                            i = AndroidUtilities.m108dp(16.0f);
                        } else {
                            i2 = AndroidUtilities.m108dp(16.0f);
                            i = PipVideoOverlay.this.pipWidth;
                        }
                        spring.setFinalPosition(i2 - i);
                        PipVideoOverlay.this.pipXSpring.start();
                    }
                    PipVideoOverlay.this.onSideToDismiss = true;
                } else if (PipVideoOverlay.this.onSideToDismiss) {
                    if (PipVideoOverlay.this.onSideToDismiss) {
                        PipVideoOverlay.this.pipXSpring.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.PipVideoOverlay$4$$ExternalSyntheticLambda0
                            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f5, float f6) {
                                PipVideoOverlay.C53784.this.lambda$onScroll$0(rawX, dynamicAnimation, z, f5, f6);
                            }
                        });
                        PipVideoOverlay.this.pipXSpring.setStartValue(f3).getSpring().setFinalPosition(rawX);
                        PipVideoOverlay.this.pipXSpring.start();
                    }
                    PipVideoOverlay.this.onSideToDismiss = false;
                } else {
                    if (PipVideoOverlay.this.pipXSpring.isRunning()) {
                        PipVideoOverlay.this.pipXSpring.getSpring().setFinalPosition(rawX);
                    } else {
                        PipVideoOverlay.this.windowLayoutParams.x = (int) PipVideoOverlay.this.pipX = rawX;
                        PipVideoOverlay.this.getPipConfig().setPipX(rawX);
                    }
                    PipVideoOverlay.this.windowLayoutParams.y = (int) PipVideoOverlay.this.pipY;
                    PipVideoOverlay.this.getPipConfig().setPipY(PipVideoOverlay.this.pipY);
                    PipVideoOverlay.this.windowManager.updateViewLayout(PipVideoOverlay.this.contentView, PipVideoOverlay.this.windowLayoutParams);
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onScroll$0(float f, DynamicAnimation dynamicAnimation, boolean z, float f2, float f3) {
            if (z) {
                return;
            }
            SpringForce spring = PipVideoOverlay.this.pipXSpring.getSpring();
            float f4 = f + (PipVideoOverlay.this.pipWidth / 2.0f);
            int i = AndroidUtilities.displaySize.x;
            spring.setFinalPosition(f4 >= ((float) i) / 2.0f ? (i - PipVideoOverlay.this.pipWidth) - AndroidUtilities.m108dp(16.0f) : AndroidUtilities.m108dp(16.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInternal$10(boolean z, View view) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        boolean z2 = true;
        if (Build.VERSION.SDK_INT >= 21 && (runningAppProcesses = ((ActivityManager) view.getContext().getSystemService("activity")).getRunningAppProcesses()) != null && !runningAppProcesses.isEmpty() && runningAppProcesses.get(0).importance != 100) {
            z2 = false;
        }
        if (!z && (!z2 || !LaunchActivity.isResumed)) {
            Objects.requireNonNull(view);
            LaunchActivity.onResumeStaticCallback = new ChatActivityEnterView$$ExternalSyntheticLambda40(view);
            Context context = ApplicationLoader.applicationContext;
            Intent intent = new Intent(context, LaunchActivity.class);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return;
        }
        EmbedBottomSheet embedBottomSheet = this.parentSheet;
        if (embedBottomSheet != null) {
            embedBottomSheet.exitFromPip();
            return;
        }
        PhotoViewer photoViewer = this.photoViewer;
        if (photoViewer != null) {
            photoViewer.exitFromPip();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInternal$11(View view) {
        PhotoViewer photoViewer = this.photoViewer;
        if (photoViewer == null) {
            return;
        }
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null) {
            if (photoViewerWebView.isPlaying()) {
                this.photoViewerWebView.pauseVideo();
            } else {
                this.photoViewerWebView.playVideo();
            }
        } else {
            VideoPlayer videoPlayer = photoViewer.getVideoPlayer();
            if (videoPlayer == null) {
                return;
            }
            if (videoPlayer.isPlaying()) {
                videoPlayer.pause();
            } else {
                videoPlayer.play();
            }
        }
        updatePlayButton();
    }

    private WindowManager.LayoutParams createWindowLayoutParams(boolean z) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 51;
        layoutParams.format = -3;
        if (!z && AndroidUtilities.checkInlinePermissions(ApplicationLoader.applicationContext)) {
            if (Build.VERSION.SDK_INT >= 26) {
                layoutParams.type = 2038;
            } else {
                layoutParams.type = PlaybackException.ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE;
            }
        } else {
            layoutParams.type = 99;
        }
        layoutParams.flags = 520;
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PipVideoOverlay$VideoProgressView */
    /* loaded from: classes6.dex */
    public final class VideoProgressView extends View {
        private Paint bufferPaint;
        private Paint progressPaint;

        public VideoProgressView(Context context) {
            super(context);
            this.progressPaint = new Paint();
            this.bufferPaint = new Paint();
            this.progressPaint.setColor(-1);
            this.progressPaint.setStyle(Paint.Style.STROKE);
            this.progressPaint.setStrokeCap(Paint.Cap.ROUND);
            this.progressPaint.setStrokeWidth(AndroidUtilities.m107dp(2));
            this.bufferPaint.setColor(this.progressPaint.getColor());
            this.bufferPaint.setAlpha((int) (this.progressPaint.getAlpha() * 0.3f));
            this.bufferPaint.setStyle(Paint.Style.STROKE);
            this.bufferPaint.setStrokeCap(Paint.Cap.ROUND);
            this.bufferPaint.setStrokeWidth(AndroidUtilities.m107dp(2));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (!PipVideoOverlay.this.isWebView || (PipVideoOverlay.this.photoViewerWebView != null && PipVideoOverlay.this.photoViewerWebView.isControllable())) {
                int width = getWidth();
                int m107dp = AndroidUtilities.m107dp(10);
                float f = (width - m107dp) - m107dp;
                int i = ((int) (PipVideoOverlay.this.videoProgress * f)) + m107dp;
                float height = getHeight() - AndroidUtilities.m107dp(8);
                if (PipVideoOverlay.this.bufferProgress != BitmapDescriptorFactory.HUE_RED) {
                    float f2 = m107dp;
                    canvas.drawLine(f2, height, f2 + (f * PipVideoOverlay.this.bufferProgress), height, this.bufferPaint);
                }
                canvas.drawLine(m107dp, height, i, height, this.progressPaint);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PipVideoOverlay$PipConfig */
    /* loaded from: classes6.dex */
    public static final class PipConfig {
        private SharedPreferences mPrefs;

        private PipConfig(int i, int i2) {
            Context context = ApplicationLoader.applicationContext;
            this.mPrefs = context.getSharedPreferences("pip_layout_" + i + "_" + i2, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPipX(float f) {
            this.mPrefs.edit().putFloat("x", f).apply();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPipY(float f) {
            this.mPrefs.edit().putFloat("y", f).apply();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getScaleFactor() {
            return this.mPrefs.getFloat("scale_factor", 1.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getPipX() {
            return this.mPrefs.getFloat("x", -1.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getPipY() {
            return this.mPrefs.getFloat("y", -1.0f);
        }
    }

    /* renamed from: org.telegram.ui.Components.PipVideoOverlay$PipVideoViewGroup */
    /* loaded from: classes6.dex */
    public static class PipVideoViewGroup extends ViewGroup {
        public PipVideoViewGroup(Context context) {
            super(context);
        }
    }
}
