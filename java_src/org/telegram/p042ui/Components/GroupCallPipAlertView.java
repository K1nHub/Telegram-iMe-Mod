package org.telegram.p042ui.Components;

import android.content.Context;
import android.content.Intent;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.voip.VoIPButtonsLayout;
import org.telegram.p042ui.Components.voip.VoIPToggleButton;
import org.telegram.p042ui.GroupCallActivity;
import org.telegram.p042ui.LaunchActivity;
import org.telegram.tgnet.TLRPC$GroupCall;
/* renamed from: org.telegram.ui.Components.GroupCallPipAlertView */
/* loaded from: classes6.dex */
public class GroupCallPipAlertView extends LinearLayout implements VoIPService.StateListener, NotificationCenter.NotificationCenterDelegate {
    BackupImageView avatarImageView;
    int currentAccount;

    /* renamed from: cx */
    float f1851cx;

    /* renamed from: cy */
    float f1852cy;
    FrameLayout groupInfoContainer;
    private boolean invalidateGradient;
    VoIPToggleButton leaveButton;
    LinearGradient linearGradient;
    VoIPToggleButton muteButton;
    float muteProgress;
    private boolean mutedByAdmin;
    float mutedByAdminProgress;
    Paint paint;
    private int position;
    RectF rectF;
    VoIPToggleButton soundButton;
    TextView subtitleView;
    TextView titleView;

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

