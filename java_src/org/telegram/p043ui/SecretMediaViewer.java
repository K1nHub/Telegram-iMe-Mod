package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.util.Property;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import androidx.annotation.Keep;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.exoplayer2.C0485C;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.p016ui.AspectRatioFrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.TextSelectionHelper;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AnimationProperties;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.PlayPauseDrawable;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.Scroller;
import org.telegram.p043ui.Components.TimerParticles;
import org.telegram.p043ui.Components.TranslateAlert2;
import org.telegram.p043ui.Components.VideoPlayer;
import org.telegram.p043ui.Components.VideoPlayerSeekBar;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.p043ui.SecretMediaViewer;
import org.telegram.p043ui.Stories.DarkThemeResourceProvider;
import org.telegram.p043ui.Stories.recorder.HintView2;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
/* renamed from: org.telegram.ui.SecretMediaViewer */
/* loaded from: classes5.dex */
public class SecretMediaViewer implements NotificationCenter.NotificationCenterDelegate, GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {
    private static volatile SecretMediaViewer Instance;
    private C3704ActionBar actionBar;
    private int[] animateFromRadius;
    private float animateToClipBottom;
    private float animateToClipBottomOrigin;
    private float animateToClipHorizontal;
    private float animateToClipTop;
    private float animateToClipTopOrigin;
    private boolean animateToRadius;
    private float animateToScale;
    private float animateToX;
    private float animateToY;
    private long animationStartTime;
    private float animationValue;
    private AspectRatioFrameLayout aspectRatioFrameLayout;
    private boolean canDragDown;
    private FrameLayout captionContainer;
    private boolean captionHwLayerEnabled;
    private PhotoViewer.CaptionScrollView captionScrollView;
    private PhotoViewer.CaptionTextViewSwitcher captionTextViewSwitcher;
    private float clipBottom;
    private float clipBottomOrigin;
    private float clipHorizontal;
    private float clipTop;
    private float clipTopOrigin;
    private boolean closeAfterAnimation;
    private long closeTime;
    private boolean closeVideoAfterWatch;
    private FrameLayoutDrawer containerView;
    private int currentAccount;
    private AnimatorSet currentActionBarAnimation;
    private long currentDialogId;
    private MessageObject currentMessageObject;
    private PhotoViewer.PhotoViewerProvider currentProvider;
    private float[] currentRadii;
    private ImageReceiver.BitmapHolder currentThumb;
    private boolean disableShowCheck;
    private boolean discardTap;
    private boolean doubleTap;
    private float dragY;
    private boolean draggingDown;
    private GestureDetector gestureDetector;
    private final Runnable hideActionBarRunnable;
    private boolean ignoreDelete;
    private AnimatorSet imageMoveAnimation;
    private DecelerateInterpolator interpolator;
    private boolean invalidCoords;
    private boolean isPhotoVisible;
    private boolean isPlaying;
    private boolean isVideo;
    private boolean isVisible;
    private Object lastInsets;
    private float maxX;
    private float maxY;
    private float minX;
    private float minY;
    private float moveStartX;
    private float moveStartY;
    private boolean moving;
    private View navigationBar;
    private Runnable onClose;
    private long openTime;
    private Activity parentActivity;
    private Runnable photoAnimationEndRunnable;
    private int photoAnimationInProgress;
    private long photoTransitionAnimationStartTime;
    private float pinchCenterX;
    private float pinchCenterY;
    private float pinchStartDistance;
    private float pinchStartScale;
    private float pinchStartX;
    private float pinchStartY;
    private ImageView playButton;
    private PlayPauseDrawable playButtonDrawable;
    private boolean playButtonShown;
    private int playerRetryPlayCount;
    private Path roundRectPath;
    private float scale;
    private Scroller scroller;
    private SecretDeleteTimer secretDeleteTimer;
    private HintView2 secretHint;
    private VideoPlayerSeekBar seekbar;
    private View seekbarBackground;
    private VideoPlayerControlFrameLayout seekbarContainer;
    private View seekbarView;
    private TextSelectionHelper.SimpleTextSelectionHelper textSelectionHelper;
    private boolean textureUploaded;
    private float translationX;
    private float translationY;
    private final Runnable updateProgressRunnable;
    private boolean useOvershootForScale;
    private VelocityTracker velocityTracker;
    private float videoCrossfadeAlpha;
    private long videoCrossfadeAlphaLastTime;
    private boolean videoCrossfadeStarted;
    private int videoHeight;
    private VideoPlayer videoPlayer;
    private final int[] videoPlayerCurrentTime;
    private SimpleTextView videoPlayerTime;
    private final int[] videoPlayerTotalTime;
    private TextureView videoTextureView;
    private boolean videoWatchedOneTime;
    private int videoWidth;
    private boolean wasLightNavigationBar;
    private int wasNavigationBarColor;
    private WindowManager.LayoutParams windowLayoutParams;
    private FrameLayout windowView;
    private boolean zoomAnimation;
    private boolean zooming;
    private ImageReceiver centerImage = new ImageReceiver();
    private boolean isActionBarVisible = true;
    private PhotoBackgroundDrawable photoBackgroundDrawable = new PhotoBackgroundDrawable(-16777216);

