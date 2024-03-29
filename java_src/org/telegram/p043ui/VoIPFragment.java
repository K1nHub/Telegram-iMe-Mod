package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.PowerManager;
import android.text.Layout;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.C0483C;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.voip.EncryptionKeyEmojifier;
import org.telegram.messenger.voip.VideoCapturerDevice;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.messenger.voip.VoipAudioManager;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.DarkAlertDialog;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackgroundGradientDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.HideViewAfterAnimation;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.voip.AcceptDeclineView;
import org.telegram.p043ui.Components.voip.EmojiRationalLayout;
import org.telegram.p043ui.Components.voip.EndCloseLayout;
import org.telegram.p043ui.Components.voip.HideEmojiTextView;
import org.telegram.p043ui.Components.voip.ImageWithWavesView;
import org.telegram.p043ui.Components.voip.PrivateVideoPreviewDialogNew;
import org.telegram.p043ui.Components.voip.RateCallLayout;
import org.telegram.p043ui.Components.voip.VoIPBackgroundProvider;
import org.telegram.p043ui.Components.voip.VoIPButtonsLayout;
import org.telegram.p043ui.Components.voip.VoIPFloatingLayout;
import org.telegram.p043ui.Components.voip.VoIPHelper;
import org.telegram.p043ui.Components.voip.VoIPNotificationsLayout;
import org.telegram.p043ui.Components.voip.VoIPPiPView;
import org.telegram.p043ui.Components.voip.VoIPStatusTextView;
import org.telegram.p043ui.Components.voip.VoIPTextureView;
import org.telegram.p043ui.Components.voip.VoIPToggleButton;
import org.telegram.p043ui.Components.voip.VoIPWindowView;
import org.telegram.p043ui.Components.voip.VoIpCoverView;
import org.telegram.p043ui.Components.voip.VoIpGradientLayout;
import org.telegram.p043ui.Components.voip.VoIpHintView;
import org.telegram.p043ui.Components.voip.VoIpSnowView;
import org.telegram.p043ui.Components.voip.VoIpSwitchLayout;
import org.telegram.p043ui.Stories.recorder.HintView2;
import org.telegram.p043ui.VoIPFragment;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$PhoneCall;
import org.telegram.tgnet.TLRPC$User;
import org.webrtc.EglBase;
import org.webrtc.GlRectDrawer;
import org.webrtc.RendererCommon;
import org.webrtc.TextureViewRenderer;
/* renamed from: org.telegram.ui.VoIPFragment */
/* loaded from: classes5.dex */
public class VoIPFragment implements VoIPService.StateListener, NotificationCenter.NotificationCenterDelegate {
    private static VoIPFragment instance;
    private AcceptDeclineView acceptDeclineView;
    private AccessibilityManager accessibilityManager;
    Activity activity;
    private ImageView backIcon;
    private VoIPToggleButton bottomEndCallBtn;
    private VoIpSwitchLayout bottomMuteBtn;
    View bottomShadow;
    private VoIpSwitchLayout bottomSpeakerBtn;
    private VoIpSwitchLayout bottomVideoBtn;
    private VoIPButtonsLayout buttonsLayout;
    TLRPC$User callingUser;
    boolean callingUserIsVideo;
    private VoIPFloatingLayout callingUserMiniFloatingLayout;
    private TextureViewRenderer callingUserMiniTextureRenderer;
    private ImageWithWavesView callingUserPhotoViewMini;
    private VoIPTextureView callingUserTextureView;
    private TextView callingUserTitle;
    boolean cameraForceExpanded;
    private Animator cameraShowingAnimator;
    private boolean canHideUI;
    private boolean canSwitchToPip;
    private boolean canZoomGesture;
    private final int currentAccount;
    private int currentState;
    private VoIPFloatingLayout currentUserCameraFloatingLayout;
    private boolean currentUserCameraIsFullscreen;
    boolean currentUserIsVideo;
    private VoIPTextureView currentUserTextureView;
    private boolean deviceIsLocked;
    private boolean emojiExpanded;
    LinearLayout emojiLayout;
    private boolean emojiLoaded;
    LinearLayout emojiRationalLayout;
    TextView emojiRationalTextView;
    TextView emojiRationalTopTextView;
    HintView2 encryptionTooltip;
    EndCloseLayout endCloseLayout;
    boolean enterFromPiP;
    private float enterTransitionProgress;
    float fillNaviagtionBarValue;
    private ViewGroup fragmentView;
    private VoIpGradientLayout gradientLayout;
    FrameLayout hideEmojiLayout;
    TextView hideEmojiTextView;
    boolean hideUiRunnableWaiting;
    private boolean isFinished;
    private boolean isInPinchToZoomTouchMode;
    private boolean isNearEar;
    private boolean isVideoCall;
    long lastContentTapTime;
    private WindowInsets lastInsets;
    private boolean lockOnScreen;
    VoIPNotificationsLayout notificationsLayout;
    private float pinchCenterX;
    private float pinchCenterY;
    private float pinchStartCenterX;
    private float pinchStartCenterY;
    private float pinchStartDistance;
    private float pinchTranslationX;
    private float pinchTranslationY;
    private int pointerId1;
    private int pointerId2;
    private PrivateVideoPreviewDialogNew previewDialog;
    private int previousState;
    RateCallLayout rateCallLayout;
    private boolean screenWasWakeup;
    private int selectedRating;
    private boolean signalBarWasReceived;
    private ImageView speakerPhoneIcon;
    LinearLayout statusLayout;
    private int statusLayoutAnimateToOffset;
    private VoIPStatusTextView statusTextView;
    private boolean switchingToPip;
    HintView2 tapToVideoTooltip;
    View topShadow;
    float touchSlop;
    ValueAnimator uiVisibilityAnimator;
    private VoIpCoverView voIpCoverView;
    private VoIpSnowView voIpSnowView;
    private boolean wasEstablished;
    private VoIPWindowView windowView;
    ValueAnimator zoomBackAnimator;
    private boolean zoomStarted;
    private final VoIPBackgroundProvider backgroundProvider = new VoIPBackgroundProvider();
    BackupImageView[] emojiViews = new BackupImageView[4];
    Emoji.EmojiDrawable[] emojiDrawables = new Emoji.EmojiDrawable[4];
    Paint overlayPaint = new Paint();
    Paint overlayBottomPaint = new Paint();
    private boolean uiVisible = true;
    float uiVisibilityAlpha = 1.0f;
    AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();
    ValueAnimator.AnimatorUpdateListener statusbarAnimatorListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda0
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            VoIPFragment.this.lambda$new$0(valueAnimator);
        }
    };
    Runnable hideUIRunnable = new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda30
        @Override // java.lang.Runnable
        public final void run() {
            VoIPFragment.this.lambda$new$1();
        }
    };
    Runnable stopAnimatingBgRunnable = new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda23
        @Override // java.lang.Runnable
        public final void run() {
            VoIPFragment.this.lambda$new$2();
        }
    };
    float pinchScale = 1.0f;

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onCameraFirstFrameAvailable() {
        VoIPService.StateListener.CC.$default$onCameraFirstFrameAvailable(this);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onScreenOnChange(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
        this.uiVisibilityAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateSystemBarColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        this.hideUiRunnableWaiting = false;
        HintView2 hintView2 = this.tapToVideoTooltip;
        boolean z = hintView2 != null && hintView2.shown();
        if (!this.canHideUI || !this.uiVisible || this.emojiExpanded || z) {
            return;
        }
        this.lastContentTapTime = System.currentTimeMillis();
        showUi(false);
        this.previousState = this.currentState;
        updateViewState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        if (this.currentState == 3) {
            this.callingUserPhotoViewMini.setMute(true, false);
            this.gradientLayout.pause();
        }
    }

    public static void show(Activity activity, int i) {
        show(activity, false, i);
    }

    public static void show(Activity activity, boolean z, int i) {
        boolean isScreenOn;
        VoIPFragment voIPFragment = instance;
        if (voIPFragment != null && voIPFragment.windowView.getParent() == null) {
            VoIPFragment voIPFragment2 = instance;
            if (voIPFragment2 != null) {
                voIPFragment2.callingUserTextureView.renderer.release();
                instance.currentUserTextureView.renderer.release();
                instance.callingUserMiniTextureRenderer.release();
                instance.destroy();
            }
            instance = null;
        }
        if (instance != null || activity.isFinishing()) {
            return;
        }
        boolean z2 = VoIPPiPView.getInstance() != null;
        if (VoIPService.getSharedInstance() == null || VoIPService.getSharedInstance().getUser() == null) {
            return;
        }
        final VoIPFragment voIPFragment3 = new VoIPFragment(i);
        voIPFragment3.activity = activity;
        instance = voIPFragment3;
        VoIPWindowView voIPWindowView = new VoIPWindowView(activity, !z2) { // from class: org.telegram.ui.VoIPFragment.1
            private final Path clipPath = new Path();
            private final RectF rectF = new RectF();

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                VoIPService sharedInstance;
                if (voIPFragment3.isFinished || voIPFragment3.switchingToPip) {
                    return false;
                }
                int keyCode = keyEvent.getKeyCode();
                if (keyCode != 4 || keyEvent.getAction() != 1 || voIPFragment3.lockOnScreen) {
                    if ((keyCode == 25 || keyCode == 24) && voIPFragment3.currentState == 15 && (sharedInstance = VoIPService.getSharedInstance()) != null) {
                        sharedInstance.stopRinging();
                        return true;
                    }
                    return super.dispatchKeyEvent(keyEvent);
                }
                voIPFragment3.onBackPressed();
                return true;
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                if (voIPFragment3.switchingToPip && getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    float width = voIPFragment3.callingUserTextureView.getWidth() * voIPFragment3.callingUserTextureView.getScaleX();
                    float height = voIPFragment3.callingUserTextureView.getHeight() * voIPFragment3.callingUserTextureView.getScaleY();
                    float x = voIPFragment3.callingUserTextureView.getX() + ((voIPFragment3.callingUserTextureView.getWidth() - width) / 2.0f);
                    float y = voIPFragment3.callingUserTextureView.getY() + ((voIPFragment3.callingUserTextureView.getHeight() - height) / 2.0f);
                    canvas.save();
                    this.clipPath.rewind();
                    this.rectF.set(x, y, width + x, height + y);
                    float m107dp = AndroidUtilities.m107dp(4);
                    this.clipPath.addRoundRect(this.rectF, m107dp, m107dp, Path.Direction.CW);
                    this.clipPath.close();
                    canvas.clipPath(this.clipPath);
                    super.dispatchDraw(canvas);
                    canvas.restore();
                    return;
                }
                super.dispatchDraw(canvas);
            }
        };
        instance.deviceIsLocked = ((KeyguardManager) activity.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        PowerManager powerManager = (PowerManager) activity.getSystemService("power");
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            isScreenOn = powerManager.isInteractive();
        } else {
            isScreenOn = powerManager.isScreenOn();
        }
        VoIPFragment voIPFragment4 = instance;
        voIPFragment4.screenWasWakeup = true ^ isScreenOn;
        voIPWindowView.setLockOnScreen(voIPFragment4.deviceIsLocked);
        voIPFragment3.windowView = voIPWindowView;
        if (i2 >= 20) {
            voIPWindowView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda10
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    WindowInsets lambda$show$3;
                    lambda$show$3 = VoIPFragment.lambda$show$3(VoIPFragment.this, view, windowInsets);
                    return lambda$show$3;
                }
            });
        }
        WindowManager windowManager = (WindowManager) activity.getSystemService("window");
        WindowManager.LayoutParams createWindowLayoutParams = voIPWindowView.createWindowLayoutParams();
        if (z) {
            if (i2 >= 26) {
                createWindowLayoutParams.type = 2038;
            } else {
                createWindowLayoutParams.type = PlaybackException.ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE;
            }
        }
        windowManager.addView(voIPWindowView, createWindowLayoutParams);
        voIPWindowView.addView(voIPFragment3.createView(activity));
        if (z2) {
            voIPFragment3.enterTransitionProgress = BitmapDescriptorFactory.HUE_RED;
            voIPFragment3.startTransitionFromPiP();
            return;
        }
        voIPFragment3.enterTransitionProgress = 1.0f;
        voIPFragment3.updateSystemBarColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ WindowInsets lambda$show$3(VoIPFragment voIPFragment, View view, WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            voIPFragment.setInsets(windowInsets);
        }
        if (i >= 30) {
            return WindowInsets.CONSUMED;
        }
        return windowInsets.consumeSystemWindowInsets();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBackPressed() {
        if (this.isFinished || this.switchingToPip) {
            return;
        }
        PrivateVideoPreviewDialogNew privateVideoPreviewDialogNew = this.previewDialog;
        if (privateVideoPreviewDialogNew != null) {
            privateVideoPreviewDialogNew.dismiss(false, false);
        } else if (this.callingUserIsVideo && this.currentUserIsVideo && this.cameraForceExpanded) {
            this.cameraForceExpanded = false;
            this.currentUserCameraFloatingLayout.setRelativePosition(this.callingUserMiniFloatingLayout);
            this.currentUserCameraIsFullscreen = false;
            this.previousState = this.currentState;
            updateViewState();
        } else if (this.emojiExpanded) {
            expandEmoji(false);
        } else if (this.emojiRationalLayout.getVisibility() != 8) {
        } else {
            if (this.canSwitchToPip && !this.lockOnScreen) {
                if (AndroidUtilities.checkInlinePermissions(this.activity)) {
                    switchToPip();
                    return;
                } else {
                    requestInlinePermissions();
                    return;
                }
            }
            this.windowView.finish();
        }
    }

    public static void clearInstance() {
        WindowInsets windowInsets;
        if (instance != null) {
            if (VoIPService.getSharedInstance() != null) {
                int measuredHeight = instance.windowView.getMeasuredHeight();
                VoIPFragment voIPFragment = instance;
                if (voIPFragment.canSwitchToPip) {
                    VoIPPiPView.show(voIPFragment.activity, voIPFragment.currentAccount, voIPFragment.windowView.getMeasuredWidth(), measuredHeight, 0);
                    if (Build.VERSION.SDK_INT >= 20 && (windowInsets = instance.lastInsets) != null) {
                        VoIPPiPView.topInset = windowInsets.getSystemWindowInsetTop();
                        VoIPPiPView.bottomInset = instance.lastInsets.getSystemWindowInsetBottom();
                    }
                }
            }
            instance.callingUserTextureView.renderer.release();
            instance.currentUserTextureView.renderer.release();
            instance.callingUserMiniTextureRenderer.release();
            instance.destroy();
        }
        instance = null;
    }

    public static VoIPFragment getInstance() {
        return instance;
    }

    private void setInsets(WindowInsets windowInsets) {
        this.lastInsets = windowInsets;
        ((FrameLayout.LayoutParams) this.buttonsLayout.getLayoutParams()).bottomMargin = this.lastInsets.getSystemWindowInsetBottom();
        ((FrameLayout.LayoutParams) this.acceptDeclineView.getLayoutParams()).bottomMargin = this.lastInsets.getSystemWindowInsetBottom();
        ((FrameLayout.LayoutParams) this.backIcon.getLayoutParams()).topMargin = this.lastInsets.getSystemWindowInsetTop();
        ((FrameLayout.LayoutParams) this.speakerPhoneIcon.getLayoutParams()).topMargin = this.lastInsets.getSystemWindowInsetTop();
        ((FrameLayout.LayoutParams) this.statusLayout.getLayoutParams()).topMargin = AndroidUtilities.m107dp((int) TsExtractor.TS_STREAM_TYPE_E_AC3) + this.lastInsets.getSystemWindowInsetTop();
        ((FrameLayout.LayoutParams) this.emojiLayout.getLayoutParams()).topMargin = AndroidUtilities.m107dp(17) + this.lastInsets.getSystemWindowInsetTop();
        ((FrameLayout.LayoutParams) this.callingUserPhotoViewMini.getLayoutParams()).topMargin = AndroidUtilities.m107dp(93) + this.lastInsets.getSystemWindowInsetTop();
        ((FrameLayout.LayoutParams) this.hideEmojiLayout.getLayoutParams()).topMargin = this.lastInsets.getSystemWindowInsetTop();
        ((FrameLayout.LayoutParams) this.emojiRationalLayout.getLayoutParams()).topMargin = AndroidUtilities.m107dp(118) + this.lastInsets.getSystemWindowInsetTop();
        ((FrameLayout.LayoutParams) this.rateCallLayout.getLayoutParams()).topMargin = AndroidUtilities.m107dp(380) + this.lastInsets.getSystemWindowInsetTop();
        ((FrameLayout.LayoutParams) this.callingUserMiniFloatingLayout.getLayoutParams()).bottomMargin = this.lastInsets.getSystemWindowInsetBottom();
        ((FrameLayout.LayoutParams) this.notificationsLayout.getLayoutParams()).bottomMargin = this.lastInsets.getSystemWindowInsetBottom();
        this.currentUserCameraFloatingLayout.setInsets(this.lastInsets);
        this.callingUserMiniFloatingLayout.setInsets(this.lastInsets);
        this.fragmentView.requestLayout();
        PrivateVideoPreviewDialogNew privateVideoPreviewDialogNew = this.previewDialog;
        if (privateVideoPreviewDialogNew != null) {
            privateVideoPreviewDialogNew.setBottomPadding(this.lastInsets.getSystemWindowInsetBottom());
        }
    }

    public VoIPFragment(int i) {
        this.currentAccount = i;
        MessagesController.getInstance(i).getUser(Long.valueOf(UserConfig.getInstance(i).getClientUserId()));
        this.callingUser = VoIPService.getSharedInstance().getUser();
        VoIPService.getSharedInstance().registerStateListener(this);
        VoIPService.getSharedInstance().isOutgoing();
        this.previousState = -1;
        this.currentState = VoIPService.getSharedInstance().getCallState();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.webRtcSpeakerAmplitudeEvent);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.voipServiceCreated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.closeInCallActivity);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.nearEarEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroy() {
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.unregisterStateListener(this);
        }
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.webRtcSpeakerAmplitudeEvent);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.voipServiceCreated);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.closeInCallActivity);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.nearEarEvent);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onStateChanged(int i) {
        int i2 = this.currentState;
        if (i2 != i) {
            this.previousState = i2;
            this.currentState = i;
            if (this.windowView != null) {
                updateViewState();
            }
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.voipServiceCreated) {
            if (this.currentState != 17 || VoIPService.getSharedInstance() == null) {
                return;
            }
            this.currentUserTextureView.renderer.release();
            this.callingUserTextureView.renderer.release();
            this.callingUserMiniTextureRenderer.release();
            initRenderers();
            VoIPService.getSharedInstance().registerStateListener(this);
        } else if (i == NotificationCenter.emojiLoaded) {
            updateKeyView(true);
        } else if (i == NotificationCenter.closeInCallActivity) {
            this.windowView.finish();
        } else if (i == NotificationCenter.webRtcSpeakerAmplitudeEvent) {
            this.callingUserPhotoViewMini.setAmplitude(((Float) objArr[0]).floatValue() * 15.0f);
        } else if (i == NotificationCenter.nearEarEvent) {
            boolean booleanValue = ((Boolean) objArr[0]).booleanValue();
            this.isNearEar = booleanValue;
            if (booleanValue) {
                this.callingUserPhotoViewMini.setMute(true, true);
            }
        }
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onSignalBarsCountChanged(final int i) {
        VoIpGradientLayout voIpGradientLayout;
        if (i > 0) {
            this.signalBarWasReceived = true;
        }
        if (this.statusTextView == null || (voIpGradientLayout = this.gradientLayout) == null || !voIpGradientLayout.isConnectedCalled() || !this.signalBarWasReceived) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                VoIPFragment.this.lambda$onSignalBarsCountChanged$4(i);
            }
        }, 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSignalBarsCountChanged$4(int i) {
        this.statusTextView.setSignalBarCount(i);
        if (i <= 1) {
            this.gradientLayout.showToBadConnection();
            this.statusTextView.showBadConnection(true, true);
            return;
        }
        this.gradientLayout.hideBadConnection();
        this.statusTextView.showBadConnection(false, true);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onAudioSettingsChanged() {
        updateButtons(true);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onMediaStateUpdated(int i, int i2) {
        this.previousState = this.currentState;
        if (i2 == 2 && !this.isVideoCall) {
            this.isVideoCall = true;
        }
        updateViewState();
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onCameraSwitch(boolean z) {
        this.previousState = this.currentState;
        updateViewState();
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onVideoAvailableChange(boolean z) {
        this.previousState = this.currentState;
        if (z && !this.isVideoCall) {
            this.isVideoCall = true;
        }
        updateViewState();
    }

    public View createView(Context context) {
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(context, AccessibilityManager.class);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.VoIPFragment.2
            boolean check;
            long pressedTime;
            float pressedX;
            float pressedY;

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() == 1) {
                    VoIPFragment.this.callingUserPhotoViewMini.setMute(false, false);
                    VoIPFragment.this.gradientLayout.resume();
                    AndroidUtilities.cancelRunOnUIThread(VoIPFragment.this.stopAnimatingBgRunnable);
                    if (VoIPFragment.this.currentState == 3) {
                        AndroidUtilities.runOnUIThread(VoIPFragment.this.stopAnimatingBgRunnable, 10000L);
                    }
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                VoIPFragment voIPFragment;
                HintView2 hintView2;
                if (motionEvent.getActionMasked() == 1) {
                    VoIPFragment.this.callingUserPhotoViewMini.setMute(false, false);
                    VoIPFragment.this.gradientLayout.resume();
                    AndroidUtilities.cancelRunOnUIThread(VoIPFragment.this.stopAnimatingBgRunnable);
                    if (VoIPFragment.this.currentState == 3) {
                        AndroidUtilities.runOnUIThread(VoIPFragment.this.stopAnimatingBgRunnable, 10000L);
                    }
                }
                if (!VoIPFragment.this.canZoomGesture && !VoIPFragment.this.isInPinchToZoomTouchMode && !VoIPFragment.this.zoomStarted && motionEvent.getActionMasked() != 0) {
                    VoIPFragment.this.finishZoom();
                    return false;
                }
                if (motionEvent.getActionMasked() == 0) {
                    VoIPFragment.this.canZoomGesture = false;
                    VoIPFragment.this.isInPinchToZoomTouchMode = false;
                    VoIPFragment.this.zoomStarted = false;
                }
                VoIPTextureView fullscreenTextureView = VoIPFragment.this.getFullscreenTextureView();
                if (motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5) {
                    if (motionEvent.getActionMasked() == 0) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(fullscreenTextureView.getX(), fullscreenTextureView.getY(), fullscreenTextureView.getX() + fullscreenTextureView.getMeasuredWidth(), fullscreenTextureView.getY() + fullscreenTextureView.getMeasuredHeight());
                        rectF.inset(((fullscreenTextureView.getMeasuredHeight() * fullscreenTextureView.scaleTextureToFill) - fullscreenTextureView.getMeasuredHeight()) / 2.0f, ((fullscreenTextureView.getMeasuredWidth() * fullscreenTextureView.scaleTextureToFill) - fullscreenTextureView.getMeasuredWidth()) / 2.0f);
                        if (!GroupCallActivity.isLandscapeMode) {
                            rectF.top = Math.max(rectF.top, C3704ActionBar.getCurrentActionBarHeight());
                            rectF.bottom = Math.min(rectF.bottom, fullscreenTextureView.getMeasuredHeight() - AndroidUtilities.m107dp(90));
                        } else {
                            rectF.top = Math.max(rectF.top, C3704ActionBar.getCurrentActionBarHeight());
                            rectF.right = Math.min(rectF.right, fullscreenTextureView.getMeasuredWidth() - AndroidUtilities.m107dp(90));
                        }
                        VoIPFragment.this.canZoomGesture = rectF.contains(motionEvent.getX(), motionEvent.getY());
                        if (!VoIPFragment.this.canZoomGesture) {
                            VoIPFragment.this.finishZoom();
                        }
                    }
                    if (VoIPFragment.this.canZoomGesture && !VoIPFragment.this.isInPinchToZoomTouchMode && motionEvent.getPointerCount() == 2) {
                        VoIPFragment.this.pinchStartDistance = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                        VoIPFragment voIPFragment2 = VoIPFragment.this;
                        voIPFragment2.pinchStartCenterX = voIPFragment2.pinchCenterX = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
                        VoIPFragment voIPFragment3 = VoIPFragment.this;
                        voIPFragment3.pinchStartCenterY = voIPFragment3.pinchCenterY = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
                        VoIPFragment voIPFragment4 = VoIPFragment.this;
                        voIPFragment4.pinchScale = 1.0f;
                        voIPFragment4.pointerId1 = motionEvent.getPointerId(0);
                        VoIPFragment.this.pointerId2 = motionEvent.getPointerId(1);
                        VoIPFragment.this.isInPinchToZoomTouchMode = true;
                    }
                } else if (motionEvent.getActionMasked() == 2 && VoIPFragment.this.isInPinchToZoomTouchMode) {
                    int i = -1;
                    int i2 = -1;
                    for (int i3 = 0; i3 < motionEvent.getPointerCount(); i3++) {
                        if (VoIPFragment.this.pointerId1 == motionEvent.getPointerId(i3)) {
                            i = i3;
                        }
                        if (VoIPFragment.this.pointerId2 == motionEvent.getPointerId(i3)) {
                            i2 = i3;
                        }
                    }
                    if (i != -1 && i2 != -1) {
                        VoIPFragment.this.pinchScale = ((float) Math.hypot(motionEvent.getX(i2) - motionEvent.getX(i), motionEvent.getY(i2) - motionEvent.getY(i))) / VoIPFragment.this.pinchStartDistance;
                        VoIPFragment voIPFragment5 = VoIPFragment.this;
                        if (voIPFragment5.pinchScale > 1.005f && !voIPFragment5.zoomStarted) {
                            VoIPFragment.this.pinchStartDistance = (float) Math.hypot(motionEvent.getX(i2) - motionEvent.getX(i), motionEvent.getY(i2) - motionEvent.getY(i));
                            VoIPFragment voIPFragment6 = VoIPFragment.this;
                            voIPFragment6.pinchStartCenterX = voIPFragment6.pinchCenterX = (motionEvent.getX(i) + motionEvent.getX(i2)) / 2.0f;
                            VoIPFragment voIPFragment7 = VoIPFragment.this;
                            voIPFragment7.pinchStartCenterY = voIPFragment7.pinchCenterY = (motionEvent.getY(i) + motionEvent.getY(i2)) / 2.0f;
                            VoIPFragment voIPFragment8 = VoIPFragment.this;
                            voIPFragment8.pinchScale = 1.0f;
                            voIPFragment8.pinchTranslationX = BitmapDescriptorFactory.HUE_RED;
                            VoIPFragment.this.pinchTranslationY = BitmapDescriptorFactory.HUE_RED;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            VoIPFragment.this.zoomStarted = true;
                            VoIPFragment.this.isInPinchToZoomTouchMode = true;
                        }
                        float x = VoIPFragment.this.pinchStartCenterX - ((motionEvent.getX(i) + motionEvent.getX(i2)) / 2.0f);
                        float y = VoIPFragment.this.pinchStartCenterY - ((motionEvent.getY(i) + motionEvent.getY(i2)) / 2.0f);
                        VoIPFragment voIPFragment9 = VoIPFragment.this;
                        voIPFragment9.pinchTranslationX = (-x) / voIPFragment9.pinchScale;
                        VoIPFragment voIPFragment10 = VoIPFragment.this;
                        voIPFragment10.pinchTranslationY = (-y) / voIPFragment10.pinchScale;
                        invalidate();
                    } else {
                        getParent().requestDisallowInterceptTouchEvent(false);
                        VoIPFragment.this.finishZoom();
                    }
                } else if (motionEvent.getActionMasked() == 1 || ((motionEvent.getActionMasked() == 6 && VoIPFragment.this.checkPointerIds(motionEvent)) || motionEvent.getActionMasked() == 3)) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                    VoIPFragment.this.finishZoom();
                }
                VoIPFragment.this.fragmentView.invalidate();
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.pressedX = motionEvent.getX();
                    this.pressedY = motionEvent.getY();
                    this.check = true;
                    this.pressedTime = System.currentTimeMillis();
                } else if (action != 1) {
                    if (action == 3) {
                        this.check = false;
                    }
                } else if (this.check) {
                    float x2 = motionEvent.getX() - this.pressedX;
                    float y2 = motionEvent.getY() - this.pressedY;
                    long currentTimeMillis = System.currentTimeMillis();
                    float f = (x2 * x2) + (y2 * y2);
                    VoIPFragment voIPFragment11 = VoIPFragment.this;
                    float f2 = voIPFragment11.touchSlop;
                    if (f < f2 * f2 && currentTimeMillis - this.pressedTime < 300 && currentTimeMillis - voIPFragment11.lastContentTapTime > 300) {
                        voIPFragment11.lastContentTapTime = System.currentTimeMillis();
                        if (VoIPFragment.this.emojiExpanded) {
                            VoIPFragment.this.expandEmoji(false);
                        } else if (VoIPFragment.this.canHideUI) {
                            VoIPFragment.this.showUi(!voIPFragment.uiVisible);
                            VoIPFragment voIPFragment12 = VoIPFragment.this;
                            voIPFragment12.previousState = voIPFragment12.currentState;
                            if (!VoIPFragment.this.uiVisible && (hintView2 = VoIPFragment.this.tapToVideoTooltip) != null && hintView2.shown()) {
                                VoIPFragment.this.tapToVideoTooltip.hide();
                            }
                            VoIPFragment.this.updateViewState();
                        }
                    }
                    this.check = false;
                }
                return VoIPFragment.this.canZoomGesture || this.check;
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view == VoIPFragment.this.gradientLayout) {
                    VoIPFragment voIPFragment = VoIPFragment.this;
                    if (voIPFragment.currentUserIsVideo || voIPFragment.callingUserIsVideo) {
                        return false;
                    }
                }
                if ((view == VoIPFragment.this.gradientLayout || view == VoIPFragment.this.callingUserTextureView || (view == VoIPFragment.this.currentUserCameraFloatingLayout && VoIPFragment.this.currentUserCameraIsFullscreen)) && (VoIPFragment.this.zoomStarted || VoIPFragment.this.zoomBackAnimator != null)) {
                    canvas.save();
                    VoIPFragment voIPFragment2 = VoIPFragment.this;
                    float f = voIPFragment2.pinchScale;
                    canvas.scale(f, f, voIPFragment2.pinchCenterX, VoIPFragment.this.pinchCenterY);
                    canvas.translate(VoIPFragment.this.pinchTranslationX, VoIPFragment.this.pinchTranslationY);
                    boolean drawChild = super.drawChild(canvas, view, j);
                    canvas.restore();
                    return drawChild;
                }
                return super.drawChild(canvas, view, j);
            }
        };
        frameLayout.setClipToPadding(false);
        frameLayout.setClipChildren(false);
        frameLayout.setBackgroundColor(-16777216);
        updateSystemBarColors();
        this.fragmentView = frameLayout;
        frameLayout.setFitsSystemWindows(true);
        this.gradientLayout = new VoIpGradientLayout(context, this.backgroundProvider);
        VoIPTextureView voIPTextureView = new VoIPTextureView(context, false, true, false, false);
        this.callingUserTextureView = voIPTextureView;
        TextureViewRenderer textureViewRenderer = voIPTextureView.renderer;
        RendererCommon.ScalingType scalingType = RendererCommon.ScalingType.SCALE_ASPECT_FIT;
        textureViewRenderer.setScalingType(scalingType);
        this.callingUserTextureView.renderer.setEnableHardwareScaler(true);
        this.callingUserTextureView.renderer.setRotateTextureWithScreen(true);
        this.callingUserTextureView.scaleType = VoIPTextureView.SCALE_TYPE_FIT;
        frameLayout.addView(this.gradientLayout, LayoutHelper.createFrame(-1, -1));
        VoIpCoverView voIpCoverView = new VoIpCoverView(context, this.callingUser, this.backgroundProvider);
        this.voIpCoverView = voIpCoverView;
        frameLayout.addView(voIpCoverView, LayoutHelper.createFrame(-1, -1));
        VoIpSnowView voIpSnowView = new VoIpSnowView(context);
        this.voIpSnowView = voIpSnowView;
        frameLayout.addView(voIpSnowView, LayoutHelper.createFrame(-1, 220));
        frameLayout.addView(this.callingUserTextureView);
        new BackgroundGradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-14994098, -14328963}).startDithering(BackgroundGradientDrawable.Sizes.ofDeviceScreen(BackgroundGradientDrawable.Sizes.Orientation.PORTRAIT), new BackgroundGradientDrawable.ListenerAdapter() { // from class: org.telegram.ui.VoIPFragment.3
            @Override // org.telegram.p043ui.Components.BackgroundGradientDrawable.ListenerAdapter, org.telegram.p043ui.Components.BackgroundGradientDrawable.Listener
            public void onAllSizesReady() {
                VoIPFragment.this.gradientLayout.invalidate();
            }
        });
        VoIPFloatingLayout voIPFloatingLayout = new VoIPFloatingLayout(context);
        this.currentUserCameraFloatingLayout = voIPFloatingLayout;
        voIPFloatingLayout.setDelegate(new VoIPFloatingLayout.VoIPFloatingLayoutDelegate() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda39
            @Override // org.telegram.p043ui.Components.voip.VoIPFloatingLayout.VoIPFloatingLayoutDelegate
            public final void onChange(float f, boolean z) {
                VoIPFragment.this.lambda$createView$5(f, z);
            }
        });
        this.currentUserCameraFloatingLayout.setRelativePosition(1.0f, 1.0f);
        this.currentUserCameraIsFullscreen = true;
        VoIPTextureView voIPTextureView2 = new VoIPTextureView(context, true, false);
        this.currentUserTextureView = voIPTextureView2;
        voIPTextureView2.renderer.setIsCamera(true);
        this.currentUserTextureView.renderer.setUseCameraRotation(true);
        this.currentUserCameraFloatingLayout.setOnTapListener(new View.OnClickListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoIPFragment.this.lambda$createView$6(view);
            }
        });
        this.currentUserTextureView.renderer.setMirror(true);
        this.currentUserCameraFloatingLayout.addView(this.currentUserTextureView);
        VoIPFloatingLayout voIPFloatingLayout2 = new VoIPFloatingLayout(context);
        this.callingUserMiniFloatingLayout = voIPFloatingLayout2;
        voIPFloatingLayout2.alwaysFloating = true;
        voIPFloatingLayout2.setFloatingMode(true, false);
        TextureViewRenderer textureViewRenderer2 = new TextureViewRenderer(context);
        this.callingUserMiniTextureRenderer = textureViewRenderer2;
        textureViewRenderer2.setEnableHardwareScaler(true);
        this.callingUserMiniTextureRenderer.setIsCamera(false);
        this.callingUserMiniTextureRenderer.setFpsReduction(30.0f);
        this.callingUserMiniTextureRenderer.setScalingType(scalingType);
        new View(context).setBackgroundColor(-14999773);
        this.callingUserMiniFloatingLayout.addView(this.callingUserMiniTextureRenderer, LayoutHelper.createFrame(-1, -2, 17));
        this.callingUserMiniFloatingLayout.setOnTapListener(new View.OnClickListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoIPFragment.this.lambda$createView$7(view);
            }
        });
        this.callingUserMiniFloatingLayout.setVisibility(8);
        frameLayout.addView(this.currentUserCameraFloatingLayout, LayoutHelper.createFrame(-2, -2));
        frameLayout.addView(this.callingUserMiniFloatingLayout);
        View view = new View(context);
        this.bottomShadow = view;
        view.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, ColorUtils.setAlphaComponent(-16777216, 127)}));
        frameLayout.addView(this.bottomShadow, LayoutHelper.createFrame(-1, 160, 80));
        View view2 = new View(context);
        this.topShadow = view2;
        view2.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{ColorUtils.setAlphaComponent(-16777216, 102), 0}));
        frameLayout.addView(this.topShadow, LayoutHelper.createFrame(-1, 160, 48));
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.VoIPFragment.4
            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setVisibleToUser(VoIPFragment.this.emojiLoaded);
            }
        };
        this.emojiLayout = linearLayout;
        linearLayout.setOrientation(0);
        this.emojiLayout.setPadding(0, 0, 0, AndroidUtilities.m107dp(30));
        this.emojiLayout.setClipToPadding(false);
        this.emojiLayout.setContentDescription(LocaleController.getString("VoipHintEncryptionKey", C3632R.string.VoipHintEncryptionKey));
        this.emojiLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                VoIPFragment.this.lambda$createView$8(view3);
            }
        });
        this.hideEmojiTextView = new HideEmojiTextView(context, this.backgroundProvider);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.hideEmojiLayout = frameLayout2;
        frameLayout2.addView(this.hideEmojiTextView, LayoutHelper.createFrame(-2, -2, 3, 0, 16, 0, 0));
        this.hideEmojiLayout.setVisibility(8);
        this.hideEmojiLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                VoIPFragment.this.lambda$createView$9(view3);
            }
        });
        EmojiRationalLayout emojiRationalLayout = new EmojiRationalLayout(context, this.backgroundProvider);
        this.emojiRationalLayout = emojiRationalLayout;
        emojiRationalLayout.setOrientation(1);
        TextView textView = new TextView(context);
        this.emojiRationalTopTextView = textView;
        textView.setText(LocaleController.getString("VoipCallEncryptionEndToEnd", C3632R.string.VoipCallEncryptionEndToEnd));
        this.emojiRationalTopTextView.setTextSize(1, 15.0f);
        this.emojiRationalTopTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.emojiRationalTopTextView.setTextColor(-1);
        this.emojiRationalTopTextView.setGravity(17);
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.VoIPFragment.5
            @Override // android.widget.TextView, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                if (z) {
                    VoIPFragment.this.updateViewState();
                }
            }
        };
        this.emojiRationalTextView = textView2;
        textView2.setTextSize(1, 15.0f);
        this.emojiRationalTextView.setTextColor(-1);
        this.emojiRationalTextView.setGravity(17);
        this.emojiRationalTextView.setText(LocaleController.formatString("CallEmojiKeyTooltip", C3632R.string.CallEmojiKeyTooltip, TextUtils.ellipsize(UserObject.getFirstName(this.callingUser), this.emojiRationalTextView.getPaint(), AndroidUtilities.m107dp(300), TextUtils.TruncateAt.END)));
        this.emojiRationalLayout.setVisibility(8);
        this.emojiRationalLayout.addView(this.emojiRationalTopTextView);
        this.emojiRationalLayout.addView(this.emojiRationalTextView, LayoutHelper.createLinear(-2, -2, 0, 8, 0, 0));
        this.emojiRationalLayout.setPadding(AndroidUtilities.m107dp(18), AndroidUtilities.m107dp(80), AndroidUtilities.m107dp(18), AndroidUtilities.m107dp(18));
        int i = 0;
        while (i < 4) {
            this.emojiViews[i] = new BackupImageView(context);
            this.emojiViews[i].getImageReceiver().setAspectFit(true);
            this.emojiLayout.addView(this.emojiViews[i], LayoutHelper.createLinear(25, 25, i == 0 ? 0 : 6, 0, 0, 0));
            i++;
        }
        LinearLayout linearLayout2 = new LinearLayout(context) { // from class: org.telegram.ui.VoIPFragment.6
            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                VoIPService sharedInstance = VoIPService.getSharedInstance();
                CharSequence text = VoIPFragment.this.callingUserTitle.getText();
                if (sharedInstance == null || TextUtils.isEmpty(text)) {
                    return;
                }
                StringBuilder sb = new StringBuilder(text);
                sb.append(", ");
                TLRPC$PhoneCall tLRPC$PhoneCall = sharedInstance.privateCall;
                if (tLRPC$PhoneCall != null && tLRPC$PhoneCall.video) {
                    sb.append(LocaleController.getString("VoipInVideoCallBranding", C3632R.string.VoipInVideoCallBranding));
                } else {
                    sb.append(LocaleController.getString("VoipInCallBranding", C3632R.string.VoipInCallBranding));
                }
                long callDuration = sharedInstance.getCallDuration();
                if (callDuration > 0) {
                    sb.append(", ");
                    sb.append(LocaleController.formatDuration((int) (callDuration / 1000)));
                }
                accessibilityNodeInfo.setText(sb);
            }
        };
        this.statusLayout = linearLayout2;
        linearLayout2.setOrientation(1);
        this.statusLayout.setFocusable(true);
        this.statusLayout.setFocusableInTouchMode(true);
        this.callingUserPhotoViewMini = new ImageWithWavesView(context);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(this.callingUser);
        this.callingUserPhotoViewMini.setImage(ImageLocation.getForUserOrChat(this.callingUser, 0), null, avatarDrawable, this.callingUser);
        this.callingUserPhotoViewMini.setRoundRadius(AndroidUtilities.m107dp((int) TsExtractor.TS_STREAM_TYPE_E_AC3) / 2);
        TextView textView3 = new TextView(context);
        this.callingUserTitle = textView3;
        textView3.setTextSize(1, 28.0f);
        TLRPC$User tLRPC$User = this.callingUser;
        this.callingUserTitle.setText(Emoji.replaceEmoji((CharSequence) ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name), this.callingUserTitle.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(20), false));
        this.callingUserTitle.setMaxLines(2);
        this.callingUserTitle.setEllipsize(TextUtils.TruncateAt.END);
        this.callingUserTitle.setTextColor(-1);
        this.callingUserTitle.setGravity(1);
        this.callingUserTitle.setImportantForAccessibility(2);
        this.statusLayout.addView(this.callingUserTitle, LayoutHelper.createLinear(-2, -2, 1, 8, 0, 8, 6));
        VoIPStatusTextView voIPStatusTextView = new VoIPStatusTextView(context, this.backgroundProvider);
        this.statusTextView = voIPStatusTextView;
        ViewCompat.setImportantForAccessibility(voIPStatusTextView, 4);
        this.statusLayout.addView(this.statusTextView, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 6));
        this.statusLayout.setClipChildren(false);
        this.statusLayout.setClipToPadding(false);
        this.statusLayout.setPadding(0, 0, 0, AndroidUtilities.m107dp(15));
        this.endCloseLayout = new EndCloseLayout(context);
        this.rateCallLayout = new RateCallLayout(context, this.backgroundProvider);
        this.endCloseLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.rateCallLayout.setVisibility(8);
        frameLayout.addView(this.callingUserPhotoViewMini, LayoutHelper.createFrame(204, 204, 1, 0, 93, 0, 0));
        frameLayout.addView(this.statusLayout, LayoutHelper.createFrame(-1, -2, 0, 0, (int) TsExtractor.TS_STREAM_TYPE_E_AC3, 0, 0));
        frameLayout.addView(this.hideEmojiLayout, LayoutHelper.createFrame(-2, -2, 1, 0, 0, 0, 0));
        frameLayout.addView(this.emojiRationalLayout, LayoutHelper.createFrame(304, -2, 49, 0, 118, 0, 0));
        frameLayout.addView(this.emojiLayout, LayoutHelper.createFrame(-2, -2, 1, 0, 0, 0, 0));
        frameLayout.addView(this.endCloseLayout, LayoutHelper.createFrame(-1, 52, 5, 0, 0, 0, 0));
        frameLayout.addView(this.rateCallLayout, LayoutHelper.createFrame(-1, -2, 3, 0, 380, 0, 0));
        this.buttonsLayout = new VoIPButtonsLayout(context);
        this.bottomSpeakerBtn = new VoIpSwitchLayout(context, this.backgroundProvider);
        this.bottomVideoBtn = new VoIpSwitchLayout(context, this.backgroundProvider);
        this.bottomMuteBtn = new VoIpSwitchLayout(context, this.backgroundProvider);
        this.bottomEndCallBtn = new VoIPToggleButton(this, context) { // from class: org.telegram.ui.VoIPFragment.7
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchSetPressed(boolean z) {
                super.dispatchSetPressed(z);
                setPressedBtn(z);
            }
        };
        this.bottomSpeakerBtn.setTranslationY(AndroidUtilities.m107dp(100));
        this.bottomSpeakerBtn.setScaleX(BitmapDescriptorFactory.HUE_RED);
        this.bottomSpeakerBtn.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.bottomSpeakerBtn.animate().setStartDelay((long) ImageReceiver.DEFAULT_CROSSFADE_DURATION).translationY(BitmapDescriptorFactory.HUE_RED).scaleY(1.0f).scaleX(1.0f).setDuration(250L).start();
        this.bottomVideoBtn.setTranslationY(AndroidUtilities.m107dp(100));
        this.bottomVideoBtn.setScaleX(BitmapDescriptorFactory.HUE_RED);
        this.bottomVideoBtn.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.bottomVideoBtn.animate().setStartDelay(166).translationY(BitmapDescriptorFactory.HUE_RED).scaleY(1.0f).scaleX(1.0f).setDuration(250L).start();
        this.bottomMuteBtn.setTranslationY(AndroidUtilities.m107dp(100));
        this.bottomMuteBtn.setScaleX(BitmapDescriptorFactory.HUE_RED);
        this.bottomMuteBtn.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.bottomMuteBtn.animate().setStartDelay(182).translationY(BitmapDescriptorFactory.HUE_RED).scaleY(1.0f).scaleX(1.0f).setDuration(250L).start();
        this.bottomEndCallBtn.setTranslationY(AndroidUtilities.m107dp(100));
        this.bottomEndCallBtn.setScaleX(BitmapDescriptorFactory.HUE_RED);
        this.bottomEndCallBtn.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.bottomEndCallBtn.animate().setStartDelay(198).translationY(BitmapDescriptorFactory.HUE_RED).scaleY(1.0f).scaleX(1.0f).setDuration(250L).start();
        this.buttonsLayout.addView(this.bottomSpeakerBtn);
        this.buttonsLayout.addView(this.bottomVideoBtn);
        this.buttonsLayout.addView(this.bottomMuteBtn);
        this.buttonsLayout.addView(this.bottomEndCallBtn);
        AcceptDeclineView acceptDeclineView = new AcceptDeclineView(context);
        this.acceptDeclineView = acceptDeclineView;
        acceptDeclineView.setListener(new C76668());
        this.acceptDeclineView.setScaleX(1.15f);
        this.acceptDeclineView.setScaleY(1.15f);
        frameLayout.addView(this.buttonsLayout, LayoutHelper.createFrame(-1, -2, 80));
        int i2 = AndroidUtilities.isTablet() ? 100 : 27;
        frameLayout.addView(this.acceptDeclineView, LayoutHelper.createFrame(-1, 186, 80, i2, 0, i2, 0));
        ImageView imageView = new ImageView(context);
        this.backIcon = imageView;
        imageView.setBackground(Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(-1, 76)));
        this.backIcon.setImageResource(C3632R.C3634drawable.msg_call_minimize_shadow);
        this.backIcon.setPadding(AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16));
        this.backIcon.setContentDescription(LocaleController.getString("Back", C3632R.string.Back));
        frameLayout.addView(this.backIcon, LayoutHelper.createFrame(56, 56, 51));
        ImageView imageView2 = new ImageView(this, context) { // from class: org.telegram.ui.VoIPFragment.9
            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setClassName(ToggleButton.class.getName());
                accessibilityNodeInfo.setCheckable(true);
                VoIPService sharedInstance = VoIPService.getSharedInstance();
                if (sharedInstance != null) {
                    accessibilityNodeInfo.setChecked(sharedInstance.isSpeakerphoneOn());
                }
            }
        };
        this.speakerPhoneIcon = imageView2;
        imageView2.setContentDescription(LocaleController.getString("VoipSpeaker", C3632R.string.VoipSpeaker));
        this.speakerPhoneIcon.setBackground(Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(-1, 76)));
        this.speakerPhoneIcon.setPadding(AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12));
        frameLayout.addView(this.speakerPhoneIcon, LayoutHelper.createFrame(56, 56, 53));
        this.speakerPhoneIcon.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.speakerPhoneIcon.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                VoIPFragment.this.lambda$createView$10(view3);
            }
        });
        this.backIcon.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                VoIPFragment.this.lambda$createView$11(view3);
            }
        });
        if (this.windowView.isLockOnScreen()) {
            this.backIcon.setVisibility(8);
        }
        VoIPNotificationsLayout voIPNotificationsLayout = new VoIPNotificationsLayout(context, this.backgroundProvider);
        this.notificationsLayout = voIPNotificationsLayout;
        voIPNotificationsLayout.setGravity(80);
        this.notificationsLayout.setOnViewsUpdated(new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                VoIPFragment.this.lambda$createView$12();
            }
        });
        frameLayout.addView(this.notificationsLayout, LayoutHelper.createFrame(-1, 200, 80, 16, 0, 16, 0));
        HintView2 rounding = new VoIpHintView(context, 3, this.backgroundProvider, true).setMultilineText(true).setTextAlign(Layout.Alignment.ALIGN_CENTER).setDuration(-1L).setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                VoIPFragment.this.startWaitingFoHideUi();
            }
        }).setHideByTouch(true).setMaxWidth(320.0f).useScale(true).setInnerPadding(10, 6, 10, 6).setRounding(8.0f);
        this.tapToVideoTooltip = rounding;
        rounding.setText(LocaleController.getString("TapToTurnCamera", C3632R.string.TapToTurnCamera));
        frameLayout.addView(this.tapToVideoTooltip, LayoutHelper.createFrame(-2, -2, 80, 19, 0, 19, 0));
        HintView2 rounding2 = new VoIpHintView(context, 1, this.backgroundProvider, false).setMultilineText(true).setTextAlign(Layout.Alignment.ALIGN_CENTER).setDuration(4000L).setHideByTouch(true).setMaxWidth(320.0f).useScale(true).setInnerPadding(10, 6, 10, 6).setRounding(8.0f);
        this.encryptionTooltip = rounding2;
        rounding2.setText(LocaleController.getString("VoipHintEncryptionKey", C3632R.string.VoipHintEncryptionKey));
        frameLayout.addView(this.encryptionTooltip, LayoutHelper.createFrame(-2, -2, 1, 0, 0, 0, 0));
        updateViewState();
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            if (!this.isVideoCall) {
                TLRPC$PhoneCall tLRPC$PhoneCall = sharedInstance.privateCall;
                this.isVideoCall = tLRPC$PhoneCall != null && tLRPC$PhoneCall.video;
            }
            initRenderers();
        }
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(float f, boolean z) {
        this.currentUserTextureView.setScreenshareMiniProgress(f, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view) {
        if (this.currentUserIsVideo && this.callingUserIsVideo && System.currentTimeMillis() - this.lastContentTapTime > 500) {
            AndroidUtilities.cancelRunOnUIThread(this.hideUIRunnable);
            this.hideUiRunnableWaiting = false;
            this.lastContentTapTime = System.currentTimeMillis();
            this.callingUserMiniFloatingLayout.setRelativePosition(this.currentUserCameraFloatingLayout);
            this.currentUserCameraIsFullscreen = true;
            this.cameraForceExpanded = true;
            this.previousState = this.currentState;
            updateViewState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(View view) {
        if (!this.cameraForceExpanded || System.currentTimeMillis() - this.lastContentTapTime <= 500) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.hideUIRunnable);
        this.hideUiRunnableWaiting = false;
        this.lastContentTapTime = System.currentTimeMillis();
        this.currentUserCameraFloatingLayout.setRelativePosition(this.callingUserMiniFloatingLayout);
        this.currentUserCameraIsFullscreen = false;
        this.cameraForceExpanded = false;
        this.previousState = this.currentState;
        updateViewState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(View view) {
        if (System.currentTimeMillis() - this.lastContentTapTime < 500) {
            return;
        }
        this.lastContentTapTime = System.currentTimeMillis();
        boolean z = this.emojiExpanded;
        if (!z && this.emojiLoaded) {
            expandEmoji(!z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(View view) {
        if (System.currentTimeMillis() - this.lastContentTapTime < 500) {
            return;
        }
        this.lastContentTapTime = System.currentTimeMillis();
        if (this.emojiLoaded) {
            expandEmoji(!this.emojiExpanded);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.VoIPFragment$8 */
    /* loaded from: classes5.dex */
    public class C76668 implements AcceptDeclineView.Listener {
        C76668() {
        }

        @Override // org.telegram.p043ui.Components.voip.AcceptDeclineView.Listener
        public void onAccept() {
            if (VoIPFragment.this.currentState == 17) {
                Intent intent = new Intent(VoIPFragment.this.activity, VoIPService.class);
                intent.putExtra("user_id", VoIPFragment.this.callingUser.f1751id);
                intent.putExtra("is_outgoing", true);
                intent.putExtra("start_incall_activity", false);
                intent.putExtra("video_call", VoIPFragment.this.isVideoCall);
                intent.putExtra("can_video_call", VoIPFragment.this.isVideoCall);
                intent.putExtra("account", VoIPFragment.this.currentAccount);
                try {
                    VoIPFragment.this.activity.startService(intent);
                } catch (Throwable th) {
                    FileLog.m102e(th);
                }
            } else if (Build.VERSION.SDK_INT >= 23 && VoIPFragment.this.activity.checkSelfPermission("android.permission.RECORD_AUDIO") != 0) {
                VoIPFragment.this.activity.requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, 101);
            } else if (VoIPService.getSharedInstance() != null) {
                VoIPFragment.this.runAcceptCallAnimation(new Runnable() { // from class: org.telegram.ui.VoIPFragment$8$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        VoIPFragment.C76668.this.lambda$onAccept$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAccept$0() {
            if (VoIPService.getSharedInstance() != null) {
                VoIPService.getSharedInstance().acceptIncomingCall();
                if (VoIPFragment.this.currentUserIsVideo) {
                    VoIPService.getSharedInstance().requestVideoCall(false);
                }
            }
        }

        @Override // org.telegram.p043ui.Components.voip.AcceptDeclineView.Listener
        public void onDecline() {
            if (VoIPFragment.this.currentState == 17) {
                VoIPFragment.this.windowView.finish();
            } else if (VoIPService.getSharedInstance() != null) {
                VoIPService.getSharedInstance().declineIncomingCall();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(View view) {
        VoIPService sharedInstance;
        int i;
        if (this.speakerPhoneIcon.getTag() == null || (sharedInstance = VoIPService.getSharedInstance()) == null) {
            return;
        }
        startWaitingFoHideUi();
        if (sharedInstance.isBluetoothOn()) {
            i = 2;
        } else {
            i = sharedInstance.isSpeakerphoneOn() ? 0 : 1;
        }
        sharedInstance.toggleSpeakerphoneOrShowRouteSheet(this.activity, false, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(View view) {
        if (this.lockOnScreen) {
            return;
        }
        onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12() {
        this.previousState = this.currentState;
        updateViewState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runAcceptCallAnimation(final Runnable runnable) {
        if (this.bottomVideoBtn.getVisibility() == 0) {
            this.acceptDeclineView.getLocationOnScreen(new int[2]);
            this.acceptDeclineView.stopAnimations();
            runnable.run();
            return;
        }
        this.bottomEndCallBtn.animate().cancel();
        this.bottomSpeakerBtn.animate().cancel();
        this.bottomMuteBtn.animate().cancel();
        this.bottomVideoBtn.animate().cancel();
        this.acceptDeclineView.getLocationOnScreen(new int[2]);
        this.acceptDeclineView.stopAnimations();
        this.bottomEndCallBtn.setData(C3632R.C3634drawable.calls_decline, -1, -1041108, LocaleController.getString("VoipEndCall2", C3632R.string.VoipEndCall2), false, false);
        this.bottomSpeakerBtn.setType(VoIpSwitchLayout.Type.SPEAKER, false);
        this.bottomMuteBtn.setType(VoIpSwitchLayout.Type.MICRO, false);
        this.bottomVideoBtn.setType(VoIpSwitchLayout.Type.VIDEO, true);
        this.bottomEndCallBtn.setVisibility(0);
        this.bottomSpeakerBtn.setVisibility(0);
        this.bottomMuteBtn.setVisibility(0);
        this.bottomVideoBtn.setVisibility(0);
        this.bottomEndCallBtn.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.bottomSpeakerBtn.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.bottomMuteBtn.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.bottomVideoBtn.setAlpha(BitmapDescriptorFactory.HUE_RED);
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.acceptDeclineView.getLayoutParams();
        final int marginEnd = marginLayoutParams.getMarginEnd();
        AndroidUtilities.m107dp(52);
        final int m107dp = AndroidUtilities.m107dp(24);
        final int m107dp2 = AndroidUtilities.m107dp(62);
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                VoIPFragment.this.lambda$runAcceptCallAnimation$13(m107dp2, marginEnd, m107dp, marginLayoutParams, valueAnimator);
            }
        });
        AcceptDeclineView acceptDeclineView = this.acceptDeclineView;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(acceptDeclineView, View.SCALE_X, acceptDeclineView.getScaleX(), 1.0f, 1.0f, 1.0f);
        AcceptDeclineView acceptDeclineView2 = this.acceptDeclineView;
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(acceptDeclineView2, View.SCALE_Y, acceptDeclineView2.getScaleY(), 1.0f, 1.0f, 1.0f);
        AcceptDeclineView acceptDeclineView3 = this.acceptDeclineView;
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ObjectAnimator.ofFloat(acceptDeclineView3, View.ALPHA, acceptDeclineView3.getAlpha(), this.acceptDeclineView.getAlpha(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        animatorSet.setDuration(400L);
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.VoIPFragment.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                runnable.run();
                VoIPFragment.this.acceptDeclineView.setScaleX(1.15f);
                VoIPFragment.this.acceptDeclineView.setScaleY(1.15f);
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) VoIPFragment.this.acceptDeclineView.getLayoutParams();
                marginLayoutParams2.leftMargin = AndroidUtilities.m107dp(10);
                marginLayoutParams2.rightMargin = AndroidUtilities.m107dp(10);
                VoIPFragment.this.acceptDeclineView.setVisibility(8);
            }
        });
        animatorSet.start();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                VoIPFragment.this.lambda$runAcceptCallAnimation$14();
            }
        }, 133L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runAcceptCallAnimation$13(int i, int i2, int i3, ViewGroup.MarginLayoutParams marginLayoutParams, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.acceptDeclineView.setTranslationY(i * floatValue);
        int i4 = (int) (i2 - ((i2 + i3) * floatValue));
        marginLayoutParams.leftMargin = i4;
        marginLayoutParams.rightMargin = i4;
        this.acceptDeclineView.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runAcceptCallAnimation$14() {
        int[] iArr = new int[2];
        this.acceptDeclineView.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        this.bottomSpeakerBtn.getLocationOnScreen(iArr);
        this.bottomSpeakerBtn.setTranslationX((i - iArr[0]) + AndroidUtilities.m107dp(42));
        this.bottomSpeakerBtn.setTranslationY((i2 - iArr[1]) + AndroidUtilities.m107dp(44));
        this.bottomMuteBtn.getLocationOnScreen(iArr);
        this.bottomMuteBtn.setTranslationX((i - iArr[0]) + AndroidUtilities.m107dp(42));
        this.bottomMuteBtn.setTranslationY((i2 - iArr[1]) + AndroidUtilities.m107dp(44));
        this.bottomVideoBtn.getLocationOnScreen(iArr);
        this.bottomVideoBtn.setTranslationX((i - iArr[0]) + AndroidUtilities.m107dp(42));
        this.bottomVideoBtn.setTranslationY((i2 - iArr[1]) + AndroidUtilities.m107dp(44));
        this.bottomEndCallBtn.getLocationOnScreen(iArr);
        this.bottomEndCallBtn.setTranslationX((((i + this.acceptDeclineView.getWidth()) - iArr[0]) - AndroidUtilities.m107dp(49)) - AndroidUtilities.m107dp(60));
        this.bottomEndCallBtn.setTranslationY((i2 - iArr[1]) + AndroidUtilities.m107dp(44));
        this.bottomEndCallBtn.setAlpha(1.0f);
        this.bottomSpeakerBtn.setAlpha(1.0f);
        this.bottomMuteBtn.setAlpha(1.0f);
        this.bottomVideoBtn.setAlpha(1.0f);
        long j = 200;
        this.bottomEndCallBtn.animate().setStartDelay(0L).translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(new LinearInterpolator()).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(j).start();
        this.bottomSpeakerBtn.animate().setStartDelay(0L).translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(new LinearInterpolator()).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(j).start();
        this.bottomMuteBtn.animate().setStartDelay(0L).translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(new LinearInterpolator()).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(j).start();
        this.bottomVideoBtn.animate().setStartDelay(0L).translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(new LinearInterpolator()).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(j).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkPointerIds(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() < 2) {
            return false;
        }
        if (this.pointerId1 == motionEvent.getPointerId(0) && this.pointerId2 == motionEvent.getPointerId(1)) {
            return true;
        }
        return this.pointerId1 == motionEvent.getPointerId(1) && this.pointerId2 == motionEvent.getPointerId(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public VoIPTextureView getFullscreenTextureView() {
        if (this.callingUserIsVideo) {
            return this.callingUserTextureView;
        }
        return this.currentUserTextureView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishZoom() {
        if (this.zoomStarted) {
            this.zoomStarted = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
            this.zoomBackAnimator = ofFloat;
            final float f = this.pinchScale;
            final float f2 = this.pinchTranslationX;
            final float f3 = this.pinchTranslationY;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    VoIPFragment.this.lambda$finishZoom$15(f, f2, f3, valueAnimator);
                }
            });
            this.zoomBackAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.VoIPFragment.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    VoIPFragment voIPFragment = VoIPFragment.this;
                    voIPFragment.zoomBackAnimator = null;
                    voIPFragment.pinchScale = 1.0f;
                    voIPFragment.pinchTranslationX = BitmapDescriptorFactory.HUE_RED;
                    VoIPFragment.this.pinchTranslationY = BitmapDescriptorFactory.HUE_RED;
                    VoIPFragment.this.fragmentView.invalidate();
                }
            });
            this.zoomBackAnimator.setDuration(350L);
            this.zoomBackAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.zoomBackAnimator.start();
        }
        this.canZoomGesture = false;
        this.isInPinchToZoomTouchMode = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishZoom$15(float f, float f2, float f3, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.pinchScale = (f * floatValue) + ((1.0f - floatValue) * 1.0f);
        this.pinchTranslationX = f2 * floatValue;
        this.pinchTranslationY = f3 * floatValue;
        this.fragmentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.VoIPFragment$12 */
    /* loaded from: classes5.dex */
    public class C764712 implements RendererCommon.RendererEvents {
        @Override // org.webrtc.RendererCommon.RendererEvents
        public void onFrameResolutionChanged(int i, int i2, int i3) {
        }

        C764712() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFirstFrameRendered$0() {
            VoIPFragment.this.updateViewState();
        }

        @Override // org.webrtc.RendererCommon.RendererEvents
        public void onFirstFrameRendered() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.VoIPFragment$12$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VoIPFragment.C764712.this.lambda$onFirstFrameRendered$0();
                }
            });
        }
    }

    private void initRenderers() {
        this.currentUserTextureView.renderer.init(VideoCapturerDevice.getEglBase().getEglBaseContext(), new C764712());
        this.callingUserTextureView.renderer.init(VideoCapturerDevice.getEglBase().getEglBaseContext(), new C764813(), EglBase.CONFIG_PLAIN, new GlRectDrawer());
        this.callingUserMiniTextureRenderer.init(VideoCapturerDevice.getEglBase().getEglBaseContext(), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.VoIPFragment$13 */
    /* loaded from: classes5.dex */
    public class C764813 implements RendererCommon.RendererEvents {
        @Override // org.webrtc.RendererCommon.RendererEvents
        public void onFrameResolutionChanged(int i, int i2, int i3) {
        }

        C764813() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFirstFrameRendered$0() {
            VoIPFragment.this.updateViewState();
        }

        @Override // org.webrtc.RendererCommon.RendererEvents
        public void onFirstFrameRendered() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.VoIPFragment$13$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VoIPFragment.C764813.this.lambda$onFirstFrameRendered$0();
                }
            });
        }
    }

    public void switchToPip() {
        WindowInsets windowInsets;
        if (this.isFinished || !AndroidUtilities.checkInlinePermissions(this.activity) || instance == null) {
            return;
        }
        this.isFinished = true;
        if (VoIPService.getSharedInstance() != null) {
            int measuredHeight = instance.windowView.getMeasuredHeight();
            VoIPFragment voIPFragment = instance;
            VoIPPiPView.show(voIPFragment.activity, voIPFragment.currentAccount, voIPFragment.windowView.getMeasuredWidth(), measuredHeight, 1);
            if (Build.VERSION.SDK_INT >= 20 && (windowInsets = instance.lastInsets) != null) {
                VoIPPiPView.topInset = windowInsets.getSystemWindowInsetTop();
                VoIPPiPView.bottomInset = instance.lastInsets.getSystemWindowInsetBottom();
            }
        }
        if (VoIPPiPView.getInstance() == null) {
            return;
        }
        ViewPropertyAnimator duration = this.speakerPhoneIcon.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        duration.setInterpolator(cubicBezierInterpolator).start();
        this.backIcon.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
        this.emojiLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
        this.statusLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
        this.buttonsLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(350L).setInterpolator(cubicBezierInterpolator).start();
        this.bottomShadow.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(350L).setInterpolator(cubicBezierInterpolator).start();
        this.topShadow.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(350L).setInterpolator(cubicBezierInterpolator).start();
        this.callingUserMiniFloatingLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(350L).setInterpolator(cubicBezierInterpolator).start();
        this.notificationsLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(350L).setInterpolator(cubicBezierInterpolator).start();
        VoIPPiPView.switchingToPip = true;
        this.switchingToPip = true;
        Animator createPiPTransition = createPiPTransition(false);
        if (createPiPTransition == null) {
            return;
        }
        this.notificationsLocker.lock();
        createPiPTransition.addListener(new C764914());
        createPiPTransition.setDuration(350L);
        createPiPTransition.setInterpolator(cubicBezierInterpolator);
        createPiPTransition.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.VoIPFragment$14 */
    /* loaded from: classes5.dex */
    public class C764914 extends AnimatorListenerAdapter {
        C764914() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            VoIPPiPView.getInstance().windowView.setAlpha(1.0f);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.VoIPFragment$14$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VoIPFragment.C764914.this.lambda$onAnimationEnd$0();
                }
            }, 200L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            VoIPFragment.this.notificationsLocker.unlock();
            VoIPPiPView.getInstance().onTransitionEnd();
            VoIPFragment.this.currentUserCameraFloatingLayout.setCornerRadius(-1.0f);
            VoIPFragment.this.callingUserTextureView.renderer.release();
            VoIPFragment.this.currentUserTextureView.renderer.release();
            VoIPFragment.this.callingUserMiniTextureRenderer.release();
            VoIPFragment.this.destroy();
            VoIPFragment.this.windowView.finishImmediate();
            VoIPPiPView.switchingToPip = false;
            VoIPFragment.this.switchingToPip = false;
            VoIPFragment unused = VoIPFragment.instance = null;
        }
    }

    public void startTransitionFromPiP() {
        this.enterFromPiP = true;
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null && sharedInstance.getVideoState(false) == 2) {
            this.callingUserTextureView.setStub(VoIPPiPView.getInstance().callingUserTextureView);
            this.currentUserTextureView.setStub(VoIPPiPView.getInstance().currentUserTextureView);
        }
        this.windowView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        updateViewState();
        this.switchingToPip = true;
        VoIPPiPView.switchingToPip = true;
        VoIPPiPView.prepareForTransition();
        this.notificationsLocker.lock();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                VoIPFragment.this.lambda$startTransitionFromPiP$17();
            }
        }, 32L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startTransitionFromPiP$17() {
        this.windowView.setAlpha(1.0f);
        this.windowView.invalidate();
        final Animator createPiPTransition = createPiPTransition(true);
        this.backIcon.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.emojiLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.statusLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.buttonsLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.bottomShadow.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.topShadow.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.speakerPhoneIcon.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.notificationsLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.currentUserCameraFloatingLayout.switchingToPip = true;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                VoIPFragment.this.lambda$startTransitionFromPiP$16(createPiPTransition);
            }
        }, 32L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startTransitionFromPiP$16(Animator animator) {
        VoIPPiPView.switchingToPip = false;
        VoIPPiPView.finish();
        ViewPropertyAnimator duration = this.speakerPhoneIcon.animate().setDuration(150L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        duration.setInterpolator(cubicBezierInterpolator).start();
        this.backIcon.animate().alpha(1.0f).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
        this.emojiLayout.animate().alpha(1.0f).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
        this.statusLayout.animate().alpha(1.0f).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
        this.buttonsLayout.animate().alpha(1.0f).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
        this.bottomShadow.animate().alpha(1.0f).setDuration(350L).setInterpolator(cubicBezierInterpolator).start();
        this.topShadow.animate().alpha(1.0f).setDuration(350L).setInterpolator(cubicBezierInterpolator).start();
        this.notificationsLayout.animate().alpha(1.0f).setDuration(350L).setInterpolator(cubicBezierInterpolator).start();
        animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.VoIPFragment.15
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                VoIPFragment.this.notificationsLocker.unlock();
                VoIPFragment.this.currentUserCameraFloatingLayout.setCornerRadius(-1.0f);
                VoIPFragment.this.switchingToPip = false;
                VoIPFragment.this.currentUserCameraFloatingLayout.switchingToPip = false;
                VoIPFragment voIPFragment = VoIPFragment.this;
                voIPFragment.previousState = voIPFragment.currentState;
                VoIPFragment.this.updateViewState();
            }
        });
        animator.setDuration(350L);
        animator.setInterpolator(cubicBezierInterpolator);
        animator.start();
    }

    public Animator createPiPTransition(boolean z) {
        final float measuredWidth;
        float measuredHeight;
        final float f;
        final boolean z2;
        float f2;
        float f3;
        float f4;
        float f5;
        this.currentUserCameraFloatingLayout.animate().cancel();
        if (VoIPPiPView.getInstance() == null) {
            return null;
        }
        float f6 = VoIPPiPView.getInstance().windowLayoutParams.x + VoIPPiPView.getInstance().xOffset;
        float f7 = VoIPPiPView.getInstance().windowLayoutParams.y + VoIPPiPView.getInstance().yOffset;
        final float x = this.currentUserCameraFloatingLayout.getX();
        final float y = this.currentUserCameraFloatingLayout.getY();
        final float scaleX = this.currentUserCameraFloatingLayout.getScaleX();
        final float f8 = VoIPPiPView.isExpanding() ? 0.4f : 0.25f;
        final float measuredWidth2 = f6 - ((this.callingUserTextureView.getMeasuredWidth() - (this.callingUserTextureView.getMeasuredWidth() * f8)) / 2.0f);
        final float measuredHeight2 = f7 - ((this.callingUserTextureView.getMeasuredHeight() - (this.callingUserTextureView.getMeasuredHeight() * f8)) / 2.0f);
        if (this.callingUserIsVideo) {
            int measuredWidth3 = this.currentUserCameraFloatingLayout.getMeasuredWidth();
            if (!this.currentUserIsVideo || measuredWidth3 == 0) {
                f3 = 0.0f;
                f4 = 1.0f;
                f5 = 1.0f;
                z2 = false;
            } else {
                f3 = (this.windowView.getMeasuredWidth() / measuredWidth3) * f8 * 0.4f;
                f4 = (((f6 - ((this.currentUserCameraFloatingLayout.getMeasuredWidth() - (this.currentUserCameraFloatingLayout.getMeasuredWidth() * f3)) / 2.0f)) + (VoIPPiPView.getInstance().parentWidth * f8)) - ((VoIPPiPView.getInstance().parentWidth * f8) * 0.4f)) - AndroidUtilities.m107dp(4);
                f5 = (((f7 - ((this.currentUserCameraFloatingLayout.getMeasuredHeight() - (this.currentUserCameraFloatingLayout.getMeasuredHeight() * f3)) / 2.0f)) + (VoIPPiPView.getInstance().parentHeight * f8)) - ((VoIPPiPView.getInstance().parentHeight * f8) * 0.4f)) - AndroidUtilities.m107dp(4);
                z2 = true;
            }
            measuredWidth = f4;
            measuredHeight = f5;
            f = f3;
        } else {
            measuredWidth = f6 - ((this.currentUserCameraFloatingLayout.getMeasuredWidth() - (this.currentUserCameraFloatingLayout.getMeasuredWidth() * f8)) / 2.0f);
            measuredHeight = f7 - ((this.currentUserCameraFloatingLayout.getMeasuredHeight() - (this.currentUserCameraFloatingLayout.getMeasuredHeight() * f8)) / 2.0f);
            f = f8;
            z2 = true;
        }
        float m107dp = this.callingUserIsVideo ? AndroidUtilities.m107dp(4) : 0.0f;
        final float m107dp2 = (AndroidUtilities.m107dp(4) * 1.0f) / f;
        if (this.callingUserIsVideo) {
            f2 = VoIPPiPView.isExpanding() ? 1.0f : 0.0f;
        } else {
            f2 = 1.0f;
        }
        if (z) {
            if (z2) {
                this.currentUserCameraFloatingLayout.setScaleX(f);
                this.currentUserCameraFloatingLayout.setScaleY(f);
                this.currentUserCameraFloatingLayout.setTranslationX(measuredWidth);
                this.currentUserCameraFloatingLayout.setTranslationY(measuredHeight);
                this.currentUserCameraFloatingLayout.setCornerRadius(m107dp2);
                this.currentUserCameraFloatingLayout.setAlpha(f2);
            }
            this.callingUserTextureView.setScaleX(f8);
            this.callingUserTextureView.setScaleY(f8);
            this.callingUserTextureView.setTranslationX(measuredWidth2);
            this.callingUserTextureView.setTranslationY(measuredHeight2);
            this.callingUserTextureView.setRoundCorners((AndroidUtilities.m107dp(6) * 1.0f) / f8);
        }
        float[] fArr = new float[2];
        fArr[0] = z ? 1.0f : 0.0f;
        fArr[1] = z ? 0.0f : 1.0f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        this.enterTransitionProgress = z ? 0.0f : 1.0f;
        updateSystemBarColors();
        final float f9 = f2;
        final float f10 = measuredHeight;
        final float f11 = m107dp;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                VoIPFragment.this.lambda$createPiPTransition$18(z2, scaleX, f, x, measuredWidth, y, f10, f11, m107dp2, r13, f9, r15, f8, r17, measuredWidth2, r19, measuredHeight2, valueAnimator);
            }
        });
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPiPTransition$18(boolean z, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f17 = 1.0f - floatValue;
        this.enterTransitionProgress = f17;
        updateSystemBarColors();
        if (z) {
            float f18 = (f * f17) + (f2 * floatValue);
            this.currentUserCameraFloatingLayout.setScaleX(f18);
            this.currentUserCameraFloatingLayout.setScaleY(f18);
            this.currentUserCameraFloatingLayout.setTranslationX((f3 * f17) + (f4 * floatValue));
            this.currentUserCameraFloatingLayout.setTranslationY((f5 * f17) + (f6 * floatValue));
            this.currentUserCameraFloatingLayout.setCornerRadius((f7 * f17) + (f8 * floatValue));
            this.currentUserCameraFloatingLayout.setAlpha((f9 * f17) + (f10 * floatValue));
        }
        float f19 = (f11 * f17) + (f12 * floatValue);
        this.callingUserTextureView.setScaleX(f19);
        this.callingUserTextureView.setScaleY(f19);
        float f20 = (f13 * f17) + (f14 * floatValue);
        this.callingUserTextureView.setTranslationX(f20);
        this.callingUserTextureView.setTranslationY((f17 * f15) + (f16 * floatValue));
        this.callingUserTextureView.setRoundCorners(((AndroidUtilities.m107dp(4) * floatValue) * 1.0f) / f19);
        if (!this.currentUserCameraFloatingLayout.measuredAsFloatingMode) {
            this.currentUserTextureView.setScreenshareMiniProgress(floatValue, false);
        }
        this.windowView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expandEmoji(boolean z) {
        if (this.emojiLoaded && this.emojiExpanded != z && this.uiVisible) {
            this.emojiExpanded = z;
            this.voIpCoverView.onEmojiExpanded(z);
            if (z) {
                if (SharedConfig.callEncryptionHintDisplayedCount < 2) {
                    SharedConfig.incrementCallEncryptionHintDisplayed(2);
                }
                this.encryptionTooltip.hide();
                AndroidUtilities.cancelRunOnUIThread(this.hideUIRunnable);
                this.hideUiRunnableWaiting = false;
                if (this.callingUserPhotoViewMini.getVisibility() == 0) {
                    this.callingUserPhotoViewMini.animate().setStartDelay(0L).translationY(AndroidUtilities.m107dp(48)).scaleY(0.1f).scaleX(0.1f).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                }
                this.hideEmojiLayout.animate().setListener(null).cancel();
                this.hideEmojiLayout.setVisibility(0);
                this.hideEmojiLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.hideEmojiLayout.setScaleX(0.3f);
                this.hideEmojiLayout.setScaleY(0.3f);
                this.hideEmojiLayout.animate().alpha(1.0f).scaleY(1.0f).scaleX(1.0f).setDuration(340L).setInterpolator(CubicBezierInterpolator.EASE_OUT).start();
                ViewPropertyAnimator translationY = this.emojiLayout.animate().scaleX(1.72f).scaleY(1.72f).translationY(AndroidUtilities.m107dp(140));
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
                translationY.setInterpolator(cubicBezierInterpolator).setDuration(400L).start();
                this.emojiRationalLayout.animate().setListener(null).cancel();
                this.emojiRationalLayout.setVisibility(0);
                this.emojiRationalLayout.setTranslationY(-AndroidUtilities.m107dp(120));
                this.emojiRationalLayout.setScaleX(0.7f);
                this.emojiRationalLayout.setScaleY(0.7f);
                this.emojiRationalLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.emojiRationalLayout.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).scaleX(1.0f).scaleY(1.0f).setDuration(400L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.VoIPFragment.16
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        BackupImageView[] backupImageViewArr;
                        for (BackupImageView backupImageView : VoIPFragment.this.emojiViews) {
                            AnimatedEmojiDrawable animatedEmojiDrawable = backupImageView.animatedEmojiDrawable;
                            if (animatedEmojiDrawable != null && animatedEmojiDrawable.getImageReceiver() != null) {
                                backupImageView.animatedEmojiDrawable.getImageReceiver().setAllowStartAnimation(true);
                                backupImageView.animatedEmojiDrawable.getImageReceiver().startAnimation();
                            }
                        }
                    }
                }).setInterpolator(cubicBezierInterpolator).start();
            } else {
                if (this.callingUserPhotoViewMini.getVisibility() == 0) {
                    this.callingUserPhotoViewMini.animate().setStartDelay(50L).translationY(BitmapDescriptorFactory.HUE_RED).scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(250L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                }
                this.hideEmojiLayout.animate().setListener(null).cancel();
                ViewPropertyAnimator duration = this.hideEmojiLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleY(0.3f).scaleX(0.3f).setDuration(230L);
                CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.DEFAULT;
                duration.setInterpolator(cubicBezierInterpolator2).setListener(new HideViewAfterAnimation(this.hideEmojiLayout)).start();
                this.emojiLayout.animate().scaleX(1.0f).scaleY(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(cubicBezierInterpolator2).setDuration(280L).start();
                this.emojiRationalLayout.animate().setListener(null).cancel();
                this.emojiRationalLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleY(0.7f).scaleX(0.7f).translationY(-AndroidUtilities.m107dp(120)).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.VoIPFragment.17
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        BackupImageView[] backupImageViewArr;
                        VoIPFragment.this.startWaitingFoHideUi();
                        for (BackupImageView backupImageView : VoIPFragment.this.emojiViews) {
                            AnimatedEmojiDrawable animatedEmojiDrawable = backupImageView.animatedEmojiDrawable;
                            if (animatedEmojiDrawable != null && animatedEmojiDrawable.getImageReceiver() != null) {
                                backupImageView.animatedEmojiDrawable.getImageReceiver().setAllowStartAnimation(false);
                                backupImageView.animatedEmojiDrawable.getImageReceiver().stopAnimation();
                            }
                        }
                        VoIPFragment.this.emojiRationalLayout.setVisibility(8);
                    }
                }).setDuration(250L).setInterpolator(cubicBezierInterpolator2).start();
            }
            this.previousState = this.currentState;
            updateViewState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWaitingFoHideUi() {
        if (VoIPService.getSharedInstance() != null) {
            AndroidUtilities.cancelRunOnUIThread(this.hideUIRunnable);
            this.hideUiRunnableWaiting = false;
            if (this.canHideUI && this.uiVisible) {
                AndroidUtilities.runOnUIThread(this.hideUIRunnable, C0483C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                this.hideUiRunnableWaiting = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0475 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x08cd  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0a35  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x0a3a  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0a4e  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0a6a  */
    /* JADX WARN: Removed duplicated region for block: B:416:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateViewState() {
        /*
            Method dump skipped, instructions count: 2692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.VoIPFragment.updateViewState():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$21(final VoIPService voIPService) {
        this.endCloseLayout.switchToClose(new View.OnClickListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoIPFragment.this.lambda$updateViewState$20(voIPService, view);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$19() {
        this.windowView.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$20(VoIPService voIPService, View view) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                VoIPFragment.this.lambda$updateViewState$19();
            }
        });
        int i = this.selectedRating;
        if (i > 0) {
            voIPService.sendCallRating(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$22() {
        this.windowView.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$23(VoIPService voIPService, View view) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                VoIPFragment.this.lambda$updateViewState$22();
            }
        });
        int i = this.selectedRating;
        if (i > 0) {
            voIPService.sendCallRating(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$24(int i) {
        this.selectedRating = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$25() {
        this.windowView.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$26(DialogInterface dialogInterface, int i) {
        this.windowView.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$27(boolean[] zArr, DialogInterface dialogInterface, int i) {
        zArr[0] = true;
        this.currentState = 17;
        Intent intent = new Intent(this.activity, VoIPService.class);
        intent.putExtra("user_id", this.callingUser.f1751id);
        intent.putExtra("is_outgoing", true);
        intent.putExtra("start_incall_activity", false);
        intent.putExtra("video_call", false);
        intent.putExtra("can_video_call", false);
        intent.putExtra("account", this.currentAccount);
        try {
            this.activity.startService(intent);
        } catch (Throwable th) {
            FileLog.m102e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$28(boolean[] zArr, DialogInterface dialogInterface) {
        if (zArr[0]) {
            return;
        }
        this.windowView.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$29() {
        this.windowView.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$30() {
        this.windowView.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateViewState$31() {
        VoIPFloatingLayout voIPFloatingLayout = this.callingUserMiniFloatingLayout;
        voIPFloatingLayout.isAppearing = false;
        voIPFloatingLayout.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUi(boolean z) {
        int i;
        ValueAnimator valueAnimator = this.uiVisibilityAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z && this.uiVisible) {
            i = ImageReceiver.DEFAULT_CROSSFADE_DURATION;
            ViewPropertyAnimator duration = this.speakerPhoneIcon.animate().alpha(BitmapDescriptorFactory.HUE_RED).translationY(-AndroidUtilities.m107dp(10)).setDuration(150L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            duration.setInterpolator(cubicBezierInterpolator).start();
            this.backIcon.animate().alpha(BitmapDescriptorFactory.HUE_RED).translationY(-AndroidUtilities.m107dp(10)).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
            this.emojiLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).translationY(-AndroidUtilities.m107dp(10)).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
            this.callingUserTitle.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).translationY(-AndroidUtilities.m107dp(10)).setInterpolator(cubicBezierInterpolator).start();
            this.statusTextView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).translationY(-AndroidUtilities.m107dp(10)).setInterpolator(cubicBezierInterpolator).start();
            this.buttonsLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).translationY(AndroidUtilities.m107dp(10)).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
            this.bottomShadow.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
            this.topShadow.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.uiVisibilityAlpha, BitmapDescriptorFactory.HUE_RED);
            this.uiVisibilityAnimator = ofFloat;
            ofFloat.addUpdateListener(this.statusbarAnimatorListener);
            this.uiVisibilityAnimator.setDuration(150L).setInterpolator(cubicBezierInterpolator);
            this.uiVisibilityAnimator.start();
            AndroidUtilities.cancelRunOnUIThread(this.hideUIRunnable);
            this.hideUiRunnableWaiting = false;
            this.buttonsLayout.setEnabled(false);
            this.encryptionTooltip.hide();
        } else {
            if (z && !this.uiVisible) {
                this.tapToVideoTooltip.hide();
                this.encryptionTooltip.hide();
                ViewPropertyAnimator translationY = this.callingUserTitle.animate().alpha(1.0f).setDuration(150L).translationY(BitmapDescriptorFactory.HUE_RED);
                CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.DEFAULT;
                translationY.setInterpolator(cubicBezierInterpolator2).start();
                this.statusTextView.animate().alpha(1.0f).setDuration(150L).translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(cubicBezierInterpolator2).start();
                this.speakerPhoneIcon.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator2).start();
                this.backIcon.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator2).start();
                this.emojiLayout.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator2).start();
                this.buttonsLayout.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator2).start();
                this.bottomShadow.animate().alpha(1.0f).setDuration(150L).setInterpolator(cubicBezierInterpolator2).start();
                this.topShadow.animate().alpha(1.0f).setDuration(150L).setInterpolator(cubicBezierInterpolator2).start();
                ValueAnimator ofFloat2 = ValueAnimator.ofFloat(this.uiVisibilityAlpha, 1.0f);
                this.uiVisibilityAnimator = ofFloat2;
                ofFloat2.addUpdateListener(this.statusbarAnimatorListener);
                this.uiVisibilityAnimator.setDuration(150L).setInterpolator(cubicBezierInterpolator2);
                this.uiVisibilityAnimator.start();
                this.buttonsLayout.setEnabled(true);
            }
            i = 0;
        }
        this.uiVisible = z;
        this.windowView.requestFullscreen(!z);
        this.notificationsLayout.animate().translationY((-AndroidUtilities.m107dp(16)) - (this.uiVisible ? AndroidUtilities.m107dp(80) : 0)).setDuration(150L).setStartDelay(i).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
    }

    private void showFloatingLayout(int i, boolean z) {
        Animator animator;
        if (this.currentUserCameraFloatingLayout.getTag() == null || ((Integer) this.currentUserCameraFloatingLayout.getTag()).intValue() != 2) {
            this.currentUserCameraFloatingLayout.setUiVisible(this.uiVisible);
        }
        if (!z && (animator = this.cameraShowingAnimator) != null) {
            animator.removeAllListeners();
            this.cameraShowingAnimator.cancel();
        }
        if (i != 0) {
            boolean z2 = (this.currentUserCameraFloatingLayout.getTag() == null || ((Integer) this.currentUserCameraFloatingLayout.getTag()).intValue() == 0) ? false : z;
            if (z) {
                if (this.currentUserCameraFloatingLayout.getTag() != null && ((Integer) this.currentUserCameraFloatingLayout.getTag()).intValue() == 0) {
                    if (this.currentUserCameraFloatingLayout.getVisibility() == 8) {
                        this.currentUserCameraFloatingLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.currentUserCameraFloatingLayout.setScaleX(0.7f);
                        this.currentUserCameraFloatingLayout.setScaleY(0.7f);
                        this.currentUserCameraFloatingLayout.setVisibility(0);
                    }
                    Animator animator2 = this.cameraShowingAnimator;
                    if (animator2 != null) {
                        animator2.removeAllListeners();
                        this.cameraShowingAnimator.cancel();
                    }
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this.currentUserCameraFloatingLayout, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(this.currentUserCameraFloatingLayout, View.SCALE_X, 0.7f, 1.0f), ObjectAnimator.ofFloat(this.currentUserCameraFloatingLayout, View.SCALE_Y, 0.7f, 1.0f));
                    this.cameraShowingAnimator = animatorSet;
                    animatorSet.setDuration(150L).start();
                }
            } else {
                this.currentUserCameraFloatingLayout.setVisibility(0);
            }
            if (this.currentUserCameraFloatingLayout.getTag() == null || ((Integer) this.currentUserCameraFloatingLayout.getTag()).intValue() != 2) {
                VoIPFloatingLayout voIPFloatingLayout = this.currentUserCameraFloatingLayout;
                if (voIPFloatingLayout.relativePositionToSetX < BitmapDescriptorFactory.HUE_RED) {
                    voIPFloatingLayout.setRelativePosition(1.0f, 1.0f);
                    this.currentUserCameraIsFullscreen = true;
                }
            }
            this.currentUserCameraFloatingLayout.setFloatingMode(i == 2, z2);
            this.currentUserCameraIsFullscreen = i != 2;
        } else if (z) {
            if (this.currentUserCameraFloatingLayout.getTag() != null && ((Integer) this.currentUserCameraFloatingLayout.getTag()).intValue() != 0) {
                Animator animator3 = this.cameraShowingAnimator;
                if (animator3 != null) {
                    animator3.removeAllListeners();
                    this.cameraShowingAnimator.cancel();
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                VoIPFloatingLayout voIPFloatingLayout2 = this.currentUserCameraFloatingLayout;
                animatorSet2.playTogether(ObjectAnimator.ofFloat(voIPFloatingLayout2, View.ALPHA, voIPFloatingLayout2.getAlpha(), BitmapDescriptorFactory.HUE_RED));
                if (this.currentUserCameraFloatingLayout.getTag() != null && ((Integer) this.currentUserCameraFloatingLayout.getTag()).intValue() == 2) {
                    VoIPFloatingLayout voIPFloatingLayout3 = this.currentUserCameraFloatingLayout;
                    Property property = View.SCALE_X;
                    float[] fArr = {voIPFloatingLayout3.getScaleX(), 0.7f};
                    VoIPFloatingLayout voIPFloatingLayout4 = this.currentUserCameraFloatingLayout;
                    animatorSet2.playTogether(ObjectAnimator.ofFloat(voIPFloatingLayout3, property, fArr), ObjectAnimator.ofFloat(voIPFloatingLayout4, View.SCALE_Y, voIPFloatingLayout4.getScaleX(), 0.7f));
                }
                this.cameraShowingAnimator = animatorSet2;
                animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.VoIPFragment.20
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator4) {
                        VoIPFragment.this.currentUserCameraFloatingLayout.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        VoIPFragment.this.currentUserCameraFloatingLayout.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        VoIPFragment.this.currentUserCameraFloatingLayout.setScaleY(1.0f);
                        VoIPFragment.this.currentUserCameraFloatingLayout.setScaleX(1.0f);
                        VoIPFragment.this.currentUserCameraFloatingLayout.setVisibility(8);
                    }
                });
                this.cameraShowingAnimator.setDuration(250L).setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.cameraShowingAnimator.setStartDelay(50L);
                this.cameraShowingAnimator.start();
            }
        } else {
            this.currentUserCameraFloatingLayout.setVisibility(8);
        }
        this.currentUserCameraFloatingLayout.setTag(Integer.valueOf(i));
    }

    private void showCallingUserAvatarMini(boolean z, boolean z2) {
        boolean z3 = (this.currentUserIsVideo || this.callingUserIsVideo) ? false : true;
        if (z) {
            if (z3 && this.callingUserPhotoViewMini.getTag() == null) {
                this.callingUserPhotoViewMini.animate().setListener(null).cancel();
                this.callingUserPhotoViewMini.setVisibility(0);
                if (this.emojiExpanded) {
                    if (z2) {
                        this.callingUserPhotoViewMini.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.callingUserPhotoViewMini.setTranslationY(AndroidUtilities.m107dp(48));
                        this.callingUserPhotoViewMini.setScaleX(0.1f);
                        this.callingUserPhotoViewMini.setScaleY(0.1f);
                    }
                } else if (z2) {
                    this.callingUserPhotoViewMini.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.callingUserPhotoViewMini.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).scaleY(1.0f).scaleX(1.0f).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                } else {
                    this.callingUserPhotoViewMini.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.callingUserPhotoViewMini.setTranslationY(-AndroidUtilities.m107dp((int) TsExtractor.TS_STREAM_TYPE_E_AC3));
                    this.callingUserPhotoViewMini.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).scaleY(1.0f).scaleX(1.0f).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                }
            } else if (!z3 && this.callingUserPhotoViewMini.getTag() != null) {
                this.callingUserPhotoViewMini.animate().setListener(null).cancel();
                this.callingUserPhotoViewMini.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                this.callingUserPhotoViewMini.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).scaleX(0.1f).scaleY(0.1f).setInterpolator(CubicBezierInterpolator.DEFAULT).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.VoIPFragment.21
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        VoIPFragment.this.callingUserPhotoViewMini.setVisibility(8);
                    }
                }).start();
            }
        } else {
            this.callingUserPhotoViewMini.animate().setListener(null).cancel();
            this.callingUserPhotoViewMini.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.callingUserPhotoViewMini.setAlpha(1.0f);
            this.callingUserPhotoViewMini.setScaleX(1.0f);
            this.callingUserPhotoViewMini.setScaleY(1.0f);
            this.callingUserPhotoViewMini.setVisibility(z3 ? 0 : 8);
        }
        this.callingUserPhotoViewMini.setTag(z3 ? 1 : null);
    }

    private void updateKeyView(boolean z) {
        VoIPService sharedInstance;
        if (this.emojiLoaded || (sharedInstance = VoIPService.getSharedInstance()) == null) {
            return;
        }
        byte[] bArr = null;
        int i = 0;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(sharedInstance.getEncryptionKey());
            byteArrayOutputStream.write(sharedInstance.getGA());
            bArr = byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            FileLog.m101e((Throwable) e, false);
        }
        if (bArr == null) {
            return;
        }
        String[] emojifyForCall = EncryptionKeyEmojifier.emojifyForCall(Utilities.computeSHA256(bArr, 0, bArr.length));
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < 4; i2++) {
            Emoji.preloadEmoji(emojifyForCall[i2]);
            Emoji.EmojiDrawable emojiDrawable = Emoji.getEmojiDrawable(emojifyForCall[i2]);
            if (emojiDrawable != null) {
                emojiDrawable.setBounds(0, 0, AndroidUtilities.m107dp(40), AndroidUtilities.m107dp(40));
                emojiDrawable.preload();
                int[] iArr = new int[1];
                TextPaint textPaint = new TextPaint(1);
                textPaint.setTextSize(AndroidUtilities.m107dp(28));
                TLRPC$Document replaceEmojiToLottieFrame = replaceEmojiToLottieFrame(Emoji.replaceEmoji((CharSequence) emojifyForCall[i2], textPaint.getFontMetricsInt(), false, iArr), iArr);
                arrayList2.add(emojiDrawable);
                if (replaceEmojiToLottieFrame != null) {
                    arrayList.add(replaceEmojiToLottieFrame);
                }
                this.emojiViews[i2].setVisibility(8);
            }
            this.emojiDrawables[i2] = emojiDrawable;
        }
        if (arrayList.size() == 4) {
            while (i < arrayList.size()) {
                this.emojiViews[i].setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(17, this.currentAccount, (TLRPC$Document) arrayList.get(i)));
                this.emojiViews[i].getImageReceiver().clearImage();
                i++;
            }
        } else {
            while (i < arrayList2.size()) {
                this.emojiViews[i].setImageDrawable((Drawable) arrayList2.get(i));
                i++;
            }
        }
        checkEmojiLoaded(z);
    }

    private void checkEmojiLoaded(boolean z) {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            Emoji.EmojiDrawable[] emojiDrawableArr = this.emojiDrawables;
            if (emojiDrawableArr[i2] != null && emojiDrawableArr[i2].isLoaded()) {
                i++;
            }
        }
        if (i == 4) {
            this.emojiLoaded = true;
            for (int i3 = 0; i3 < 4; i3++) {
                if (this.emojiViews[i3].getVisibility() != 0) {
                    this.emojiViews[i3].setVisibility(0);
                    if (z) {
                        this.emojiViews[i3].setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.emojiViews[i3].setScaleX(BitmapDescriptorFactory.HUE_RED);
                        this.emojiViews[i3].setScaleY(BitmapDescriptorFactory.HUE_RED);
                        this.emojiViews[i3].animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_BACK).setDuration(250L).start();
                    }
                }
            }
            this.encryptionTooltip.postDelayed(new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    VoIPFragment.this.lambda$checkEmojiLoaded$32();
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkEmojiLoaded$32() {
        if (SharedConfig.callEncryptionHintDisplayedCount < 2) {
            SharedConfig.incrementCallEncryptionHintDisplayed(1);
            this.encryptionTooltip.setTranslationY(this.emojiLayout.getY() + AndroidUtilities.m107dp(36));
            this.encryptionTooltip.show();
        }
    }

    private void showAcceptDeclineView(boolean z, boolean z2) {
        if (!z2) {
            this.acceptDeclineView.setVisibility(z ? 0 : 8);
        } else {
            if (z && this.acceptDeclineView.getTag() == null) {
                this.acceptDeclineView.animate().setListener(null).cancel();
                if (this.acceptDeclineView.getVisibility() == 8) {
                    this.acceptDeclineView.setVisibility(0);
                    this.acceptDeclineView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                this.acceptDeclineView.animate().alpha(1.0f);
            }
            if (!z && this.acceptDeclineView.getTag() != null) {
                this.acceptDeclineView.animate().setListener(null).cancel();
                this.acceptDeclineView.animate().setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.VoIPFragment.22
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        VoIPFragment.this.acceptDeclineView.setVisibility(8);
                    }
                }).alpha(BitmapDescriptorFactory.HUE_RED);
            }
        }
        this.acceptDeclineView.setEnabled(z);
        this.acceptDeclineView.setTag(z ? 1 : null);
    }

    private void updateButtons(boolean z) {
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance == null) {
            return;
        }
        if (z && Build.VERSION.SDK_INT >= 19) {
            TransitionSet transitionSet = new TransitionSet();
            Transition duration = new Visibility(this) { // from class: org.telegram.ui.VoIPFragment.23
                @Override // android.transition.Visibility
                public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                    ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, AndroidUtilities.m107dp(100), BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat(View.SCALE_Y, BitmapDescriptorFactory.HUE_RED, 1.0f), PropertyValuesHolder.ofFloat(View.SCALE_X, BitmapDescriptorFactory.HUE_RED, 1.0f));
                    if (view instanceof VoIPToggleButton) {
                        view.setTranslationY(AndroidUtilities.m107dp(100));
                        view.setScaleX(BitmapDescriptorFactory.HUE_RED);
                        view.setScaleY(BitmapDescriptorFactory.HUE_RED);
                        ofPropertyValuesHolder.setStartDelay(((VoIPToggleButton) view).animationDelay);
                    }
                    if (view instanceof VoIpSwitchLayout) {
                        view.setTranslationY(AndroidUtilities.m107dp(100));
                        view.setScaleX(BitmapDescriptorFactory.HUE_RED);
                        view.setScaleY(BitmapDescriptorFactory.HUE_RED);
                        ofPropertyValuesHolder.setStartDelay(((VoIpSwitchLayout) view).animationDelay);
                    }
                    return ofPropertyValuesHolder;
                }

                @Override // android.transition.Visibility
                public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                    return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, view.getTranslationY(), AndroidUtilities.m107dp(100)), PropertyValuesHolder.ofFloat(View.SCALE_Y, view.getScaleY(), BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat(View.SCALE_X, view.getScaleX(), BitmapDescriptorFactory.HUE_RED));
                }
            }.setDuration(250L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            transitionSet.addTransition(duration.setInterpolator(cubicBezierInterpolator)).addTransition(new ChangeBounds().setDuration(250L).setInterpolator(cubicBezierInterpolator));
            transitionSet.excludeChildren(VoIPToggleButton.class, true);
            transitionSet.excludeChildren(VoIpSwitchLayout.class, true);
            TransitionManager.beginDelayedTransition(this.buttonsLayout, transitionSet);
        }
        int i = this.currentState;
        if (i == 11) {
            this.bottomSpeakerBtn.setVisibility(8);
            this.bottomVideoBtn.setVisibility(8);
            this.bottomMuteBtn.setVisibility(8);
            this.bottomEndCallBtn.setVisibility(8);
            return;
        }
        int i2 = 0;
        if (i == 15 || i == 17) {
            TLRPC$PhoneCall tLRPC$PhoneCall = sharedInstance.privateCall;
            if (tLRPC$PhoneCall != null && tLRPC$PhoneCall.video && i == 15) {
                if (!sharedInstance.isScreencast() && (this.currentUserIsVideo || this.callingUserIsVideo)) {
                    setFrontalCameraAction(this.bottomSpeakerBtn, sharedInstance, z);
                    if (this.uiVisible) {
                        this.speakerPhoneIcon.animate().alpha(1.0f).start();
                    }
                } else {
                    setSpeakerPhoneAction(this.bottomSpeakerBtn, sharedInstance, z);
                    this.speakerPhoneIcon.animate().alpha(BitmapDescriptorFactory.HUE_RED).start();
                }
                setVideoAction(this.bottomVideoBtn, sharedInstance, false);
                setMicrohoneAction(this.bottomMuteBtn, sharedInstance, z);
            } else {
                this.bottomSpeakerBtn.setVisibility(8);
                this.bottomVideoBtn.setVisibility(8);
                this.bottomMuteBtn.setVisibility(8);
            }
            this.bottomEndCallBtn.setVisibility(8);
        } else if (instance == null) {
            return;
        } else {
            if (!sharedInstance.isScreencast() && (this.currentUserIsVideo || this.callingUserIsVideo)) {
                setFrontalCameraAction(this.bottomSpeakerBtn, sharedInstance, z);
                if (this.uiVisible) {
                    this.speakerPhoneIcon.setTag(1);
                    this.speakerPhoneIcon.animate().alpha(1.0f).start();
                }
            } else {
                setSpeakerPhoneAction(this.bottomSpeakerBtn, sharedInstance, z);
                this.speakerPhoneIcon.setTag(null);
                this.speakerPhoneIcon.animate().alpha(BitmapDescriptorFactory.HUE_RED).start();
            }
            setVideoAction(this.bottomVideoBtn, sharedInstance, false);
            setMicrohoneAction(this.bottomMuteBtn, sharedInstance, z);
            this.bottomEndCallBtn.setData(C3632R.C3634drawable.calls_decline, -1, -1041108, LocaleController.getString("VoipEndCall2", C3632R.string.VoipEndCall2), false, z);
            this.bottomEndCallBtn.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoIPFragment.this.lambda$updateButtons$33(view);
                }
            });
        }
        if (this.bottomSpeakerBtn.getVisibility() == 0) {
            this.bottomSpeakerBtn.animationDelay = 0;
            i2 = 16;
        }
        if (this.bottomVideoBtn.getVisibility() == 0) {
            this.bottomVideoBtn.animationDelay = i2;
            i2 += 16;
        }
        if (this.bottomMuteBtn.getVisibility() == 0) {
            this.bottomMuteBtn.animationDelay = i2;
            i2 += 16;
        }
        if (this.bottomEndCallBtn.getVisibility() == 0) {
            this.bottomEndCallBtn.animationDelay = i2;
        }
        updateSpeakerPhoneIcon();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtons$33(View view) {
        if (VoIPService.getSharedInstance() != null) {
            AndroidUtilities.cancelRunOnUIThread(this.hideUIRunnable);
            this.hideUiRunnableWaiting = false;
            VoIPService.getSharedInstance().hangUp();
        }
    }

    private void setMicrohoneAction(VoIpSwitchLayout voIpSwitchLayout, VoIPService voIPService, boolean z) {
        voIpSwitchLayout.setType(VoIpSwitchLayout.Type.MICRO, voIPService.isMicMute());
        this.currentUserCameraFloatingLayout.setMuted(voIPService.isMicMute(), z);
        voIpSwitchLayout.setOnBtnClickedListener(new VoIpSwitchLayout.VoIpButtonView.OnBtnClickedListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda40
            @Override // org.telegram.p043ui.Components.voip.VoIpSwitchLayout.VoIpButtonView.OnBtnClickedListener
            public final void onClicked(View view) {
                VoIPFragment.this.lambda$setMicrohoneAction$34(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setMicrohoneAction$34(View view) {
        String string;
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            AndroidUtilities.cancelRunOnUIThread(this.hideUIRunnable);
            this.hideUiRunnableWaiting = false;
            boolean z = !sharedInstance.isMicMute();
            if (this.accessibilityManager.isTouchExplorationEnabled()) {
                if (z) {
                    string = LocaleController.getString("AccDescrVoipMicOff", C3632R.string.AccDescrVoipMicOff);
                } else {
                    string = LocaleController.getString("AccDescrVoipMicOn", C3632R.string.AccDescrVoipMicOn);
                }
                view.announceForAccessibility(string);
            }
            sharedInstance.setMicMute(z, false, true);
            this.previousState = this.currentState;
            updateViewState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoAction(VoIpSwitchLayout voIpSwitchLayout, final VoIPService voIPService, boolean z) {
        if ((this.currentUserIsVideo || this.callingUserIsVideo) ? true : voIPService.isVideoAvailable()) {
            if (this.currentUserIsVideo) {
                if (voIPService.isScreencast()) {
                    voIpSwitchLayout.setType(VoIpSwitchLayout.Type.VIDEO, false, z);
                } else {
                    voIpSwitchLayout.setType(VoIpSwitchLayout.Type.VIDEO, false, z);
                }
            } else {
                voIpSwitchLayout.setType(VoIpSwitchLayout.Type.VIDEO, true, z);
            }
            voIpSwitchLayout.setOnBtnClickedListener(new VoIpSwitchLayout.VoIpButtonView.OnBtnClickedListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda42
                @Override // org.telegram.p043ui.Components.voip.VoIpSwitchLayout.VoIpButtonView.OnBtnClickedListener
                public final void onClicked(View view) {
                    VoIPFragment.this.lambda$setVideoAction$36(voIPService, view);
                }
            });
            voIpSwitchLayout.setEnabled(true);
            return;
        }
        voIpSwitchLayout.setType(VoIpSwitchLayout.Type.VIDEO, true);
        voIpSwitchLayout.setOnClickListener(null);
        voIpSwitchLayout.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setVideoAction$36(final VoIPService voIPService, View view) {
        TLRPC$PhoneCall tLRPC$PhoneCall;
        AndroidUtilities.cancelRunOnUIThread(this.hideUIRunnable);
        this.hideUiRunnableWaiting = false;
        int i = Build.VERSION.SDK_INT;
        if (i >= 23 && this.activity.checkSelfPermission("android.permission.CAMERA") != 0) {
            this.activity.requestPermissions(new String[]{"android.permission.CAMERA"}, 102);
        } else if (i < 21 && (tLRPC$PhoneCall = voIPService.privateCall) != null && !tLRPC$PhoneCall.video && !this.callingUserIsVideo && !voIPService.sharedUIParams.cameraAlertWasShowed) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
            builder.setMessage(LocaleController.getString("VoipSwitchToVideoCall", C3632R.string.VoipSwitchToVideoCall));
            builder.setPositiveButton(LocaleController.getString("VoipSwitch", C3632R.string.VoipSwitch), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda6
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    VoIPFragment.this.lambda$setVideoAction$35(voIPService, dialogInterface, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
            builder.create().show();
        } else {
            toggleCameraInput();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setVideoAction$35(VoIPService voIPService, DialogInterface dialogInterface, int i) {
        voIPService.sharedUIParams.cameraAlertWasShowed = true;
        toggleCameraInput();
    }

    private void updateSpeakerPhoneIcon() {
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance == null) {
            return;
        }
        VoipAudioManager voipAudioManager = VoipAudioManager.get();
        if (sharedInstance.isBluetoothOn()) {
            this.speakerPhoneIcon.setImageResource(C3632R.C3634drawable.calls_bluetooth);
        } else if (voipAudioManager.isSpeakerphoneOn()) {
            this.speakerPhoneIcon.setImageResource(C3632R.C3634drawable.calls_speaker);
        } else if (sharedInstance.isHeadsetPlugged()) {
            this.speakerPhoneIcon.setImageResource(C3632R.C3634drawable.calls_menu_headset);
        } else {
            this.speakerPhoneIcon.setImageResource(C3632R.C3634drawable.calls_menu_phone);
        }
    }

    private void setSpeakerPhoneAction(final VoIpSwitchLayout voIpSwitchLayout, final VoIPService voIPService, boolean z) {
        VoipAudioManager voipAudioManager = VoipAudioManager.get();
        final int i = 0;
        if (voIPService.isBluetoothOn()) {
            voIpSwitchLayout.setType(VoIpSwitchLayout.Type.BLUETOOTH, false);
            i = 2;
        } else if (voipAudioManager.isSpeakerphoneOn()) {
            voIpSwitchLayout.setType(VoIpSwitchLayout.Type.SPEAKER, true);
        } else {
            voIpSwitchLayout.setType(VoIpSwitchLayout.Type.SPEAKER, false);
            i = 1;
        }
        voIpSwitchLayout.setEnabled(true);
        voIpSwitchLayout.setOnBtnClickedListener(new VoIpSwitchLayout.VoIpButtonView.OnBtnClickedListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda41
            @Override // org.telegram.p043ui.Components.voip.VoIpSwitchLayout.VoIpButtonView.OnBtnClickedListener
            public final void onClicked(View view) {
                VoIPFragment.this.lambda$setSpeakerPhoneAction$37(i, voIpSwitchLayout, voIPService, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setSpeakerPhoneAction$37(int i, VoIpSwitchLayout voIpSwitchLayout, VoIPService voIPService, View view) {
        if (VoIPService.getSharedInstance() != null) {
            AndroidUtilities.cancelRunOnUIThread(this.hideUIRunnable);
            this.hideUiRunnableWaiting = false;
            VoIPService.getSharedInstance().toggleSpeakerphoneOrShowRouteSheet(this.activity, false, Integer.valueOf(i));
            setSpeakerPhoneAction(voIpSwitchLayout, voIPService, true);
        }
    }

    private void setFrontalCameraAction(final VoIpSwitchLayout voIpSwitchLayout, final VoIPService voIPService, boolean z) {
        if (!this.currentUserIsVideo) {
            voIpSwitchLayout.setType(VoIpSwitchLayout.Type.CAMERA, false);
            voIpSwitchLayout.setOnBtnClickedListener(null);
            voIpSwitchLayout.setEnabled(false);
            return;
        }
        voIpSwitchLayout.setEnabled(true);
        if (voIPService.isFrontFaceCamera()) {
            voIpSwitchLayout.setType(VoIpSwitchLayout.Type.CAMERA, true ^ voIPService.isSwitchingCamera());
        } else {
            voIpSwitchLayout.setType(VoIpSwitchLayout.Type.CAMERA, voIPService.isSwitchingCamera());
        }
        voIpSwitchLayout.setOnBtnClickedListener(new VoIpSwitchLayout.VoIpButtonView.OnBtnClickedListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda43
            @Override // org.telegram.p043ui.Components.voip.VoIpSwitchLayout.VoIpButtonView.OnBtnClickedListener
            public final void onClicked(View view) {
                VoIPFragment.this.lambda$setFrontalCameraAction$38(voIPService, voIpSwitchLayout, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setFrontalCameraAction$38(VoIPService voIPService, VoIpSwitchLayout voIpSwitchLayout, View view) {
        String string;
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            AndroidUtilities.cancelRunOnUIThread(this.hideUIRunnable);
            this.hideUiRunnableWaiting = false;
            if (this.accessibilityManager.isTouchExplorationEnabled()) {
                if (voIPService.isFrontFaceCamera()) {
                    string = LocaleController.getString("AccDescrVoipCamSwitchedToBack", C3632R.string.AccDescrVoipCamSwitchedToBack);
                } else {
                    string = LocaleController.getString("AccDescrVoipCamSwitchedToFront", C3632R.string.AccDescrVoipCamSwitchedToFront);
                }
                view.announceForAccessibility(string);
            }
            voIpSwitchLayout.setType(VoIpSwitchLayout.Type.CAMERA, !voIPService.isFrontFaceCamera());
            sharedInstance.switchCamera();
        }
    }

    public void onScreenCastStart() {
        PrivateVideoPreviewDialogNew privateVideoPreviewDialogNew = this.previewDialog;
        if (privateVideoPreviewDialogNew == null) {
            return;
        }
        privateVideoPreviewDialogNew.dismiss(true, true);
    }

    private void toggleCameraInput() {
        String string;
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            if (this.accessibilityManager.isTouchExplorationEnabled()) {
                if (!this.currentUserIsVideo) {
                    string = LocaleController.getString("AccDescrVoipCamOn", C3632R.string.AccDescrVoipCamOn);
                } else {
                    string = LocaleController.getString("AccDescrVoipCamOff", C3632R.string.AccDescrVoipCamOff);
                }
                this.fragmentView.announceForAccessibility(string);
            }
            if (!this.currentUserIsVideo) {
                if (Build.VERSION.SDK_INT >= 21) {
                    if (this.previewDialog == null) {
                        sharedInstance.createCaptureDevice(false);
                        if (!sharedInstance.isFrontFaceCamera()) {
                            sharedInstance.switchCamera();
                        }
                        this.windowView.setLockOnScreen(true);
                        int[] iArr = new int[2];
                        this.bottomVideoBtn.getLocationOnScreen(iArr);
                        PrivateVideoPreviewDialogNew privateVideoPreviewDialogNew = new PrivateVideoPreviewDialogNew(this.fragmentView.getContext(), iArr[0], iArr[1]) { // from class: org.telegram.ui.VoIPFragment.24
                            @Override // org.telegram.p043ui.Components.voip.PrivateVideoPreviewDialogNew
                            public void onDismiss(boolean z, boolean z2) {
                                VoIPFragment.this.previewDialog = null;
                                VoIPService sharedInstance2 = VoIPService.getSharedInstance();
                                VoIPFragment.this.windowView.setLockOnScreen(false);
                                if (z2) {
                                    VoIPFragment.this.currentUserIsVideo = true;
                                    if (sharedInstance2 != null && !z) {
                                        sharedInstance2.requestVideoCall(false);
                                        sharedInstance2.setVideoState(false, 2);
                                        sharedInstance2.switchToSpeaker();
                                    }
                                    if (sharedInstance2 != null) {
                                        VoIPFragment voIPFragment = VoIPFragment.this;
                                        voIPFragment.setVideoAction(voIPFragment.bottomVideoBtn, sharedInstance2, true);
                                    }
                                } else if (sharedInstance2 != null) {
                                    sharedInstance2.setVideoState(false, 0);
                                }
                                VoIPFragment voIPFragment2 = VoIPFragment.this;
                                voIPFragment2.previousState = voIPFragment2.currentState;
                                VoIPFragment.this.updateViewState();
                            }

                            @Override // org.telegram.p043ui.Components.voip.PrivateVideoPreviewDialogNew
                            protected void afterOpened() {
                                VoIPFragment.this.gradientLayout.lockDrawing = true;
                                VoIPFragment.this.gradientLayout.invalidate();
                            }

                            @Override // org.telegram.p043ui.Components.voip.PrivateVideoPreviewDialogNew
                            protected void beforeClosed() {
                                VoIPFragment.this.gradientLayout.lockDrawing = false;
                                VoIPFragment.this.gradientLayout.invalidate();
                            }

                            @Override // org.telegram.p043ui.Components.voip.PrivateVideoPreviewDialogNew
                            protected int[] getFloatingViewLocation() {
                                int[] iArr2 = new int[2];
                                VoIPFragment.this.currentUserCameraFloatingLayout.getLocationOnScreen(iArr2);
                                return new int[]{iArr2[0], iArr2[1], VoIPFragment.this.currentUserCameraFloatingLayout.getMeasuredWidth()};
                            }

                            @Override // org.telegram.p043ui.Components.voip.PrivateVideoPreviewDialogNew
                            protected boolean isHasVideoOnMainScreen() {
                                return VoIPFragment.this.callingUserIsVideo;
                            }
                        };
                        this.previewDialog = privateVideoPreviewDialogNew;
                        WindowInsets windowInsets = this.lastInsets;
                        if (windowInsets != null) {
                            privateVideoPreviewDialogNew.setBottomPadding(windowInsets.getSystemWindowInsetBottom());
                        }
                        this.fragmentView.addView(this.previewDialog);
                        return;
                    }
                    return;
                }
                this.currentUserIsVideo = true;
                if (!sharedInstance.isSpeakerphoneOn()) {
                    VoIPService.getSharedInstance().toggleSpeakerphoneOrShowRouteSheet(this.activity, false);
                }
                sharedInstance.requestVideoCall(false);
                sharedInstance.setVideoState(false, 2);
            } else {
                this.currentUserTextureView.saveCameraLastBitmap();
                sharedInstance.setVideoState(false, 0);
                if (Build.VERSION.SDK_INT >= 21) {
                    sharedInstance.clearCamera();
                }
            }
            this.previousState = this.currentState;
            updateViewState();
        }
    }

    public static void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        VoIPFragment voIPFragment = instance;
        if (voIPFragment != null) {
            voIPFragment.onRequestPermissionsResultInternal(i, strArr, iArr);
        }
    }

    private void onRequestPermissionsResultInternal(int i, String[] strArr, int[] iArr) {
        if (i == 101) {
            if (VoIPService.getSharedInstance() == null) {
                this.windowView.finish();
                return;
            } else if (iArr.length > 0 && iArr[0] == 0) {
                runAcceptCallAnimation(new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda37
                    @Override // java.lang.Runnable
                    public final void run() {
                        VoIPFragment.lambda$onRequestPermissionsResultInternal$39();
                    }
                });
            } else if (!this.activity.shouldShowRequestPermissionRationale("android.permission.RECORD_AUDIO")) {
                VoIPService.getSharedInstance().declineIncomingCall();
                VoIPHelper.permissionDenied(this.activity, new Runnable() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda26
                    @Override // java.lang.Runnable
                    public final void run() {
                        VoIPFragment.this.lambda$onRequestPermissionsResultInternal$40();
                    }
                }, i);
                return;
            }
        }
        if (i == 102) {
            if (VoIPService.getSharedInstance() == null) {
                this.windowView.finish();
            } else if (iArr.length <= 0 || iArr[0] != 0) {
            } else {
                toggleCameraInput();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onRequestPermissionsResultInternal$39() {
        if (VoIPService.getSharedInstance() != null) {
            VoIPService.getSharedInstance().acceptIncomingCall();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultInternal$40() {
        this.windowView.finish();
    }

    private void updateSystemBarColors() {
        this.overlayPaint.setColor(ColorUtils.setAlphaComponent(-16777216, (int) (this.uiVisibilityAlpha * 102.0f * this.enterTransitionProgress)));
        this.overlayBottomPaint.setColor(ColorUtils.setAlphaComponent(-16777216, (int) (((this.fillNaviagtionBarValue * 0.5f) + 0.5f) * 255.0f * this.enterTransitionProgress)));
        ViewGroup viewGroup = this.fragmentView;
        if (viewGroup != null) {
            viewGroup.invalidate();
        }
    }

    public static void onPause() {
        VoIPFragment voIPFragment = instance;
        if (voIPFragment != null) {
            voIPFragment.onPauseInternal();
        }
        if (VoIPPiPView.getInstance() != null) {
            VoIPPiPView.getInstance().onPause();
        }
    }

    public static void onResume() {
        VoIPFragment voIPFragment = instance;
        if (voIPFragment != null) {
            voIPFragment.onResumeInternal();
        }
        if (VoIPPiPView.getInstance() != null) {
            VoIPPiPView.getInstance().onResume();
        }
    }

    public void onPauseInternal() {
        boolean isScreenOn;
        VoIPService sharedInstance;
        WindowInsets windowInsets;
        PowerManager powerManager = (PowerManager) this.activity.getSystemService("power");
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            isScreenOn = powerManager.isInteractive();
        } else {
            isScreenOn = powerManager.isScreenOn();
        }
        boolean checkInlinePermissions = AndroidUtilities.checkInlinePermissions(this.activity);
        if (this.canSwitchToPip && checkInlinePermissions) {
            int measuredHeight = instance.windowView.getMeasuredHeight();
            VoIPFragment voIPFragment = instance;
            VoIPPiPView.show(voIPFragment.activity, voIPFragment.currentAccount, voIPFragment.windowView.getMeasuredWidth(), measuredHeight, 0);
            if (i >= 20 && (windowInsets = instance.lastInsets) != null) {
                VoIPPiPView.topInset = windowInsets.getSystemWindowInsetTop();
                VoIPPiPView.bottomInset = instance.lastInsets.getSystemWindowInsetBottom();
            }
        }
        if (this.currentUserIsVideo) {
            if ((checkInlinePermissions && isScreenOn) || (sharedInstance = VoIPService.getSharedInstance()) == null) {
                return;
            }
            sharedInstance.setVideoState(false, 1);
        }
    }

    public void onResumeInternal() {
        if (VoIPPiPView.getInstance() != null) {
            VoIPPiPView.finish();
        }
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            if (sharedInstance.getVideoState(false) == 1) {
                sharedInstance.setVideoState(false, 2);
            }
            updateViewState();
        } else {
            this.windowView.finish();
        }
        this.deviceIsLocked = ((KeyguardManager) this.activity.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    private void showErrorDialog(CharSequence charSequence) {
        if (this.activity.isFinishing()) {
            return;
        }
        AlertDialog show = new DarkAlertDialog.Builder(this.activity).setTitle(LocaleController.getString("VoipFailed", C3632R.string.VoipFailed)).setMessage(charSequence).setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), null).show();
        show.setCanceledOnTouchOutside(true);
        show.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                VoIPFragment.this.lambda$showErrorDialog$41(dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showErrorDialog$41(DialogInterface dialogInterface) {
        this.windowView.finish();
    }

    private void requestInlinePermissions() {
        if (Build.VERSION.SDK_INT >= 21) {
            AlertsCreator.createDrawOverlayPermissionDialog(this.activity, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.VoIPFragment$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    VoIPFragment.this.lambda$requestInlinePermissions$42(dialogInterface, i);
                }
            }).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestInlinePermissions$42(DialogInterface dialogInterface, int i) {
        VoIPWindowView voIPWindowView = this.windowView;
        if (voIPWindowView != null) {
            voIPWindowView.finish();
        }
    }

    public TLRPC$Document replaceEmojiToLottieFrame(CharSequence charSequence, int[] iArr) {
        if (charSequence instanceof Spannable) {
            Spannable spannable = (Spannable) charSequence;
            Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) spannable.getSpans(0, spannable.length(), Emoji.EmojiSpan.class);
            AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spannable.getSpans(0, spannable.length(), AnimatedEmojiSpan.class);
            if (emojiSpanArr != null) {
                if (((iArr == null ? 0 : iArr[0]) - emojiSpanArr.length) - (animatedEmojiSpanArr == null ? 0 : animatedEmojiSpanArr.length) <= 0 && emojiSpanArr.length > 0) {
                    return MediaDataController.getInstance(this.currentAccount).getEmojiAnimatedSticker(emojiSpanArr[0].emoji);
                }
            }
            return null;
        }
        return null;
    }
}