    public GroupCallPipAlertView(final Context context, int i) {
        super(context);
        this.rectF = new RectF();
        this.paint = new Paint(1);
        this.invalidateGradient = true;
        setOrientation(1);
        this.currentAccount = i;
        this.paint.setAlpha(234);
        FrameLayout frameLayout = new FrameLayout(this, context) { // from class: org.telegram.ui.Components.GroupCallPipAlertView.1
            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                if (Build.VERSION.SDK_INT >= 21) {
                    VoIPService sharedInstance = VoIPService.getSharedInstance();
                    if (sharedInstance != null && ChatObject.isChannelOrGiga(sharedInstance.getChat())) {
                        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, LocaleController.getString("VoipChannelOpenVoiceChat", C3630R.string.VoipChannelOpenVoiceChat)));
                    } else {
                        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, LocaleController.getString("VoipGroupOpenVoiceChat", C3630R.string.VoipGroupOpenVoiceChat)));
                    }
                }
            }
        };
        this.groupInfoContainer = frameLayout;
        frameLayout.setPadding(AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8));
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m102dp(22));
        this.groupInfoContainer.addView(this.avatarImageView, LayoutHelper.createFrame(44, 44));
        this.groupInfoContainer.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m102dp(6), 0, ColorUtils.setAlphaComponent(-1, 76)));
        this.groupInfoContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.GroupCallPipAlertView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupCallPipAlertView.this.lambda$new$0(view);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextColor(-1);
        this.titleView.setTextSize(15.0f);
        this.titleView.setMaxLines(2);
        this.titleView.setEllipsize(TextUtils.TruncateAt.END);
        this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        linearLayout.addView(this.titleView, LayoutHelper.createLinear(-1, -2));
        TextView textView2 = new TextView(context);
        this.subtitleView = textView2;
        textView2.setTextSize(12.0f);
        this.subtitleView.setTextColor(ColorUtils.setAlphaComponent(-1, 153));
        linearLayout.addView(this.subtitleView, LayoutHelper.createLinear(-1, -2));
        this.groupInfoContainer.addView(linearLayout, LayoutHelper.createFrame(-1, -2, 16, 55, 0, 0, 0));
        addView(this.groupInfoContainer, LayoutHelper.createLinear(-1, -2, 0, 10, 10, 10, 10));
        VoIPToggleButton voIPToggleButton = new VoIPToggleButton(context, 44.0f);
        this.soundButton = voIPToggleButton;
        voIPToggleButton.setTextSize(12);
        this.soundButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.GroupCallPipAlertView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupCallPipAlertView.this.lambda$new$1(context, view);
            }
        });
        this.soundButton.setCheckable(true);
        this.soundButton.setBackgroundColor(ColorUtils.setAlphaComponent(-1, 38), ColorUtils.setAlphaComponent(-1, 76));
        VoIPToggleButton voIPToggleButton2 = new VoIPToggleButton(context, 44.0f);
        this.muteButton = voIPToggleButton2;
        voIPToggleButton2.setTextSize(12);
        this.muteButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.GroupCallPipAlertView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupCallPipAlertView.this.lambda$new$2(context, view);
            }
        });
        VoIPToggleButton voIPToggleButton3 = new VoIPToggleButton(context, 44.0f);
        this.leaveButton = voIPToggleButton3;
        voIPToggleButton3.setTextSize(12);
        this.leaveButton.setData(C3630R.C3632drawable.calls_decline, -1, -3257782, 0.3f, false, LocaleController.getString("VoipGroupLeave", C3630R.string.VoipGroupLeave), false, false);
        this.leaveButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.GroupCallPipAlertView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupCallPipAlertView.this.lambda$new$4(context, view);
            }
        });
        VoIPButtonsLayout voIPButtonsLayout = new VoIPButtonsLayout(context);
        voIPButtonsLayout.setChildSize(68);
        voIPButtonsLayout.setUseStartPadding(false);
        voIPButtonsLayout.addView(this.soundButton, LayoutHelper.createFrame(68, 63));
        voIPButtonsLayout.addView(this.muteButton, LayoutHelper.createFrame(68, 63));
        voIPButtonsLayout.addView(this.leaveButton, LayoutHelper.createFrame(68, 63));
        setWillNotDraw(false);
        addView(voIPButtonsLayout, LayoutHelper.createLinear(-1, -2, 0, 6, 0, 6, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (VoIPService.getSharedInstance() != null) {
            Intent action = new Intent(getContext(), LaunchActivity.class).setAction("voip_chat");
            action.putExtra("currentAccount", VoIPService.getSharedInstance().getAccount());
            getContext().startActivity(action);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Context context, View view) {
        if (VoIPService.getSharedInstance() == null) {
            return;
        }
        VoIPService.getSharedInstance().toggleSpeakerphoneOrShowRouteSheet(getContext(), Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Context context, View view) {
        if (VoIPService.getSharedInstance() != null) {
            if (VoIPService.getSharedInstance().mutedByAdmin()) {
                this.muteButton.shakeView();
                try {
                    Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
                    if (vibrator != null) {
                        vibrator.vibrate(200L);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    FileLog.m97e(e);
                    return;
                }
            }
            VoIPService.getSharedInstance().setMicMute(!VoIPService.getSharedInstance().isMicMute(), false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(final Context context, View view) {
        GroupCallActivity.onLeaveClick(getContext(), new Runnable() { // from class: org.telegram.ui.Components.GroupCallPipAlertView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                GroupCallPip.updateVisibility(context);
            }
        }, Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0229  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r28) {
        /*
            Method dump skipped, instructions count: 717
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Components.GroupCallPipAlertView.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(230), 1073741824), i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        String str;
        super.onAttachedToWindow();
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null && sharedInstance.groupCall != null) {
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setColor(Theme.getColor(Theme.keys_avatar_background[AvatarDrawable.getColorIndex(sharedInstance.getChat().f1600id)]), Theme.getColor(Theme.keys_avatar_background2[AvatarDrawable.getColorIndex(sharedInstance.getChat().f1600id)]));
            avatarDrawable.setInfo(sharedInstance.getChat());
            this.avatarImageView.setImage(ImageLocation.getForLocal(sharedInstance.getChat().photo.photo_small), "50_50", avatarDrawable, (Object) null);
            if (!TextUtils.isEmpty(sharedInstance.groupCall.call.title)) {
                str = sharedInstance.groupCall.call.title;
            } else {
                str = sharedInstance.getChat().title;
            }
            if (str != null) {
                str = str.replace("\n", " ").replaceAll(" +", " ").trim();
            }
            this.titleView.setText(str);
            updateMembersCount();
            sharedInstance.registerStateListener(this);
            if (VoIPService.getSharedInstance() != null) {
                this.mutedByAdmin = VoIPService.getSharedInstance().mutedByAdmin();
            }
            this.mutedByAdminProgress = this.mutedByAdmin ? 1.0f : 0.0f;
            this.muteProgress = VoIPService.getSharedInstance() == null || VoIPService.getSharedInstance().isMicMute() || this.mutedByAdmin ? 1.0f : 0.0f;
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.groupCallUpdated);
        updateButtons(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.unregisterStateListener(this);
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.groupCallUpdated);
    }

    private void updateMembersCount() {
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance == null || sharedInstance.groupCall == null) {
            return;
        }
        int callState = sharedInstance.getCallState();
        if (!sharedInstance.isSwitchingStream() && (callState == 1 || callState == 2 || callState == 6 || callState == 5)) {
            this.subtitleView.setText(LocaleController.getString("VoipGroupConnecting", C3630R.string.VoipGroupConnecting));
            return;
        }
        TextView textView = this.subtitleView;
        TLRPC$GroupCall tLRPC$GroupCall = sharedInstance.groupCall.call;
        textView.setText(LocaleController.formatPluralString(tLRPC$GroupCall.rtmp_stream ? "ViewersWatching" : "Participants", tLRPC$GroupCall.participants_count, new Object[0]));
    }

    private void updateButtons(boolean z) {
        VoIPService sharedInstance;
        int i;
        String str;
        if (this.soundButton == null || this.muteButton == null || (sharedInstance = VoIPService.getSharedInstance()) == null) {
            return;
        }
        boolean isBluetoothOn = sharedInstance.isBluetoothOn();
        boolean z2 = !isBluetoothOn && sharedInstance.isSpeakerphoneOn();
        this.soundButton.setChecked(z2, z);
        if (isBluetoothOn) {
            this.soundButton.setData(C3630R.C3632drawable.calls_bluetooth, -1, 0, 0.1f, true, LocaleController.getString("VoipAudioRoutingBluetooth", C3630R.string.VoipAudioRoutingBluetooth), false, z);
        } else if (z2) {
            this.soundButton.setData(C3630R.C3632drawable.calls_speaker, -1, 0, 0.3f, true, LocaleController.getString("VoipSpeaker", C3630R.string.VoipSpeaker), false, z);
        } else if (sharedInstance.isHeadsetPlugged()) {
            this.soundButton.setData(C3630R.C3632drawable.calls_headphones, -1, 0, 0.1f, true, LocaleController.getString("VoipAudioRoutingHeadset", C3630R.string.VoipAudioRoutingHeadset), false, z);
        } else {
            this.soundButton.setData(C3630R.C3632drawable.calls_speaker, -1, 0, 0.1f, true, LocaleController.getString("VoipSpeaker", C3630R.string.VoipSpeaker), false, z);
        }
        if (sharedInstance.mutedByAdmin()) {
            this.muteButton.setData(C3630R.C3632drawable.calls_unmute, -1, ColorUtils.setAlphaComponent(-1, 76), 0.1f, true, LocaleController.getString("VoipMutedByAdminShort", C3630R.string.VoipMutedByAdminShort), true, z);
        } else {
            VoIPToggleButton voIPToggleButton = this.muteButton;
            int i2 = C3630R.C3632drawable.calls_unmute;
            int alphaComponent = ColorUtils.setAlphaComponent(-1, (int) ((sharedInstance.isMicMute() ? 0.3f : 0.15f) * 255.0f));
            if (sharedInstance.isMicMute()) {
                i = C3630R.string.VoipUnmute;
                str = "VoipUnmute";
            } else {
                i = C3630R.string.VoipMute;
                str = "VoipMute";
            }
            voIPToggleButton.setData(i2, -1, alphaComponent, 0.1f, true, LocaleController.getString(str, i), sharedInstance.isMicMute(), z);
        }
        invalidate();
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onAudioSettingsChanged() {
        updateButtons(true);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onStateChanged(int i) {
        updateMembersCount();
    }

    public void setPosition(int i, float f, float f2) {
        this.position = i;
        this.f1851cx = f;
        this.f1852cy = f2;
        invalidate();
        this.invalidateGradient = true;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        boolean mutedByAdmin;
        if (i == NotificationCenter.groupCallUpdated) {
            updateMembersCount();
            if (VoIPService.getSharedInstance() == null || (mutedByAdmin = VoIPService.getSharedInstance().mutedByAdmin()) == this.mutedByAdmin) {
                return;
            }
            this.mutedByAdmin = mutedByAdmin;
            invalidate();
        }
    }
}