    /* JADX INFO: Access modifiers changed from: private */
    public void onLinkClick(ClickableSpan clickableSpan, TextView textView) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLinkLongPress(URLSpan uRLSpan, TextView textView, Runnable runnable) {
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    public SecretMediaViewer() {
        new Paint();
        this.scale = 1.0f;
        this.interpolator = new DecelerateInterpolator(1.5f);
        this.pinchStartScale = 1.0f;
        this.canDragDown = true;
        this.updateProgressRunnable = new Runnable() { // from class: org.telegram.ui.SecretMediaViewer$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                SecretMediaViewer.this.lambda$new$0();
            }
        };
        this.videoPlayerCurrentTime = new int[2];
        this.videoPlayerTotalTime = new int[2];
        this.hideActionBarRunnable = new Runnable() { // from class: org.telegram.ui.SecretMediaViewer$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                SecretMediaViewer.this.lambda$new$6();
            }
        };
        this.roundRectPath = new Path();
    }

    static /* synthetic */ int access$1510(SecretMediaViewer secretMediaViewer) {
        int i = secretMediaViewer.playerRetryPlayCount;
        secretMediaViewer.playerRetryPlayCount = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.SecretMediaViewer$FrameLayoutDrawer */
    /* loaded from: classes5.dex */
    public class FrameLayoutDrawer extends FrameLayout {
        public FrameLayoutDrawer(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            SecretMediaViewer.this.processTouchEvent(motionEvent);
            return true;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            SecretMediaViewer.this.onDraw(canvas);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            return view != SecretMediaViewer.this.aspectRatioFrameLayout && super.drawChild(canvas, view, j);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            SecretMediaViewer.this.centerImage.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            SecretMediaViewer.this.centerImage.onDetachedFromWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.SecretMediaViewer$SecretDeleteTimer */
    /* loaded from: classes5.dex */
    public class SecretDeleteTimer extends FrameLayout {
        private Paint afterDeleteProgressPaint;
        private Paint circlePaint;
        private RectF deleteProgressRect;
        private long destroyTime;
        private long destroyTtl;
        private RLottieDrawable drawable;
        private boolean once;
        private StaticLayout onceLayout;
        private float onceLayoutHeight;
        private float onceLayoutWidth;
        private TextPaint oncePaint;
        private Paint particlePaint;
        private TimerParticles timerParticles;
        private boolean useVideoProgress;

        public SecretDeleteTimer(Context context) {
            super(context);
            this.deleteProgressRect = new RectF();
            this.timerParticles = new TimerParticles();
            this.oncePaint = new TextPaint(1);
            setWillNotDraw(false);
            Paint paint = new Paint(1);
            this.particlePaint = paint;
            paint.setStrokeWidth(AndroidUtilities.m105dp(1.5f));
            this.particlePaint.setColor(-1644826);
            this.particlePaint.setStrokeCap(Paint.Cap.ROUND);
            this.particlePaint.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint(1);
            this.afterDeleteProgressPaint = paint2;
            paint2.setStyle(Paint.Style.STROKE);
            this.afterDeleteProgressPaint.setStrokeCap(Paint.Cap.ROUND);
            this.afterDeleteProgressPaint.setColor(-1644826);
            this.afterDeleteProgressPaint.setStrokeWidth(AndroidUtilities.m104dp(2));
            Paint paint3 = new Paint(1);
            this.circlePaint = paint3;
            paint3.setColor(2130706432);
            int i = C3632R.raw.fire_on;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16));
            this.drawable = rLottieDrawable;
            rLottieDrawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            this.drawable.setMasterParent(this);
            this.drawable.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestroyTime(long j, long j2, boolean z) {
            this.once = false;
            this.destroyTime = j;
            this.destroyTtl = j2;
            this.useVideoProgress = z;
            this.drawable.start();
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOnce() {
            this.once = true;
            this.oncePaint.setTextSize(AndroidUtilities.m104dp(13));
            this.oncePaint.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
            this.oncePaint.setColor(-1);
            StaticLayout staticLayout = new StaticLayout(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, this.oncePaint, 999, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.onceLayout = staticLayout;
            this.onceLayoutWidth = staticLayout.getLineCount() > 0 ? this.onceLayout.getLineWidth(0) : BitmapDescriptorFactory.HUE_RED;
            this.onceLayoutHeight = this.onceLayout.getHeight();
            invalidate();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            float measuredWidth = getMeasuredWidth() - AndroidUtilities.m104dp(35);
            float measuredHeight = getMeasuredHeight() / 2.0f;
            float dpf2 = AndroidUtilities.dpf2(10.5f);
            this.deleteProgressRect.set(measuredWidth - dpf2, measuredHeight - dpf2, measuredWidth + dpf2, dpf2 + measuredHeight);
            setPivotX(measuredWidth);
            setPivotY(measuredHeight);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (SecretMediaViewer.this.currentMessageObject != null) {
                if (SecretMediaViewer.this.currentMessageObject.messageOwner.destroyTime != 0 || SecretMediaViewer.this.currentMessageObject.messageOwner.ttl == Integer.MAX_VALUE) {
                    float f = 1.0f;
                    if (this.useVideoProgress) {
                        if (SecretMediaViewer.this.videoPlayer != null) {
                            long duration = SecretMediaViewer.this.videoPlayer.getDuration();
                            long currentPosition = SecretMediaViewer.this.videoPlayer.getCurrentPosition();
                            if (duration != C0485C.TIME_UNSET && currentPosition != C0485C.TIME_UNSET) {
                                f = 1.0f - (((float) currentPosition) / ((float) duration));
                            }
                        }
                    } else if (this.destroyTime != 0) {
                        f = ((float) Math.max(0L, this.destroyTime - (System.currentTimeMillis() + (ConnectionsManager.getInstance(SecretMediaViewer.this.currentAccount).getTimeDifference() * 1000)))) / (((float) this.destroyTtl) * 1000.0f);
                    }
                    if (this.once) {
                        canvas.save();
                        canvas.translate(this.deleteProgressRect.centerX() - (this.onceLayoutWidth / 2.0f), this.deleteProgressRect.centerY() - (this.onceLayoutHeight / 2.0f));
                        this.onceLayout.draw(canvas);
                        canvas.restore();
                        canvas.drawArc(this.deleteProgressRect, 90.0f, 180.0f, false, this.afterDeleteProgressPaint);
                        float f2 = 19.285715f;
                        for (int i = 0; i < 5; i++) {
                            canvas.drawArc(this.deleteProgressRect, f2 + 270.0f, 12.857143f, false, this.afterDeleteProgressPaint);
                            f2 += 32.14286f;
                        }
                        this.timerParticles.draw(canvas, this.particlePaint, this.deleteProgressRect, BitmapDescriptorFactory.HUE_RED, 1.0f);
                    } else {
                        float centerX = this.deleteProgressRect.centerX();
                        float centerY = this.deleteProgressRect.centerY() - AndroidUtilities.m104dp(1);
                        float m104dp = AndroidUtilities.m104dp(8);
                        this.drawable.setBounds((int) (centerX - m104dp), (int) (centerY - m104dp), (int) (centerX + m104dp), (int) (centerY + m104dp));
                        this.drawable.draw(canvas);
                        float f3 = (-360.0f) * f;
                        canvas.drawArc(this.deleteProgressRect, -90.0f, f3, false, this.afterDeleteProgressPaint);
                        this.timerParticles.draw(canvas, this.particlePaint, this.deleteProgressRect, f3, 1.0f);
                    }
                    invalidate();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.SecretMediaViewer$PhotoBackgroundDrawable */
    /* loaded from: classes5.dex */
    public class PhotoBackgroundDrawable extends ColorDrawable {
        private Runnable drawRunnable;
        private int frame;

        public PhotoBackgroundDrawable(int i) {
            super(i);
        }

        @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
        @Keep
        public void setAlpha(int i) {
            if (SecretMediaViewer.this.parentActivity instanceof LaunchActivity) {
                ((LaunchActivity) SecretMediaViewer.this.parentActivity).drawerLayoutContainer.setAllowDrawContent((SecretMediaViewer.this.isPhotoVisible && i == 255) ? false : true);
            }
            super.setAlpha(i);
        }

        @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Runnable runnable;
            super.draw(canvas);
            if (getAlpha() != 0) {
                if (this.frame == 2 && (runnable = this.drawRunnable) != null) {
                    runnable.run();
                    this.drawRunnable = null;
                } else {
                    invalidateSelf();
                }
                this.frame++;
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(int i, int i2, int i3, int i4) {
            super.setBounds(i, i2, i3, i4 + AndroidUtilities.navigationBarHeight);
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(Rect rect) {
            rect.bottom += AndroidUtilities.navigationBarHeight;
            super.setBounds(rect);
        }
    }

    public static SecretMediaViewer getInstance() {
        SecretMediaViewer secretMediaViewer = Instance;
        if (secretMediaViewer == null) {
            synchronized (PhotoViewer.class) {
                secretMediaViewer = Instance;
                if (secretMediaViewer == null) {
                    secretMediaViewer = new SecretMediaViewer();
                    Instance = secretMediaViewer;
                }
            }
        }
        return secretMediaViewer;
    }

    public static boolean hasInstance() {
        return Instance != null;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.messagesDeleted) {
            if (!((Boolean) objArr[2]).booleanValue() && this.currentMessageObject != null && ((Long) objArr[1]).longValue() == 0 && ((ArrayList) objArr[0]).contains(Integer.valueOf(this.currentMessageObject.getId()))) {
                if (this.isVideo && !this.videoWatchedOneTime) {
                    this.closeVideoAfterWatch = true;
                } else if (!closePhoto(true, true)) {
                    this.closeAfterAnimation = true;
                }
            }
        } else if (i == NotificationCenter.didCreatedNewDeleteTask) {
            if (this.currentMessageObject == null || this.secretDeleteTimer == null || ((Long) objArr[0]).longValue() != this.currentDialogId) {
                return;
            }
            SparseArray sparseArray = (SparseArray) objArr[1];
            for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                int keyAt = sparseArray.keyAt(i3);
                ArrayList arrayList = (ArrayList) sparseArray.get(keyAt);
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    if (this.currentMessageObject.getId() == ((Integer) arrayList.get(i4)).intValue()) {
                        this.currentMessageObject.messageOwner.destroyTime = keyAt;
                        this.secretDeleteTimer.invalidate();
                        return;
                    }
                }
            }
        } else if (i == NotificationCenter.updateMessageMedia && this.currentMessageObject.getId() == ((TLRPC$Message) objArr[0]).f1626id) {
            if (this.isVideo && !this.videoWatchedOneTime) {
                this.closeVideoAfterWatch = true;
            } else if (!closePhoto(true, true)) {
                this.closeAfterAnimation = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preparePlayer(File file) {
        if (this.parentActivity == null) {
            return;
        }
        releasePlayer();
        if (this.videoTextureView == null) {
            AspectRatioFrameLayout aspectRatioFrameLayout = new AspectRatioFrameLayout(this.parentActivity);
            this.aspectRatioFrameLayout = aspectRatioFrameLayout;
            aspectRatioFrameLayout.setVisibility(0);
            this.containerView.addView(this.aspectRatioFrameLayout, 0, LayoutHelper.createFrame(-1, -1, 17));
            TextureView textureView = new TextureView(this.parentActivity);
            this.videoTextureView = textureView;
            textureView.setOpaque(false);
            this.aspectRatioFrameLayout.addView(this.videoTextureView, LayoutHelper.createFrame(-1, -1, 17));
        }
        this.textureUploaded = false;
        this.videoCrossfadeStarted = false;
        this.videoTextureView.setAlpha(1.0f);
        if (this.videoPlayer == null) {
            VideoPlayer videoPlayer = new VideoPlayer() { // from class: org.telegram.ui.SecretMediaViewer.1
                @Override // org.telegram.p043ui.Components.VideoPlayer
                public void setPlayWhenReady(boolean z) {
                    super.setPlayWhenReady(z);
                    SecretMediaViewer.this.playButtonDrawable.setPause(z);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer
                public void play() {
                    super.play();
                    SecretMediaViewer.this.playButtonDrawable.setPause(true);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer
                public void pause() {
                    super.pause();
                    SecretMediaViewer.this.playButtonDrawable.setPause(false);
                }
            };
            this.videoPlayer = videoPlayer;
            videoPlayer.setTextureView(this.videoTextureView);
            this.videoPlayer.setDelegate(new C69192(file));
        }
        this.videoPlayer.preparePlayer(Uri.fromFile(file), "other");
        this.videoPlayer.setPlayWhenReady(true);
        this.playButtonDrawable.setPause(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.SecretMediaViewer$2 */
    /* loaded from: classes5.dex */
    public class C69192 implements VideoPlayer.VideoPlayerDelegate {
        final /* synthetic */ File val$file;

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        C69192(File file) {
            this.val$file = file;
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, int i) {
            if (SecretMediaViewer.this.videoPlayer == null || SecretMediaViewer.this.currentMessageObject == null) {
                return;
            }
            AndroidUtilities.cancelRunOnUIThread(SecretMediaViewer.this.updateProgressRunnable);
            AndroidUtilities.runOnUIThread(SecretMediaViewer.this.updateProgressRunnable);
            if (i == 4 || i == 1) {
                try {
                    SecretMediaViewer.this.parentActivity.getWindow().clearFlags(128);
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
            } else {
                try {
                    SecretMediaViewer.this.parentActivity.getWindow().addFlags(128);
                } catch (Exception e2) {
                    FileLog.m99e(e2);
                }
            }
            if (i == 3 && SecretMediaViewer.this.aspectRatioFrameLayout.getVisibility() != 0) {
                SecretMediaViewer.this.aspectRatioFrameLayout.setVisibility(0);
            }
            if (!SecretMediaViewer.this.videoPlayer.isPlaying() || i == 4) {
                if (SecretMediaViewer.this.isPlaying) {
                    SecretMediaViewer.this.isPlaying = false;
                    if (i == 4) {
                        SecretMediaViewer.this.videoWatchedOneTime = true;
                        if (!SecretMediaViewer.this.closeVideoAfterWatch) {
                            SecretMediaViewer.this.videoPlayer.seekTo(0L);
                            SecretMediaViewer.this.videoPlayer.play();
                            return;
                        }
                        SecretMediaViewer secretMediaViewer = SecretMediaViewer.this;
                        secretMediaViewer.closePhoto(true, !secretMediaViewer.ignoreDelete);
                    }
                }
            } else if (SecretMediaViewer.this.isPlaying) {
            } else {
                SecretMediaViewer.this.isPlaying = true;
            }
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
            if (SecretMediaViewer.this.playerRetryPlayCount > 0) {
                SecretMediaViewer.access$1510(SecretMediaViewer.this);
                final File file = this.val$file;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SecretMediaViewer$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SecretMediaViewer.C69192.this.lambda$onError$0(file);
                    }
                }, 100L);
                return;
            }
            FileLog.m99e(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$0(File file) {
            SecretMediaViewer.this.preparePlayer(file);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            if (SecretMediaViewer.this.aspectRatioFrameLayout != null) {
                if (i3 != 90 && i3 != 270) {
                    i2 = i;
                    i = i2;
                }
                SecretMediaViewer.this.aspectRatioFrameLayout.setAspectRatio(i == 0 ? 1.0f : (i2 * f) / i, i3);
            }
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
            if (SecretMediaViewer.this.textureUploaded) {
                return;
            }
            SecretMediaViewer.this.textureUploaded = true;
            SecretMediaViewer.this.containerView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return;
        }
        long currentPosition = videoPlayer.getCurrentPosition();
        long duration = this.videoPlayer.getDuration();
        if (duration == C0485C.TIME_UNSET) {
            currentPosition = 0;
            duration = 0;
        }
        if (duration > 0 && !this.seekbar.isDragging()) {
            this.seekbar.setProgress(((float) currentPosition) / ((float) duration));
            this.seekbarView.invalidate();
        }
        updateVideoPlayerTime();
        if (this.videoPlayer.isPlaying()) {
            AndroidUtilities.runOnUIThread(this.updateProgressRunnable, 17L);
        }
    }

    private void updateVideoPlayerTime() {
        String format;
        String format2;
        Arrays.fill(this.videoPlayerCurrentTime, 0);
        Arrays.fill(this.videoPlayerTotalTime, 0);
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            long max = Math.max(0L, videoPlayer.getCurrentPosition()) / 1000;
            long max2 = Math.max(0L, this.videoPlayer.getDuration()) / 1000;
            int[] iArr = this.videoPlayerCurrentTime;
            iArr[0] = (int) (max / 60);
            iArr[1] = (int) (max % 60);
            int[] iArr2 = this.videoPlayerTotalTime;
            iArr2[0] = (int) (max2 / 60);
            iArr2[1] = (int) (max2 % 60);
        }
        int[] iArr3 = this.videoPlayerCurrentTime;
        if (iArr3[0] >= 60) {
            format = String.format(Locale.ROOT, "%02d:%02d:%02d", Integer.valueOf(iArr3[0] / 60), Integer.valueOf(this.videoPlayerCurrentTime[0] % 60), Integer.valueOf(this.videoPlayerCurrentTime[1]));
        } else {
            format = String.format(Locale.ROOT, "%02d:%02d", Integer.valueOf(iArr3[0]), Integer.valueOf(this.videoPlayerCurrentTime[1]));
        }
        int[] iArr4 = this.videoPlayerTotalTime;
        if (iArr4[0] >= 60) {
            format2 = String.format(Locale.ROOT, "%02d:%02d:%02d", Integer.valueOf(iArr4[0] / 60), Integer.valueOf(this.videoPlayerTotalTime[0] % 60), Integer.valueOf(this.videoPlayerTotalTime[1]));
        } else {
            format2 = String.format(Locale.ROOT, "%02d:%02d", Integer.valueOf(iArr4[0]), Integer.valueOf(this.videoPlayerTotalTime[1]));
        }
        this.videoPlayerTime.setText(String.format(Locale.ROOT, "%s / %s", format, format2));
    }

    private void releasePlayer() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            this.playerRetryPlayCount = 0;
            videoPlayer.releasePlayer(true);
            this.videoPlayer = null;
        }
        try {
            Activity activity = this.parentActivity;
            if (activity != null) {
                activity.getWindow().clearFlags(128);
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = this.aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            this.containerView.removeView(aspectRatioFrameLayout);
            this.aspectRatioFrameLayout = null;
        }
        if (this.videoTextureView != null) {
            this.videoTextureView = null;
        }
        this.isPlaying = false;
    }

    public void setParentActivity(final Activity activity) {
        int i = UserConfig.selectedAccount;
        this.currentAccount = i;
        this.centerImage.setCurrentAccount(i);
        if (this.parentActivity == activity) {
            return;
        }
        this.parentActivity = activity;
        this.scroller = new Scroller(activity);
        FrameLayout frameLayout = new FrameLayout(activity) { // from class: org.telegram.ui.SecretMediaViewer.3
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                int size = View.MeasureSpec.getSize(i2);
                int size2 = View.MeasureSpec.getSize(i3);
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 21 && SecretMediaViewer.this.lastInsets != null) {
                    WindowInsets windowInsets = (WindowInsets) SecretMediaViewer.this.lastInsets;
                    if (AndroidUtilities.incorrectDisplaySizeFix) {
                        int i5 = AndroidUtilities.displaySize.y;
                        if (size2 > i5) {
                            size2 = i5;
                        }
                        size2 += AndroidUtilities.statusBarHeight;
                    }
                    size2 -= windowInsets.getSystemWindowInsetBottom();
                    size -= windowInsets.getSystemWindowInsetRight();
                } else {
                    int i6 = AndroidUtilities.displaySize.y;
                    if (size2 > i6) {
                        size2 = i6;
                    }
                }
                setMeasuredDimension(size, size2);
                if (i4 >= 21 && SecretMediaViewer.this.lastInsets != null) {
                    size -= ((WindowInsets) SecretMediaViewer.this.lastInsets).getSystemWindowInsetLeft();
                }
                SecretMediaViewer.this.containerView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                int systemWindowInsetLeft = (Build.VERSION.SDK_INT < 21 || SecretMediaViewer.this.lastInsets == null) ? 0 : ((WindowInsets) SecretMediaViewer.this.lastInsets).getSystemWindowInsetLeft() + 0;
                SecretMediaViewer.this.containerView.layout(systemWindowInsetLeft, 0, SecretMediaViewer.this.containerView.getMeasuredWidth() + systemWindowInsetLeft, SecretMediaViewer.this.containerView.getMeasuredHeight());
                if (z) {
                    if (SecretMediaViewer.this.imageMoveAnimation == null) {
                        SecretMediaViewer.this.scale = 1.0f;
                        SecretMediaViewer.this.translationX = BitmapDescriptorFactory.HUE_RED;
                        SecretMediaViewer.this.translationY = BitmapDescriptorFactory.HUE_RED;
                    }
                    SecretMediaViewer secretMediaViewer = SecretMediaViewer.this;
                    secretMediaViewer.updateMinMax(secretMediaViewer.scale);
                }
            }
        };
        this.windowView = frameLayout;
        frameLayout.setBackgroundDrawable(this.photoBackgroundDrawable);
        this.windowView.setFocusable(true);
        this.windowView.setFocusableInTouchMode(true);
        this.windowView.setClipChildren(false);
        this.windowView.setClipToPadding(false);
        this.containerView = new FrameLayoutDrawer(activity) { // from class: org.telegram.ui.SecretMediaViewer.4
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                super.onLayout(z, i2, i3, i4, i5);
                if (SecretMediaViewer.this.secretDeleteTimer != null) {
                    int currentActionBarHeight = ((C3704ActionBar.getCurrentActionBarHeight() - SecretMediaViewer.this.secretDeleteTimer.getMeasuredHeight()) / 2) + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0);
                    SecretMediaViewer.this.secretDeleteTimer.layout(SecretMediaViewer.this.secretDeleteTimer.getLeft(), currentActionBarHeight, SecretMediaViewer.this.secretDeleteTimer.getRight(), SecretMediaViewer.this.secretDeleteTimer.getMeasuredHeight() + currentActionBarHeight);
                }
                if (SecretMediaViewer.this.secretHint != null && SecretMediaViewer.this.secretDeleteTimer != null) {
                    int currentActionBarHeight2 = ((((C3704ActionBar.getCurrentActionBarHeight() - SecretMediaViewer.this.secretDeleteTimer.getMeasuredHeight()) / 2) + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)) + SecretMediaViewer.this.secretDeleteTimer.getMeasuredHeight()) - AndroidUtilities.m104dp(10);
                    SecretMediaViewer.this.secretHint.layout(SecretMediaViewer.this.secretHint.getLeft(), currentActionBarHeight2, SecretMediaViewer.this.secretHint.getRight(), SecretMediaViewer.this.secretHint.getMeasuredHeight() + currentActionBarHeight2);
                }
                if (SecretMediaViewer.this.captionScrollView != null) {
                    int currentActionBarHeight3 = C3704ActionBar.getCurrentActionBarHeight() + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0);
                    SecretMediaViewer.this.captionScrollView.layout(SecretMediaViewer.this.captionScrollView.getLeft(), currentActionBarHeight3, SecretMediaViewer.this.captionScrollView.getRight(), SecretMediaViewer.this.captionScrollView.getMeasuredHeight() + currentActionBarHeight3);
                }
                if (SecretMediaViewer.this.navigationBar != null) {
                    int i6 = i5 - i3;
                    SecretMediaViewer.this.navigationBar.layout(0, i6, i4 - i2, AndroidUtilities.navigationBarHeight + i6);
                }
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                int measuredWidth = getMeasuredWidth();
                int measuredHeight = getMeasuredHeight();
                if (SecretMediaViewer.this.captionScrollView != null) {
                    SecretMediaViewer.this.captionScrollView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(((measuredHeight - C3704ActionBar.getCurrentActionBarHeight()) - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)) - (SecretMediaViewer.this.seekbarContainer.getVisibility() == 0 ? SecretMediaViewer.this.seekbarContainer.getMeasuredHeight() : 0), 1073741824));
                }
                if (SecretMediaViewer.this.navigationBar != null) {
                    SecretMediaViewer.this.navigationBar.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.navigationBarHeight, 1073741824));
                }
            }
        };
        View view = new View(activity);
        this.navigationBar = view;
        view.setBackgroundColor(2130706432);
        this.containerView.addView(this.navigationBar, LayoutHelper.createFrame(-1, -2, 80));
        this.containerView.setFocusable(false);
        this.windowView.addView(this.containerView);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.containerView.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.gravity = 51;
        this.containerView.setLayoutParams(layoutParams);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            this.containerView.setFitsSystemWindows(true);
            this.containerView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.SecretMediaViewer$$ExternalSyntheticLambda0
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    WindowInsets lambda$setParentActivity$1;
                    lambda$setParentActivity$1 = SecretMediaViewer.this.lambda$setParentActivity$1(view2, windowInsets);
                    return lambda$setParentActivity$1;
                }
            });
            this.containerView.setSystemUiVisibility(1792);
        }
        GestureDetector gestureDetector = new GestureDetector(this.containerView.getContext(), this);
        this.gestureDetector = gestureDetector;
        gestureDetector.setOnDoubleTapListener(this);
        C3704ActionBar c3704ActionBar = new C3704ActionBar(activity) { // from class: org.telegram.ui.SecretMediaViewer.5
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                SecretMediaViewer.this.secretHint.setAlpha(f);
                SecretMediaViewer.this.secretDeleteTimer.setAlpha(f);
            }
        };
        this.actionBar = c3704ActionBar;
        c3704ActionBar.setTitleColor(-1);
        this.actionBar.setSubtitleColor(-1);
        this.actionBar.setBackgroundColor(2130706432);
        this.actionBar.setOccupyStatusBar(i2 >= 21);
        this.actionBar.setItemsBackgroundColor(1090519039, false);
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        this.actionBar.setTitleRightMargin(AndroidUtilities.m104dp(70));
        this.containerView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2));
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.SecretMediaViewer.6
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i3) {
                if (i3 == -1) {
                    SecretMediaViewer.this.closePhoto(true, false);
                }
            }
        });
        HintView2 hintView2 = new HintView2(activity, 1);
        this.secretHint = hintView2;
        hintView2.setJoint(1.0f, -26.0f);
        this.secretHint.setPadding(AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8));
        this.containerView.addView(this.secretHint, LayoutHelper.createFrame(-1, 80, 53, 0, 48, 0, 0));
        SecretDeleteTimer secretDeleteTimer = new SecretDeleteTimer(activity);
        this.secretDeleteTimer = secretDeleteTimer;
        this.containerView.addView(secretDeleteTimer, LayoutHelper.createFrame(119, 48, 53, 0, 0, 0, 0));
        VideoPlayerSeekBar.SeekBarDelegate seekBarDelegate = new VideoPlayerSeekBar.SeekBarDelegate() { // from class: org.telegram.ui.SecretMediaViewer.7
            @Override // org.telegram.p043ui.Components.VideoPlayerSeekBar.SeekBarDelegate
            public void onSeekBarDrag(float f) {
                if (SecretMediaViewer.this.videoPlayer != null) {
                    long duration = SecretMediaViewer.this.videoPlayer.getDuration();
                    if (duration != C0485C.TIME_UNSET) {
                        SecretMediaViewer.this.videoPlayer.seekTo(f * ((float) duration), false);
                    }
                    SecretMediaViewer.this.videoPlayer.play();
                }
            }

            @Override // org.telegram.p043ui.Components.VideoPlayerSeekBar.SeekBarDelegate
            public void onSeekBarContinuousDrag(float f) {
                if (SecretMediaViewer.this.videoPlayer != null) {
                    SecretMediaViewer.this.videoPlayer.pause();
                    long duration = SecretMediaViewer.this.videoPlayer.getDuration();
                    if (duration != C0485C.TIME_UNSET) {
                        SecretMediaViewer.this.videoPlayer.seekTo(f * ((float) duration), false);
                    }
                }
            }
        };
        this.seekbarContainer = new VideoPlayerControlFrameLayout(activity);
        View view2 = new View(activity);
        this.seekbarBackground = view2;
        view2.setBackgroundColor(2130706432);
        this.seekbarContainer.addView(this.seekbarBackground, LayoutHelper.createFrame(-1, -1, 119));
        SimpleTextView simpleTextView = new SimpleTextView(this.containerView.getContext());
        this.videoPlayerTime = simpleTextView;
        simpleTextView.setTextColor(-1);
        this.videoPlayerTime.setGravity(53);
        this.videoPlayerTime.setTextSize(14);
        this.videoPlayerTime.setImportantForAccessibility(2);
        this.seekbarContainer.addView(this.videoPlayerTime, LayoutHelper.createFrame(-2, -2, 53, 0, 15, 12, 0));
        View view3 = new View(activity) { // from class: org.telegram.ui.SecretMediaViewer.8
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                SecretMediaViewer.this.seekbar.draw(canvas, this);
            }
        };
        this.seekbarView = view3;
        VideoPlayerSeekBar videoPlayerSeekBar = new VideoPlayerSeekBar(view3);
        this.seekbar = videoPlayerSeekBar;
        videoPlayerSeekBar.setHorizontalPadding(AndroidUtilities.m104dp(2));
        this.seekbar.setColors(872415231, 872415231, -1, -1, -1, 1509949439);
        this.seekbar.setDelegate(seekBarDelegate);
        this.seekbarContainer.addView(this.seekbarView);
        this.containerView.addView(this.seekbarContainer, LayoutHelper.createFrame(-1, 48, 80));
        TextSelectionHelper.SimpleTextSelectionHelper simpleTextSelectionHelper = new TextSelectionHelper.SimpleTextSelectionHelper(this, null, new DarkThemeResourceProvider()) { // from class: org.telegram.ui.SecretMediaViewer.9
            @Override // org.telegram.p043ui.Cells.TextSelectionHelper
            public int getParentBottomPadding() {
                return 0;
            }
        };
        this.textSelectionHelper = simpleTextSelectionHelper;
        simpleTextSelectionHelper.allowScrollPrentRelative = true;
        simpleTextSelectionHelper.useMovingOffset = false;
        PhotoViewer.CaptionTextViewSwitcher captionTextViewSwitcher = new PhotoViewer.CaptionTextViewSwitcher(this.containerView.getContext());
        this.captionTextViewSwitcher = captionTextViewSwitcher;
        captionTextViewSwitcher.setFactory(new ViewSwitcher.ViewFactory() { // from class: org.telegram.ui.SecretMediaViewer$$ExternalSyntheticLambda2
            @Override // android.widget.ViewSwitcher.ViewFactory
            public final View makeView() {
                View lambda$setParentActivity$2;
                lambda$setParentActivity$2 = SecretMediaViewer.this.lambda$setParentActivity$2(activity);
                return lambda$setParentActivity$2;
            }
        });
        this.captionTextViewSwitcher.setVisibility(4);
        setCaptionHwLayerEnabled(true);
        ImageView imageView = new ImageView(activity);
        this.playButton = imageView;
        imageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m104dp(64), 1711276032));
        PlayPauseDrawable playPauseDrawable = new PlayPauseDrawable(28);
        this.playButtonDrawable = playPauseDrawable;
        playPauseDrawable.setCallback(this.playButton);
        this.playButton.setImageDrawable(this.playButtonDrawable);
        this.playButton.setScaleType(ImageView.ScaleType.CENTER);
        this.playButton.setScaleX(0.6f);
        this.playButton.setScaleY(0.6f);
        this.playButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.playButton.setPivotX(AndroidUtilities.m104dp(32));
        this.playButton.setPivotY(AndroidUtilities.m104dp(32));
        this.containerView.addView(this.playButton, LayoutHelper.createFrame(64, 64, 17));
        WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams2;
        layoutParams2.height = -1;
        layoutParams2.format = -3;
        layoutParams2.width = -1;
        layoutParams2.gravity = 48;
        layoutParams2.type = 99;
        if (i2 >= 21) {
            layoutParams2.flags = -2147417848;
        } else {
            layoutParams2.flags = 8;
        }
        layoutParams2.flags |= 8192;
        this.centerImage.setParentView(this.containerView);
        this.centerImage.setForceCrossfade(true);
        TextSelectionHelper<Cell>.TextSelectionOverlay overlayView = this.textSelectionHelper.getOverlayView(this.windowView.getContext());
        if (overlayView != null) {
            AndroidUtilities.removeFromParent(overlayView);
            this.containerView.addView(overlayView);
        }
        this.textSelectionHelper.setParentView(this.containerView);
        this.textSelectionHelper.setInvalidateParent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets lambda$setParentActivity$1(View view, WindowInsets windowInsets) {
        WindowInsets windowInsets2 = (WindowInsets) this.lastInsets;
        this.lastInsets = windowInsets;
        if (windowInsets2 == null || !windowInsets2.toString().equals(windowInsets.toString())) {
            this.windowView.requestLayout();
        }
        if (Build.VERSION.SDK_INT >= 30) {
            return WindowInsets.CONSUMED;
        }
        return windowInsets.consumeSystemWindowInsets();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ View lambda$setParentActivity$2(Activity activity) {
        return new PhotoViewer.CaptionTextView(activity, this.captionScrollView, this.textSelectionHelper, new Utilities.Callback2() { // from class: org.telegram.ui.SecretMediaViewer$$ExternalSyntheticLambda10
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                SecretMediaViewer.this.onLinkClick((ClickableSpan) obj, (TextView) obj2);
            }
        }, new Utilities.Callback3() { // from class: org.telegram.ui.SecretMediaViewer$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                SecretMediaViewer.this.onLinkLongPress((URLSpan) obj, (TextView) obj2, (Runnable) obj3);
            }
        });
    }

    private void setCurrentCaption(MessageObject messageObject, CharSequence charSequence, boolean z, boolean z2) {
        Object[] objArr;
        TLRPC$Message tLRPC$Message;
        int i;
        CharSequence cloneSpans = AnimatedEmojiSpan.cloneSpans(charSequence, 3);
        boolean z3 = false;
        if (this.captionScrollView == null) {
            FrameLayout frameLayout = new FrameLayout(this.containerView.getContext());
            this.captionContainer = frameLayout;
            this.captionTextViewSwitcher.setContainer(frameLayout);
            PhotoViewer.CaptionScrollView captionScrollView = new PhotoViewer.CaptionScrollView(this.containerView.getContext(), this.captionTextViewSwitcher, this.captionContainer) { // from class: org.telegram.ui.SecretMediaViewer.10
                @Override // org.telegram.p043ui.PhotoViewer.CaptionScrollView
                protected void onScrollStart() {
                    AndroidUtilities.cancelRunOnUIThread(SecretMediaViewer.this.hideActionBarRunnable);
                }

                @Override // org.telegram.p043ui.PhotoViewer.CaptionScrollView
                protected void onScrollUpdate() {
                    if (SecretMediaViewer.this.imageMoveAnimation == null) {
                        SecretMediaViewer.this.showPlayButton(((float) getScrollY()) < ((float) getMeasuredHeight()) / 3.0f && SecretMediaViewer.this.isActionBarVisible, true);
                    }
                }

                @Override // org.telegram.p043ui.PhotoViewer.CaptionScrollView
                protected void onScrollEnd() {
                    if (!SecretMediaViewer.this.isVideo || getScrollY() > 0) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(SecretMediaViewer.this.hideActionBarRunnable, C0485C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                }
            };
            this.captionScrollView = captionScrollView;
            this.captionTextViewSwitcher.setScrollView(captionScrollView);
            this.captionContainer.setClipChildren(false);
            this.captionScrollView.addView(this.captionContainer, new ViewGroup.LayoutParams(-1, -2));
            this.containerView.addView(this.captionScrollView, LayoutHelper.createFrame(-1, -1, 80, 0, 0, 0, 0));
            this.textSelectionHelper.getOverlayView(this.containerView.getContext()).bringToFront();
        }
        if (this.captionTextViewSwitcher.getParent() != this.captionContainer) {
            this.captionTextViewSwitcher.setMeasureAllChildren(true);
            this.captionContainer.addView(this.captionTextViewSwitcher, -1, -2);
        }
        boolean isEmpty = TextUtils.isEmpty(cloneSpans);
        boolean isEmpty2 = TextUtils.isEmpty(this.captionTextViewSwitcher.getCurrentView().getText());
        PhotoViewer.CaptionTextViewSwitcher captionTextViewSwitcher = this.captionTextViewSwitcher;
        TextView nextView = z2 ? captionTextViewSwitcher.getNextView() : captionTextViewSwitcher.getCurrentView();
        int maxLines = nextView.getMaxLines();
        if (maxLines == 1) {
            this.captionTextViewSwitcher.getCurrentView().setSingleLine(false);
            this.captionTextViewSwitcher.getNextView().setSingleLine(false);
        }
        if (maxLines != Integer.MAX_VALUE) {
            this.captionTextViewSwitcher.getCurrentView().setMaxLines(Integer.MAX_VALUE);
            this.captionTextViewSwitcher.getNextView().setMaxLines(Integer.MAX_VALUE);
            this.captionTextViewSwitcher.getCurrentView().setEllipsize(null);
            this.captionTextViewSwitcher.getNextView().setEllipsize(null);
        }
        nextView.setScrollX(0);
        PhotoViewer.CaptionScrollView captionScrollView2 = this.captionScrollView;
        captionScrollView2.dontChangeTopMargin = false;
        if (z2 && (i = Build.VERSION.SDK_INT) >= 19) {
            if (i >= 23) {
                TransitionManager.endTransitions(captionScrollView2);
            }
            TransitionSet duration = new TransitionSet().addTransition(new C690912(2, isEmpty2, isEmpty)).addTransition(new C690711(1, isEmpty2, isEmpty)).setDuration(200L);
            if (!isEmpty2) {
                this.captionScrollView.dontChangeTopMargin = true;
                duration.addTransition(new C691113());
            }
            if (isEmpty2 && !isEmpty) {
                duration.addTarget((View) this.captionTextViewSwitcher);
            }
            TransitionManager.beginDelayedTransition(this.captionScrollView, duration);
            objArr = 1;
        } else {
            this.captionTextViewSwitcher.getCurrentView().setText((CharSequence) null);
            PhotoViewer.CaptionScrollView captionScrollView3 = this.captionScrollView;
            if (captionScrollView3 != null) {
                captionScrollView3.scrollTo(0, 0);
            }
            objArr = null;
        }
        if (!isEmpty) {
            Theme.createChatResources(null, true);
            if (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null || tLRPC$Message.translatedText == null || !TextUtils.equals(tLRPC$Message.translatedToLanguage, TranslateAlert2.getToLanguage())) {
                if (messageObject != null && !messageObject.messageOwner.entities.isEmpty()) {
                    SpannableString spannableString = new SpannableString(cloneSpans);
                    messageObject.addEntitiesToText(spannableString, true, false);
                    if (messageObject.isVideo()) {
                        MessageObject.addUrlsByPattern(messageObject.isOutOwner(), spannableString, false, 3, (int) messageObject.getDuration(), false);
                    }
                    cloneSpans = Emoji.replaceEmoji((CharSequence) spannableString, nextView.getPaint().getFontMetricsInt(), AndroidUtilities.m104dp(20), false);
                } else {
                    cloneSpans = Emoji.replaceEmoji((CharSequence) new SpannableStringBuilder(cloneSpans), nextView.getPaint().getFontMetricsInt(), AndroidUtilities.m104dp(20), false);
                }
            }
            this.captionTextViewSwitcher.setTag(cloneSpans);
            try {
                this.captionTextViewSwitcher.setText(cloneSpans, z2, false);
                PhotoViewer.CaptionScrollView captionScrollView4 = this.captionScrollView;
                if (captionScrollView4 != null) {
                    captionScrollView4.updateTopMargin();
                }
            } catch (Exception e) {
                FileLog.m99e(e);
            }
            nextView.setScrollY(0);
            nextView.setTextColor(-1);
            this.captionTextViewSwitcher.setVisibility(this.isActionBarVisible ? 0 : 4);
        } else {
            this.captionTextViewSwitcher.setText(null, z2);
            this.captionTextViewSwitcher.getCurrentView().setTextColor(-1);
            PhotoViewer.CaptionTextViewSwitcher captionTextViewSwitcher2 = this.captionTextViewSwitcher;
            if (objArr == null || isEmpty2) {
                z3 = true;
            }
            captionTextViewSwitcher2.setVisibility(4, z3);
            this.captionTextViewSwitcher.setTag(null);
        }
        if (this.captionTextViewSwitcher.getCurrentView() instanceof PhotoViewer.CaptionTextView) {
            ((PhotoViewer.CaptionTextView) this.captionTextViewSwitcher.getCurrentView()).setLoading(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.SecretMediaViewer$12 */
    /* loaded from: classes5.dex */
    public class C690912 extends Fade {
        final /* synthetic */ boolean val$isCaptionEmpty;
        final /* synthetic */ boolean val$isCurrentCaptionEmpty;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C690912(int i, boolean z, boolean z2) {
            super(i);
            this.val$isCurrentCaptionEmpty = z;
            this.val$isCaptionEmpty = z2;
        }

        @Override // android.transition.Fade, android.transition.Visibility
        public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
            Animator onDisappear = super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
            if (!this.val$isCurrentCaptionEmpty && this.val$isCaptionEmpty && view == SecretMediaViewer.this.captionTextViewSwitcher) {
                onDisappear.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SecretMediaViewer.12.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SecretMediaViewer.this.captionScrollView.setVisibility(4);
                        SecretMediaViewer.this.captionScrollView.backgroundAlpha = 1.0f;
                    }
                });
                ((ObjectAnimator) onDisappear).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SecretMediaViewer$12$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        SecretMediaViewer.C690912.this.lambda$onDisappear$0(valueAnimator);
                    }
                });
            }
            return onDisappear;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDisappear$0(ValueAnimator valueAnimator) {
            SecretMediaViewer.this.captionScrollView.backgroundAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            SecretMediaViewer.this.captionScrollView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.SecretMediaViewer$11 */
    /* loaded from: classes5.dex */
    public class C690711 extends Fade {
        final /* synthetic */ boolean val$isCaptionEmpty;
        final /* synthetic */ boolean val$isCurrentCaptionEmpty;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C690711(int i, boolean z, boolean z2) {
            super(i);
            this.val$isCurrentCaptionEmpty = z;
            this.val$isCaptionEmpty = z2;
        }

        @Override // android.transition.Fade, android.transition.Visibility
        public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
            Animator onAppear = super.onAppear(viewGroup, view, transitionValues, transitionValues2);
            if (this.val$isCurrentCaptionEmpty && !this.val$isCaptionEmpty && view == SecretMediaViewer.this.captionTextViewSwitcher) {
                onAppear.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SecretMediaViewer.11.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SecretMediaViewer.this.captionScrollView.backgroundAlpha = 1.0f;
                    }
                });
                ((ObjectAnimator) onAppear).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SecretMediaViewer$11$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        SecretMediaViewer.C690711.this.lambda$onAppear$0(valueAnimator);
                    }
                });
            }
            return onAppear;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAppear$0(ValueAnimator valueAnimator) {
            SecretMediaViewer.this.captionScrollView.backgroundAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            SecretMediaViewer.this.captionScrollView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.SecretMediaViewer$13 */
    /* loaded from: classes5.dex */
    public class C691113 extends Transition {
        C691113() {
        }

        @Override // android.transition.Transition
        public void captureStartValues(TransitionValues transitionValues) {
            if (transitionValues.view == SecretMediaViewer.this.captionScrollView) {
                transitionValues.values.put("scrollY", Integer.valueOf(SecretMediaViewer.this.captionScrollView.getScrollY()));
            }
        }

        @Override // android.transition.Transition
        public void captureEndValues(TransitionValues transitionValues) {
            if (transitionValues.view == SecretMediaViewer.this.captionTextViewSwitcher) {
                transitionValues.values.put("translationY", Integer.valueOf(SecretMediaViewer.this.captionScrollView.getPendingMarginTopDiff()));
            }
        }

        @Override // android.transition.Transition
        public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
            int intValue;
            if (transitionValues.view != SecretMediaViewer.this.captionScrollView) {
                if (transitionValues2.view != SecretMediaViewer.this.captionTextViewSwitcher || (intValue = ((Integer) transitionValues2.values.get("translationY")).intValue()) == 0) {
                    return null;
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(SecretMediaViewer.this.captionTextViewSwitcher, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, intValue);
                ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SecretMediaViewer.13.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SecretMediaViewer.this.captionTextViewSwitcher.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                });
                return ofFloat;
            }
            ValueAnimator ofInt = ValueAnimator.ofInt(((Integer) transitionValues.values.get("scrollY")).intValue(), 0);
            ofInt.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SecretMediaViewer.13.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SecretMediaViewer.this.captionTextViewSwitcher.getNextView().setText((CharSequence) null);
                    SecretMediaViewer.this.captionScrollView.applyPendingTopMargin();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    SecretMediaViewer.this.captionScrollView.stopScrolling();
                }
            });
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SecretMediaViewer$13$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SecretMediaViewer.C691113.this.lambda$createAnimator$0(valueAnimator);
                }
            });
            return ofInt;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createAnimator$0(ValueAnimator valueAnimator) {
            SecretMediaViewer.this.captionScrollView.scrollTo(0, ((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPlayButton(boolean z, boolean z2) {
        boolean z3 = this.isVideo && z;
        if (this.playButtonShown == z3 && z2) {
            return;
        }
        this.playButtonShown = z3;
        this.playButton.animate().cancel();
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            ViewPropertyAnimator scaleY = this.playButton.animate().scaleX(z3 ? 1.0f : 0.6f).scaleY(z3 ? 1.0f : 0.6f);
            if (z3) {
                f = 1.0f;
            }
            scaleY.alpha(f).setDuration(340L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            return;
        }
        this.playButton.setScaleX(z3 ? 1.0f : 0.6f);
        this.playButton.setScaleY(z3 ? 1.0f : 0.6f);
        ImageView imageView = this.playButton;
        if (z3) {
            f = 1.0f;
        }
        imageView.setAlpha(f);
    }

    private void showSecretHint() {
        this.secretHint.setMultilineText(true);
        String string = LocaleController.getString(this.isVideo ? C3632R.string.VideoShownOnce : C3632R.string.PhotoShownOnce);
        HintView2 hintView2 = this.secretHint;
        hintView2.setMaxWidthPx(HintView2.cutInFancyHalf(string, hintView2.getTextPaint()));
        this.secretHint.setText(string);
        this.secretHint.setInnerPadding(12, 7, 11, 7);
        this.secretHint.setIconMargin(2);
        this.secretHint.setIconTranslate(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        int i = C3632R.raw.fire_on;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m104dp(34), AndroidUtilities.m104dp(34));
        rLottieDrawable.start();
        this.secretHint.setIcon(rLottieDrawable);
        this.secretHint.show();
        MessagesController.getGlobalMainSettings().edit().putInt("viewoncehint", MessagesController.getGlobalMainSettings().getInt("viewoncehint", 0) + 1).commit();
    }

    public void openMedia(final MessageObject messageObject, PhotoViewer.PhotoViewerProvider photoViewerProvider, final Runnable runnable, Runnable runnable2) {
        PhotoViewer.PlaceProviderObject placeForPhoto;
        int i;
        float f;
        float f2;
        PhotoViewer.PlaceProviderObject placeProviderObject;
        char c;
        ImageLocation forDocument;
        if (this.parentActivity == null || messageObject == null || !messageObject.needDrawBluredPreview() || photoViewerProvider == null || (placeForPhoto = photoViewerProvider.getPlaceForPhoto(messageObject, null, 0, true)) == null) {
            return;
        }
        this.ignoreDelete = messageObject.messageOwner.ttl == Integer.MAX_VALUE;
        this.onClose = runnable2;
        this.currentProvider = photoViewerProvider;
        this.openTime = System.currentTimeMillis();
        this.closeTime = 0L;
        this.isActionBarVisible = true;
        this.isPhotoVisible = true;
        this.draggingDown = false;
        AspectRatioFrameLayout aspectRatioFrameLayout = this.aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setVisibility(4);
        }
        releasePlayer();
        this.pinchStartDistance = BitmapDescriptorFactory.HUE_RED;
        this.pinchStartScale = 1.0f;
        this.pinchCenterX = BitmapDescriptorFactory.HUE_RED;
        this.pinchCenterY = BitmapDescriptorFactory.HUE_RED;
        this.pinchStartX = BitmapDescriptorFactory.HUE_RED;
        this.pinchStartY = BitmapDescriptorFactory.HUE_RED;
        this.moveStartX = BitmapDescriptorFactory.HUE_RED;
        this.moveStartY = BitmapDescriptorFactory.HUE_RED;
        this.zooming = false;
        this.moving = false;
        this.doubleTap = false;
        this.invalidCoords = false;
        this.canDragDown = true;
        updateMinMax(this.scale);
        this.photoBackgroundDrawable.setAlpha(0);
        this.containerView.setAlpha(1.0f);
        this.containerView.setVisibility(0);
        this.secretDeleteTimer.setAlpha(1.0f);
        this.isVideo = false;
        this.videoWatchedOneTime = false;
        this.closeVideoAfterWatch = false;
        this.disableShowCheck = true;
        this.centerImage.setManualAlphaAnimator(false);
        this.videoWidth = 0;
        this.videoHeight = 0;
        RectF rectF = new RectF(placeForPhoto.imageReceiver.getDrawRegion());
        rectF.left = Math.max(rectF.left, placeForPhoto.imageReceiver.getImageX());
        rectF.top = Math.max(rectF.top, placeForPhoto.imageReceiver.getImageY());
        rectF.right = Math.min(rectF.right, placeForPhoto.imageReceiver.getImageX2());
        rectF.bottom = Math.min(rectF.bottom, placeForPhoto.imageReceiver.getImageY2());
        float width = rectF.width();
        float height = rectF.height();
        Point point = AndroidUtilities.displaySize;
        int i2 = point.x;
        this.scale = Math.max(width / i2, height / (point.y + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)));
        int[] iArr = placeForPhoto.radius;
        if (iArr != null) {
            this.animateFromRadius = new int[iArr.length];
            int i3 = 0;
            while (true) {
                int[] iArr2 = placeForPhoto.radius;
                if (i3 >= iArr2.length) {
                    break;
                }
                this.animateFromRadius[i3] = iArr2[i3];
                i3++;
            }
        } else {
            this.animateFromRadius = null;
        }
        float f3 = rectF.left;
        this.translationX = ((placeForPhoto.viewX + f3) + (width / 2.0f)) - (i2 / 2);
        this.translationY = ((placeForPhoto.viewY + rectF.top) + (height / 2.0f)) - (i / 2);
        this.clipHorizontal = Math.abs(f3 - placeForPhoto.imageReceiver.getImageX());
        int abs = (int) Math.abs(rectF.top - placeForPhoto.imageReceiver.getImageY());
        int[] iArr3 = new int[2];
        placeForPhoto.parentView.getLocationInWindow(iArr3);
        int i4 = iArr3[1];
        int i5 = Build.VERSION.SDK_INT;
        float f4 = ((i4 - (i5 >= 21 ? 0 : AndroidUtilities.statusBarHeight)) - (placeForPhoto.viewY + rectF.top)) + placeForPhoto.clipTopAddition;
        this.clipTop = f4;
        float f5 = abs;
        this.clipTop = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.max(f4, f5));
        float height2 = (((placeForPhoto.viewY + rectF.top) + ((int) height)) - ((iArr3[1] + placeForPhoto.parentView.getHeight()) - (i5 >= 21 ? 0 : AndroidUtilities.statusBarHeight))) + placeForPhoto.clipBottomAddition;
        this.clipBottom = height2;
        this.clipBottom = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.max(height2, f5));
        this.clipTopOrigin = BitmapDescriptorFactory.HUE_RED;
        this.clipTopOrigin = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.max((float) BitmapDescriptorFactory.HUE_RED, f5));
        this.clipBottomOrigin = BitmapDescriptorFactory.HUE_RED;
        this.clipBottomOrigin = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.max((float) BitmapDescriptorFactory.HUE_RED, f5));
        this.animationStartTime = System.currentTimeMillis();
        this.animateToX = BitmapDescriptorFactory.HUE_RED;
        this.animateToY = BitmapDescriptorFactory.HUE_RED;
        this.animateToClipBottom = BitmapDescriptorFactory.HUE_RED;
        this.animateToClipBottomOrigin = BitmapDescriptorFactory.HUE_RED;
        this.animateToClipHorizontal = BitmapDescriptorFactory.HUE_RED;
        this.animateToClipTop = BitmapDescriptorFactory.HUE_RED;
        this.animateToClipTopOrigin = BitmapDescriptorFactory.HUE_RED;
        this.animateToScale = 1.0f;
        this.animateToRadius = true;
        this.zoomAnimation = true;
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagesDeleted);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateMessageMedia);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didCreatedNewDeleteTask);
        this.currentDialogId = MessageObject.getPeerId(messageObject.messageOwner.peer_id);
        this.currentMessageObject = messageObject;
        TLRPC$Document document = messageObject.getDocument();
        ImageReceiver.BitmapHolder bitmapHolder = this.currentThumb;
        if (bitmapHolder != null) {
            bitmapHolder.release();
            this.currentThumb = null;
        }
        this.currentThumb = placeForPhoto.imageReceiver.getThumbBitmapSafe();
        this.seekbarContainer.setVisibility(8);
        if (document != null) {
            int i6 = 0;
            while (true) {
                if (i6 >= document.attributes.size()) {
                    break;
                }
                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = document.attributes.get(i6);
                if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo) {
                    TLRPC$TL_documentAttributeVideo tLRPC$TL_documentAttributeVideo = (TLRPC$TL_documentAttributeVideo) tLRPC$DocumentAttribute;
                    this.videoWidth = tLRPC$TL_documentAttributeVideo.f1613w;
                    this.videoHeight = tLRPC$TL_documentAttributeVideo.f1612h;
                    break;
                }
                i6++;
            }
            if (MessageObject.isGifDocument(document)) {
                this.actionBar.setTitle(LocaleController.getString("DisappearingGif", C3632R.string.DisappearingGif));
                String str = messageObject.messageOwner.attachPath;
                if (str != null && messageObject.attachPathExists) {
                    forDocument = ImageLocation.getForPath(str);
                } else {
                    forDocument = ImageLocation.getForDocument(document);
                }
                f = 1.0f;
                f2 = 0.0f;
                c = 4;
                placeProviderObject = placeForPhoto;
                this.centerImage.setImage(forDocument, (String) null, this.currentThumb != null ? new BitmapDrawable(this.currentThumb.bitmap) : null, -1L, (String) null, messageObject, 1);
            } else {
                f = 1.0f;
                f2 = 0.0f;
                placeProviderObject = placeForPhoto;
                c = 4;
                this.playerRetryPlayCount = 1;
                this.actionBar.setTitle(LocaleController.getString("DisappearingVideo", C3632R.string.DisappearingVideo));
                File file = new File(messageObject.messageOwner.attachPath);
                if (file.exists()) {
                    preparePlayer(file);
                } else {
                    File pathToMessage = FileLoader.getInstance(this.currentAccount).getPathToMessage(messageObject.messageOwner);
                    File file2 = new File(pathToMessage.getAbsolutePath() + ".enc");
                    if (file2.exists()) {
                        pathToMessage = file2;
                    }
                    preparePlayer(pathToMessage);
                }
                this.isVideo = true;
                this.seekbarContainer.setVisibility(0);
                this.centerImage.setImage((ImageLocation) null, (String) null, this.currentThumb != null ? new BitmapDrawable(this.currentThumb.bitmap) : null, -1L, (String) null, messageObject, 2);
            }
        } else {
            f = 1.0f;
            f2 = 0.0f;
            placeProviderObject = placeForPhoto;
            c = 4;
            this.actionBar.setTitle(LocaleController.getString("DisappearingPhoto", C3632R.string.DisappearingPhoto));
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
            this.centerImage.setImage(ImageLocation.getForObject(closestPhotoSizeWithSize, messageObject.photoThumbsObject), (String) null, this.currentThumb != null ? new BitmapDrawable(this.currentThumb.bitmap) : null, -1L, (String) null, messageObject, 2);
            if (closestPhotoSizeWithSize != null) {
                this.videoWidth = closestPhotoSizeWithSize.f1634w;
                this.videoHeight = closestPhotoSizeWithSize.f1633h;
            }
        }
        setCurrentCaption(messageObject, "", false, false);
        setCurrentCaption(messageObject, messageObject.caption, false, true);
        toggleActionBar(true, false);
        showPlayButton(false, false);
        this.playButtonDrawable.setPause(true);
        if (this.ignoreDelete) {
            this.secretDeleteTimer.setOnce();
            this.secretDeleteTimer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SecretMediaViewer$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SecretMediaViewer.this.lambda$openMedia$3(view);
                }
            });
        } else {
            this.secretDeleteTimer.setOnClickListener(null);
        }
        try {
            if (this.windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeView(this.windowView);
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
        ((WindowManager) this.parentActivity.getSystemService("window")).addView(this.windowView, this.windowLayoutParams);
        this.secretDeleteTimer.invalidate();
        this.isVisible = true;
        Window window = this.parentActivity.getWindow();
        int i7 = Build.VERSION.SDK_INT;
        if (i7 >= 21) {
            this.wasLightNavigationBar = AndroidUtilities.getLightNavigationBar(window);
            AndroidUtilities.setLightNavigationBar(window, false);
            AndroidUtilities.setLightNavigationBar((View) this.windowView, false);
            Activity activity = this.parentActivity;
            if (activity instanceof LaunchActivity) {
                this.wasNavigationBarColor = ((LaunchActivity) activity).getNavigationBarColor();
                ((LaunchActivity) this.parentActivity).animateNavigationBarColor(-16777216);
            } else {
                this.wasNavigationBarColor = window.getNavigationBarColor();
                AndroidUtilities.setNavigationBarColor(window, -16777216);
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        this.imageMoveAnimation = animatorSet;
        Animator[] animatorArr = new Animator[7];
        animatorArr[0] = ObjectAnimator.ofFloat(this.actionBar, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f);
        animatorArr[1] = ObjectAnimator.ofFloat(this.captionScrollView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f);
        animatorArr[2] = ObjectAnimator.ofFloat(this.secretHint, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f);
        animatorArr[3] = ObjectAnimator.ofInt(this.photoBackgroundDrawable, (Property<PhotoBackgroundDrawable, Integer>) AnimationProperties.COLOR_DRAWABLE_ALPHA, 0, 255);
        animatorArr[c] = ObjectAnimator.ofFloat(this, "animationValue", BitmapDescriptorFactory.HUE_RED, 1.0f);
        VideoPlayerControlFrameLayout videoPlayerControlFrameLayout = this.seekbarContainer;
        animatorArr[5] = ObjectAnimator.ofFloat(videoPlayerControlFrameLayout, videoPlayerControlFrameLayout.SEEKBAR_ALPHA, f);
        VideoPlayerControlFrameLayout videoPlayerControlFrameLayout2 = this.seekbarContainer;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        if (this.isVideo) {
            f2 = f;
        }
        fArr[0] = f2;
        animatorArr[6] = ObjectAnimator.ofFloat(videoPlayerControlFrameLayout2, property, fArr);
        animatorSet.playTogether(animatorArr);
        this.photoAnimationInProgress = 3;
        this.photoAnimationEndRunnable = new Runnable() { // from class: org.telegram.ui.SecretMediaViewer$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                SecretMediaViewer.this.lambda$openMedia$4(runnable, messageObject);
            }
        };
        this.imageMoveAnimation.setDuration(250L);
        this.imageMoveAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SecretMediaViewer.14
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (SecretMediaViewer.this.photoAnimationEndRunnable != null) {
                    SecretMediaViewer.this.photoAnimationEndRunnable.run();
                    SecretMediaViewer.this.photoAnimationEndRunnable = null;
                }
            }
        });
        this.photoTransitionAnimationStartTime = System.currentTimeMillis();
        if (i7 >= 18 && SharedConfig.getDevicePerformanceClass() == 0) {
            this.containerView.setLayerType(2, null);
        }
        this.imageMoveAnimation.setInterpolator(new DecelerateInterpolator());
        this.photoBackgroundDrawable.frame = 0;
        final PhotoViewer.PlaceProviderObject placeProviderObject2 = placeProviderObject;
        this.photoBackgroundDrawable.drawRunnable = new Runnable() { // from class: org.telegram.ui.SecretMediaViewer$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                SecretMediaViewer.this.lambda$openMedia$5(placeProviderObject2);
            }
        };
        this.imageMoveAnimation.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openMedia$3(View view) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null) {
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            if (tLRPC$Message.destroyTime != 0 || tLRPC$Message.ttl == Integer.MAX_VALUE) {
                if (this.secretHint.shown()) {
                    this.secretHint.hide();
                } else {
                    showSecretHint();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openMedia$4(Runnable runnable, MessageObject messageObject) {
        this.photoAnimationInProgress = 0;
        this.imageMoveAnimation = null;
        if (runnable != null) {
            runnable.run();
        }
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        if (frameLayoutDrawer == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            frameLayoutDrawer.setLayerType(0, null);
        }
        this.containerView.invalidate();
        SecretDeleteTimer secretDeleteTimer = this.secretDeleteTimer;
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        secretDeleteTimer.setDestroyTime(tLRPC$Message.destroyTimeMillis, tLRPC$Message.ttl, false);
        if (this.closeAfterAnimation) {
            closePhoto(true, true);
        } else if (!this.ignoreDelete || MessagesController.getGlobalMainSettings().getInt("viewoncehint", 0) >= 3) {
        } else {
            showSecretHint();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openMedia$5(PhotoViewer.PlaceProviderObject placeProviderObject) {
        this.disableShowCheck = false;
        placeProviderObject.imageReceiver.setVisible(false, true);
    }

    public boolean isShowingImage(MessageObject messageObject) {
        MessageObject messageObject2;
        return (!this.isVisible || this.disableShowCheck || messageObject == null || (messageObject2 = this.currentMessageObject) == null || messageObject2.getId() != messageObject.getId()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        toggleActionBar(false, true);
    }

    private void toggleActionBar(boolean z, boolean z2) {
        AndroidUtilities.cancelRunOnUIThread(this.hideActionBarRunnable);
        if (z && this.isVideo) {
            AndroidUtilities.runOnUIThread(this.hideActionBarRunnable, C0485C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        }
        if (z) {
            this.actionBar.setVisibility(0);
        }
        this.actionBar.setEnabled(z);
        this.isActionBarVisible = z;
        showPlayButton(z, z2);
        if (z2) {
            ArrayList arrayList = new ArrayList();
            C3704ActionBar c3704ActionBar = this.actionBar;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(c3704ActionBar, property, fArr));
            VideoPlayerControlFrameLayout videoPlayerControlFrameLayout = this.seekbarContainer;
            Property<VideoPlayerControlFrameLayout, Float> property2 = videoPlayerControlFrameLayout.SEEKBAR_ALPHA;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(videoPlayerControlFrameLayout, property2, fArr2));
            PhotoViewer.CaptionScrollView captionScrollView = this.captionScrollView;
            Property property3 = View.ALPHA;
            float[] fArr3 = new float[1];
            fArr3[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(captionScrollView, property3, fArr3));
            View view = this.seekbarBackground;
            Property property4 = View.ALPHA;
            float[] fArr4 = new float[1];
            fArr4[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(view, property4, fArr4));
            View view2 = this.navigationBar;
            Property property5 = View.ALPHA;
            float[] fArr5 = new float[1];
            fArr5[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(view2, property5, fArr5));
            AnimatorSet animatorSet = new AnimatorSet();
            this.currentActionBarAnimation = animatorSet;
            animatorSet.playTogether(arrayList);
            if (!z) {
                this.currentActionBarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SecretMediaViewer.15
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (SecretMediaViewer.this.currentActionBarAnimation == null || !SecretMediaViewer.this.currentActionBarAnimation.equals(animator)) {
                            return;
                        }
                        SecretMediaViewer.this.actionBar.setVisibility(8);
                        SecretMediaViewer.this.currentActionBarAnimation = null;
                        SecretMediaViewer.this.captionScrollView.scrollTo(0, 0);
                    }
                });
            }
            this.currentActionBarAnimation.setDuration(200L);
            this.currentActionBarAnimation.start();
            return;
        }
        this.actionBar.setAlpha(z ? 1.0f : 0.0f);
        this.captionScrollView.setAlpha(z ? 1.0f : 0.0f);
        this.seekbarBackground.setAlpha(z ? 1.0f : 0.0f);
        this.navigationBar.setAlpha(z ? 1.0f : 0.0f);
        if (z) {
            return;
        }
        this.actionBar.setVisibility(8);
        this.captionScrollView.scrollTo(0, 0);
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public void setOnClose(Runnable runnable) {
        this.onClose = runnable;
    }

    public void destroyPhotoViewer() {
        FrameLayout frameLayout;
        Runnable runnable = this.onClose;
        if (runnable != null) {
            runnable.run();
            this.onClose = null;
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagesDeleted);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateMessageMedia);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didCreatedNewDeleteTask);
        this.isVisible = false;
        this.currentProvider = null;
        ImageReceiver.BitmapHolder bitmapHolder = this.currentThumb;
        if (bitmapHolder != null) {
            bitmapHolder.release();
            this.currentThumb = null;
        }
        releasePlayer();
        if (this.parentActivity != null && (frameLayout = this.windowView) != null) {
            try {
                if (frameLayout.getParent() != null) {
                    ((WindowManager) this.parentActivity.getSystemService("window")).removeViewImmediate(this.windowView);
                }
                this.windowView = null;
            } catch (Exception e) {
                FileLog.m99e(e);
            }
        }
        Instance = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0307  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r21) {
        /*
            Method dump skipped, instructions count: 860
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.SecretMediaViewer.onDraw(android.graphics.Canvas):void");
    }

    @Keep
    public float getVideoCrossfadeAlpha() {
        return this.videoCrossfadeAlpha;
    }

    @Keep
    public void setVideoCrossfadeAlpha(float f) {
        this.videoCrossfadeAlpha = f;
        this.containerView.invalidate();
    }

    private boolean checkPhotoAnimation() {
        if (this.photoAnimationInProgress != 0 && Math.abs(this.photoTransitionAnimationStartTime - System.currentTimeMillis()) >= 500) {
            Runnable runnable = this.photoAnimationEndRunnable;
            if (runnable != null) {
                runnable.run();
                this.photoAnimationEndRunnable = null;
            }
            this.photoAnimationInProgress = 0;
        }
        return this.photoAnimationInProgress != 0;
    }

    public long getOpenTime() {
        return this.openTime;
    }

    public long getCloseTime() {
        return this.closeTime;
    }

    public MessageObject getCurrentMessageObject() {
        return this.currentMessageObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x03cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean closePhoto(boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.SecretMediaViewer.closePhoto(boolean, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePhoto$7(PhotoViewer.PlaceProviderObject placeProviderObject) {
        this.imageMoveAnimation = null;
        this.photoAnimationInProgress = 0;
        if (Build.VERSION.SDK_INT >= 18) {
            this.containerView.setLayerType(0, null);
        }
        this.containerView.setVisibility(4);
        onPhotoClosed(placeProviderObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.SecretMediaViewer$16 */
    /* loaded from: classes5.dex */
    public class C691616 extends AnimatorListenerAdapter {
        final /* synthetic */ PhotoViewer.PlaceProviderObject val$object;

        C691616(PhotoViewer.PlaceProviderObject placeProviderObject) {
            this.val$object = placeProviderObject;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            PhotoViewer.PlaceProviderObject placeProviderObject = this.val$object;
            if (placeProviderObject != null) {
                placeProviderObject.imageReceiver.setVisible(true, true);
            }
            SecretMediaViewer.this.isVisible = false;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SecretMediaViewer$16$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SecretMediaViewer.C691616.this.lambda$onAnimationEnd$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            if (SecretMediaViewer.this.photoAnimationEndRunnable != null) {
                SecretMediaViewer.this.photoAnimationEndRunnable.run();
                SecretMediaViewer.this.photoAnimationEndRunnable = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePhoto$8(PhotoViewer.PlaceProviderObject placeProviderObject) {
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        if (frameLayoutDrawer == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            frameLayoutDrawer.setLayerType(0, null);
        }
        this.containerView.setVisibility(4);
        this.photoAnimationInProgress = 0;
        onPhotoClosed(placeProviderObject);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
    }

    private void onPhotoClosed(PhotoViewer.PlaceProviderObject placeProviderObject) {
        this.isVisible = false;
        this.currentProvider = null;
        this.disableShowCheck = false;
        releasePlayer();
        new ArrayList();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SecretMediaViewer$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                SecretMediaViewer.this.lambda$onPhotoClosed$9();
            }
        }, 50L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPhotoClosed$9() {
        ImageReceiver.BitmapHolder bitmapHolder = this.currentThumb;
        if (bitmapHolder != null) {
            bitmapHolder.release();
            this.currentThumb = null;
        }
        this.centerImage.setImageBitmap((Bitmap) null);
        try {
            if (this.windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeView(this.windowView);
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
        this.isPhotoVisible = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMinMax(float f) {
        int imageWidth = ((int) ((this.centerImage.getImageWidth() * f) - getContainerViewWidth())) / 2;
        int imageHeight = ((int) ((this.centerImage.getImageHeight() * f) - getContainerViewHeight())) / 2;
        if (imageWidth > 0) {
            this.minX = -imageWidth;
            this.maxX = imageWidth;
        } else {
            this.maxX = BitmapDescriptorFactory.HUE_RED;
            this.minX = BitmapDescriptorFactory.HUE_RED;
        }
        if (imageHeight > 0) {
            this.minY = -imageHeight;
            this.maxY = imageHeight;
            return;
        }
        this.maxY = BitmapDescriptorFactory.HUE_RED;
        this.minY = BitmapDescriptorFactory.HUE_RED;
    }

    private int getContainerViewWidth() {
        return this.containerView.getWidth();
    }

    private int getContainerViewHeight() {
        return this.containerView.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0267, code lost:
        if (r13 > r3) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0276, code lost:
        if (r0 > r3) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x02d8, code lost:
        if (r2 > r3) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02e9, code lost:
        if (r2 > r3) goto L140;
     */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean processTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 887
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.SecretMediaViewer.processTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r2 > r3) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
        if (r2 > r3) goto L3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkMinMax(boolean r6) {
        /*
            r5 = this;
            float r0 = r5.translationX
            float r1 = r5.translationY
            float r2 = r5.scale
            r5.updateMinMax(r2)
            float r2 = r5.translationX
            float r3 = r5.minX
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 >= 0) goto L13
        L11:
            r0 = r3
            goto L1a
        L13:
            float r3 = r5.maxX
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L1a
            goto L11
        L1a:
            float r2 = r5.translationY
            float r3 = r5.minY
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 >= 0) goto L24
        L22:
            r1 = r3
            goto L2b
        L24:
            float r3 = r5.maxY
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L2b
            goto L22
        L2b:
            float r2 = r5.scale
            r5.animateTo(r2, r0, r1, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.SecretMediaViewer.checkMinMax(boolean):void");
    }

    private void animateTo(float f, float f2, float f3, boolean z) {
        animateTo(f, f2, f3, z, 250);
    }

    private void animateTo(float f, float f2, float f3, boolean z, int i) {
        if (this.scale == f && this.translationX == f2 && this.translationY == f3) {
            return;
        }
        this.zoomAnimation = z;
        this.animateToScale = f;
        this.animateToX = f2;
        this.animateToY = f3;
        this.animationStartTime = System.currentTimeMillis();
        AnimatorSet animatorSet = new AnimatorSet();
        this.imageMoveAnimation = animatorSet;
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, "animationValue", BitmapDescriptorFactory.HUE_RED, 1.0f));
        this.imageMoveAnimation.setInterpolator(this.interpolator);
        this.imageMoveAnimation.setDuration(i);
        this.imageMoveAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SecretMediaViewer.18
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SecretMediaViewer.this.imageMoveAnimation = null;
                SecretMediaViewer.this.containerView.invalidate();
            }
        });
        this.imageMoveAnimation.start();
    }

    @Keep
    public void setAnimationValue(float f) {
        this.animationValue = f;
        this.containerView.invalidate();
    }

    @Keep
    public float getAnimationValue() {
        return this.animationValue;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.scale != 1.0f) {
            this.scroller.abortAnimation();
            this.scroller.fling(Math.round(this.translationX), Math.round(this.translationY), Math.round(f), Math.round(f2), (int) this.minX, (int) this.maxX, (int) this.minY, (int) this.maxY);
            this.containerView.postInvalidate();
            return false;
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        if (this.discardTap) {
            return false;
        }
        if (this.videoPlayer != null && this.isActionBarVisible && motionEvent.getX() >= this.playButton.getX() && motionEvent.getY() >= this.playButton.getY() && motionEvent.getX() <= this.playButton.getX() + this.playButton.getMeasuredWidth() && motionEvent.getX() <= this.playButton.getX() + this.playButton.getMeasuredWidth()) {
            VideoPlayer videoPlayer = this.videoPlayer;
            videoPlayer.setPlayWhenReady(!videoPlayer.getPlayWhenReady());
            if (this.videoPlayer.getPlayWhenReady()) {
                toggleActionBar(true, true);
            } else {
                showPlayButton(true, true);
            }
        } else {
            toggleActionBar(!this.isActionBarVisible, true);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007d, code lost:
        if (r0 > r10) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008c, code lost:
        if (r1 > r10) goto L20;
     */
    @Override // android.view.GestureDetector.OnDoubleTapListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onDoubleTap(android.view.MotionEvent r10) {
        /*
            r9 = this;
            float r0 = r9.scale
            r1 = 1065353216(0x3f800000, float:1.0)
            int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r3 = 0
            r4 = 0
            if (r2 != 0) goto L17
            float r2 = r9.translationY
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 != 0) goto L16
            float r2 = r9.translationX
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 == 0) goto L17
        L16:
            return r3
        L17:
            long r5 = r9.animationStartTime
            r7 = 0
            int r2 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r2 != 0) goto L99
            int r2 = r9.photoAnimationInProgress
            if (r2 == 0) goto L25
            goto L99
        L25:
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r2 = 1
            if (r0 != 0) goto L93
            float r0 = r10.getX()
            int r1 = r9.getContainerViewWidth()
            int r1 = r1 / 2
            float r1 = (float) r1
            float r0 = r0 - r1
            float r1 = r10.getX()
            int r3 = r9.getContainerViewWidth()
            int r3 = r3 / 2
            float r3 = (float) r3
            float r1 = r1 - r3
            float r3 = r9.translationX
            float r1 = r1 - r3
            float r3 = r9.scale
            r4 = 1077936128(0x40400000, float:3.0)
            float r3 = r4 / r3
            float r1 = r1 * r3
            float r0 = r0 - r1
            float r1 = r10.getY()
            int r3 = r9.getContainerViewHeight()
            int r3 = r3 / 2
            float r3 = (float) r3
            float r1 = r1 - r3
            float r10 = r10.getY()
            int r3 = r9.getContainerViewHeight()
            int r3 = r3 / 2
            float r3 = (float) r3
            float r10 = r10 - r3
            float r3 = r9.translationY
            float r10 = r10 - r3
            float r3 = r9.scale
            float r3 = r4 / r3
            float r10 = r10 * r3
            float r1 = r1 - r10
            r9.updateMinMax(r4)
            float r10 = r9.minX
            int r3 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r3 >= 0) goto L79
        L77:
            r0 = r10
            goto L80
        L79:
            float r10 = r9.maxX
            int r3 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r3 <= 0) goto L80
            goto L77
        L80:
            float r10 = r9.minY
            int r3 = (r1 > r10 ? 1 : (r1 == r10 ? 0 : -1))
            if (r3 >= 0) goto L88
        L86:
            r1 = r10
            goto L8f
        L88:
            float r10 = r9.maxY
            int r3 = (r1 > r10 ? 1 : (r1 == r10 ? 0 : -1))
            if (r3 <= 0) goto L8f
            goto L86
        L8f:
            r9.animateTo(r4, r0, r1, r2)
            goto L96
        L93:
            r9.animateTo(r1, r4, r4, r2)
        L96:
            r9.doubleTap = r2
            return r2
        L99:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.SecretMediaViewer.onDoubleTap(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.SecretMediaViewer$VideoPlayerControlFrameLayout */
    /* loaded from: classes5.dex */
    public class VideoPlayerControlFrameLayout extends FrameLayout {
        public final Property<VideoPlayerControlFrameLayout, Float> SEEKBAR_ALPHA;
        private boolean ignoreLayout;
        private int lastTimeWidth;
        private int parentHeight;
        private int parentWidth;
        private float progress;
        private boolean seekBarTransitionEnabled;
        private SpringAnimation timeSpring;
        private FloatValueHolder timeValue;
        private boolean translationYAnimationEnabled;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(DynamicAnimation dynamicAnimation, float f, float f2) {
            SecretMediaViewer.this.seekbar.setSize((int) (((getMeasuredWidth() - AndroidUtilities.m104dp(16)) - f) - (this.parentWidth > this.parentHeight ? AndroidUtilities.m104dp(48) : 0)), getMeasuredHeight());
        }

        public VideoPlayerControlFrameLayout(Context context) {
            super(context);
            this.progress = 1.0f;
            this.seekBarTransitionEnabled = true;
            this.translationYAnimationEnabled = true;
            this.timeValue = new FloatValueHolder(BitmapDescriptorFactory.HUE_RED);
            this.timeSpring = new SpringAnimation(this.timeValue).setSpring(new SpringForce(BitmapDescriptorFactory.HUE_RED).setStiffness(750.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.SecretMediaViewer$VideoPlayerControlFrameLayout$$ExternalSyntheticLambda0
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    SecretMediaViewer.VideoPlayerControlFrameLayout.this.lambda$new$0(dynamicAnimation, f, f2);
                }
            });
            this.SEEKBAR_ALPHA = new AnimationProperties.FloatProperty<VideoPlayerControlFrameLayout>(this, "progress") { // from class: org.telegram.ui.SecretMediaViewer.VideoPlayerControlFrameLayout.1
                @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
                public void setValue(VideoPlayerControlFrameLayout videoPlayerControlFrameLayout, float f) {
                    videoPlayerControlFrameLayout.setProgress(f);
                }

                @Override // android.util.Property
                public Float get(VideoPlayerControlFrameLayout videoPlayerControlFrameLayout) {
                    return Float.valueOf(videoPlayerControlFrameLayout.getProgress());
                }
            };
            setWillNotDraw(false);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (this.progress < 1.0f) {
                return false;
            }
            if (SecretMediaViewer.this.seekbar.onTouch(motionEvent.getAction(), motionEvent.getX() - AndroidUtilities.m104dp(2), motionEvent.getY())) {
                getParent().requestDisallowInterceptTouchEvent(true);
                SecretMediaViewer.this.seekbarView.invalidate();
            }
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.timeValue.setValue(BitmapDescriptorFactory.HUE_RED);
            this.lastTimeWidth = 0;
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            String format;
            this.ignoreLayout = true;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SecretMediaViewer.this.videoPlayerTime.getLayoutParams();
            if (this.parentWidth > this.parentHeight) {
                i3 = AndroidUtilities.m104dp(48);
                layoutParams.rightMargin = AndroidUtilities.m104dp(47);
            } else {
                layoutParams.rightMargin = AndroidUtilities.m104dp(12);
                i3 = 0;
            }
            this.ignoreLayout = false;
            super.onMeasure(i, i2);
            long j = 0;
            if (SecretMediaViewer.this.videoPlayer != null) {
                long duration = SecretMediaViewer.this.videoPlayer.getDuration();
                if (duration != C0485C.TIME_UNSET) {
                    j = duration;
                }
            }
            long j2 = j / 1000;
            long j3 = j2 / 60;
            if (j3 > 60) {
                format = String.format(Locale.ROOT, "%02d:%02d:%02d", Long.valueOf(j3 / 60), Long.valueOf(j3 % 60), Long.valueOf(j2 % 60));
            } else {
                format = String.format(Locale.ROOT, "%02d:%02d", Long.valueOf(j3), Long.valueOf(j2 % 60));
            }
            int ceil = (int) Math.ceil(SecretMediaViewer.this.videoPlayerTime.getPaint().measureText(String.format(Locale.ROOT, "%1$s / %1$s", format)));
            this.timeSpring.cancel();
            if (this.lastTimeWidth != 0) {
                float f = ceil;
                if (this.timeValue.getValue() != f) {
                    this.timeSpring.getSpring().setFinalPosition(f);
                    this.timeSpring.start();
                    this.lastTimeWidth = ceil;
                }
            }
            SecretMediaViewer.this.seekbar.setSize(((getMeasuredWidth() - AndroidUtilities.m104dp(16)) - ceil) - i3, getMeasuredHeight());
            this.timeValue.setValue(ceil);
            this.lastTimeWidth = ceil;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            SecretMediaViewer.this.seekbar.setProgress(SecretMediaViewer.this.videoPlayer != null ? ((float) SecretMediaViewer.this.videoPlayer.getCurrentPosition()) / ((float) SecretMediaViewer.this.videoPlayer.getDuration()) : BitmapDescriptorFactory.HUE_RED);
        }

        public float getProgress() {
            return this.progress;
        }

        public void setProgress(float f) {
            if (this.progress != f) {
                this.progress = f;
                onProgressChanged(f);
            }
        }

        private void onProgressChanged(float f) {
            SecretMediaViewer.this.videoPlayerTime.setAlpha(f);
            if (this.seekBarTransitionEnabled) {
                SecretMediaViewer.this.videoPlayerTime.setPivotX(SecretMediaViewer.this.videoPlayerTime.getWidth());
                SecretMediaViewer.this.videoPlayerTime.setPivotY(SecretMediaViewer.this.videoPlayerTime.getHeight());
                float f2 = 1.0f - f;
                float f3 = 1.0f - (0.1f * f2);
                SecretMediaViewer.this.videoPlayerTime.setScaleX(f3);
                SecretMediaViewer.this.videoPlayerTime.setScaleY(f3);
                SecretMediaViewer.this.seekbar.setTransitionProgress(f2);
                return;
            }
            if (this.translationYAnimationEnabled) {
                setTranslationY(AndroidUtilities.dpf2(24.0f) * (1.0f - f));
            }
            SecretMediaViewer.this.seekbarView.setAlpha(f);
        }
    }

    private void setCaptionHwLayerEnabled(boolean z) {
        if (this.captionHwLayerEnabled != z) {
            this.captionHwLayerEnabled = z;
            this.captionTextViewSwitcher.setLayerType(2, null);
            this.captionTextViewSwitcher.getCurrentView().setLayerType(2, null);
            this.captionTextViewSwitcher.getNextView().setLayerType(2, null);
        }
    }
}
