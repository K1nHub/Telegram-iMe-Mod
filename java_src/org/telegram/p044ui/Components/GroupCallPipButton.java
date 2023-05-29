package org.telegram.p044ui.Components;

import android.content.Context;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.os.Build;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.tgnet.TLRPC$TL_groupCallParticipant;
/* renamed from: org.telegram.ui.Components.GroupCallPipButton */
/* loaded from: classes6.dex */
public class GroupCallPipButton extends FrameLayout implements NotificationCenter.NotificationCenterDelegate, VoIPService.StateListener {
    float amplitude;
    float animateAmplitudeDiff;
    float animateToAmplitude;
    private RLottieDrawable bigMicDrawable;
    BlobDrawable blobDrawable;
    BlobDrawable blobDrawable2;
    private final int currentAccount;
    WeavingState currentState;
    long lastStubUpdateAmplitude;
    Matrix matrix;
    private RLottieImageView muteButton;
    OvershootInterpolator overshootInterpolator;
    Paint paint;
    float pinnedProgress;
    boolean prepareToRemove;
    private final LinearGradient prepareToRemoveShader;
    float pressedProgress;
    boolean pressedState;
    WeavingState previousState;
    float progressToPrepareRemove;
    float progressToState;
    Random random;
    float removeAngle;
    public boolean removed;
    WeavingState[] states;
    private boolean stub;
    float wavesEnter;

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onCameraFirstFrameAvailable() {
        VoIPService.StateListener.CC.$default$onCameraFirstFrameAvailable(this);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onCameraSwitch(boolean z) {
        VoIPService.StateListener.CC.$default$onCameraSwitch(this, z);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onMediaStateUpdated(int i, int i2) {
        VoIPService.StateListener.CC.$default$onMediaStateUpdated(this, i, i2);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onScreenOnChange(boolean z) {
        VoIPService.StateListener.CC.$default$onScreenOnChange(this, z);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onSignalBarsCountChanged(int i) {
        VoIPService.StateListener.CC.$default$onSignalBarsCountChanged(this, i);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public /* synthetic */ void onVideoAvailableChange(boolean z) {
        VoIPService.StateListener.CC.$default$onVideoAvailableChange(this, z);
    }

    public GroupCallPipButton(Context context, int i, boolean z) {
        super(context);
        this.paint = new Paint(1);
        this.blobDrawable = new BlobDrawable(8);
        this.blobDrawable2 = new BlobDrawable(9);
        this.progressToState = 1.0f;
        this.matrix = new Matrix();
        this.wavesEnter = BitmapDescriptorFactory.HUE_RED;
        this.random = new Random();
        this.states = new WeavingState[4];
        this.overshootInterpolator = new OvershootInterpolator();
        this.stub = z;
        this.currentAccount = i;
        for (int i2 = 0; i2 < 4; i2++) {
            this.states[i2] = new WeavingState(i2);
        }
        this.blobDrawable.maxRadius = AndroidUtilities.m54dp(37);
        this.blobDrawable.minRadius = AndroidUtilities.m54dp(32);
        this.blobDrawable2.maxRadius = AndroidUtilities.m54dp(37);
        this.blobDrawable2.minRadius = AndroidUtilities.m54dp(32);
        this.blobDrawable.generateBlob();
        this.blobDrawable2.generateBlob();
        int i3 = C3290R.raw.voice_outlined;
        this.bigMicDrawable = new RLottieDrawable(i3, "" + i3, AndroidUtilities.m54dp(22), AndroidUtilities.m54dp(30), true, null);
        setWillNotDraw(false);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.muteButton = rLottieImageView;
        rLottieImageView.setAnimation(this.bigMicDrawable);
        this.muteButton.setScaleType(ImageView.ScaleType.CENTER);
        addView(this.muteButton);
        this.prepareToRemoveShader = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(350), (float) BitmapDescriptorFactory.HUE_RED, new int[]{-2801343, -561538, 0}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 1.0f}, Shader.TileMode.CLAMP);
        if (z) {
            setState(0);
        }
    }

    public void setPressedState(boolean z) {
        this.pressedState = z;
    }

    public void setPinnedProgress(float f) {
        this.pinnedProgress = f;
    }

    /* renamed from: org.telegram.ui.Components.GroupCallPipButton$WeavingState */
    /* loaded from: classes6.dex */
    public static class WeavingState {
        int color1;
        int color2;
        int color3;
        private final int currentState;
        private float duration;
        public Shader shader;
        private float startX;
        private float startY;
        private float time;
        private float targetX = -1.0f;
        private float targetY = -1.0f;
        private final Matrix matrix = new Matrix();

        public WeavingState(int i) {
            this.currentState = i;
        }

        public void update(long j, float f) {
            int i = this.currentState;
            if (i == 0) {
                int i2 = this.color1;
                int i3 = Theme.key_voipgroup_overlayGreen1;
                if (i2 != Theme.getColor(i3) || this.color2 != Theme.getColor(Theme.key_voipgroup_overlayGreen2)) {
                    int color = Theme.getColor(i3);
                    this.color1 = color;
                    int color2 = Theme.getColor(Theme.key_voipgroup_overlayGreen2);
                    this.color2 = color2;
                    this.shader = new RadialGradient(200.0f, 200.0f, 200.0f, new int[]{color, color2}, (float[]) null, Shader.TileMode.CLAMP);
                }
            } else if (i == 1) {
                int i4 = this.color1;
                int i5 = Theme.key_voipgroup_overlayBlue1;
                if (i4 != Theme.getColor(i5) || this.color2 != Theme.getColor(Theme.key_voipgroup_overlayBlue2)) {
                    int color3 = Theme.getColor(i5);
                    this.color1 = color3;
                    int color4 = Theme.getColor(Theme.key_voipgroup_overlayBlue2);
                    this.color2 = color4;
                    this.shader = new RadialGradient(200.0f, 200.0f, 200.0f, new int[]{color3, color4}, (float[]) null, Shader.TileMode.CLAMP);
                }
            } else if (i != 3) {
                return;
            } else {
                int i6 = this.color1;
                int i7 = Theme.key_voipgroup_mutedByAdminGradient;
                if (i6 != Theme.getColor(i7) || this.color2 != Theme.getColor(Theme.key_voipgroup_mutedByAdminGradient2) || this.color3 != Theme.getColor(Theme.key_voipgroup_mutedByAdminGradient3)) {
                    int color5 = Theme.getColor(Theme.key_voipgroup_mutedByAdminGradient2);
                    this.color2 = color5;
                    int color6 = Theme.getColor(Theme.key_voipgroup_mutedByAdminGradient3);
                    this.color3 = color6;
                    int color7 = Theme.getColor(i7);
                    this.color1 = color7;
                    this.shader = new RadialGradient(200.0f, 200.0f, 200.0f, new int[]{color5, color6, color7}, (float[]) null, Shader.TileMode.CLAMP);
                }
            }
            int m54dp = AndroidUtilities.m54dp((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
            float f2 = this.duration;
            if (f2 == BitmapDescriptorFactory.HUE_RED || this.time >= f2) {
                this.duration = Utilities.random.nextInt(700) + 500;
                this.time = BitmapDescriptorFactory.HUE_RED;
                if (this.targetX == -1.0f) {
                    updateTargets();
                }
                this.startX = this.targetX;
                this.startY = this.targetY;
                updateTargets();
            }
            float f3 = (float) j;
            float f4 = this.time + ((BlobDrawable.GRADIENT_SPEED_MIN + 0.5f) * f3) + (f3 * BlobDrawable.GRADIENT_SPEED_MAX * 2.0f * f);
            this.time = f4;
            float f5 = this.duration;
            if (f4 > f5) {
                this.time = f5;
            }
            float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(this.time / f5);
            float f6 = m54dp;
            float f7 = this.startX;
            float f8 = ((f7 + ((this.targetX - f7) * interpolation)) * f6) - 200.0f;
            float f9 = this.startY;
            float f10 = ((f9 + ((this.targetY - f9) * interpolation)) * f6) - 200.0f;
            float f11 = (f6 / 400.0f) * (this.currentState != 3 ? 1.5f : 2.0f);
            this.matrix.reset();
            this.matrix.postTranslate(f8, f10);
            this.matrix.postScale(f11, f11, f8 + 200.0f, f10 + 200.0f);
            this.shader.setLocalMatrix(this.matrix);
        }

        private void updateTargets() {
            int i = this.currentState;
            if (i == 0) {
                this.targetX = ((Utilities.random.nextInt(100) * 0.1f) / 100.0f) + 0.2f;
                this.targetY = ((Utilities.random.nextInt(100) * 0.1f) / 100.0f) + 0.7f;
            } else if (i == 3) {
                this.targetX = ((Utilities.random.nextInt(100) * 0.1f) / 100.0f) + 0.6f;
                this.targetY = (Utilities.random.nextInt(100) * 0.1f) / 100.0f;
            } else {
                this.targetX = ((Utilities.random.nextInt(100) / 100.0f) * 0.2f) + 0.8f;
                this.targetY = Utilities.random.nextInt(100) / 100.0f;
            }
        }

        public void setToPaint(Paint paint) {
            if (this.currentState == 2) {
                paint.setShader(null);
                paint.setColor(Theme.getColor(Theme.key_voipgroup_topPanelGray));
                return;
            }
            paint.setShader(this.shader);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:136:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x016e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r19) {
        /*
            Method dump skipped, instructions count: 722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Components.GroupCallPipButton.onDraw(android.graphics.Canvas):void");
    }

    private void setAmplitude(double d) {
        float min = (float) (Math.min(8500.0d, d) / 8500.0d);
        this.animateToAmplitude = min;
        this.animateAmplitudeDiff = (min - this.amplitude) / ((BlobDrawable.AMPLITUDE_SPEED * 500.0f) + 100.0f);
    }

    public void setState(int i) {
        String string;
        WeavingState weavingState = this.currentState;
        if (weavingState == null || weavingState.currentState != i) {
            WeavingState weavingState2 = this.currentState;
            this.previousState = weavingState2;
            WeavingState weavingState3 = this.states[i];
            this.currentState = weavingState3;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (weavingState2 != null) {
                this.progressToState = BitmapDescriptorFactory.HUE_RED;
            } else {
                this.progressToState = 1.0f;
                boolean z = true;
                if ((weavingState3.currentState == 3 || this.currentState.currentState == 2) ? false : false) {
                    f = 1.0f;
                }
                this.wavesEnter = f;
            }
            VoIPService sharedInstance = VoIPService.getSharedInstance();
            if (sharedInstance != null && ChatObject.isChannelOrGiga(sharedInstance.getChat())) {
                string = LocaleController.getString("VoipChannelVoiceChat", C3290R.string.VoipChannelVoiceChat);
            } else {
                string = LocaleController.getString("VoipGroupVoiceChat", C3290R.string.VoipGroupVoiceChat);
            }
            if (i == 0) {
                string = string + ", " + LocaleController.getString("VoipTapToMute", C3290R.string.VoipTapToMute);
            } else if (i == 2) {
                string = string + ", " + LocaleController.getString("Connecting", C3290R.string.Connecting);
            } else if (i == 3) {
                string = string + ", " + LocaleController.getString("VoipMutedByAdmin", C3290R.string.VoipMutedByAdmin);
            }
            setContentDescription(string);
            invalidate();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        String str;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (Build.VERSION.SDK_INT < 21 || GroupCallPip.getInstance() == null) {
            return;
        }
        if (GroupCallPip.getInstance().showAlert) {
            i = C3290R.string.AccDescrCloseMenu;
            str = "AccDescrCloseMenu";
        } else {
            i = C3290R.string.AccDescrOpenMenu2;
            str = "AccDescrOpenMenu2";
        }
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, LocaleController.getString(str, i)));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.stub) {
            return;
        }
        setAmplitude(0.0d);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.webRtcMicAmplitudeEvent);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.groupCallUpdated);
        boolean z = VoIPService.getSharedInstance() != null && VoIPService.getSharedInstance().isMicMute();
        if (VoIPService.getSharedInstance() != null) {
            VoIPService.getSharedInstance().registerStateListener(this);
        }
        this.bigMicDrawable.setCustomEndFrame(z ? 13 : 24);
        RLottieDrawable rLottieDrawable = this.bigMicDrawable;
        rLottieDrawable.setCurrentFrame(rLottieDrawable.getCustomEndFrame() - 1, false, true);
        updateButtonState();
    }

    private void updateButtonState() {
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance == null || sharedInstance.groupCall == null) {
            return;
        }
        int callState = sharedInstance.getCallState();
        if (callState == 1 || callState == 2 || callState == 6 || callState == 5) {
            setState(2);
            return;
        }
        TLRPC$TL_groupCallParticipant tLRPC$TL_groupCallParticipant = sharedInstance.groupCall.participants.get(sharedInstance.getSelfId());
        if (tLRPC$TL_groupCallParticipant != null && !tLRPC$TL_groupCallParticipant.can_self_unmute && tLRPC$TL_groupCallParticipant.muted && !ChatObject.canManageCalls(sharedInstance.getChat())) {
            if (!sharedInstance.isMicMute()) {
                sharedInstance.setMicMute(true, false, false);
            }
            setState(3);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
            if (getParent() != null) {
                ((View) getParent()).dispatchTouchEvent(obtain);
                return;
            }
            return;
        }
        setState(sharedInstance.isMicMute() ? 1 : 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.stub) {
            return;
        }
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.webRtcMicAmplitudeEvent);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.groupCallUpdated);
        if (VoIPService.getSharedInstance() != null) {
            VoIPService.getSharedInstance().unregisterStateListener(this);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.webRtcMicAmplitudeEvent) {
            setAmplitude(((Float) objArr[0]).floatValue() * 4000.0f);
        } else if (i == NotificationCenter.groupCallUpdated) {
            updateButtonState();
        }
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onAudioSettingsChanged() {
        boolean z = VoIPService.getSharedInstance() != null && VoIPService.getSharedInstance().isMicMute();
        if (this.bigMicDrawable.setCustomEndFrame(z ? 13 : 24)) {
            if (z) {
                this.bigMicDrawable.setCurrentFrame(0);
            } else {
                this.bigMicDrawable.setCurrentFrame(12);
            }
        }
        this.muteButton.playAnimation();
        updateButtonState();
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onStateChanged(int i) {
        updateButtonState();
    }

    public void setRemoveAngle(double d) {
        this.removeAngle = (float) d;
    }

    public void prepareToRemove(boolean z) {
        if (this.prepareToRemove != z) {
            invalidate();
        }
        this.prepareToRemove = z;
    }
}
