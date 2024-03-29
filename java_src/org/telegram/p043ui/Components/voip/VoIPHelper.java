package org.telegram.p043ui.Components.voip;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Components.BetterRatingView;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.JoinCallAlert;
import org.telegram.p043ui.Components.JoinCallByUrlAlert;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.GroupCallActivity;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$PhoneCallDiscardReason;
import org.telegram.tgnet.TLRPC$TL_chatFull;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputPeerChannel;
import org.telegram.tgnet.TLRPC$TL_inputPeerChat;
import org.telegram.tgnet.TLRPC$TL_inputPeerUser;
import org.telegram.tgnet.TLRPC$TL_inputPhoneCall;
import org.telegram.tgnet.TLRPC$TL_messageActionPhoneCall;
import org.telegram.tgnet.TLRPC$TL_peerChannel;
import org.telegram.tgnet.TLRPC$TL_peerChat;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_phoneCallDiscardReasonBusy;
import org.telegram.tgnet.TLRPC$TL_phoneCallDiscardReasonMissed;
import org.telegram.tgnet.TLRPC$TL_phone_setCallRating;
import org.telegram.tgnet.TLRPC$TL_updates;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
/* renamed from: org.telegram.ui.Components.voip.VoIPHelper */
/* loaded from: classes6.dex */
public class VoIPHelper {
    public static long lastCallTime;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showRateAlert$13(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doInitiateCall(TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, String str, TLRPC$InputPeer tLRPC$InputPeer, boolean z, boolean z2, boolean z3, boolean z4, Activity activity, BaseFragment baseFragment, AccountInstance accountInstance, boolean z5, boolean z6) {
        doInitiateCall(tLRPC$User, tLRPC$Chat, str, tLRPC$InputPeer, z, z2, z3, z4, activity, baseFragment, accountInstance, z5, z6, SharedConfig.isCallsConfirmationEnabled);
    }

    public static void startCall(TLRPC$User tLRPC$User, boolean z, boolean z2, final Activity activity, TLRPC$UserFull tLRPC$UserFull, AccountInstance accountInstance) {
        int i;
        String str;
        int i2;
        String str2;
        if (tLRPC$UserFull != null && tLRPC$UserFull.phone_calls_private) {
            new AlertDialog.Builder(activity).setTitle(LocaleController.getString("VoipFailed", C3632R.string.VoipFailed)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("CallNotAvailable", C3632R.string.CallNotAvailable, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name)))).setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), null).show();
        } else if (ConnectionsManager.getInstance(UserConfig.selectedAccount).getConnectionState() != 3) {
            boolean z3 = Settings.System.getInt(activity.getContentResolver(), "airplane_mode_on", 0) != 0;
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            if (z3) {
                i = C3632R.string.VoipOfflineAirplaneTitle;
                str = "VoipOfflineAirplaneTitle";
            } else {
                i = C3632R.string.VoipOfflineTitle;
                str = "VoipOfflineTitle";
            }
            AlertDialog.Builder title = builder.setTitle(LocaleController.getString(str, i));
            if (z3) {
                i2 = C3632R.string.VoipOfflineAirplane;
                str2 = "VoipOfflineAirplane";
            } else {
                i2 = C3632R.string.VoipOffline;
                str2 = "VoipOffline";
            }
            AlertDialog.Builder positiveButton = title.setMessage(LocaleController.getString(str2, i2)).setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), null);
            if (z3) {
                final Intent intent = new Intent("android.settings.AIRPLANE_MODE_SETTINGS");
                if (intent.resolveActivity(activity.getPackageManager()) != null) {
                    positiveButton.setNeutralButton(LocaleController.getString("VoipOfflineOpenSettings", C3632R.string.VoipOfflineOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i3) {
                            activity.startActivity(intent);
                        }
                    });
                }
            }
            try {
                positiveButton.show();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        } else if (Build.VERSION.SDK_INT >= 23) {
            ArrayList arrayList = new ArrayList();
            if (activity.checkSelfPermission("android.permission.RECORD_AUDIO") != 0) {
                arrayList.add("android.permission.RECORD_AUDIO");
            }
            if (z && activity.checkSelfPermission("android.permission.CAMERA") != 0) {
                arrayList.add("android.permission.CAMERA");
            }
            if (arrayList.isEmpty()) {
                initiateCall(tLRPC$User, null, null, z, z2, false, null, activity, null, accountInstance);
            } else {
                activity.requestPermissions((String[]) arrayList.toArray(new String[0]), z ? 102 : 101);
            }
        } else {
            initiateCall(tLRPC$User, null, null, z, z2, false, null, activity, null, accountInstance);
        }
    }

    public static void startCall(TLRPC$Chat tLRPC$Chat, TLRPC$InputPeer tLRPC$InputPeer, String str, boolean z, Activity activity, BaseFragment baseFragment, AccountInstance accountInstance) {
        startCall(tLRPC$Chat, tLRPC$InputPeer, str, z, null, activity, baseFragment, accountInstance);
    }

    public static void startCall(TLRPC$Chat tLRPC$Chat, TLRPC$InputPeer tLRPC$InputPeer, String str, boolean z, Boolean bool, final Activity activity, BaseFragment baseFragment, AccountInstance accountInstance) {
        int i;
        String str2;
        int i2;
        String str3;
        if (activity == null) {
            return;
        }
        if (ConnectionsManager.getInstance(UserConfig.selectedAccount).getConnectionState() != 3) {
            boolean z2 = Settings.System.getInt(activity.getContentResolver(), "airplane_mode_on", 0) != 0;
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            if (z2) {
                i = C3632R.string.VoipOfflineAirplaneTitle;
                str2 = "VoipOfflineAirplaneTitle";
            } else {
                i = C3632R.string.VoipOfflineTitle;
                str2 = "VoipOfflineTitle";
            }
            AlertDialog.Builder title = builder.setTitle(LocaleController.getString(str2, i));
            if (z2) {
                i2 = C3632R.string.VoipGroupOfflineAirplane;
                str3 = "VoipGroupOfflineAirplane";
            } else {
                i2 = C3632R.string.VoipGroupOffline;
                str3 = "VoipGroupOffline";
            }
            AlertDialog.Builder positiveButton = title.setMessage(LocaleController.getString(str3, i2)).setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), null);
            if (z2) {
                final Intent intent = new Intent("android.settings.AIRPLANE_MODE_SETTINGS");
                if (intent.resolveActivity(activity.getPackageManager()) != null) {
                    positiveButton.setNeutralButton(LocaleController.getString("VoipOfflineOpenSettings", C3632R.string.VoipOfflineOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda2
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i3) {
                            activity.startActivity(intent);
                        }
                    });
                }
            }
            try {
                positiveButton.show();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        } else if (Build.VERSION.SDK_INT >= 23) {
            ArrayList arrayList = new ArrayList();
            ChatObject.Call groupCall = accountInstance.getMessagesController().getGroupCall(tLRPC$Chat.f1602id, false);
            if (activity.checkSelfPermission("android.permission.RECORD_AUDIO") != 0 && (groupCall == null || !groupCall.call.rtmp_stream)) {
                arrayList.add("android.permission.RECORD_AUDIO");
            }
            if (arrayList.isEmpty()) {
                initiateCall(null, tLRPC$Chat, str, false, false, z, bool, activity, baseFragment, accountInstance);
            } else {
                activity.requestPermissions((String[]) arrayList.toArray(new String[0]), 103);
            }
        } else {
            initiateCall(null, tLRPC$Chat, str, false, false, z, bool, activity, baseFragment, accountInstance);
        }
    }

    private static void initiateCall(final TLRPC$User tLRPC$User, final TLRPC$Chat tLRPC$Chat, final String str, final boolean z, final boolean z2, final boolean z3, Boolean bool, final Activity activity, final BaseFragment baseFragment, final AccountInstance accountInstance) {
        String str2;
        int i;
        String str3;
        String str4;
        int i2;
        String str5;
        if (activity != null) {
            if (tLRPC$User == null && tLRPC$Chat == null) {
                return;
            }
            VoIPService sharedInstance = VoIPService.getSharedInstance();
            if (sharedInstance != null) {
                long j = tLRPC$User != null ? tLRPC$User.f1751id : -tLRPC$Chat.f1602id;
                long callerId = VoIPService.getSharedInstance().getCallerId();
                if (callerId != j || sharedInstance.getAccount() != accountInstance.getCurrentAccount()) {
                    int i3 = (callerId > 0L ? 1 : (callerId == 0L ? 0 : -1));
                    if (i3 > 0) {
                        TLRPC$User user = sharedInstance.getUser();
                        str2 = ContactsController.formatName(user.first_name, user.last_name);
                        if (j > 0) {
                            i = C3632R.string.VoipOngoingAlert;
                            str3 = "VoipOngoingAlert";
                        } else {
                            i = C3632R.string.VoipOngoingAlert2;
                            str3 = "VoipOngoingAlert2";
                        }
                    } else {
                        str2 = sharedInstance.getChat().title;
                        if (j > 0) {
                            i = C3632R.string.VoipOngoingChatAlert2;
                            str3 = "VoipOngoingChatAlert2";
                        } else {
                            i = C3632R.string.VoipOngoingChatAlert;
                            str3 = "VoipOngoingChatAlert";
                        }
                    }
                    if (tLRPC$User != null) {
                        str4 = ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name);
                    } else {
                        str4 = tLRPC$Chat.title;
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                    if (i3 < 0) {
                        i2 = C3632R.string.VoipOngoingChatAlertTitle;
                        str5 = "VoipOngoingChatAlertTitle";
                    } else {
                        i2 = C3632R.string.VoipOngoingAlertTitle;
                        str5 = "VoipOngoingAlertTitle";
                    }
                    builder.setTitle(LocaleController.getString(str5, i2)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(str3, i, str2, str4))).setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda6
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i4) {
                            VoIPHelper.lambda$initiateCall$3(TLRPC$User.this, tLRPC$Chat, str, z, z2, z3, activity, baseFragment, accountInstance, dialogInterface, i4);
                        }
                    }).setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null).show();
                } else if (tLRPC$User != null || !(activity instanceof LaunchActivity)) {
                    activity.startActivity(new Intent(activity, LaunchActivity.class).setAction(tLRPC$User != null ? "voip" : "voip_chat"));
                } else {
                    if (!TextUtils.isEmpty(str)) {
                        sharedInstance.setGroupCallHash(str);
                    }
                    GroupCallActivity.create((LaunchActivity) activity, AccountInstance.getInstance(UserConfig.selectedAccount), null, null, false, null);
                }
            } else if (VoIPService.callIShouldHavePutIntoIntent == null) {
                doInitiateCall(tLRPC$User, tLRPC$Chat, str, null, false, z, z2, z3, activity, baseFragment, accountInstance, bool != null ? bool.booleanValue() : true, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$initiateCall$3(final TLRPC$User tLRPC$User, final TLRPC$Chat tLRPC$Chat, final String str, final boolean z, final boolean z2, final boolean z3, final Activity activity, final BaseFragment baseFragment, final AccountInstance accountInstance, DialogInterface dialogInterface, int i) {
        if (VoIPService.getSharedInstance() != null) {
            VoIPService.getSharedInstance().hangUp(new Runnable() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    VoIPHelper.lambda$initiateCall$2(TLRPC$User.this, tLRPC$Chat, str, z, z2, z3, activity, baseFragment, accountInstance);
                }
            });
        } else {
            doInitiateCall(tLRPC$User, tLRPC$Chat, str, null, false, z, z2, z3, activity, baseFragment, accountInstance, true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$initiateCall$2(TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, String str, boolean z, boolean z2, boolean z3, Activity activity, BaseFragment baseFragment, AccountInstance accountInstance) {
        lastCallTime = 0L;
        doInitiateCall(tLRPC$User, tLRPC$Chat, str, null, false, z, z2, z3, activity, baseFragment, accountInstance, true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doInitiateCall(final TLRPC$User tLRPC$User, final TLRPC$Chat tLRPC$Chat, final String str, final TLRPC$InputPeer tLRPC$InputPeer, boolean z, final boolean z2, final boolean z3, final boolean z4, final Activity activity, final BaseFragment baseFragment, final AccountInstance accountInstance, boolean z5, boolean z6, boolean z7) {
        ChatObject.Call groupCall;
        TLRPC$ChatFull chatFull;
        int i;
        String str2;
        int i2;
        String str3;
        int i3;
        String str4;
        TLRPC$ChatFull chatFull2;
        TLRPC$Peer tLRPC$Peer;
        if (activity != null) {
            if (tLRPC$User == null && tLRPC$Chat == null) {
                return;
            }
            if (SystemClock.elapsedRealtime() - lastCallTime < (tLRPC$Chat != null ? 200 : 2000)) {
                return;
            }
            if (z5 && tLRPC$Chat != null && !z4 && (chatFull2 = accountInstance.getMessagesController().getChatFull(tLRPC$Chat.f1602id)) != null && (tLRPC$Peer = chatFull2.groupcall_default_join_as) != null) {
                final TLRPC$InputPeer inputPeer = accountInstance.getMessagesController().getInputPeer(MessageObject.getPeerId(tLRPC$Peer));
                JoinCallAlert.checkFewUsers(activity, -tLRPC$Chat.f1602id, accountInstance, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda17
                    @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
                    public final void run(boolean z8) {
                        VoIPHelper.lambda$doInitiateCall$4(str, activity, tLRPC$Chat, tLRPC$User, inputPeer, z2, z3, baseFragment, accountInstance, z8);
                    }
                });
            } else if (z5 && tLRPC$Chat != null) {
                JoinCallAlert.open(activity, -tLRPC$Chat.f1602id, accountInstance, baseFragment, !z4 ? 1 : 0, null, new JoinCallAlert.JoinCallAlertDelegate() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda22
                    @Override // org.telegram.p043ui.Components.JoinCallAlert.JoinCallAlertDelegate
                    public final void didSelectChat(TLRPC$InputPeer tLRPC$InputPeer2, boolean z8, boolean z9) {
                        VoIPHelper.lambda$doInitiateCall$5(z4, activity, accountInstance, tLRPC$Chat, str, tLRPC$User, z2, z3, baseFragment, tLRPC$InputPeer2, z8, z9);
                    }
                });
            } else if (z6 && !z && (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerUser) && ChatObject.shouldSendAnonymously(tLRPC$Chat) && (!ChatObject.isChannel(tLRPC$Chat) || tLRPC$Chat.megagroup)) {
                AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                if (ChatObject.isChannelOrGiga(tLRPC$Chat)) {
                    i2 = C3632R.string.VoipChannelVoiceChat;
                    str3 = "VoipChannelVoiceChat";
                } else {
                    i2 = C3632R.string.VoipGroupVoiceChat;
                    str3 = "VoipGroupVoiceChat";
                }
                AlertDialog.Builder title = builder.setTitle(LocaleController.getString(str3, i2));
                if (ChatObject.isChannelOrGiga(tLRPC$Chat)) {
                    i3 = C3632R.string.VoipChannelJoinAnonymouseAlert;
                    str4 = "VoipChannelJoinAnonymouseAlert";
                } else {
                    i3 = C3632R.string.VoipGroupJoinAnonymouseAlert;
                    str4 = "VoipGroupJoinAnonymouseAlert";
                }
                title.setMessage(LocaleController.getString(str4, i3)).setPositiveButton(LocaleController.getString("VoipChatJoin", C3632R.string.VoipChatJoin), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i4) {
                        VoIPHelper.doInitiateCall(TLRPC$User.this, tLRPC$Chat, str, tLRPC$InputPeer, false, z2, z3, z4, activity, baseFragment, accountInstance, false, false);
                    }
                }).setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null).show();
            } else {
                boolean z8 = false;
                if (z7 && tLRPC$User != null) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(activity);
                    if (z2) {
                        i = C3632R.string.VideoCall;
                        str2 = "VideoCall";
                    } else {
                        i = C3632R.string.Call;
                        str2 = "Call";
                    }
                    builder2.setTitle(LocaleController.getString(str2, i)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatStringInternal(C3632R.string.voip_call_confirm_alert_message, UserObject.getUserName(tLRPC$User)))).setPositiveButton(LocaleController.getInternalString(C3632R.string.voip_call_confirm_alert_positive_button), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda5
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i4) {
                            VoIPHelper.doInitiateCall(TLRPC$User.this, tLRPC$Chat, str, tLRPC$InputPeer, false, z2, z3, z4, activity, baseFragment, accountInstance, false, false, false);
                        }
                    }).setNegativeButton(LocaleController.getInternalString(C3632R.string.voip_call_confirm_alert_negative_button), null).show();
                    return;
                }
                if (tLRPC$Chat != null && tLRPC$InputPeer != null && (chatFull = accountInstance.getMessagesController().getChatFull(tLRPC$Chat.f1602id)) != null) {
                    if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerUser) {
                        TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
                        chatFull.groupcall_default_join_as = tLRPC$TL_peerUser;
                        tLRPC$TL_peerUser.user_id = tLRPC$InputPeer.user_id;
                    } else if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerChat) {
                        TLRPC$TL_peerChat tLRPC$TL_peerChat = new TLRPC$TL_peerChat();
                        chatFull.groupcall_default_join_as = tLRPC$TL_peerChat;
                        tLRPC$TL_peerChat.chat_id = tLRPC$InputPeer.chat_id;
                    } else if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerChannel) {
                        TLRPC$TL_peerChannel tLRPC$TL_peerChannel = new TLRPC$TL_peerChannel();
                        chatFull.groupcall_default_join_as = tLRPC$TL_peerChannel;
                        tLRPC$TL_peerChannel.channel_id = tLRPC$InputPeer.channel_id;
                    }
                    if (chatFull instanceof TLRPC$TL_chatFull) {
                        chatFull.flags |= LiteMode.FLAG_CHAT_SCALE;
                    } else {
                        chatFull.flags |= ConnectionsManager.FileTypeFile;
                    }
                }
                if (tLRPC$Chat != null && !z4 && (groupCall = accountInstance.getMessagesController().getGroupCall(tLRPC$Chat.f1602id, false)) != null && groupCall.isScheduled()) {
                    GroupCallActivity.create((LaunchActivity) activity, accountInstance, tLRPC$Chat, tLRPC$InputPeer, z, str);
                    return;
                }
                lastCallTime = SystemClock.elapsedRealtime();
                Intent intent = new Intent(activity, VoIPService.class);
                if (tLRPC$User != null) {
                    intent.putExtra("user_id", tLRPC$User.f1751id);
                } else {
                    intent.putExtra("chat_id", tLRPC$Chat.f1602id);
                    intent.putExtra("createGroupCall", z4);
                    intent.putExtra("hasFewPeers", z);
                    intent.putExtra("hash", str);
                    if (tLRPC$InputPeer != null) {
                        intent.putExtra("peerChannelId", tLRPC$InputPeer.channel_id);
                        intent.putExtra("peerChatId", tLRPC$InputPeer.chat_id);
                        intent.putExtra("peerUserId", tLRPC$InputPeer.user_id);
                        intent.putExtra("peerAccessHash", tLRPC$InputPeer.access_hash);
                    }
                }
                intent.putExtra("is_outgoing", true);
                intent.putExtra("start_incall_activity", true);
                int i4 = Build.VERSION.SDK_INT;
                intent.putExtra("video_call", i4 >= 18 && z2);
                if (i4 >= 18 && z3) {
                    z8 = true;
                }
                intent.putExtra("can_video_call", z8);
                intent.putExtra("account", UserConfig.selectedAccount);
                try {
                    activity.startService(intent);
                } catch (Throwable th) {
                    FileLog.m102e(th);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$doInitiateCall$4(final String str, final Activity activity, final TLRPC$Chat tLRPC$Chat, final TLRPC$User tLRPC$User, final TLRPC$InputPeer tLRPC$InputPeer, final boolean z, final boolean z2, final BaseFragment baseFragment, final AccountInstance accountInstance, boolean z3) {
        if (!z3 && str != null) {
            JoinCallByUrlAlert joinCallByUrlAlert = new JoinCallByUrlAlert(activity, tLRPC$Chat) { // from class: org.telegram.ui.Components.voip.VoIPHelper.1
                @Override // org.telegram.p043ui.Components.JoinCallByUrlAlert
                protected void onJoin() {
                    VoIPHelper.doInitiateCall(tLRPC$User, tLRPC$Chat, str, tLRPC$InputPeer, true, z, z2, false, activity, baseFragment, accountInstance, false, false);
                }
            };
            if (baseFragment != null) {
                baseFragment.showDialog(joinCallByUrlAlert);
                return;
            }
            return;
        }
        doInitiateCall(tLRPC$User, tLRPC$Chat, str, tLRPC$InputPeer, !z3, z, z2, false, activity, baseFragment, accountInstance, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$doInitiateCall$5(final boolean z, final Activity activity, final AccountInstance accountInstance, final TLRPC$Chat tLRPC$Chat, final String str, final TLRPC$User tLRPC$User, final boolean z2, final boolean z3, final BaseFragment baseFragment, final TLRPC$InputPeer tLRPC$InputPeer, boolean z4, boolean z5) {
        if (z && z5) {
            GroupCallActivity.create((LaunchActivity) activity, accountInstance, tLRPC$Chat, tLRPC$InputPeer, z4, str);
        } else if (!z4 && str != null) {
            JoinCallByUrlAlert joinCallByUrlAlert = new JoinCallByUrlAlert(activity, tLRPC$Chat) { // from class: org.telegram.ui.Components.voip.VoIPHelper.2
                @Override // org.telegram.p043ui.Components.JoinCallByUrlAlert
                protected void onJoin() {
                    VoIPHelper.doInitiateCall(tLRPC$User, tLRPC$Chat, str, tLRPC$InputPeer, false, z2, z3, z, activity, baseFragment, accountInstance, false, true);
                }
            };
            if (baseFragment != null) {
                baseFragment.showDialog(joinCallByUrlAlert);
            }
        } else {
            doInitiateCall(tLRPC$User, tLRPC$Chat, str, tLRPC$InputPeer, z4, z2, z3, z, activity, baseFragment, accountInstance, false, true);
        }
    }

    public static void permissionDenied(final Activity activity, final Runnable runnable, int i) {
        int i2;
        String str;
        boolean z = i == 102;
        if (!activity.shouldShowRequestPermissionRationale("android.permission.RECORD_AUDIO") || (z && !activity.shouldShowRequestPermissionRationale("android.permission.CAMERA"))) {
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            if (z) {
                i2 = C3632R.string.VoipNeedMicCameraPermissionWithHint;
                str = "VoipNeedMicCameraPermissionWithHint";
            } else {
                i2 = C3632R.string.VoipNeedMicPermissionWithHint;
                str = "VoipNeedMicPermissionWithHint";
            }
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(str, i2))).setPositiveButton(LocaleController.getString("Settings", C3632R.string.Settings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    VoIPHelper.lambda$permissionDenied$8(activity, dialogInterface, i3);
                }
            }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3632R.string.ContactsPermissionAlertNotNow), null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda9
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    VoIPHelper.lambda$permissionDenied$9(runnable, dialogInterface);
                }
            }).setTopAnimation(z ? C3632R.raw.permission_request_camera : C3632R.raw.permission_request_microphone, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$permissionDenied$8(Activity activity, DialogInterface dialogInterface, int i) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", activity.getPackageName(), null));
        activity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$permissionDenied$9(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static File getLogsDir() {
        File file = new File(ApplicationLoader.applicationContext.getCacheDir(), "voip_logs");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static boolean canRateCall(TLRPC$TL_messageActionPhoneCall tLRPC$TL_messageActionPhoneCall) {
        TLRPC$PhoneCallDiscardReason tLRPC$PhoneCallDiscardReason = tLRPC$TL_messageActionPhoneCall.reason;
        if (!(tLRPC$PhoneCallDiscardReason instanceof TLRPC$TL_phoneCallDiscardReasonBusy) && !(tLRPC$PhoneCallDiscardReason instanceof TLRPC$TL_phoneCallDiscardReasonMissed)) {
            for (String str : MessagesController.getNotificationsSettings(UserConfig.selectedAccount).getStringSet("calls_access_hashes", Collections.EMPTY_SET)) {
                String[] split = str.split(" ");
                if (split.length >= 2) {
                    String str2 = split[0];
                    if (str2.equals(tLRPC$TL_messageActionPhoneCall.call_id + "")) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static void sendCallRating(long j, long j2, int i, int i2) {
        final int i3 = UserConfig.selectedAccount;
        TLRPC$TL_phone_setCallRating tLRPC$TL_phone_setCallRating = new TLRPC$TL_phone_setCallRating();
        tLRPC$TL_phone_setCallRating.rating = i2;
        tLRPC$TL_phone_setCallRating.comment = "";
        TLRPC$TL_inputPhoneCall tLRPC$TL_inputPhoneCall = new TLRPC$TL_inputPhoneCall();
        tLRPC$TL_phone_setCallRating.peer = tLRPC$TL_inputPhoneCall;
        tLRPC$TL_inputPhoneCall.access_hash = j2;
        tLRPC$TL_inputPhoneCall.f1673id = j;
        tLRPC$TL_phone_setCallRating.user_initiative = false;
        ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_phone_setCallRating, new RequestDelegate() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda19
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                VoIPHelper.lambda$sendCallRating$10(i3, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendCallRating$10(int i, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_updates) {
            MessagesController.getInstance(i).processUpdates((TLRPC$TL_updates) tLObject, false);
        }
    }

    public static void showRateAlert(Context context, TLRPC$TL_messageActionPhoneCall tLRPC$TL_messageActionPhoneCall) {
        for (String str : MessagesController.getNotificationsSettings(UserConfig.selectedAccount).getStringSet("calls_access_hashes", Collections.EMPTY_SET)) {
            String[] split = str.split(" ");
            if (split.length >= 2) {
                String str2 = split[0];
                if (str2.equals(tLRPC$TL_messageActionPhoneCall.call_id + "")) {
                    try {
                        showRateAlert(context, null, tLRPC$TL_messageActionPhoneCall.video, tLRPC$TL_messageActionPhoneCall.call_id, Long.parseLong(split[1]), UserConfig.selectedAccount, true);
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
            }
        }
    }

    public static void showRateAlert(final Context context, final Runnable runnable, boolean z, final long j, final long j2, final int i, final boolean z2) {
        String string;
        final File logFile = getLogFile(j);
        int i2 = 1;
        final int[] iArr = {0};
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        int m107dp = AndroidUtilities.m107dp(16);
        linearLayout.setPadding(m107dp, m107dp, m107dp, 0);
        final TextView textView = new TextView(context);
        textView.setTextSize(2, 16.0f);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setGravity(17);
        textView.setText(LocaleController.getString("VoipRateCallAlert", C3632R.string.VoipRateCallAlert));
        linearLayout.addView(textView);
        final BetterRatingView betterRatingView = new BetterRatingView(context);
        linearLayout.addView(betterRatingView, LayoutHelper.createLinear(-2, -2, 1, 0, 16, 0, 0));
        final LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        VoIPHelper$$ExternalSyntheticLambda15 voIPHelper$$ExternalSyntheticLambda15 = new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoIPHelper.lambda$showRateAlert$11(view);
            }
        };
        String[] strArr = new String[9];
        strArr[0] = z ? "distorted_video" : null;
        strArr[1] = z ? "pixelated_video" : null;
        strArr[2] = "echo";
        strArr[3] = "noise";
        strArr[4] = "interruptions";
        strArr[5] = "distorted_speech";
        strArr[6] = "silent_local";
        strArr[7] = "silent_remote";
        strArr[8] = "dropped";
        int i3 = 0;
        for (int i4 = 9; i3 < i4; i4 = 9) {
            if (strArr[i3] != null) {
                CheckBoxCell checkBoxCell = new CheckBoxCell(context, i2);
                checkBoxCell.setClipToPadding(false);
                checkBoxCell.setTag(strArr[i3]);
                switch (i3) {
                    case 0:
                        string = LocaleController.getString("RateCallVideoDistorted", C3632R.string.RateCallVideoDistorted);
                        break;
                    case 1:
                        string = LocaleController.getString("RateCallVideoPixelated", C3632R.string.RateCallVideoPixelated);
                        break;
                    case 2:
                        string = LocaleController.getString("RateCallEcho", C3632R.string.RateCallEcho);
                        break;
                    case 3:
                        string = LocaleController.getString("RateCallNoise", C3632R.string.RateCallNoise);
                        break;
                    case 4:
                        string = LocaleController.getString("RateCallInterruptions", C3632R.string.RateCallInterruptions);
                        break;
                    case 5:
                        string = LocaleController.getString("RateCallDistorted", C3632R.string.RateCallDistorted);
                        break;
                    case 6:
                        string = LocaleController.getString("RateCallSilentLocal", C3632R.string.RateCallSilentLocal);
                        break;
                    case 7:
                        string = LocaleController.getString("RateCallSilentRemote", C3632R.string.RateCallSilentRemote);
                        break;
                    case 8:
                        string = LocaleController.getString("RateCallDropped", C3632R.string.RateCallDropped);
                        break;
                    default:
                        string = null;
                        break;
                }
                checkBoxCell.setText(string, null, false, false);
                checkBoxCell.setOnClickListener(voIPHelper$$ExternalSyntheticLambda15);
                checkBoxCell.setTag(strArr[i3]);
                linearLayout2.addView(checkBoxCell);
            }
            i3++;
            i2 = 1;
        }
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, -8, 0, -8, 0));
        linearLayout2.setVisibility(8);
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        editTextBoldCursor.setHint(LocaleController.getString("VoipFeedbackCommentHint", C3632R.string.VoipFeedbackCommentHint));
        editTextBoldCursor.setInputType(147457);
        editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        editTextBoldCursor.setHintTextColor(Theme.getColor(Theme.key_dialogTextHint));
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setLineColors(Theme.getColor(Theme.key_dialogInputField), Theme.getColor(Theme.key_dialogInputFieldActivated), Theme.getColor(Theme.key_text_RedBold));
        editTextBoldCursor.setPadding(0, AndroidUtilities.m107dp(4), 0, AndroidUtilities.m107dp(4));
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setVisibility(8);
        linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 8, 8, 8, 0));
        final boolean[] zArr = {true};
        final CheckBoxCell checkBoxCell2 = new CheckBoxCell(context, 1);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoIPHelper.lambda$showRateAlert$12(zArr, checkBoxCell2, view);
            }
        };
        checkBoxCell2.setText(LocaleController.getString("CallReportIncludeLogs", C3632R.string.CallReportIncludeLogs), null, true, false);
        checkBoxCell2.setClipToPadding(false);
        checkBoxCell2.setOnClickListener(onClickListener);
        linearLayout.addView(checkBoxCell2, LayoutHelper.createLinear(-1, -2, -8, 0, -8, 0));
        final TextView textView2 = new TextView(context);
        textView2.setTextSize(2, 14.0f);
        textView2.setTextColor(Theme.getColor(Theme.key_dialogTextGray3));
        textView2.setText(LocaleController.getString("CallReportLogsExplain", C3632R.string.CallReportLogsExplain));
        textView2.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
        textView2.setOnClickListener(onClickListener);
        linearLayout.addView(textView2);
        checkBoxCell2.setVisibility(8);
        textView2.setVisibility(8);
        if (!logFile.exists()) {
            zArr[0] = false;
        }
        final AlertDialog create = new AlertDialog.Builder(context).setTitle(LocaleController.getString("CallMessageReportProblem", C3632R.string.CallMessageReportProblem)).setView(linearLayout).setPositiveButton(LocaleController.getString("Send", C3632R.string.Send), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i5) {
                VoIPHelper.lambda$showRateAlert$13(dialogInterface, i5);
            }
        }).setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                VoIPHelper.lambda$showRateAlert$14(runnable, dialogInterface);
            }
        }).create();
        if (BuildVars.LOGS_ENABLED && logFile.exists()) {
            create.setNeutralButton("Send log", new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    VoIPHelper.lambda$showRateAlert$15(context, logFile, dialogInterface, i5);
                }
            });
        }
        create.show();
        create.getWindow().setSoftInputMode(3);
        final View button = create.getButton(-1);
        button.setEnabled(false);
        betterRatingView.setOnRatingChangeListener(new BetterRatingView.OnRatingChangeListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda21
            @Override // org.telegram.p043ui.Components.BetterRatingView.OnRatingChangeListener
            public final void onRatingChanged(int i5) {
                VoIPHelper.lambda$showRateAlert$16(button, i5);
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoIPHelper.lambda$showRateAlert$18(BetterRatingView.this, iArr, linearLayout2, editTextBoldCursor, zArr, j2, j, z2, i, logFile, context, create, textView, checkBoxCell2, textView2, button, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showRateAlert$11(View view) {
        CheckBoxCell checkBoxCell = (CheckBoxCell) view;
        checkBoxCell.setChecked(!checkBoxCell.isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showRateAlert$12(boolean[] zArr, CheckBoxCell checkBoxCell, View view) {
        zArr[0] = !zArr[0];
        checkBoxCell.setChecked(zArr[0], true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showRateAlert$14(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showRateAlert$15(Context context, File file, DialogInterface dialogInterface, int i) {
        Intent intent = new Intent(context, LaunchActivity.class);
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showRateAlert$16(View view, int i) {
        int i2;
        String str;
        view.setEnabled(i > 0);
        TextView textView = (TextView) view;
        if (i < 4) {
            i2 = C3632R.string.Next;
            str = "Next";
        } else {
            i2 = C3632R.string.Send;
            str = "Send";
        }
        textView.setText(LocaleController.getString(str, i2).toUpperCase());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showRateAlert$18(BetterRatingView betterRatingView, int[] iArr, LinearLayout linearLayout, EditTextBoldCursor editTextBoldCursor, final boolean[] zArr, long j, long j2, boolean z, int i, final File file, final Context context, AlertDialog alertDialog, TextView textView, CheckBoxCell checkBoxCell, TextView textView2, View view, View view2) {
        CheckBoxCell checkBoxCell2;
        if (betterRatingView.getRating() >= 4 || iArr[0] == 1) {
            final int i2 = UserConfig.selectedAccount;
            final TLRPC$TL_phone_setCallRating tLRPC$TL_phone_setCallRating = new TLRPC$TL_phone_setCallRating();
            tLRPC$TL_phone_setCallRating.rating = betterRatingView.getRating();
            final ArrayList arrayList = new ArrayList();
            for (int i3 = 0; i3 < linearLayout.getChildCount(); i3++) {
                if (((CheckBoxCell) linearLayout.getChildAt(i3)).isChecked()) {
                    arrayList.add("#" + checkBoxCell2.getTag());
                }
            }
            if (tLRPC$TL_phone_setCallRating.rating < 5) {
                tLRPC$TL_phone_setCallRating.comment = editTextBoldCursor.getText().toString();
            } else {
                tLRPC$TL_phone_setCallRating.comment = "";
            }
            if (!arrayList.isEmpty() && !zArr[0]) {
                tLRPC$TL_phone_setCallRating.comment += " " + TextUtils.join(" ", arrayList);
            }
            TLRPC$TL_inputPhoneCall tLRPC$TL_inputPhoneCall = new TLRPC$TL_inputPhoneCall();
            tLRPC$TL_phone_setCallRating.peer = tLRPC$TL_inputPhoneCall;
            tLRPC$TL_inputPhoneCall.access_hash = j;
            tLRPC$TL_inputPhoneCall.f1673id = j2;
            tLRPC$TL_phone_setCallRating.user_initiative = z;
            ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_phone_setCallRating, new RequestDelegate() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda20
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    VoIPHelper.lambda$showRateAlert$17(i2, zArr, file, tLRPC$TL_phone_setCallRating, arrayList, context, tLObject, tLRPC$TL_error);
                }
            });
            alertDialog.dismiss();
            return;
        }
        iArr[0] = 1;
        betterRatingView.setVisibility(8);
        textView.setVisibility(8);
        alertDialog.setTitle(LocaleController.getString("CallReportHint", C3632R.string.CallReportHint));
        editTextBoldCursor.setVisibility(0);
        if (file.exists()) {
            checkBoxCell.setVisibility(0);
            textView2.setVisibility(0);
        }
        linearLayout.setVisibility(0);
        ((TextView) view).setText(LocaleController.getString("Send", C3632R.string.Send).toUpperCase());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showRateAlert$17(int i, boolean[] zArr, File file, TLRPC$TL_phone_setCallRating tLRPC$TL_phone_setCallRating, ArrayList arrayList, Context context, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_updates) {
            MessagesController.getInstance(i).processUpdates((TLRPC$TL_updates) tLObject, false);
        }
        if (zArr[0] && file.exists() && tLRPC$TL_phone_setCallRating.rating < 4) {
            SendMessagesHelper.prepareSendingDocument(AccountInstance.getInstance(UserConfig.selectedAccount), file.getAbsolutePath(), file.getAbsolutePath(), null, TextUtils.join(" ", arrayList), "text/plain", 4244000L, null, null, null, null, null, true, 0, null, null);
            Toast.makeText(context, LocaleController.getString("CallReportSent", C3632R.string.CallReportSent), 1).show();
        }
    }

    private static File getLogFile(long j) {
        File file;
        String[] list;
        if (BuildVars.DEBUG_VERSION && (list = (file = new File(ApplicationLoader.applicationContext.getExternalFilesDir(null), "logs")).list()) != null) {
            for (String str : list) {
                if (str.endsWith("voip" + j + ".txt")) {
                    return new File(file, str);
                }
            }
        }
        return new File(getLogsDir(), j + ".log");
    }

    public static void showCallDebugSettings(Context context) {
        final SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setTextSize(1, 15.0f);
        textView.setText("Please only change these settings if you know exactly what they do.");
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 16, 8, 16, 8));
        final TextCheckCell textCheckCell = new TextCheckCell(context);
        textCheckCell.setTextAndCheck("Force TCP", globalMainSettings.getBoolean("dbg_force_tcp_in_calls", false), false);
        textCheckCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoIPHelper.lambda$showCallDebugSettings$19(globalMainSettings, textCheckCell, view);
            }
        });
        linearLayout.addView(textCheckCell);
        if (BuildVars.DEBUG_VERSION && BuildVars.LOGS_ENABLED) {
            final TextCheckCell textCheckCell2 = new TextCheckCell(context);
            textCheckCell2.setTextAndCheck("Dump detailed stats", globalMainSettings.getBoolean("dbg_dump_call_stats", false), false);
            textCheckCell2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoIPHelper.lambda$showCallDebugSettings$20(globalMainSettings, textCheckCell2, view);
                }
            });
            linearLayout.addView(textCheckCell2);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            final TextCheckCell textCheckCell3 = new TextCheckCell(context);
            textCheckCell3.setTextAndCheck("Enable ConnectionService", globalMainSettings.getBoolean("dbg_force_connection_service", false), false);
            textCheckCell3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoIPHelper.lambda$showCallDebugSettings$21(globalMainSettings, textCheckCell3, view);
                }
            });
            linearLayout.addView(textCheckCell3);
        }
        new AlertDialog.Builder(context).setTitle(LocaleController.getString("DebugMenuCallSettings", C3632R.string.DebugMenuCallSettings)).setView(linearLayout).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showCallDebugSettings$19(SharedPreferences sharedPreferences, TextCheckCell textCheckCell, View view) {
        boolean z = sharedPreferences.getBoolean("dbg_force_tcp_in_calls", false);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putBoolean("dbg_force_tcp_in_calls", !z);
        edit.commit();
        textCheckCell.setChecked(!z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showCallDebugSettings$20(SharedPreferences sharedPreferences, TextCheckCell textCheckCell, View view) {
        boolean z = sharedPreferences.getBoolean("dbg_dump_call_stats", false);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putBoolean("dbg_dump_call_stats", !z);
        edit.commit();
        textCheckCell.setChecked(!z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showCallDebugSettings$21(SharedPreferences sharedPreferences, TextCheckCell textCheckCell, View view) {
        boolean z = sharedPreferences.getBoolean("dbg_force_connection_service", false);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putBoolean("dbg_force_connection_service", !z);
        edit.commit();
        textCheckCell.setChecked(!z);
    }

    public static int getDataSavingDefault() {
        boolean z = DownloadController.getInstance(0).lowPreset.lessCallData;
        boolean z2 = DownloadController.getInstance(0).mediumPreset.lessCallData;
        boolean z3 = DownloadController.getInstance(0).highPreset.lessCallData;
        if (z || z2 || z3) {
            if (!z || z2 || z3) {
                if (z && z2 && !z3) {
                    return 1;
                }
                if (z && z2 && z3) {
                    return 2;
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m100w("Invalid call data saving preset configuration: " + z + "/" + z2 + "/" + z3);
                }
                return 0;
            }
            return 3;
        }
        return 0;
    }

    public static String getLogFilePath(String str) {
        Calendar calendar = Calendar.getInstance();
        return new File(ApplicationLoader.applicationContext.getExternalFilesDir(null), String.format(Locale.US, "logs/%02d_%02d_%04d_%02d_%02d_%02d_%s.txt", Integer.valueOf(calendar.get(5)), Integer.valueOf(calendar.get(2) + 1), Integer.valueOf(calendar.get(1)), Integer.valueOf(calendar.get(11)), Integer.valueOf(calendar.get(12)), Integer.valueOf(calendar.get(13)), str)).getAbsolutePath();
    }

    public static String getLogFilePath(long j, boolean z) {
        File[] listFiles;
        File logsDir = getLogsDir();
        if (!BuildVars.DEBUG_VERSION && (listFiles = logsDir.listFiles()) != null) {
            ArrayList arrayList = new ArrayList(Arrays.asList(listFiles));
            while (arrayList.size() > 20) {
                File file = (File) arrayList.get(0);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    File file2 = (File) it.next();
                    if (file2.getName().endsWith(".log") && file2.lastModified() < file.lastModified()) {
                        file = file2;
                    }
                }
                file.delete();
                arrayList.remove(file);
            }
        }
        if (z) {
            return new File(logsDir, j + "_stats.log").getAbsolutePath();
        }
        return new File(logsDir, j + ".log").getAbsolutePath();
    }

    public static void showGroupCallAlert(final BaseFragment baseFragment, final TLRPC$Chat tLRPC$Chat, final TLRPC$InputPeer tLRPC$InputPeer, boolean z, final AccountInstance accountInstance) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        JoinCallAlert.checkFewUsers(baseFragment.getParentActivity(), -tLRPC$Chat.f1602id, accountInstance, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.Components.voip.VoIPHelper$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
            public final void run(boolean z2) {
                VoIPHelper.lambda$showGroupCallAlert$22(TLRPC$Chat.this, tLRPC$InputPeer, baseFragment, accountInstance, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showGroupCallAlert$22(TLRPC$Chat tLRPC$Chat, TLRPC$InputPeer tLRPC$InputPeer, BaseFragment baseFragment, AccountInstance accountInstance, boolean z) {
        startCall(tLRPC$Chat, tLRPC$InputPeer, null, true, baseFragment.getParentActivity(), baseFragment, accountInstance);
    }
}
