package org.telegram.p048ui.Components;

import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.Editable;
import android.text.Html;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.URLSpan;
import android.util.Base64;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.drawer.DrawerAccountData;
import com.smedialink.storage.domain.model.templates.TemplateModel;
import com.smedialink.utils.dialogs.DialogUtils;
import com.smedialink.utils.extentions.common.ContextExtKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import org.fork.enums.BackupComponent;
import org.fork.enums.TemplatesMode;
import org.fork.enums.VideoVoiceCamera;
import org.fork.utils.Callbacks$Callback;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.OneUIUtilities;
import org.telegram.messenger.SecretChatHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.CacheControlActivity;
import org.telegram.p048ui.Cells.AccountSelectCell;
import org.telegram.p048ui.Cells.CheckBoxCell;
import org.telegram.p048ui.Cells.RadioColorCell;
import org.telegram.p048ui.Cells.TextCheckBoxCell;
import org.telegram.p048ui.Cells.TextColorCell;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.LinkSpanDrawable;
import org.telegram.p048ui.Components.NumberPicker;
import org.telegram.p048ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p048ui.Components.voip.VoIPHelper;
import org.telegram.p048ui.LanguageSelectActivity;
import org.telegram.p048ui.LaunchActivity;
import org.telegram.p048ui.LoginActivity;
import org.telegram.p048ui.NotificationsCustomSettingsActivity;
import org.telegram.p048ui.NotificationsSettingsActivity;
import org.telegram.p048ui.ThemePreviewActivity;
import org.telegram.p048ui.TooManyCommunitiesActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$ChannelParticipant;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$ReportReason;
import org.telegram.tgnet.TLRPC$TL_account_changePhone;
import org.telegram.tgnet.TLRPC$TL_account_confirmPhone;
import org.telegram.tgnet.TLRPC$TL_account_getAuthorizationForm;
import org.telegram.tgnet.TLRPC$TL_account_getPassword;
import org.telegram.tgnet.TLRPC$TL_account_getTmpPassword;
import org.telegram.tgnet.TLRPC$TL_account_reportPeer;
import org.telegram.tgnet.TLRPC$TL_account_saveSecureValue;
import org.telegram.tgnet.TLRPC$TL_account_sendChangePhoneCode;
import org.telegram.tgnet.TLRPC$TL_account_sendConfirmPhoneCode;
import org.telegram.tgnet.TLRPC$TL_account_updateProfile;
import org.telegram.tgnet.TLRPC$TL_account_updateUsername;
import org.telegram.tgnet.TLRPC$TL_account_verifyEmail;
import org.telegram.tgnet.TLRPC$TL_account_verifyPhone;
import org.telegram.tgnet.TLRPC$TL_auth_resendCode;
import org.telegram.tgnet.TLRPC$TL_channelParticipantAdmin;
import org.telegram.tgnet.TLRPC$TL_channelParticipantCreator;
import org.telegram.tgnet.TLRPC$TL_channels_channelParticipant;
import org.telegram.tgnet.TLRPC$TL_channels_createChannel;
import org.telegram.tgnet.TLRPC$TL_channels_editAdmin;
import org.telegram.tgnet.TLRPC$TL_channels_editBanned;
import org.telegram.tgnet.TLRPC$TL_channels_inviteToChannel;
import org.telegram.tgnet.TLRPC$TL_channels_joinChannel;
import org.telegram.tgnet.TLRPC$TL_channels_reportSpam;
import org.telegram.tgnet.TLRPC$TL_contacts_blockFromReplies;
import org.telegram.tgnet.TLRPC$TL_contacts_importContacts;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_help_support;
import org.telegram.tgnet.TLRPC$TL_inputPeerUser;
import org.telegram.tgnet.TLRPC$TL_inputReportReasonChildAbuse;
import org.telegram.tgnet.TLRPC$TL_inputReportReasonFake;
import org.telegram.tgnet.TLRPC$TL_inputReportReasonIllegalDrugs;
import org.telegram.tgnet.TLRPC$TL_inputReportReasonPersonalDetails;
import org.telegram.tgnet.TLRPC$TL_inputReportReasonPornography;
import org.telegram.tgnet.TLRPC$TL_inputReportReasonSpam;
import org.telegram.tgnet.TLRPC$TL_inputReportReasonViolence;
import org.telegram.tgnet.TLRPC$TL_langPackLanguage;
import org.telegram.tgnet.TLRPC$TL_messages_addChatUser;
import org.telegram.tgnet.TLRPC$TL_messages_checkHistoryImport;
import org.telegram.tgnet.TLRPC$TL_messages_checkHistoryImportPeer;
import org.telegram.tgnet.TLRPC$TL_messages_clearAllDrafts;
import org.telegram.tgnet.TLRPC$TL_messages_createChat;
import org.telegram.tgnet.TLRPC$TL_messages_editChatAdmin;
import org.telegram.tgnet.TLRPC$TL_messages_editChatDefaultBannedRights;
import org.telegram.tgnet.TLRPC$TL_messages_editMessage;
import org.telegram.tgnet.TLRPC$TL_messages_forwardMessages;
import org.telegram.tgnet.TLRPC$TL_messages_getAttachedStickers;
import org.telegram.tgnet.TLRPC$TL_messages_importChatInvite;
import org.telegram.tgnet.TLRPC$TL_messages_initHistoryImport;
import org.telegram.tgnet.TLRPC$TL_messages_migrateChat;
import org.telegram.tgnet.TLRPC$TL_messages_report;
import org.telegram.tgnet.TLRPC$TL_messages_sendInlineBotResult;
import org.telegram.tgnet.TLRPC$TL_messages_sendMedia;
import org.telegram.tgnet.TLRPC$TL_messages_sendMessage;
import org.telegram.tgnet.TLRPC$TL_messages_sendMultiMedia;
import org.telegram.tgnet.TLRPC$TL_messages_sendScheduledMessages;
import org.telegram.tgnet.TLRPC$TL_messages_startBot;
import org.telegram.tgnet.TLRPC$TL_messages_startHistoryImport;
import org.telegram.tgnet.TLRPC$TL_payments_clearSavedInfo;
import org.telegram.tgnet.TLRPC$TL_payments_sendPaymentForm;
import org.telegram.tgnet.TLRPC$TL_payments_validateRequestedInfo;
import org.telegram.tgnet.TLRPC$TL_phone_inviteToGroupCall;
import org.telegram.tgnet.TLRPC$TL_updateGroupInvitePrivacyForbidden;
import org.telegram.tgnet.TLRPC$Updates;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
/* renamed from: org.telegram.ui.Components.AlertsCreator */
/* loaded from: classes6.dex */
public class AlertsCreator {

    /* renamed from: org.telegram.ui.Components.AlertsCreator$AccountSelectDelegate */
    /* loaded from: classes6.dex */
    public interface AccountSelectDelegate {
        void didSelectAccount(int i);
    }

    /* renamed from: org.telegram.ui.Components.AlertsCreator$BlockDialogCallback */
    /* loaded from: classes6.dex */
    public interface BlockDialogCallback {
        void run(boolean z, boolean z2);
    }

    /* renamed from: org.telegram.ui.Components.AlertsCreator$DatePickerDelegate */
    /* loaded from: classes6.dex */
    public interface DatePickerDelegate {
        void didSelectDate(int i, int i2, int i3);
    }

    /* renamed from: org.telegram.ui.Components.AlertsCreator$ScheduleDatePickerDelegate */
    /* loaded from: classes6.dex */
    public interface ScheduleDatePickerDelegate {

        /* renamed from: org.telegram.ui.Components.AlertsCreator$ScheduleDatePickerDelegate$-CC  reason: invalid class name */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static ArrayList $default$getSelectedDialogs(ScheduleDatePickerDelegate scheduleDatePickerDelegate) {
                return null;
            }
        }

        void didSelectDate(boolean z, int i, String str);

        ArrayList<Long> getSelectedDialogs();
    }

    /* renamed from: org.telegram.ui.Components.AlertsCreator$SoundFrequencyDelegate */
    /* loaded from: classes6.dex */
    public interface SoundFrequencyDelegate {
        void didSelectValues(int i, int i2);
    }

    /* renamed from: org.telegram.ui.Components.AlertsCreator$StatusUntilDatePickerDelegate */
    /* loaded from: classes6.dex */
    public interface StatusUntilDatePickerDelegate {
        void didSelectDate(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createAutoDeleteDatePickerDialog$99(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createCalendarPickerDialog$112(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createChangeBioAlert$56(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createChangeNameAlert$60(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createDatePickerDialog$86(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDeleteMessagesAlert$152(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createMuteForPickerDialog$109(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createReportAlert$122(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createScheduleDatePickerDialog$77(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createSoundFrequencyPickerDialog$105(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createStatusUntilDatePickerDialog$92(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createThemeCreateDialog$155(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendReport$120(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public static void showDisableSuggestionsAlert(final BaseFragment baseFragment, final Runnable runnable) {
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString("SuggestContactsTitle", C3301R.string.SuggestContactsTitle));
        builder.setMessage(LocaleController.getString("SuggestContactsAlert", C3301R.string.SuggestContactsAlert));
        builder.setPositiveButton(LocaleController.getString("MuteDisable", C3301R.string.MuteDisable), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda40
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$showDisableSuggestionsAlert$1(BaseFragment.this, runnable, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        AlertDialog create = builder.create();
        baseFragment.showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor("dialogTextRed"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDisableSuggestionsAlert$1(BaseFragment baseFragment, final Runnable runnable, DialogInterface dialogInterface, int i) {
        TLRPC$TL_payments_clearSavedInfo tLRPC$TL_payments_clearSavedInfo = new TLRPC$TL_payments_clearSavedInfo();
        tLRPC$TL_payments_clearSavedInfo.credentials = false;
        tLRPC$TL_payments_clearSavedInfo.info = false;
        baseFragment.getUserConfig().tmpPassword = null;
        baseFragment.getUserConfig().saveConfig(false);
        baseFragment.getConnectionsManager().sendRequest(tLRPC$TL_payments_clearSavedInfo, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda123
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        });
    }

    public static void showDeleteAllCloudDraftsAlert(final BaseFragment baseFragment) {
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString("AreYouSureClearDraftsTitle", C3301R.string.AreYouSureClearDraftsTitle));
        builder.setMessage(LocaleController.getString("AreYouSureClearDrafts", C3301R.string.AreYouSureClearDrafts));
        builder.setPositiveButton(LocaleController.getString("Delete", C3301R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda39
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$showDeleteAllCloudDraftsAlert$4(BaseFragment.this, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        AlertDialog create = builder.create();
        baseFragment.showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor("dialogTextRed"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDeleteAllCloudDraftsAlert$4(final BaseFragment baseFragment, DialogInterface dialogInterface, int i) {
        baseFragment.getConnectionsManager().sendRequest(new TLRPC$TL_messages_clearAllDrafts(), new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda125
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                AlertsCreator.lambda$showDeleteAllCloudDraftsAlert$3(BaseFragment.this, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDeleteAllCloudDraftsAlert$2(BaseFragment baseFragment) {
        baseFragment.getMediaDataController().clearAllDrafts(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDeleteAllCloudDraftsAlert$3(final BaseFragment baseFragment, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda111
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.lambda$showDeleteAllCloudDraftsAlert$2(BaseFragment.this);
            }
        });
    }

    public static void showOpenUrlAlert(BaseFragment baseFragment, String str, boolean z, boolean z2, boolean z3, Browser.Progress progress, Theme.ResourcesProvider resourcesProvider) {
        showOpenUrlAlert(baseFragment, str, z, z2, z3, progress, resourcesProvider, false);
    }

    public static Dialog createProfileIdDialog(Context context, final String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setItems(new CharSequence[]{LocaleController.getString("Copy", C3301R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda19
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$createProfileIdDialog$5(str, dialogInterface, i);
            }
        });
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createProfileIdDialog$5(String str, DialogInterface dialogInterface, int i) {
        if (i == 0) {
            try {
                ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", str));
                Toast.makeText(ApplicationLoader.applicationContext, LocaleController.getString("TextCopied", C3301R.string.TextCopied), 0).show();
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
    }

    public static void showCallConfirmAlert(final TLRPC$User tLRPC$User, final boolean z, final boolean z2, final Activity activity, final TLRPC$UserFull tLRPC$UserFull, final AccountInstance accountInstance) {
        int i;
        String str;
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        if (z) {
            i = C3301R.string.VideoCall;
            str = "VideoCall";
        } else {
            i = C3301R.string.Call;
            str = "Call";
        }
        builder.setTitle(LocaleController.getString(str, i));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatStringInternal(C3301R.string.voip_call_confirm_alert_message, UserObject.getUserName(tLRPC$User))));
        builder.setPositiveButton(LocaleController.getInternalString(C3301R.string.voip_call_confirm_alert_positive_button), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda36
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                VoIPHelper.startCall(TLRPC$User.this, z, z2, activity, tLRPC$UserFull, accountInstance, false);
            }
        });
        builder.setNegativeButton(LocaleController.getInternalString(C3301R.string.voip_call_confirm_alert_negative_button), null);
        builder.create().show();
    }

    public static void showDeviceMusicOptionsAlertDialog(BaseFragment baseFragment, final MessagesStorage.IntCallback intCallback) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        String[] strArr = {LocaleController.getString("Delete", C3301R.string.Delete)};
        int[] iArr = {C3301R.C3303drawable.msg_delete};
        LinearLayout linearLayout = new LinearLayout(baseFragment.getParentActivity());
        linearLayout.setOrientation(1);
        final AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        for (int i = 0; i < 1; i++) {
            TextView textView = new TextView(baseFragment.getParentActivity());
            Drawable drawable = baseFragment.getParentActivity().getResources().getDrawable(iArr[i]);
            textView.setTextColor(Theme.getColor("dialogTextBlack"));
            drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor("dialogIcon"), PorterDuff.Mode.MULTIPLY));
            textView.setTextSize(1, 16.0f);
            textView.setLines(1);
            textView.setMaxLines(1);
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
            textView.setTag(Integer.valueOf(i));
            textView.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            textView.setPadding(AndroidUtilities.m50dp(24), 0, AndroidUtilities.m50dp(24), 0);
            textView.setSingleLine(true);
            textView.setGravity(19);
            textView.setCompoundDrawablePadding(AndroidUtilities.m50dp(26));
            textView.setText(strArr[i]);
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, 48, 51));
            textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda67
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$showDeviceMusicOptionsAlertDialog$7(MessagesStorage.IntCallback.this, builder, view);
                }
            });
        }
        builder.setTitle(LocaleController.getString("ActionsChartTitle", C3301R.string.ActionsChartTitle));
        builder.setView(linearLayout);
        baseFragment.showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDeviceMusicOptionsAlertDialog$7(MessagesStorage.IntCallback intCallback, AlertDialog.Builder builder, View view) {
        intCallback.run(((Integer) view.getTag()).intValue());
        builder.getDismissRunnable().run();
    }

    public static AlertDialog showConfirmationDialog(BaseFragment baseFragment, Context context, String str, CharSequence charSequence, String str2, boolean z, Theme.ResourcesProvider resourcesProvider, final Callbacks$Callback1<Boolean> callbacks$Callback1) {
        TextView textView;
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        if (str != null) {
            builder.setTitle(str);
        }
        builder.setMessage(charSequence);
        builder.setPositiveButton(str2, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda26
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$showConfirmationDialog$8(Callbacks$Callback1.this, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda24
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$showConfirmationDialog$9(Callbacks$Callback1.this, dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        if (baseFragment != null) {
            baseFragment.showDialog(create);
        } else {
            create.show();
        }
        if (z && (textView = (TextView) create.getButton(-1)) != null) {
            textView.setTextColor(resourcesProvider != null ? resourcesProvider.getColor("dialogTextRed").intValue() : Theme.getColor("dialogTextRed"));
        }
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showConfirmationDialog$8(Callbacks$Callback1 callbacks$Callback1, DialogInterface dialogInterface, int i) {
        callbacks$Callback1.invoke(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showConfirmationDialog$9(Callbacks$Callback1 callbacks$Callback1, DialogInterface dialogInterface, int i) {
        callbacks$Callback1.invoke(Boolean.FALSE);
    }

    public static AlertDialog createDrawerAccountDataSelectDialog(Context context, boolean z, DrawerAccountData drawerAccountData, final Callbacks$Callback1<DrawerAccountData> callbacks$Callback1) {
        final AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getInternalString(z ? C3301R.string.drawer_profile_cell_alert_title : C3301R.string.drawer_profile_cell_alert_subtitle));
        builder.setNegativeButton(LocaleController.getInternalString(C3301R.string.common_cancel), null);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        DrawerAccountData[] values = DrawerAccountData.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            DrawerAccountData drawerAccountData2 = values[i];
            RadioColorCell radioColorCell = new RadioColorCell(context);
            radioColorCell.setTag(drawerAccountData2);
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setCheckColor(Theme.getColor("radioBackground"), Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue(drawerAccountData2.getTitle(), drawerAccountData == drawerAccountData2);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda66
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createDrawerAccountDataSelectDialog$10(Callbacks$Callback1.this, builder, view);
                }
            });
            linearLayout.addView(radioColorCell);
        }
        return builder.setView(linearLayout).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDrawerAccountDataSelectDialog$10(Callbacks$Callback1 callbacks$Callback1, AlertDialog.Builder builder, View view) {
        callbacks$Callback1.invoke((DrawerAccountData) view.getTag());
        builder.getDismissRunnable().run();
    }

    public static Dialog createRestoreBackupBottomSheetDialog(final BaseFragment baseFragment, final MessageObject messageObject) {
        final Activity parentActivity = baseFragment.getParentActivity();
        final BottomSheet.Builder builder = new BottomSheet.Builder(parentActivity, false, baseFragment.getResourceProvider());
        builder.setTitle(LocaleController.getInternalString(C3301R.string.backup_message_popup_restore), true);
        builder.setApplyBottomPadding(false);
        FrameLayout frameLayout = new FrameLayout(parentActivity);
        builder.setCustomView(frameLayout);
        final BackupComponent[] values = BackupComponent.values();
        final TextCheckBoxCell[] textCheckBoxCellArr = new TextCheckBoxCell[values.length];
        FrameLayout frameLayout2 = new FrameLayout(parentActivity);
        frameLayout2.setPadding(AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8));
        TextView textView = new TextView(parentActivity);
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(baseFragment.getThemedColor("dialogTextBlue2"));
        textView.setGravity(17);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setText(LocaleController.getString("Cancel", C3301R.string.Cancel).toUpperCase());
        textView.setPadding(AndroidUtilities.m50dp(10), 0, AndroidUtilities.m50dp(10), 0);
        frameLayout2.addView(textView, LayoutHelper.createFrame(-2, 36, 51));
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda72
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.lambda$createRestoreBackupBottomSheetDialog$11(BottomSheet.Builder.this, view);
            }
        });
        final TextView textView2 = new TextView(parentActivity);
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(baseFragment.getThemedColor("dialogTextBlue2"));
        textView2.setGravity(17);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setText(LocaleController.getInternalString(C3301R.string.backup_restore).toUpperCase());
        textView2.setPadding(AndroidUtilities.m50dp(10), 0, AndroidUtilities.m50dp(10), 0);
        frameLayout2.addView(textView2, LayoutHelper.createFrame(-2, 36, 53));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda88
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.lambda$createRestoreBackupBottomSheetDialog$13(textCheckBoxCellArr, values, builder, parentActivity, baseFragment, messageObject, view);
            }
        });
        ScrollView scrollView = new ScrollView(parentActivity);
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        int i = 0;
        while (i < values.length) {
            BackupComponent backupComponent = values[i];
            final TextCheckBoxCell textCheckBoxCell = new TextCheckBoxCell(parentActivity, true, false, baseFragment.getResourceProvider());
            textCheckBoxCellArr[i] = textCheckBoxCell;
            textCheckBoxCell.setTextAndCheck(LocaleController.getInternalString(backupComponent.getTitleResId()), true, i < values.length - 1);
            textCheckBoxCell.setBackground(Theme.getSelectorDrawable(false));
            textCheckBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda74
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createRestoreBackupBottomSheetDialog$14(TextCheckBoxCell.this, textCheckBoxCellArr, textView2, view);
                }
            });
            linearLayout.addView(textCheckBoxCell, LayoutHelper.createLinear(-1, 50));
            i++;
        }
        scrollView.addView(linearLayout);
        frameLayout.addView(scrollView, LayoutHelper.createFrame(-1, -2, 48, 0, 0, 0, 53));
        View view = new View(parentActivity);
        view.setBackgroundColor(baseFragment.getThemedColor("divider"));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, 1, 80, 0, 0, 0, 52));
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 52, 80));
        BottomSheet create = builder.create();
        create.setCanDismissWithSwipe(false);
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createRestoreBackupBottomSheetDialog$11(BottomSheet.Builder builder, View view) {
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createRestoreBackupBottomSheetDialog$13(TextCheckBoxCell[] textCheckBoxCellArr, BackupComponent[] backupComponentArr, BottomSheet.Builder builder, Context context, final BaseFragment baseFragment, MessageObject messageObject, View view) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < textCheckBoxCellArr.length; i++) {
            if (textCheckBoxCellArr[i].isChecked()) {
                arrayList.add(backupComponentArr[i]);
            }
        }
        builder.getDismissRunnable().run();
        final AlertDialog alertDialog = new AlertDialog(context, 3);
        alertDialog.setCanCancel(false);
        alertDialog.show();
        baseFragment.getBackupController().restore(messageObject, arrayList, baseFragment, new Callbacks$Callback1() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda118
            @Override // org.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                AlertsCreator.lambda$createRestoreBackupBottomSheetDialog$12(AlertDialog.this, baseFragment, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createRestoreBackupBottomSheetDialog$12(AlertDialog alertDialog, BaseFragment baseFragment, Boolean bool) {
        alertDialog.dismiss();
        if (bool.booleanValue()) {
            ((LaunchActivity) baseFragment.getParentActivity()).switchToAccount(UserConfig.selectedAccount, true, null, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createRestoreBackupBottomSheetDialog$14(TextCheckBoxCell textCheckBoxCell, TextCheckBoxCell[] textCheckBoxCellArr, TextView textView, View view) {
        boolean z = true;
        textCheckBoxCell.setChecked(!textCheckBoxCell.isChecked());
        int length = textCheckBoxCellArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            } else if (textCheckBoxCellArr[i].isChecked()) {
                break;
            } else {
                i++;
            }
        }
        textView.setAlpha(z ? 1.0f : 0.5f);
        textView.setEnabled(z);
    }

    public static AlertDialog createChooseVideoVoiceCamera(Context context) {
        final AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getInternalString(C3301R.string.settings_interface_video_voice_camera));
        builder.setNegativeButton(LocaleController.getInternalString(C3301R.string.common_cancel), null);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        VideoVoiceCamera[] values = VideoVoiceCamera.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            VideoVoiceCamera videoVoiceCamera = values[i];
            RadioColorCell radioColorCell = new RadioColorCell(context);
            radioColorCell.setTag(videoVoiceCamera);
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setCheckColor(Theme.getColor("radioBackground"), Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue(LocaleController.getInternalString(videoVoiceCamera.getTextResId()), SharedConfig.selectedVideoVoiceCamera == videoVoiceCamera);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda69
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createChooseVideoVoiceCamera$15(AlertDialog.Builder.this, view);
                }
            });
            linearLayout.addView(radioColorCell);
        }
        return builder.setView(linearLayout).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createChooseVideoVoiceCamera$15(AlertDialog.Builder builder, View view) {
        SharedConfig.setSelectedVideoVoiceCamera((VideoVoiceCamera) view.getTag());
        builder.getDismissRunnable().run();
    }

    public static void showArchiveAccessAlert(final BaseFragment baseFragment) {
        if (baseFragment.getFiltersController().isAllChatsTabEnabled() || SharedConfig.isShowDrawerHeaderArchiveEnabled) {
            return;
        }
        baseFragment.showDialog(DialogUtils.createDialog(baseFragment.getParentActivity(), new DialogModel(LocaleController.getInternalString(C3301R.string.dialog_title_enable_archive_in_drawer), LocaleController.getInternalString(C3301R.string.dialog_message_enable_archive_in_drawer), LocaleController.getInternalString(C3301R.string.common_cancel), LocaleController.getInternalString(C3301R.string.common_ok)), new Callbacks$Callback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda120
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                AlertsCreator.lambda$showArchiveAccessAlert$16(BaseFragment.this);
            }
        }, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showArchiveAccessAlert$16(BaseFragment baseFragment) {
        SharedConfig.setShowDrawerHeaderArchiveEnabled(true);
        baseFragment.getNotificationCenter().postNotificationName(NotificationCenter.mainUserInfoChanged, new Object[0]);
    }

    public static void showRestartDialog(BaseFragment baseFragment, final Callbacks$Callback callbacks$Callback) {
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        String string = LocaleController.getString("ScreenCaptureAlert", C3301R.string.ScreenCaptureAlert);
        if (string.contains("\n\n")) {
            builder.setMessage(string.split("\n\n")[1]);
        }
        builder.setPositiveButton(LocaleController.getInternalString(C3301R.string.in_app_update_snackbar_action), AlertsCreator$$ExternalSyntheticLambda52.INSTANCE);
        builder.setNegativeButton(LocaleController.getInternalString(C3301R.string.common_cancel), null);
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                AlertsCreator.lambda$showRestartDialog$18(Callbacks$Callback.this, dialogInterface);
            }
        });
        baseFragment.showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showRestartDialog$17(DialogInterface dialogInterface, int i) {
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.closeOtherAppActivities, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showRestartDialog$18(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface) {
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }

    public static AlertDialog createChooseTemplatesModeDialog(Context context, final boolean z) {
        final AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getInternalString(C3301R.string.chat_templates));
        builder.setNegativeButton(LocaleController.getInternalString(C3301R.string.common_cancel), null);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TemplatesMode[] values = TemplatesMode.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            TemplatesMode templatesMode = values[i];
            RadioColorCell radioColorCell = new RadioColorCell(context);
            radioColorCell.setTag(templatesMode);
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setCheckColor(Theme.getColor("radioBackground"), Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue(LocaleController.getInternalString(templatesMode.getTextResId()), SharedConfig.selectedTemplatesMode == templatesMode);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda78
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createChooseTemplatesModeDialog$19(z, builder, view);
                }
            });
            linearLayout.addView(radioColorCell);
        }
        return builder.setView(linearLayout).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createChooseTemplatesModeDialog$19(boolean z, AlertDialog.Builder builder, View view) {
        TemplatesMode templatesMode = (TemplatesMode) view.getTag();
        if (templatesMode == SharedConfig.selectedTemplatesMode) {
            return;
        }
        if (!z && !SharedConfig.hasPreferenceKey(TelegramPreferenceKeys.Global.selectedTemplatesMode())) {
            ContextExtKt.longToast(LocaleController.getInternalString(C3301R.string.chat_templates_mode_hint));
        }
        SharedConfig.setSelectedTemplatesMode(templatesMode);
        builder.getDismissRunnable().run();
    }

    public static Dialog createInputTemplateNameDialog(final ChatActivity chatActivity, TemplateModel templateModel, final Runnable runnable, final Callbacks$Callback1<String> callbacks$Callback1) {
        final ReportAlert reportAlert = new ReportAlert(chatActivity.getParentActivity(), 0, true, templateModel != null ? templateModel.getName() : null) { // from class: org.telegram.ui.Components.AlertsCreator.1
            @Override // org.telegram.p048ui.Components.ReportAlert
            protected void onSend(int i, String str) {
                callbacks$Callback1.invoke(str);
            }

            @Override // org.telegram.p048ui.ActionBar.BottomSheet
            public void dismissInternal() {
                super.dismissInternal();
                AndroidUtilities.requestAdjustResize(chatActivity.getParentActivity(), chatActivity.getClassGuid());
            }
        };
        reportAlert.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda61
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                AlertsCreator.lambda$createInputTemplateNameDialog$20(ReportAlert.this, chatActivity, dialogInterface);
            }
        });
        if (runnable != null) {
            reportAlert.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    runnable.run();
                }
            });
        }
        return reportAlert;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createInputTemplateNameDialog$20(ReportAlert reportAlert, ChatActivity chatActivity, DialogInterface dialogInterface) {
        reportAlert.makeFocusable(chatActivity.getChatActivityEnterView().isKeyboardVisible());
    }

    public static Dialog createTopAnimationDialog(Context context, int i, int i2, CharSequence charSequence, String str, final Callbacks$Callback1<Boolean> callbacks$Callback1) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTopAnimation(i, i2, false, Theme.getColor("dialogTopBackground"));
        builder.setMessage(charSequence);
        builder.setPositiveButton(str, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda25
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                AlertsCreator.lambda$createTopAnimationDialog$22(Callbacks$Callback1.this, dialogInterface, i3);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda27
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                AlertsCreator.lambda$createTopAnimationDialog$23(Callbacks$Callback1.this, dialogInterface, i3);
            }
        });
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createTopAnimationDialog$22(Callbacks$Callback1 callbacks$Callback1, DialogInterface dialogInterface, int i) {
        callbacks$Callback1.invoke(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createTopAnimationDialog$23(Callbacks$Callback1 callbacks$Callback1, DialogInterface dialogInterface, int i) {
        callbacks$Callback1.invoke(Boolean.FALSE);
    }

    public static Dialog createForgotPasscodeDialog(Context context) {
        return new AlertDialog.Builder(context).setTitle(LocaleController.getString(C3301R.string.ForgotPasscode)).setMessage(LocaleController.getString(C3301R.string.ForgotPasscodeInfo)).setPositiveButton(LocaleController.getString(C3301R.string.Close), null).create();
    }

    public static Dialog createLocationRequiredDialog(final Context context, boolean z) {
        String string;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        if (z) {
            string = LocaleController.getString("PermissionNoLocationFriends", C3301R.string.PermissionNoLocationFriends);
        } else {
            string = LocaleController.getString("PermissionNoLocationPeopleNearby", C3301R.string.PermissionNoLocationPeopleNearby);
        }
        return builder.setMessage(AndroidUtilities.replaceTags(string)).setTopAnimation(C3301R.C3306raw.permission_request_location, 72, false, Theme.getColor("dialogTopBackground")).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3301R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda13
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$createLocationRequiredDialog$24(context, dialogInterface, i);
            }
        }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3301R.string.ContactsPermissionAlertNotNow), null).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createLocationRequiredDialog$24(Context context, DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            context.startActivity(intent);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public static Dialog createBackgroundActivityDialog(final Context context) {
        int i;
        AlertDialog.Builder title = new AlertDialog.Builder(context).setTitle(LocaleController.getString(C3301R.string.AllowBackgroundActivity));
        if (OneUIUtilities.isOneUI()) {
            i = Build.VERSION.SDK_INT >= 31 ? C3301R.string.AllowBackgroundActivityInfoOneUIAboveS : C3301R.string.AllowBackgroundActivityInfoOneUIBelowS;
        } else {
            i = C3301R.string.AllowBackgroundActivityInfo;
        }
        return title.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(i))).setTopAnimation(C3301R.C3306raw.permission_request_apk, 72, false, Theme.getColor("dialogTopBackground")).setPositiveButton(LocaleController.getString(C3301R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                AlertsCreator.lambda$createBackgroundActivityDialog$25(context, dialogInterface, i2);
            }
        }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3301R.string.ContactsPermissionAlertNotNow), null).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createBackgroundActivityDialog$25(Context context, DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            context.startActivity(intent);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public static Dialog createWebViewPermissionsRequestDialog(final Context context, Theme.ResourcesProvider resourcesProvider, String[] strArr, int i, String str, String str2, final Consumer<Boolean> consumer) {
        final boolean z;
        if (strArr != null && (context instanceof Activity) && Build.VERSION.SDK_INT >= 23) {
            Activity activity = (Activity) context;
            for (String str3 : strArr) {
                if (activity.checkSelfPermission(str3) != 0 && activity.shouldShowRequestPermissionRationale(str3)) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        AlertDialog.Builder topAnimation = new AlertDialog.Builder(context, resourcesProvider).setTopAnimation(i, 72, false, Theme.getColor("dialogTopBackground"));
        if (z) {
            str = str2;
        }
        return topAnimation.setMessage(AndroidUtilities.replaceTags(str)).setPositiveButton(LocaleController.getString(z ? C3301R.string.PermissionOpenSettings : C3301R.string.BotWebViewRequestAllow), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda46
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                AlertsCreator.lambda$createWebViewPermissionsRequestDialog$26(z, context, atomicBoolean, consumer, dialogInterface, i2);
            }
        }).setNegativeButton(LocaleController.getString(C3301R.string.BotWebViewRequestDontAllow), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda23
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                AlertsCreator.lambda$createWebViewPermissionsRequestDialog$27(atomicBoolean, consumer, dialogInterface, i2);
            }
        }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda59
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.lambda$createWebViewPermissionsRequestDialog$28(atomicBoolean, consumer, dialogInterface);
            }
        }).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createWebViewPermissionsRequestDialog$26(boolean z, Context context, AtomicBoolean atomicBoolean, Consumer consumer, DialogInterface dialogInterface, int i) {
        if (z) {
            try {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
                context.startActivity(intent);
                return;
            } catch (Exception e) {
                FileLog.m45e(e);
                return;
            }
        }
        atomicBoolean.set(true);
        consumer.accept(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createWebViewPermissionsRequestDialog$27(AtomicBoolean atomicBoolean, Consumer consumer, DialogInterface dialogInterface, int i) {
        atomicBoolean.set(true);
        consumer.accept(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createWebViewPermissionsRequestDialog$28(AtomicBoolean atomicBoolean, Consumer consumer, DialogInterface dialogInterface) {
        if (atomicBoolean.get()) {
            return;
        }
        consumer.accept(Boolean.FALSE);
    }

    public static Dialog createApkRestrictedDialog(final Context context, Theme.ResourcesProvider resourcesProvider) {
        return new AlertDialog.Builder(context, resourcesProvider).setMessage(LocaleController.getString("ApkRestricted", C3301R.string.ApkRestricted)).setTopAnimation(C3301R.C3306raw.permission_request_apk, 72, false, Theme.getColor("dialogTopBackground")).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3301R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$createApkRestrictedDialog$29(context, dialogInterface, i);
            }
        }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3301R.string.ContactsPermissionAlertNotNow), null).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createApkRestrictedDialog$29(Context context, DialogInterface dialogInterface, int i) {
        try {
            context.startActivity(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + context.getPackageName())));
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public static Dialog processError(int i, TLRPC$TL_error tLRPC$TL_error, BaseFragment baseFragment, TLObject tLObject, Object... objArr) {
        String str;
        TLRPC$InputPeer tLRPC$InputPeer;
        long peerDialogId;
        char c;
        int i2 = tLRPC$TL_error.code;
        if (i2 == 406 || (str = tLRPC$TL_error.text) == null) {
            return null;
        }
        boolean z = tLObject instanceof TLRPC$TL_messages_initHistoryImport;
        if (z || (tLObject instanceof TLRPC$TL_messages_checkHistoryImportPeer) || (tLObject instanceof TLRPC$TL_messages_checkHistoryImport) || (tLObject instanceof TLRPC$TL_messages_startHistoryImport)) {
            if (z) {
                tLRPC$InputPeer = ((TLRPC$TL_messages_initHistoryImport) tLObject).peer;
            } else {
                tLRPC$InputPeer = tLObject instanceof TLRPC$TL_messages_startHistoryImport ? ((TLRPC$TL_messages_startHistoryImport) tLObject).peer : null;
            }
            if (str.contains("USER_IS_BLOCKED")) {
                showSimpleAlert(baseFragment, LocaleController.getString("ImportErrorTitle", C3301R.string.ImportErrorTitle), LocaleController.getString("ImportErrorUserBlocked", C3301R.string.ImportErrorUserBlocked));
            } else if (tLRPC$TL_error.text.contains("USER_NOT_MUTUAL_CONTACT")) {
                showSimpleAlert(baseFragment, LocaleController.getString("ImportErrorTitle", C3301R.string.ImportErrorTitle), LocaleController.getString("ImportMutualError", C3301R.string.ImportMutualError));
            } else if (tLRPC$TL_error.text.contains("IMPORT_PEER_TYPE_INVALID")) {
                if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerUser) {
                    showSimpleAlert(baseFragment, LocaleController.getString("ImportErrorTitle", C3301R.string.ImportErrorTitle), LocaleController.getString("ImportErrorChatInvalidUser", C3301R.string.ImportErrorChatInvalidUser));
                } else {
                    showSimpleAlert(baseFragment, LocaleController.getString("ImportErrorTitle", C3301R.string.ImportErrorTitle), LocaleController.getString("ImportErrorChatInvalidGroup", C3301R.string.ImportErrorChatInvalidGroup));
                }
            } else if (tLRPC$TL_error.text.contains("CHAT_ADMIN_REQUIRED")) {
                showSimpleAlert(baseFragment, LocaleController.getString("ImportErrorTitle", C3301R.string.ImportErrorTitle), LocaleController.getString("ImportErrorNotAdmin", C3301R.string.ImportErrorNotAdmin));
            } else if (tLRPC$TL_error.text.startsWith("IMPORT_FORMAT")) {
                showSimpleAlert(baseFragment, LocaleController.getString("ImportErrorTitle", C3301R.string.ImportErrorTitle), LocaleController.getString("ImportErrorFileFormatInvalid", C3301R.string.ImportErrorFileFormatInvalid));
            } else if (tLRPC$TL_error.text.startsWith("PEER_ID_INVALID")) {
                showSimpleAlert(baseFragment, LocaleController.getString("ImportErrorTitle", C3301R.string.ImportErrorTitle), LocaleController.getString("ImportErrorPeerInvalid", C3301R.string.ImportErrorPeerInvalid));
            } else if (tLRPC$TL_error.text.contains("IMPORT_LANG_NOT_FOUND")) {
                showSimpleAlert(baseFragment, LocaleController.getString("ImportErrorTitle", C3301R.string.ImportErrorTitle), LocaleController.getString("ImportErrorFileLang", C3301R.string.ImportErrorFileLang));
            } else if (tLRPC$TL_error.text.contains("IMPORT_UPLOAD_FAILED")) {
                showSimpleAlert(baseFragment, LocaleController.getString("ImportErrorTitle", C3301R.string.ImportErrorTitle), LocaleController.getString("ImportFailedToUpload", C3301R.string.ImportFailedToUpload));
            } else if (tLRPC$TL_error.text.startsWith("FLOOD_WAIT")) {
                showFloodWaitAlert(tLRPC$TL_error.text, baseFragment);
            } else {
                showSimpleAlert(baseFragment, LocaleController.getString("ImportErrorTitle", C3301R.string.ImportErrorTitle), LocaleController.getString("ErrorOccurred", C3301R.string.ErrorOccurred) + "\n" + tLRPC$TL_error.text);
            }
        } else if ((tLObject instanceof TLRPC$TL_account_saveSecureValue) || (tLObject instanceof TLRPC$TL_account_getAuthorizationForm)) {
            if (str.contains("PHONE_NUMBER_INVALID")) {
                showSimpleAlert(baseFragment, LocaleController.getString("InvalidPhoneNumber", C3301R.string.InvalidPhoneNumber));
            } else if (tLRPC$TL_error.text.startsWith("FLOOD_WAIT")) {
                showSimpleAlert(baseFragment, LocaleController.getString("FloodWait", C3301R.string.FloodWait));
            } else if ("APP_VERSION_OUTDATED".equals(tLRPC$TL_error.text)) {
                showUpdateAppAlert(baseFragment.getParentActivity(), LocaleController.getString("UpdateAppAlert", C3301R.string.UpdateAppAlert), true);
            } else {
                showSimpleAlert(baseFragment, LocaleController.getString("ErrorOccurred", C3301R.string.ErrorOccurred) + "\n" + tLRPC$TL_error.text);
            }
        } else {
            boolean z2 = tLObject instanceof TLRPC$TL_channels_joinChannel;
            if (z2 || (tLObject instanceof TLRPC$TL_channels_editAdmin) || (tLObject instanceof TLRPC$TL_channels_inviteToChannel) || (tLObject instanceof TLRPC$TL_messages_addChatUser) || (tLObject instanceof TLRPC$TL_messages_startBot) || (tLObject instanceof TLRPC$TL_channels_editBanned) || (tLObject instanceof TLRPC$TL_messages_editChatDefaultBannedRights) || (tLObject instanceof TLRPC$TL_messages_editChatAdmin) || (tLObject instanceof TLRPC$TL_messages_migrateChat) || (tLObject instanceof TLRPC$TL_phone_inviteToGroupCall)) {
                if (baseFragment != null && str.equals("CHANNELS_TOO_MUCH")) {
                    if (baseFragment.getParentActivity() != null) {
                        baseFragment.showDialog(new LimitReachedBottomSheet(baseFragment, baseFragment.getParentActivity(), 5, i));
                        return null;
                    } else if (z2 || (tLObject instanceof TLRPC$TL_channels_inviteToChannel)) {
                        baseFragment.presentFragment(new TooManyCommunitiesActivity(0));
                        return null;
                    } else {
                        baseFragment.presentFragment(new TooManyCommunitiesActivity(1));
                        return null;
                    }
                } else if (baseFragment != null) {
                    showAddUserAlert(tLRPC$TL_error.text, baseFragment, (objArr == null || objArr.length <= 0) ? false : ((Boolean) objArr[0]).booleanValue(), tLObject);
                } else if (tLRPC$TL_error.text.equals("PEER_FLOOD")) {
                    NotificationCenter.getInstance(i).postNotificationName(NotificationCenter.needShowAlert, 1);
                }
            } else if (tLObject instanceof TLRPC$TL_messages_createChat) {
                if (str.equals("CHANNELS_TOO_MUCH")) {
                    if (baseFragment.getParentActivity() != null) {
                        baseFragment.showDialog(new LimitReachedBottomSheet(baseFragment, baseFragment.getParentActivity(), 5, i));
                        return null;
                    }
                    baseFragment.presentFragment(new TooManyCommunitiesActivity(2));
                    return null;
                } else if (tLRPC$TL_error.text.startsWith("FLOOD_WAIT")) {
                    showFloodWaitAlert(tLRPC$TL_error.text, baseFragment);
                } else {
                    showAddUserAlert(tLRPC$TL_error.text, baseFragment, false, tLObject);
                }
            } else if (tLObject instanceof TLRPC$TL_channels_createChannel) {
                if (str.equals("CHANNELS_TOO_MUCH")) {
                    if (baseFragment.getParentActivity() != null) {
                        baseFragment.showDialog(new LimitReachedBottomSheet(baseFragment, baseFragment.getParentActivity(), 5, i));
                        return null;
                    }
                    baseFragment.presentFragment(new TooManyCommunitiesActivity(2));
                    return null;
                } else if (tLRPC$TL_error.text.startsWith("FLOOD_WAIT")) {
                    showFloodWaitAlert(tLRPC$TL_error.text, baseFragment);
                } else {
                    showAddUserAlert(tLRPC$TL_error.text, baseFragment, false, tLObject);
                }
            } else if (tLObject instanceof TLRPC$TL_messages_editMessage) {
                if (!str.equals("MESSAGE_NOT_MODIFIED")) {
                    if (baseFragment != null) {
                        showSimpleAlert(baseFragment, LocaleController.getString("EditMessageError", C3301R.string.EditMessageError));
                    } else {
                        showSimpleToast(null, LocaleController.getString("EditMessageError", C3301R.string.EditMessageError));
                        return null;
                    }
                }
            } else {
                boolean z3 = tLObject instanceof TLRPC$TL_messages_sendMessage;
                if (z3 || (tLObject instanceof TLRPC$TL_messages_sendMedia) || (tLObject instanceof TLRPC$TL_messages_sendInlineBotResult) || (tLObject instanceof TLRPC$TL_messages_forwardMessages) || (tLObject instanceof TLRPC$TL_messages_sendMultiMedia) || (tLObject instanceof TLRPC$TL_messages_sendScheduledMessages)) {
                    if (z3) {
                        peerDialogId = DialogObject.getPeerDialogId(((TLRPC$TL_messages_sendMessage) tLObject).peer);
                    } else if (tLObject instanceof TLRPC$TL_messages_sendMedia) {
                        peerDialogId = DialogObject.getPeerDialogId(((TLRPC$TL_messages_sendMedia) tLObject).peer);
                    } else if (tLObject instanceof TLRPC$TL_messages_sendInlineBotResult) {
                        peerDialogId = DialogObject.getPeerDialogId(((TLRPC$TL_messages_sendInlineBotResult) tLObject).peer);
                    } else if (tLObject instanceof TLRPC$TL_messages_forwardMessages) {
                        peerDialogId = DialogObject.getPeerDialogId(((TLRPC$TL_messages_forwardMessages) tLObject).to_peer);
                    } else if (tLObject instanceof TLRPC$TL_messages_sendMultiMedia) {
                        peerDialogId = DialogObject.getPeerDialogId(((TLRPC$TL_messages_sendMultiMedia) tLObject).peer);
                    } else {
                        peerDialogId = tLObject instanceof TLRPC$TL_messages_sendScheduledMessages ? DialogObject.getPeerDialogId(((TLRPC$TL_messages_sendScheduledMessages) tLObject).peer) : 0L;
                    }
                    String str2 = tLRPC$TL_error.text;
                    char c2 = 65535;
                    if (str2 != null && str2.startsWith("CHAT_SEND_") && tLRPC$TL_error.text.endsWith("FORBIDDEN")) {
                        String str3 = tLRPC$TL_error.text;
                        TLRPC$Chat chat = peerDialogId < 0 ? MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId)) : null;
                        String str4 = tLRPC$TL_error.text;
                        str4.hashCode();
                        switch (str4.hashCode()) {
                            case -1813346101:
                                if (str4.equals("CHAT_SEND_VOICES_FORBIDDEN")) {
                                    c2 = 0;
                                    break;
                                }
                                break;
                            case -1755013292:
                                if (str4.equals("CHAT_SEND_PLAIN_FORBIDDEN")) {
                                    c2 = 1;
                                    break;
                                }
                                break;
                            case -1463451737:
                                if (str4.equals("CHAT_SEND_AUDIOS_FORBIDDEN")) {
                                    c2 = 2;
                                    break;
                                }
                                break;
                            case -446466679:
                                if (str4.equals("CHAT_SEND_POLL_FORBIDDEN")) {
                                    c = 3;
                                    c2 = c;
                                    break;
                                }
                                break;
                            case 469767429:
                                if (str4.equals("CHAT_SEND_DOCS_FORBIDDEN")) {
                                    c = 4;
                                    c2 = c;
                                    break;
                                }
                                break;
                            case 788688112:
                                if (str4.equals("CHAT_SEND_ROUNDVIDEOS_FORBIDDEN")) {
                                    c2 = 5;
                                    break;
                                }
                                break;
                            case 963091938:
                                if (str4.equals("CHAT_SEND_VIDEOS_FORBIDDEN")) {
                                    c = 6;
                                    c2 = c;
                                    break;
                                }
                                break;
                            case 1100757753:
                                if (str4.equals("CHAT_SEND_GIFS_FORBIDDEN")) {
                                    c = 7;
                                    c2 = c;
                                    break;
                                }
                                break;
                            case 1146489803:
                                if (str4.equals("CHAT_SEND_PHOTOS_FORBIDDEN")) {
                                    c = '\b';
                                    c2 = c;
                                    break;
                                }
                                break;
                            case 1701620704:
                                if (str4.equals("CHAT_SEND_STICKERS_FORBIDDEN")) {
                                    c = '\t';
                                    c2 = c;
                                    break;
                                }
                                break;
                        }
                        switch (c2) {
                            case 0:
                                str3 = ChatObject.getRestrictedErrorText(chat, 20);
                                break;
                            case 1:
                                str3 = ChatObject.getRestrictedErrorText(chat, 22);
                                break;
                            case 2:
                                str3 = ChatObject.getRestrictedErrorText(chat, 18);
                                break;
                            case 3:
                                str3 = ChatObject.getRestrictedErrorText(chat, 10);
                                break;
                            case 4:
                                str3 = ChatObject.getRestrictedErrorText(chat, 19);
                                break;
                            case 5:
                                str3 = ChatObject.getRestrictedErrorText(chat, 21);
                                break;
                            case 6:
                                str3 = ChatObject.getRestrictedErrorText(chat, 17);
                                break;
                            case 7:
                                str3 = ChatObject.getRestrictedErrorText(chat, 23);
                                break;
                            case '\b':
                                str3 = ChatObject.getRestrictedErrorText(chat, 16);
                                break;
                            case '\t':
                                str3 = ChatObject.getRestrictedErrorText(chat, 8);
                                break;
                        }
                        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.showBulletin, 1, str3);
                    } else {
                        String str5 = tLRPC$TL_error.text;
                        str5.hashCode();
                        switch (str5.hashCode()) {
                            case -1809401834:
                                if (str5.equals("USER_BANNED_IN_CHANNEL")) {
                                    c2 = 0;
                                    break;
                                }
                                break;
                            case -454039871:
                                if (str5.equals("PEER_FLOOD")) {
                                    c2 = 1;
                                    break;
                                }
                                break;
                            case 1169786080:
                                if (str5.equals("SCHEDULE_TOO_MUCH")) {
                                    c2 = 2;
                                    break;
                                }
                                break;
                        }
                        switch (c2) {
                            case 0:
                                NotificationCenter.getInstance(i).postNotificationName(NotificationCenter.needShowAlert, 5);
                                break;
                            case 1:
                                NotificationCenter.getInstance(i).postNotificationName(NotificationCenter.needShowAlert, 0);
                                break;
                            case 2:
                                showSimpleToast(baseFragment, LocaleController.getString("MessageScheduledLimitReached", C3301R.string.MessageScheduledLimitReached));
                                break;
                        }
                    }
                } else if (tLObject instanceof TLRPC$TL_messages_importChatInvite) {
                    if (str.startsWith("FLOOD_WAIT")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("FloodWait", C3301R.string.FloodWait));
                    } else if (tLRPC$TL_error.text.equals("USERS_TOO_MUCH")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("JoinToGroupErrorFull", C3301R.string.JoinToGroupErrorFull));
                    } else if (tLRPC$TL_error.text.equals("CHANNELS_TOO_MUCH")) {
                        if (baseFragment.getParentActivity() != null) {
                            baseFragment.showDialog(new LimitReachedBottomSheet(baseFragment, baseFragment.getParentActivity(), 5, i));
                        } else {
                            baseFragment.presentFragment(new TooManyCommunitiesActivity(0));
                        }
                    } else if (tLRPC$TL_error.text.equals("INVITE_HASH_EXPIRED")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("ExpiredLink", C3301R.string.ExpiredLink), LocaleController.getString("InviteExpired", C3301R.string.InviteExpired));
                    } else {
                        showSimpleAlert(baseFragment, LocaleController.getString("JoinToGroupErrorNotExist", C3301R.string.JoinToGroupErrorNotExist));
                    }
                } else if (tLObject instanceof TLRPC$TL_messages_getAttachedStickers) {
                    if (baseFragment != null && baseFragment.getParentActivity() != null) {
                        Toast.makeText(baseFragment.getParentActivity(), LocaleController.getString("ErrorOccurred", C3301R.string.ErrorOccurred) + "\n" + tLRPC$TL_error.text, 0).show();
                    }
                } else if ((tLObject instanceof TLRPC$TL_account_confirmPhone) || (tLObject instanceof TLRPC$TL_account_verifyPhone) || (tLObject instanceof TLRPC$TL_account_verifyEmail)) {
                    if (str.contains("PHONE_CODE_EMPTY") || tLRPC$TL_error.text.contains("PHONE_CODE_INVALID") || tLRPC$TL_error.text.contains("CODE_INVALID") || tLRPC$TL_error.text.contains("CODE_EMPTY")) {
                        return showSimpleAlert(baseFragment, LocaleController.getString("InvalidCode", C3301R.string.InvalidCode));
                    }
                    if (tLRPC$TL_error.text.contains("PHONE_CODE_EXPIRED") || tLRPC$TL_error.text.contains("EMAIL_VERIFY_EXPIRED")) {
                        return showSimpleAlert(baseFragment, LocaleController.getString("CodeExpired", C3301R.string.CodeExpired));
                    }
                    if (tLRPC$TL_error.text.startsWith("FLOOD_WAIT")) {
                        return showSimpleAlert(baseFragment, LocaleController.getString("FloodWait", C3301R.string.FloodWait));
                    }
                    return showSimpleAlert(baseFragment, tLRPC$TL_error.text);
                } else if (tLObject instanceof TLRPC$TL_auth_resendCode) {
                    if (str.contains("PHONE_NUMBER_INVALID")) {
                        return showSimpleAlert(baseFragment, LocaleController.getString("InvalidPhoneNumber", C3301R.string.InvalidPhoneNumber));
                    }
                    if (tLRPC$TL_error.text.contains("PHONE_CODE_EMPTY") || tLRPC$TL_error.text.contains("PHONE_CODE_INVALID")) {
                        return showSimpleAlert(baseFragment, LocaleController.getString("InvalidCode", C3301R.string.InvalidCode));
                    }
                    if (tLRPC$TL_error.text.contains("PHONE_CODE_EXPIRED")) {
                        return showSimpleAlert(baseFragment, LocaleController.getString("CodeExpired", C3301R.string.CodeExpired));
                    }
                    if (tLRPC$TL_error.text.startsWith("FLOOD_WAIT")) {
                        return showSimpleAlert(baseFragment, LocaleController.getString("FloodWait", C3301R.string.FloodWait));
                    }
                    if (tLRPC$TL_error.code != -1000) {
                        return showSimpleAlert(baseFragment, LocaleController.getString("ErrorOccurred", C3301R.string.ErrorOccurred) + "\n" + tLRPC$TL_error.text);
                    }
                } else if (tLObject instanceof TLRPC$TL_account_sendConfirmPhoneCode) {
                    if (i2 == 400) {
                        return showSimpleAlert(baseFragment, LocaleController.getString("CancelLinkExpired", C3301R.string.CancelLinkExpired));
                    }
                    if (str.startsWith("FLOOD_WAIT")) {
                        return showSimpleAlert(baseFragment, LocaleController.getString("FloodWait", C3301R.string.FloodWait));
                    }
                    return showSimpleAlert(baseFragment, LocaleController.getString("ErrorOccurred", C3301R.string.ErrorOccurred));
                } else if (tLObject instanceof TLRPC$TL_account_changePhone) {
                    if (str.contains("PHONE_NUMBER_INVALID")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("InvalidPhoneNumber", C3301R.string.InvalidPhoneNumber));
                    } else if (tLRPC$TL_error.text.contains("PHONE_CODE_EMPTY") || tLRPC$TL_error.text.contains("PHONE_CODE_INVALID")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("InvalidCode", C3301R.string.InvalidCode));
                    } else if (tLRPC$TL_error.text.contains("PHONE_CODE_EXPIRED")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("CodeExpired", C3301R.string.CodeExpired));
                    } else if (tLRPC$TL_error.text.startsWith("FLOOD_WAIT")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("FloodWait", C3301R.string.FloodWait));
                    } else if (tLRPC$TL_error.text.contains("FRESH_CHANGE_PHONE_FORBIDDEN")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("FreshChangePhoneForbidden", C3301R.string.FreshChangePhoneForbidden));
                    } else {
                        showSimpleAlert(baseFragment, tLRPC$TL_error.text);
                    }
                } else if (tLObject instanceof TLRPC$TL_account_sendChangePhoneCode) {
                    if (str.contains("PHONE_NUMBER_INVALID")) {
                        LoginActivity.needShowInvalidAlert(baseFragment, (String) objArr[0], false);
                    } else if (tLRPC$TL_error.text.contains("PHONE_CODE_EMPTY") || tLRPC$TL_error.text.contains("PHONE_CODE_INVALID")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("InvalidCode", C3301R.string.InvalidCode));
                    } else if (tLRPC$TL_error.text.contains("PHONE_CODE_EXPIRED")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("CodeExpired", C3301R.string.CodeExpired));
                    } else if (tLRPC$TL_error.text.startsWith("FLOOD_WAIT")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("FloodWait", C3301R.string.FloodWait));
                    } else if (tLRPC$TL_error.text.startsWith("PHONE_NUMBER_OCCUPIED")) {
                        showSimpleAlert(baseFragment, LocaleController.formatString("ChangePhoneNumberOccupied", C3301R.string.ChangePhoneNumberOccupied, objArr[0]));
                    } else if (tLRPC$TL_error.text.startsWith("PHONE_NUMBER_BANNED")) {
                        LoginActivity.needShowInvalidAlert(baseFragment, (String) objArr[0], true);
                    } else {
                        showSimpleAlert(baseFragment, LocaleController.getString("ErrorOccurred", C3301R.string.ErrorOccurred));
                    }
                } else if (tLObject instanceof TLRPC$TL_account_updateUsername) {
                    str.hashCode();
                    if (str.equals("USERNAME_INVALID")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("UsernameInvalid", C3301R.string.UsernameInvalid));
                    } else if (str.equals("USERNAME_OCCUPIED")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("UsernameInUse", C3301R.string.UsernameInUse));
                    } else {
                        showSimpleAlert(baseFragment, LocaleController.getString("ErrorOccurred", C3301R.string.ErrorOccurred));
                    }
                } else if (tLObject instanceof TLRPC$TL_contacts_importContacts) {
                    if (str.startsWith("FLOOD_WAIT")) {
                        showSimpleAlert(baseFragment, LocaleController.getString("FloodWait", C3301R.string.FloodWait));
                    } else {
                        showSimpleAlert(baseFragment, LocaleController.getString("ErrorOccurred", C3301R.string.ErrorOccurred) + "\n" + tLRPC$TL_error.text);
                    }
                } else if ((tLObject instanceof TLRPC$TL_account_getPassword) || (tLObject instanceof TLRPC$TL_account_getTmpPassword)) {
                    if (str.startsWith("FLOOD_WAIT")) {
                        showSimpleToast(baseFragment, getFloodWaitString(tLRPC$TL_error.text));
                    } else {
                        showSimpleToast(baseFragment, tLRPC$TL_error.text);
                    }
                } else if (tLObject instanceof TLRPC$TL_payments_sendPaymentForm) {
                    str.hashCode();
                    if (str.equals("BOT_PRECHECKOUT_FAILED")) {
                        showSimpleToast(baseFragment, LocaleController.getString("PaymentPrecheckoutFailed", C3301R.string.PaymentPrecheckoutFailed));
                    } else if (str.equals("PAYMENT_FAILED")) {
                        showSimpleToast(baseFragment, LocaleController.getString("PaymentFailed", C3301R.string.PaymentFailed));
                    } else {
                        showSimpleToast(baseFragment, tLRPC$TL_error.text);
                    }
                } else if (tLObject instanceof TLRPC$TL_payments_validateRequestedInfo) {
                    str.hashCode();
                    if (str.equals("SHIPPING_NOT_AVAILABLE")) {
                        showSimpleToast(baseFragment, LocaleController.getString("PaymentNoShippingMethod", C3301R.string.PaymentNoShippingMethod));
                    } else {
                        showSimpleToast(baseFragment, tLRPC$TL_error.text);
                    }
                }
            }
        }
        return null;
    }

    public static Toast showSimpleToast(BaseFragment baseFragment, String str) {
        Context context;
        if (str == null) {
            return null;
        }
        if (baseFragment != null && baseFragment.getParentActivity() != null) {
            context = baseFragment.getParentActivity();
        } else {
            context = ApplicationLoader.applicationContext;
        }
        Toast makeText = Toast.makeText(context, str, 1);
        makeText.show();
        return makeText;
    }

    public static AlertDialog showUpdateAppAlert(final Context context, String str, boolean z) {
        if (context == null || str == null) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getString("AppName", C3301R.string.AppName));
        builder.setMessage(str);
        builder.setPositiveButton(LocaleController.getString("OK", C3301R.string.OK), null);
        if (z) {
            builder.setNegativeButton(LocaleController.getString("UpdateApp", C3301R.string.UpdateApp), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda9
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    AlertsCreator.lambda$showUpdateAppAlert$30(context, dialogInterface, i);
                }
            });
        }
        return builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showUpdateAppAlert$30(Context context, DialogInterface dialogInterface, int i) {
        Browser.openUrl(context, BuildVars.PLAYSTORE_APP_URL);
    }

    public static AlertDialog.Builder createLanguageAlert(final LaunchActivity launchActivity, final TLRPC$TL_langPackLanguage tLRPC$TL_langPackLanguage) {
        String formatString;
        int i;
        if (tLRPC$TL_langPackLanguage == null) {
            return null;
        }
        tLRPC$TL_langPackLanguage.lang_code = tLRPC$TL_langPackLanguage.lang_code.replace('-', '_').toLowerCase();
        tLRPC$TL_langPackLanguage.plural_code = tLRPC$TL_langPackLanguage.plural_code.replace('-', '_').toLowerCase();
        String str = tLRPC$TL_langPackLanguage.base_lang_code;
        if (str != null) {
            tLRPC$TL_langPackLanguage.base_lang_code = str.replace('-', '_').toLowerCase();
        }
        final AlertDialog.Builder builder = new AlertDialog.Builder(launchActivity);
        if (LocaleController.getInstance().getCurrentLocaleInfo().shortName.equals(tLRPC$TL_langPackLanguage.lang_code)) {
            builder.setTitle(LocaleController.getString("Language", C3301R.string.Language));
            formatString = LocaleController.formatString("LanguageSame", C3301R.string.LanguageSame, tLRPC$TL_langPackLanguage.name);
            builder.setNegativeButton(LocaleController.getString("OK", C3301R.string.OK), null);
            builder.setNeutralButton(LocaleController.getString("SETTINGS", C3301R.string.SETTINGS), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda45
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    AlertsCreator.lambda$createLanguageAlert$31(LaunchActivity.this, dialogInterface, i2);
                }
            });
        } else if (tLRPC$TL_langPackLanguage.strings_count == 0) {
            builder.setTitle(LocaleController.getString("LanguageUnknownTitle", C3301R.string.LanguageUnknownTitle));
            formatString = LocaleController.formatString("LanguageUnknownCustomAlert", C3301R.string.LanguageUnknownCustomAlert, tLRPC$TL_langPackLanguage.name);
            builder.setNegativeButton(LocaleController.getString("OK", C3301R.string.OK), null);
        } else {
            builder.setTitle(LocaleController.getString("LanguageTitle", C3301R.string.LanguageTitle));
            if (tLRPC$TL_langPackLanguage.official) {
                formatString = LocaleController.formatString("LanguageAlert", C3301R.string.LanguageAlert, tLRPC$TL_langPackLanguage.name, Integer.valueOf((int) Math.ceil((tLRPC$TL_langPackLanguage.translated_count / tLRPC$TL_langPackLanguage.strings_count) * 100.0f)));
            } else {
                formatString = LocaleController.formatString("LanguageCustomAlert", C3301R.string.LanguageCustomAlert, tLRPC$TL_langPackLanguage.name, Integer.valueOf((int) Math.ceil((tLRPC$TL_langPackLanguage.translated_count / tLRPC$TL_langPackLanguage.strings_count) * 100.0f)));
            }
            builder.setPositiveButton(LocaleController.getString("Change", C3301R.string.Change), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda33
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    AlertsCreator.lambda$createLanguageAlert$32(TLRPC$TL_langPackLanguage.this, launchActivity, dialogInterface, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(formatString));
        int indexOf = TextUtils.indexOf((CharSequence) spannableStringBuilder, '[');
        if (indexOf != -1) {
            int i2 = indexOf + 1;
            i = TextUtils.indexOf((CharSequence) spannableStringBuilder, ']', i2);
            if (i != -1) {
                spannableStringBuilder.delete(i, i + 1);
                spannableStringBuilder.delete(indexOf, i2);
            }
        } else {
            i = -1;
        }
        if (indexOf != -1 && i != -1) {
            spannableStringBuilder.setSpan(new URLSpanNoUnderline(tLRPC$TL_langPackLanguage.translations_url) { // from class: org.telegram.ui.Components.AlertsCreator.2
                @Override // org.telegram.p048ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
                public void onClick(View view) {
                    builder.getDismissRunnable().run();
                    super.onClick(view);
                }
            }, indexOf, i - 1, 33);
        }
        TextView textView = new TextView(launchActivity);
        textView.setText(spannableStringBuilder);
        textView.setTextSize(1, 16.0f);
        textView.setLinkTextColor(Theme.getColor("dialogTextLink"));
        textView.setHighlightColor(Theme.getColor("dialogLinkSelection"));
        textView.setPadding(AndroidUtilities.m50dp(23), 0, AndroidUtilities.m50dp(23), 0);
        textView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        builder.setView(textView);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createLanguageAlert$31(LaunchActivity launchActivity, DialogInterface dialogInterface, int i) {
        launchActivity.lambda$runLinkRequest$86(new LanguageSelectActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createLanguageAlert$32(TLRPC$TL_langPackLanguage tLRPC$TL_langPackLanguage, LaunchActivity launchActivity, DialogInterface dialogInterface, int i) {
        String str;
        if (tLRPC$TL_langPackLanguage.official) {
            str = "remote_" + tLRPC$TL_langPackLanguage.lang_code;
        } else {
            str = "unofficial_" + tLRPC$TL_langPackLanguage.lang_code;
        }
        LocaleController.LocaleInfo languageFromDict = LocaleController.getInstance().getLanguageFromDict(str);
        if (languageFromDict == null) {
            languageFromDict = new LocaleController.LocaleInfo();
            languageFromDict.name = tLRPC$TL_langPackLanguage.native_name;
            languageFromDict.nameEnglish = tLRPC$TL_langPackLanguage.name;
            languageFromDict.shortName = tLRPC$TL_langPackLanguage.lang_code;
            languageFromDict.baseLangCode = tLRPC$TL_langPackLanguage.base_lang_code;
            languageFromDict.pluralLangCode = tLRPC$TL_langPackLanguage.plural_code;
            languageFromDict.isRtl = tLRPC$TL_langPackLanguage.rtl;
            if (tLRPC$TL_langPackLanguage.official) {
                languageFromDict.pathToFile = "remote";
            } else {
                languageFromDict.pathToFile = "unofficial";
            }
        }
        LocaleController.getInstance().applyLanguage(languageFromDict, true, false, false, true, UserConfig.selectedAccount, null);
        launchActivity.rebuildAllFragments(true);
    }

    public static boolean checkSlowMode(Context context, int i, long j, boolean z) {
        TLRPC$Chat chat;
        if (!DialogObject.isChatDialog(j) || (chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j))) == null || !chat.slowmode_enabled || ChatObject.hasAdminRights(chat)) {
            return false;
        }
        if (!z) {
            TLRPC$ChatFull chatFull = MessagesController.getInstance(i).getChatFull(chat.f1500id);
            if (chatFull == null) {
                chatFull = MessagesStorage.getInstance(i).loadChatInfo(chat.f1500id, ChatObject.isChannel(chat), new CountDownLatch(1), false, false);
            }
            if (chatFull != null && chatFull.slowmode_next_send_date >= ConnectionsManager.getInstance(i).getCurrentTime()) {
                z = true;
            }
        }
        if (z) {
            createSimpleAlert(context, chat.title, LocaleController.getString("SlowmodeSendError", C3301R.string.SlowmodeSendError)).show();
            return true;
        }
        return false;
    }

    public static AlertDialog.Builder createNoAccessAlert(Context context, String str, String str2, Theme.ResourcesProvider resourcesProvider) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        HashMap hashMap = new HashMap();
        hashMap.put("info1.**", Integer.valueOf(Theme.getColor("dialogTopBackground", resourcesProvider)));
        hashMap.put("info2.**", Integer.valueOf(Theme.getColor("dialogTopBackground", resourcesProvider)));
        builder.setTopAnimation(C3301R.C3306raw.not_available, 52, false, Theme.getColor("dialogTopBackground", resourcesProvider), hashMap);
        builder.setTopAnimationIsNew(true);
        builder.setPositiveButton(LocaleController.getString(C3301R.string.Close), null);
        builder.setMessage(str2);
        return builder;
    }

    public static AlertDialog.Builder createSimpleAlert(Context context, String str) {
        return createSimpleAlert(context, null, str);
    }

    public static AlertDialog.Builder createSimpleAlert(Context context, String str, String str2) {
        return createSimpleAlert(context, str, str2, null);
    }

    public static AlertDialog.Builder createSimpleAlert(Context context, String str, String str2, Theme.ResourcesProvider resourcesProvider) {
        return createSimpleAlert(context, str, str2, null, null, resourcesProvider);
    }

    public static AlertDialog.Builder createSimpleAlert(Context context, String str, String str2, String str3, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        if (context == null || str2 == null) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        if (str == null) {
            str = LocaleController.getString("AppName", C3301R.string.AppName);
        }
        builder.setTitle(str);
        builder.setMessage(str2);
        if (str3 == null) {
            builder.setPositiveButton(LocaleController.getString("OK", C3301R.string.OK), null);
        } else {
            builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
            builder.setPositiveButton(str3, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda16
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    AlertsCreator.lambda$createSimpleAlert$33(runnable, dialogInterface, i);
                }
            });
        }
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createSimpleAlert$33(Runnable runnable, DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static Dialog showSimpleAlert(BaseFragment baseFragment, String str) {
        return showSimpleAlert(baseFragment, null, str);
    }

    public static Dialog showSimpleAlert(BaseFragment baseFragment, String str, String str2) {
        return showSimpleAlert(baseFragment, str, str2, null);
    }

    public static Dialog showSimpleAlert(BaseFragment baseFragment, String str, String str2, Theme.ResourcesProvider resourcesProvider) {
        if (str2 == null || baseFragment == null || baseFragment.getParentActivity() == null) {
            return null;
        }
        AlertDialog create = createSimpleAlert(baseFragment.getParentActivity(), str, str2, resourcesProvider).create();
        baseFragment.showDialog(create);
        return create;
    }

    public static void showBlockReportSpamReplyAlert(final ChatActivity chatActivity, final MessageObject messageObject, long j, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        if (chatActivity == null || chatActivity.getParentActivity() == null || messageObject == null) {
            return;
        }
        final AccountInstance accountInstance = chatActivity.getAccountInstance();
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        TLRPC$User user = i > 0 ? accountInstance.getMessagesController().getUser(Long.valueOf(j)) : null;
        final TLRPC$Chat chat = i < 0 ? accountInstance.getMessagesController().getChat(Long.valueOf(-j)) : null;
        if (user == null && chat == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(chatActivity.getParentActivity(), resourcesProvider);
        builder.setDimEnabled(runnable == null);
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda56
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.lambda$showBlockReportSpamReplyAlert$34(runnable, dialogInterface);
            }
        });
        builder.setTitle(LocaleController.getString("BlockUser", C3301R.string.BlockUser));
        if (user != null) {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserReplyAlert", C3301R.string.BlockUserReplyAlert, UserObject.getFirstName(user))));
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserReplyAlert", C3301R.string.BlockUserReplyAlert, chat.title)));
        }
        LinearLayout linearLayout = new LinearLayout(chatActivity.getParentActivity());
        linearLayout.setOrientation(1);
        final CheckBoxCell[] checkBoxCellArr = {new CheckBoxCell(chatActivity.getParentActivity(), 1, resourcesProvider)};
        checkBoxCellArr[0].setBackgroundDrawable(Theme.getSelectorDrawable(false));
        checkBoxCellArr[0].setTag(0);
        checkBoxCellArr[0].setText(LocaleController.getString("DeleteReportSpam", C3301R.string.DeleteReportSpam), "", true, false);
        checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.m50dp(16) : AndroidUtilities.m50dp(8), 0, LocaleController.isRTL ? AndroidUtilities.m50dp(8) : AndroidUtilities.m50dp(16), 0);
        linearLayout.addView(checkBoxCellArr[0], LayoutHelper.createLinear(-1, -2));
        checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda86
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.lambda$showBlockReportSpamReplyAlert$35(checkBoxCellArr, view);
            }
        });
        builder.setView(linearLayout);
        final TLRPC$User tLRPC$User = user;
        builder.setPositiveButton(LocaleController.getString("BlockAndDeleteReplies", C3301R.string.BlockAndDeleteReplies), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda34
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                AlertsCreator.lambda$showBlockReportSpamReplyAlert$37(TLRPC$User.this, accountInstance, chatActivity, chat, messageObject, checkBoxCellArr, resourcesProvider, dialogInterface, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        AlertDialog create = builder.create();
        chatActivity.showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor("dialogTextRed"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBlockReportSpamReplyAlert$34(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBlockReportSpamReplyAlert$35(CheckBoxCell[] checkBoxCellArr, View view) {
        Integer num = (Integer) view.getTag();
        checkBoxCellArr[num.intValue()].setChecked(!checkBoxCellArr[num.intValue()].isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBlockReportSpamReplyAlert$37(TLRPC$User tLRPC$User, final AccountInstance accountInstance, ChatActivity chatActivity, TLRPC$Chat tLRPC$Chat, MessageObject messageObject, CheckBoxCell[] checkBoxCellArr, Theme.ResourcesProvider resourcesProvider, DialogInterface dialogInterface, int i) {
        UndoView undoView;
        if (tLRPC$User != null) {
            accountInstance.getMessagesStorage().deleteUserChatHistory(chatActivity.getDialogId(), tLRPC$User.f1640id);
        } else {
            accountInstance.getMessagesStorage().deleteUserChatHistory(chatActivity.getDialogId(), -tLRPC$Chat.f1500id);
        }
        TLRPC$TL_contacts_blockFromReplies tLRPC$TL_contacts_blockFromReplies = new TLRPC$TL_contacts_blockFromReplies();
        tLRPC$TL_contacts_blockFromReplies.msg_id = messageObject.getId();
        tLRPC$TL_contacts_blockFromReplies.delete_message = true;
        tLRPC$TL_contacts_blockFromReplies.delete_history = true;
        if (checkBoxCellArr[0].isChecked()) {
            tLRPC$TL_contacts_blockFromReplies.report_spam = true;
            if (chatActivity.getParentActivity() != null && (undoView = chatActivity.getUndoView()) != null) {
                undoView.showWithAction(0L, 74, (Runnable) null);
            }
        }
        accountInstance.getConnectionsManager().sendRequest(tLRPC$TL_contacts_blockFromReplies, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda124
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                AlertsCreator.lambda$showBlockReportSpamReplyAlert$36(AccountInstance.this, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBlockReportSpamReplyAlert$36(AccountInstance accountInstance, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$Updates) {
            accountInstance.getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void showBlockReportSpamAlert(org.telegram.p048ui.ActionBar.BaseFragment r17, final long r18, final org.telegram.tgnet.TLRPC$User r20, final org.telegram.tgnet.TLRPC$Chat r21, final org.telegram.tgnet.TLRPC$EncryptedChat r22, final boolean r23, org.telegram.tgnet.TLRPC$ChatFull r24, final org.telegram.messenger.MessagesStorage.IntCallback r25, org.telegram.p048ui.ActionBar.Theme.ResourcesProvider r26) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.AlertsCreator.showBlockReportSpamAlert(org.telegram.ui.ActionBar.BaseFragment, long, org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$EncryptedChat, boolean, org.telegram.tgnet.TLRPC$ChatFull, org.telegram.messenger.MessagesStorage$IntCallback, org.telegram.ui.ActionBar.Theme$ResourcesProvider):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBlockReportSpamAlert$38(CheckBoxCell[] checkBoxCellArr, View view) {
        Integer num = (Integer) view.getTag();
        checkBoxCellArr[num.intValue()].setChecked(!checkBoxCellArr[num.intValue()].isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBlockReportSpamAlert$39(TLRPC$User tLRPC$User, AccountInstance accountInstance, CheckBoxCell[] checkBoxCellArr, long j, TLRPC$Chat tLRPC$Chat, TLRPC$EncryptedChat tLRPC$EncryptedChat, boolean z, MessagesStorage.IntCallback intCallback, DialogInterface dialogInterface, int i) {
        if (tLRPC$User != null) {
            accountInstance.getMessagesController().blockPeer(tLRPC$User.f1640id);
        }
        if (checkBoxCellArr == null || (checkBoxCellArr[0] != null && checkBoxCellArr[0].isChecked())) {
            accountInstance.getMessagesController().reportSpam(j, tLRPC$User, tLRPC$Chat, tLRPC$EncryptedChat, tLRPC$Chat != null && z);
        }
        if (checkBoxCellArr == null || checkBoxCellArr[1].isChecked()) {
            if (tLRPC$Chat != null) {
                if (ChatObject.isNotInChat(tLRPC$Chat)) {
                    accountInstance.getMessagesController().deleteDialog(j, 0);
                } else {
                    accountInstance.getMessagesController().deleteParticipantFromChat(-j, accountInstance.getMessagesController().getUser(Long.valueOf(accountInstance.getUserConfig().getClientUserId())));
                }
            } else {
                accountInstance.getMessagesController().deleteDialog(j, 0);
            }
            intCallback.run(1);
            return;
        }
        intCallback.run(0);
    }

    public static void showCustomNotificationsDialog(BaseFragment baseFragment, long j, int i, int i2, ArrayList<NotificationsSettingsActivity.NotificationException> arrayList, int i3, MessagesStorage.IntCallback intCallback) {
        showCustomNotificationsDialog(baseFragment, j, i, i2, arrayList, i3, intCallback, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v3 */
    public static void showCustomNotificationsDialog(final BaseFragment baseFragment, final long j, final int i, final int i2, final ArrayList<NotificationsSettingsActivity.NotificationException> arrayList, final int i3, final MessagesStorage.IntCallback intCallback, final MessagesStorage.IntCallback intCallback2) {
        int i4;
        final AlertDialog.Builder builder;
        int[] iArr;
        LinearLayout linearLayout;
        int i5;
        Drawable drawable;
        boolean z;
        boolean z2;
        String[] strArr;
        boolean z3;
        int i6;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        boolean isGlobalNotificationsEnabled = NotificationsController.getInstance(i3).isGlobalNotificationsEnabled(j);
        int i7 = 5;
        String[] strArr2 = new String[5];
        boolean z4 = false;
        strArr2[0] = LocaleController.getString("NotificationsTurnOn", C3301R.string.NotificationsTurnOn);
        int i8 = C3301R.string.MuteFor;
        ?? r8 = 1;
        strArr2[1] = LocaleController.formatString("MuteFor", i8, LocaleController.formatPluralString("Hours", 1, new Object[0]));
        strArr2[2] = LocaleController.formatString("MuteFor", i8, LocaleController.formatPluralString("Days", 2, new Object[0]));
        Drawable drawable2 = null;
        strArr2[3] = (j == 0 && (baseFragment instanceof NotificationsCustomSettingsActivity)) ? null : LocaleController.getString("NotificationsCustomize", C3301R.string.NotificationsCustomize);
        int i9 = 4;
        strArr2[4] = LocaleController.getString("NotificationsTurnOff", C3301R.string.NotificationsTurnOff);
        int[] iArr2 = {C3301R.C3303drawable.notifications_on, C3301R.C3303drawable.notifications_mute1h, C3301R.C3303drawable.notifications_mute2d, C3301R.C3303drawable.notifications_settings, C3301R.C3303drawable.notifications_off};
        LinearLayout linearLayout2 = new LinearLayout(baseFragment.getParentActivity());
        linearLayout2.setOrientation(1);
        AlertDialog.Builder builder2 = new AlertDialog.Builder(baseFragment.getParentActivity());
        int i10 = 0;
        LinearLayout linearLayout3 = linearLayout2;
        while (i10 < i7) {
            if (strArr2[i10] == null) {
                i4 = i10;
                builder = builder2;
                iArr = iArr2;
                linearLayout = linearLayout3;
                i5 = i9;
                drawable = drawable2;
                z = r8;
                z2 = z4;
                strArr = strArr2;
                i6 = i7;
                z3 = isGlobalNotificationsEnabled;
            } else {
                TextView textView = new TextView(baseFragment.getParentActivity());
                Drawable drawable3 = baseFragment.getParentActivity().getResources().getDrawable(iArr2[i10]);
                if (i10 == i9) {
                    textView.setTextColor(Theme.getColor("dialogTextRed"));
                    drawable3.setColorFilter(new PorterDuffColorFilter(Theme.getColor("dialogRedIcon"), PorterDuff.Mode.MULTIPLY));
                } else {
                    textView.setTextColor(Theme.getColor("dialogTextBlack"));
                    drawable3.setColorFilter(new PorterDuffColorFilter(Theme.getColor("dialogIcon"), PorterDuff.Mode.MULTIPLY));
                }
                textView.setTextSize(r8, 16.0f);
                textView.setLines(r8);
                textView.setMaxLines(r8);
                textView.setCompoundDrawablesWithIntrinsicBounds(drawable3, drawable2, drawable2, drawable2);
                textView.setTag(Integer.valueOf(i10));
                textView.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                textView.setPadding(AndroidUtilities.m50dp(24), 0, AndroidUtilities.m50dp(24), 0);
                textView.setSingleLine(r8);
                textView.setGravity(19);
                textView.setCompoundDrawablePadding(AndroidUtilities.m50dp(26));
                textView.setText(strArr2[i10]);
                linearLayout3.addView(textView, LayoutHelper.createLinear(-1, 48, 51));
                i4 = i10;
                builder = builder2;
                iArr = iArr2;
                final boolean z5 = isGlobalNotificationsEnabled;
                linearLayout = linearLayout3;
                i5 = 4;
                drawable = drawable2;
                z = r8;
                z2 = false;
                strArr = strArr2;
                z3 = isGlobalNotificationsEnabled;
                i6 = 5;
                textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda62
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AlertsCreator.lambda$showCustomNotificationsDialog$40(j, i3, z5, i, intCallback2, i2, baseFragment, arrayList, intCallback, builder, view);
                    }
                });
            }
            i10 = i4 + 1;
            linearLayout3 = linearLayout;
            i7 = i6;
            i9 = i5;
            builder2 = builder;
            iArr2 = iArr;
            drawable2 = drawable;
            r8 = z;
            z4 = z2;
            strArr2 = strArr;
            isGlobalNotificationsEnabled = z3;
        }
        AlertDialog.Builder builder3 = builder2;
        builder3.setTitle(LocaleController.getString("Notifications", C3301R.string.Notifications));
        builder3.setView(linearLayout3);
        baseFragment.showDialog(builder3.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$showCustomNotificationsDialog$40(long r17, int r19, boolean r20, int r21, org.telegram.messenger.MessagesStorage.IntCallback r22, int r23, org.telegram.p048ui.ActionBar.BaseFragment r24, java.util.ArrayList r25, org.telegram.messenger.MessagesStorage.IntCallback r26, org.telegram.p048ui.ActionBar.AlertDialog.Builder r27, android.view.View r28) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.AlertsCreator.lambda$showCustomNotificationsDialog$40(long, int, boolean, int, org.telegram.messenger.MessagesStorage$IntCallback, int, org.telegram.ui.ActionBar.BaseFragment, java.util.ArrayList, org.telegram.messenger.MessagesStorage$IntCallback, org.telegram.ui.ActionBar.AlertDialog$Builder, android.view.View):void");
    }

    public static AlertDialog showSecretLocationAlert(Context context, int i, final Runnable runnable, boolean z, Theme.ResourcesProvider resourcesProvider) {
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        int i2 = MessagesController.getInstance(i).availableMapProviders;
        if ((i2 & 1) != 0) {
            arrayList.add(LocaleController.getString("MapPreviewProviderTelegram", C3301R.string.MapPreviewProviderTelegram));
            arrayList2.add(0);
        }
        if ((i2 & 2) != 0) {
            arrayList.add(LocaleController.getString("MapPreviewProviderGoogle", C3301R.string.MapPreviewProviderGoogle));
            arrayList2.add(1);
        }
        if ((i2 & 4) != 0) {
            arrayList.add(LocaleController.getString("MapPreviewProviderYandex", C3301R.string.MapPreviewProviderYandex));
            arrayList2.add(3);
        }
        arrayList.add(LocaleController.getString("MapPreviewProviderNobody", C3301R.string.MapPreviewProviderNobody));
        arrayList2.add(2);
        final AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString("MapPreviewProviderTitle", C3301R.string.MapPreviewProviderTitle));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        builder.setView(linearLayout);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            RadioColorCell radioColorCell = new RadioColorCell(context, resourcesProvider);
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setTag(Integer.valueOf(i3));
            radioColorCell.setCheckColor(Theme.getColor("radioBackground"), Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue((CharSequence) arrayList.get(i3), SharedConfig.mapPreviewType == ((Integer) arrayList2.get(i3)).intValue());
            radioColorCell.setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21"), 2));
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda65
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$showSecretLocationAlert$41(arrayList2, runnable, builder, view);
                }
            });
        }
        if (!z) {
            builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        }
        AlertDialog show = builder.show();
        if (z) {
            show.setCanceledOnTouchOutside(false);
        }
        return show;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSecretLocationAlert$41(ArrayList arrayList, Runnable runnable, AlertDialog.Builder builder, View view) {
        SharedConfig.setSecretMapPreviewType(((Integer) arrayList.get(((Integer) view.getTag()).intValue())).intValue());
        if (runnable != null) {
            runnable.run();
        }
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateDayPicker(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(2, numberPicker2.getValue());
        calendar.set(1, numberPicker3.getValue());
        numberPicker.setMinValue(1);
        numberPicker.setMaxValue(calendar.getActualMaximum(5));
    }

    private static void checkPickerDate(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i = 1;
        int i2 = calendar.get(1);
        int i3 = calendar.get(2);
        int i4 = calendar.get(5);
        numberPicker3.setMinValue(i2);
        int value = numberPicker3.getValue();
        numberPicker2.setMinValue(value == i2 ? i3 : 0);
        int value2 = numberPicker2.getValue();
        if (value == i2 && value2 == i3) {
            i = i4;
        }
        numberPicker.setMinValue(i);
    }

    public static void showOpenUrlAlert(BaseFragment baseFragment, String str, boolean z, boolean z2) {
        showOpenUrlAlert(baseFragment, str, z, true, z2, null, null);
    }

    public static void showOpenUrlAlert(BaseFragment baseFragment, String str, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        showOpenUrlAlert(baseFragment, str, z, true, z2, null, resourcesProvider);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void showOpenUrlAlert(final org.telegram.p048ui.ActionBar.BaseFragment r15, final java.lang.String r16, boolean r17, final boolean r18, boolean r19, final org.telegram.messenger.browser.Browser.Progress r20, org.telegram.p048ui.ActionBar.Theme.ResourcesProvider r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.AlertsCreator.showOpenUrlAlert(org.telegram.ui.ActionBar.BaseFragment, java.lang.String, boolean, boolean, boolean, org.telegram.messenger.browser.Browser$Progress, org.telegram.ui.ActionBar.Theme$ResourcesProvider, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showOpenUrlAlert$42(BaseFragment baseFragment, String str, long j, boolean z, Browser.Progress progress, DialogInterface dialogInterface, int i) {
        Browser.openUrl(baseFragment.getParentActivity(), Uri.parse(str), j == 0, z, progress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showOpenUrlAlert$43(String str, DialogInterface dialogInterface, int i) {
        ContextExtKt.copyToClipboard(str, LocaleController.getString("LinkCopied", C3301R.string.LinkCopied));
    }

    public static AlertDialog createSupportAlert(final BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        URLSpan[] uRLSpanArr;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return null;
        }
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        SpannableString spannableString = new SpannableString(Html.fromHtml(LocaleController.getString("AskAQuestionInfo", C3301R.string.AskAQuestionInfo).replace("\n", "<br>")));
        for (URLSpan uRLSpan : (URLSpan[]) spannableString.getSpans(0, spannableString.length(), URLSpan.class)) {
            int spanStart = spannableString.getSpanStart(uRLSpan);
            int spanEnd = spannableString.getSpanEnd(uRLSpan);
            spannableString.removeSpan(uRLSpan);
            spannableString.setSpan(new URLSpanNoUnderline(uRLSpan.getURL()) { // from class: org.telegram.ui.Components.AlertsCreator.3
                @Override // org.telegram.p048ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
                public void onClick(View view) {
                    baseFragment.dismissCurrentDialog();
                    super.onClick(view);
                }
            }, spanStart, spanEnd, 0);
        }
        linksTextView.setText(spannableString);
        linksTextView.setTextSize(1, 16.0f);
        linksTextView.setLinkTextColor(Theme.getColor("dialogTextLink", resourcesProvider));
        linksTextView.setHighlightColor(Theme.getColor("dialogLinkSelection", resourcesProvider));
        linksTextView.setPadding(AndroidUtilities.m50dp(23), 0, AndroidUtilities.m50dp(23), 0);
        linksTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        linksTextView.setTextColor(Theme.getColor("dialogTextBlack", resourcesProvider));
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), resourcesProvider);
        builder.setView(linksTextView);
        builder.setTitle(LocaleController.getString("AskAQuestion", C3301R.string.AskAQuestion));
        builder.setPositiveButton(LocaleController.getString("AskButton", C3301R.string.AskButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda37
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.performAskAQuestion(BaseFragment.this);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void performAskAQuestion(final BaseFragment baseFragment) {
        String string;
        final int currentAccount = baseFragment.getCurrentAccount();
        final SharedPreferences mainSettings = MessagesController.getMainSettings(currentAccount);
        long prefIntOrLong = AndroidUtilities.getPrefIntOrLong(mainSettings, "support_id2", 0L);
        TLRPC$User tLRPC$User = null;
        if (prefIntOrLong != 0) {
            TLRPC$User user = MessagesController.getInstance(currentAccount).getUser(Long.valueOf(prefIntOrLong));
            if (user == null && (string = mainSettings.getString("support_user", null)) != null) {
                try {
                    byte[] decode = Base64.decode(string, 0);
                    if (decode != null) {
                        SerializedData serializedData = new SerializedData(decode);
                        TLRPC$User TLdeserialize = TLRPC$User.TLdeserialize(serializedData, serializedData.readInt32(false), false);
                        if (TLdeserialize != null && TLdeserialize.f1640id == 333000) {
                            TLdeserialize = null;
                        }
                        serializedData.cleanup();
                        tLRPC$User = TLdeserialize;
                    }
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            tLRPC$User = user;
        }
        if (tLRPC$User == null) {
            final AlertDialog alertDialog = new AlertDialog(baseFragment.getParentActivity(), 3);
            alertDialog.setCanCancel(false);
            alertDialog.show();
            ConnectionsManager.getInstance(currentAccount).sendRequest(new TLObject() { // from class: org.telegram.tgnet.TLRPC$TL_help_getSupport
                public static int constructor = -1663104819;

                @Override // org.telegram.tgnet.TLObject
                public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
                    return TLRPC$TL_help_support.TLdeserialize(abstractSerializedData, i, z);
                }

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                    abstractSerializedData.writeInt32(constructor);
                }
            }, new RequestDelegate() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda122
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    AlertsCreator.lambda$performAskAQuestion$47(mainSettings, alertDialog, currentAccount, baseFragment, tLObject, tLRPC$TL_error);
                }
            });
            return;
        }
        MessagesController.getInstance(currentAccount).putUser(tLRPC$User, true);
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", tLRPC$User.f1640id);
        baseFragment.presentFragment(new ChatActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$performAskAQuestion$47(final SharedPreferences sharedPreferences, final AlertDialog alertDialog, final int i, final BaseFragment baseFragment, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            final TLRPC$TL_help_support tLRPC$TL_help_support = (TLRPC$TL_help_support) tLObject;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda109
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.lambda$performAskAQuestion$45(sharedPreferences, tLRPC$TL_help_support, alertDialog, i, baseFragment);
                }
            });
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda110
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.lambda$performAskAQuestion$46(AlertDialog.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$performAskAQuestion$45(SharedPreferences sharedPreferences, TLRPC$TL_help_support tLRPC$TL_help_support, AlertDialog alertDialog, int i, BaseFragment baseFragment) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putLong("support_id2", tLRPC$TL_help_support.user.f1640id);
        SerializedData serializedData = new SerializedData();
        tLRPC$TL_help_support.user.serializeToStream(serializedData);
        edit.putString("support_user", Base64.encodeToString(serializedData.toByteArray(), 0));
        edit.commit();
        serializedData.cleanup();
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        ArrayList<TLRPC$User> arrayList = new ArrayList<>();
        arrayList.add(tLRPC$TL_help_support.user);
        MessagesStorage.getInstance(i).putUsersAndChats(arrayList, null, true, true);
        MessagesController.getInstance(i).putUser(tLRPC$TL_help_support.user, false);
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", tLRPC$TL_help_support.user.f1640id);
        baseFragment.presentFragment(new ChatActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$performAskAQuestion$46(AlertDialog alertDialog) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public static void createImportDialogAlert(BaseFragment baseFragment, String str, String str2, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, final Runnable runnable) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (tLRPC$Chat == null && tLRPC$User == null) {
            return;
        }
        int currentAccount = baseFragment.getCurrentAccount();
        Activity parentActivity = baseFragment.getParentActivity();
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity);
        long clientUserId = UserConfig.getInstance(currentAccount).getClientUserId();
        TextView textView = new TextView(parentActivity);
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        FrameLayout frameLayout = new FrameLayout(parentActivity);
        builder.setView(frameLayout);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setTextSize(AndroidUtilities.m50dp(12));
        BackupImageView backupImageView = new BackupImageView(parentActivity);
        backupImageView.setRoundRadius(AndroidUtilities.m50dp(20));
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(40, 40, (LocaleController.isRTL ? 5 : 3) | 48, 22, 5, 22, 0));
        TextView textView2 = new TextView(parentActivity);
        textView2.setTextColor(Theme.getColor("actionBarDefaultSubmenuItem"));
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setText(LocaleController.getString("ImportMessages", C3301R.string.ImportMessages));
        boolean z = LocaleController.isRTL;
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2, (z ? 5 : 3) | 48, z ? 21 : 76, 11, z ? 76 : 21, 0));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 24, 57, 24, 9));
        if (tLRPC$Chat != null && ChatObject.isTemplatesChat(currentAccount, tLRPC$Chat.f1500id)) {
            avatarDrawable.setScaleSize(0.8f);
            avatarDrawable.setAvatarType(101);
            backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, tLRPC$Chat);
        } else if (tLRPC$User != null) {
            if (UserObject.isReplyUser(tLRPC$User)) {
                avatarDrawable.setScaleSize(0.8f);
                avatarDrawable.setAvatarType(12);
                backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, tLRPC$User);
            } else if (tLRPC$User.f1640id == clientUserId) {
                avatarDrawable.setScaleSize(0.8f);
                avatarDrawable.setAvatarType(1);
                backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, tLRPC$User);
            } else {
                avatarDrawable.setScaleSize(1.0f);
                avatarDrawable.setInfo(tLRPC$User);
                backupImageView.setForUserOrChat(tLRPC$User, avatarDrawable);
            }
        } else {
            avatarDrawable.setInfo(tLRPC$Chat);
            backupImageView.setForUserOrChat(tLRPC$Chat, avatarDrawable);
        }
        textView.setText(AndroidUtilities.replaceTags(str2));
        builder.setPositiveButton(LocaleController.getString("Import", C3301R.string.Import), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda15
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$createImportDialogAlert$48(runnable, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        baseFragment.showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createImportDialogAlert$48(Runnable runnable, DialogInterface dialogInterface, int i) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void createClearOrDeleteDialogAlert(BaseFragment baseFragment, boolean z, TLRPC$Chat tLRPC$Chat, TLRPC$User tLRPC$User, boolean z2, boolean z3, MessagesStorage.BooleanCallback booleanCallback) {
        createClearOrDeleteDialogAlert(baseFragment, z, false, false, tLRPC$Chat, tLRPC$User, z2, false, z3, booleanCallback, null);
    }

    public static void createClearOrDeleteDialogAlert(BaseFragment baseFragment, boolean z, TLRPC$Chat tLRPC$Chat, TLRPC$User tLRPC$User, boolean z2, boolean z3, boolean z4, MessagesStorage.BooleanCallback booleanCallback, Theme.ResourcesProvider resourcesProvider) {
        createClearOrDeleteDialogAlert(baseFragment, z, tLRPC$Chat != null && tLRPC$Chat.creator, false, tLRPC$Chat, tLRPC$User, z2, z3, z4, booleanCallback, resourcesProvider);
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x0289, code lost:
        if (r2 != false) goto L85;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void createClearOrDeleteDialogAlert(final org.telegram.p048ui.ActionBar.BaseFragment r35, final boolean r36, final boolean r37, final boolean r38, final org.telegram.tgnet.TLRPC$Chat r39, final org.telegram.tgnet.TLRPC$User r40, final boolean r41, final boolean r42, final boolean r43, final org.telegram.messenger.MessagesStorage.BooleanCallback r44, final org.telegram.p048ui.ActionBar.Theme.ResourcesProvider r45) {
        /*
            Method dump skipped, instructions count: 1651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.AlertsCreator.createClearOrDeleteDialogAlert(org.telegram.ui.ActionBar.BaseFragment, boolean, boolean, boolean, org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$User, boolean, boolean, boolean, org.telegram.messenger.MessagesStorage$BooleanCallback, org.telegram.ui.ActionBar.Theme$ResourcesProvider):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createClearOrDeleteDialogAlert$49(boolean[] zArr, View view) {
        zArr[0] = !zArr[0];
        ((CheckBoxCell) view).setChecked(zArr[0], true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createClearOrDeleteDialogAlert$51(boolean z, boolean z2, boolean z3, final TLRPC$User tLRPC$User, final BaseFragment baseFragment, final boolean z4, final boolean z5, final TLRPC$Chat tLRPC$Chat, final boolean z6, final boolean z7, final MessagesStorage.BooleanCallback booleanCallback, final Theme.ResourcesProvider resourcesProvider, final boolean[] zArr, DialogInterface dialogInterface, int i) {
        boolean z8 = false;
        if (!z && !z2 && !z3) {
            if (UserObject.isUserSelf(tLRPC$User)) {
                createClearOrDeleteDialogAlert(baseFragment, z4, z5, true, tLRPC$Chat, tLRPC$User, false, z6, z7, booleanCallback, resourcesProvider);
                return;
            } else if (tLRPC$User != null && zArr[0]) {
                MessagesStorage.getInstance(baseFragment.getCurrentAccount()).getMessagesCount(tLRPC$User.f1640id, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda121
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i2) {
                        AlertsCreator.lambda$createClearOrDeleteDialogAlert$50(BaseFragment.this, z4, z5, tLRPC$Chat, tLRPC$User, z6, z7, booleanCallback, resourcesProvider, zArr, i2);
                    }
                });
                return;
            }
        }
        if (booleanCallback != null) {
            booleanCallback.run((z2 || zArr[0]) ? true : true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createClearOrDeleteDialogAlert$50(BaseFragment baseFragment, boolean z, boolean z2, TLRPC$Chat tLRPC$Chat, TLRPC$User tLRPC$User, boolean z3, boolean z4, MessagesStorage.BooleanCallback booleanCallback, Theme.ResourcesProvider resourcesProvider, boolean[] zArr, int i) {
        if (i >= 50) {
            createClearOrDeleteDialogAlert(baseFragment, z, z2, true, tLRPC$Chat, tLRPC$User, false, z3, z4, booleanCallback, resourcesProvider);
        } else if (booleanCallback != null) {
            booleanCallback.run(zArr[0]);
        }
    }

    public static void createClearDaysDialogAlert(BaseFragment baseFragment, int i, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, boolean z, final MessagesStorage.BooleanCallback booleanCallback, Theme.ResourcesProvider resourcesProvider) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (tLRPC$User == null && tLRPC$Chat == null) {
            return;
        }
        int currentAccount = baseFragment.getCurrentAccount();
        Activity parentActivity = baseFragment.getParentActivity();
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity, resourcesProvider);
        long clientUserId = UserConfig.getInstance(currentAccount).getClientUserId();
        final CheckBoxCell[] checkBoxCellArr = new CheckBoxCell[1];
        TextView textView = new TextView(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.6
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        NotificationCenter.listenEmojiLoading(textView);
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.7
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                if (checkBoxCellArr[0] != null) {
                    setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + checkBoxCellArr[0].getMeasuredHeight());
                }
            }
        };
        builder.setView(frameLayout);
        TextView textView2 = new TextView(parentActivity);
        textView2.setTextColor(Theme.getColor("actionBarDefaultSubmenuItem"));
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2, (LocaleController.isRTL ? 5 : 3) | 48, 24, 11, 24, 0));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 24, 48, 24, 18));
        if (i == -1) {
            textView2.setText(LocaleController.formatString("ClearHistory", C3301R.string.ClearHistory, new Object[0]));
            if (tLRPC$User != null) {
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithUser", C3301R.string.AreYouSureClearHistoryWithUser, UserObject.getUserName(tLRPC$User))));
            } else if (z) {
                if (ChatObject.isChannelAndNotMegaGroup(tLRPC$Chat)) {
                    textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithChannel", C3301R.string.AreYouSureClearHistoryWithChannel, tLRPC$Chat.title)));
                } else {
                    textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithChat", C3301R.string.AreYouSureClearHistoryWithChat, tLRPC$Chat.title)));
                }
            } else if (tLRPC$Chat.megagroup) {
                textView.setText(LocaleController.getString("AreYouSureClearHistoryGroup", C3301R.string.AreYouSureClearHistoryGroup));
            } else {
                textView.setText(LocaleController.getString("AreYouSureClearHistoryChannel", C3301R.string.AreYouSureClearHistoryChannel));
            }
        } else {
            textView2.setText(LocaleController.formatPluralString("DeleteDays", i, new Object[0]));
            textView.setText(LocaleController.getString("DeleteHistoryByDaysMessage", C3301R.string.DeleteHistoryByDaysMessage));
        }
        final boolean[] zArr = {false};
        if (tLRPC$Chat != null && z && ChatObject.isPublic(tLRPC$Chat)) {
            zArr[0] = true;
        }
        if ((tLRPC$User != null && tLRPC$User.f1640id != clientUserId) || (tLRPC$Chat != null && z && !ChatObject.isPublic(tLRPC$Chat) && !ChatObject.isChannelAndNotMegaGroup(tLRPC$Chat))) {
            checkBoxCellArr[0] = new CheckBoxCell(parentActivity, 1, resourcesProvider);
            checkBoxCellArr[0].setBackgroundDrawable(Theme.getSelectorDrawable(false));
            if (tLRPC$Chat != null) {
                checkBoxCellArr[0].setText(LocaleController.getString("DeleteMessagesOptionAlsoChat", C3301R.string.DeleteMessagesOptionAlsoChat), "", false, false);
            } else {
                checkBoxCellArr[0].setText(LocaleController.formatString("DeleteMessagesOptionAlso", C3301R.string.DeleteMessagesOptionAlso, UserObject.getFirstName(tLRPC$User)), "", false, false);
            }
            checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.m50dp(16) : AndroidUtilities.m50dp(8), 0, LocaleController.isRTL ? AndroidUtilities.m50dp(8) : AndroidUtilities.m50dp(16), 0);
            frameLayout.addView(checkBoxCellArr[0], LayoutHelper.createFrame(-1, 48, 83, 0, 0, 0, 0));
            checkBoxCellArr[0].setChecked(false, false);
            zArr[0] = baseFragment.getToolsController().isRevokeByDefault();
            checkBoxCellArr[0].setChecked(zArr[0], false);
            checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda90
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createClearDaysDialogAlert$53(zArr, view);
                }
            });
        }
        CharSequence string = LocaleController.getString("Delete", C3301R.string.Delete);
        if (tLRPC$Chat != null && z && ChatObject.isPublic(tLRPC$Chat) && !ChatObject.isChannelAndNotMegaGroup(tLRPC$Chat)) {
            string = LocaleController.getString("ClearForAll", C3301R.string.ClearForAll);
        }
        builder.setPositiveButton(string, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda29
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                AlertsCreator.lambda$createClearDaysDialogAlert$54(MessagesStorage.BooleanCallback.this, zArr, dialogInterface, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        AlertDialog create = builder.create();
        baseFragment.showDialog(create);
        TextView textView3 = (TextView) create.getButton(-1);
        if (textView3 != null) {
            textView3.setTextColor(Theme.getColor("dialogTextRed"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createClearDaysDialogAlert$53(boolean[] zArr, View view) {
        zArr[0] = !zArr[0];
        ((CheckBoxCell) view).setChecked(zArr[0], true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createClearDaysDialogAlert$54(MessagesStorage.BooleanCallback booleanCallback, boolean[] zArr, DialogInterface dialogInterface, int i) {
        booleanCallback.run(zArr[0]);
    }

    public static void createCallDialogAlert(final BaseFragment baseFragment, final TLRPC$User tLRPC$User, final boolean z) {
        String string;
        String formatString;
        if (baseFragment == null || baseFragment.getParentActivity() == null || tLRPC$User == null || UserObject.isDeleted(tLRPC$User) || UserConfig.getInstance(baseFragment.getCurrentAccount()).getClientUserId() == tLRPC$User.f1640id) {
            return;
        }
        baseFragment.getCurrentAccount();
        Activity parentActivity = baseFragment.getParentActivity();
        FrameLayout frameLayout = new FrameLayout(parentActivity);
        if (z) {
            string = LocaleController.getString("VideoCallAlertTitle", C3301R.string.VideoCallAlertTitle);
            formatString = LocaleController.formatString("VideoCallAlert", C3301R.string.VideoCallAlert, UserObject.getUserName(tLRPC$User));
        } else {
            string = LocaleController.getString("CallAlertTitle", C3301R.string.CallAlertTitle);
            formatString = LocaleController.formatString("CallAlert", C3301R.string.CallAlert, UserObject.getUserName(tLRPC$User));
        }
        TextView textView = new TextView(parentActivity) { // from class: org.telegram.ui.Components.AlertsCreator.8
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        NotificationCenter.listenEmojiLoading(textView);
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        textView.setText(AndroidUtilities.replaceTags(formatString));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setTextSize(AndroidUtilities.m50dp(12));
        avatarDrawable.setScaleSize(1.0f);
        avatarDrawable.setInfo(tLRPC$User);
        BackupImageView backupImageView = new BackupImageView(parentActivity);
        backupImageView.setRoundRadius(AndroidUtilities.m50dp(20));
        backupImageView.setForUserOrChat(tLRPC$User, avatarDrawable);
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(40, 40, (LocaleController.isRTL ? 5 : 3) | 48, 22, 5, 22, 0));
        TextView textView2 = new TextView(parentActivity);
        textView2.setTextColor(Theme.getColor("actionBarDefaultSubmenuItem"));
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setLines(1);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setText(string);
        boolean z2 = LocaleController.isRTL;
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 48, z2 ? 21 : 76, 11, z2 ? 76 : 21, 0));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 24, 57, 24, 9));
        baseFragment.showDialog(new AlertDialog.Builder(parentActivity).setView(frameLayout).setPositiveButton(LocaleController.getString("Call", C3301R.string.Call), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda42
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$createCallDialogAlert$55(BaseFragment.this, tLRPC$User, z, dialogInterface, i);
            }
        }).setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createCallDialogAlert$55(BaseFragment baseFragment, TLRPC$User tLRPC$User, boolean z, DialogInterface dialogInterface, int i) {
        TLRPC$UserFull userFull = baseFragment.getMessagesController().getUserFull(tLRPC$User.f1640id);
        VoIPHelper.startCall(tLRPC$User, z, userFull != null && userFull.video_calls_available, baseFragment.getParentActivity(), userFull, baseFragment.getAccountInstance());
    }

    public static void createChangeBioAlert(String str, final long j, final Context context, final int i) {
        int i2;
        String str2;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        int i3 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        builder.setTitle(i3 > 0 ? LocaleController.getString("UserBio", C3301R.string.UserBio) : LocaleController.getString("DescriptionPlaceholder", C3301R.string.DescriptionPlaceholder));
        if (i3 > 0) {
            i2 = C3301R.string.VoipGroupBioEditAlertText;
            str2 = "VoipGroupBioEditAlertText";
        } else {
            i2 = C3301R.string.DescriptionInfo;
            str2 = "DescriptionInfo";
        }
        builder.setMessage(LocaleController.getString(str2, i2));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setClipChildren(false);
        if (i3 < 0) {
            long j2 = -j;
            if (MessagesController.getInstance(i).getChatFull(j2) == null) {
                MessagesController.getInstance(i).loadFullChat(j2, ConnectionsManager.generateClassGuid(), true);
            }
        }
        final NumberTextView numberTextView = new NumberTextView(context);
        final EditText editText = new EditText(context);
        editText.setTextColor(Theme.getColor("voipgroup_actionBarItems"));
        editText.setHint(i3 > 0 ? LocaleController.getString("UserBio", C3301R.string.UserBio) : LocaleController.getString("DescriptionPlaceholder", C3301R.string.DescriptionPlaceholder));
        editText.setTextSize(1, 16.0f);
        editText.setBackground(Theme.createEditTextDrawable(context, true));
        editText.setMaxLines(4);
        editText.setRawInputType(147457);
        editText.setImeOptions(6);
        InputFilter[] inputFilterArr = new InputFilter[1];
        final int i4 = i3 > 0 ? 70 : 255;
        inputFilterArr[0] = new CodepointsLengthInputFilter(i4) { // from class: org.telegram.ui.Components.AlertsCreator.9
            @Override // org.telegram.p048ui.Components.CodepointsLengthInputFilter, android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i5, int i6, Spanned spanned, int i7, int i8) {
                CharSequence filter = super.filter(charSequence, i5, i6, spanned, i7, i8);
                if (filter != null && charSequence != null && filter.length() != charSequence.length()) {
                    Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
                    if (vibrator != null) {
                        vibrator.vibrate(200L);
                    }
                    AndroidUtilities.shakeView(numberTextView);
                }
                return filter;
            }
        };
        editText.setFilters(inputFilterArr);
        numberTextView.setCenterAlign(true);
        numberTextView.setTextSize(15);
        numberTextView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText4"));
        numberTextView.setImportantForAccessibility(2);
        frameLayout.addView(numberTextView, LayoutHelper.createFrame(20, 20, LocaleController.isRTL ? 3 : 5, 0, 14, 21, 0));
        editText.setPadding(LocaleController.isRTL ? AndroidUtilities.m50dp(24) : 0, AndroidUtilities.m50dp(8), LocaleController.isRTL ? 0 : AndroidUtilities.m50dp(24), AndroidUtilities.m50dp(8));
        editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.AlertsCreator.10
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int codePointCount = i4 - Character.codePointCount(editable, 0, editable.length());
                if (codePointCount < 30) {
                    NumberTextView numberTextView2 = numberTextView;
                    numberTextView2.setNumber(codePointCount, numberTextView2.getVisibility() == 0);
                    AndroidUtilities.updateViewVisibilityAnimated(numberTextView, true);
                    return;
                }
                AndroidUtilities.updateViewVisibilityAnimated(numberTextView, false);
            }
        });
        AndroidUtilities.updateViewVisibilityAnimated(numberTextView, false, BitmapDescriptorFactory.HUE_RED, false);
        editText.setText(str);
        editText.setSelection(editText.getText().toString().length());
        builder.setView(frameLayout);
        final DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i5) {
                AlertsCreator.lambda$createChangeBioAlert$57(j, i, editText, dialogInterface, i5);
            }
        };
        builder.setPositiveButton(LocaleController.getString("Save", C3301R.string.Save), onClickListener);
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda53
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AndroidUtilities.hideKeyboard(editText);
            }
        });
        frameLayout.addView(editText, LayoutHelper.createFrame(-1, -2, 0, 23, 12, 23, 21));
        editText.requestFocus();
        AndroidUtilities.showKeyboard(editText);
        final AlertDialog create = builder.create();
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda105
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
                boolean lambda$createChangeBioAlert$59;
                lambda$createChangeBioAlert$59 = AlertsCreator.lambda$createChangeBioAlert$59(j, create, onClickListener, textView, i5, keyEvent);
                return lambda$createChangeBioAlert$59;
            }
        });
        create.setBackgroundColor(Theme.getColor("voipgroup_dialogBackground"));
        create.show();
        create.setTextColor(Theme.getColor("voipgroup_actionBarItems"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createChangeBioAlert$57(long j, int i, EditText editText, DialogInterface dialogInterface, int i2) {
        if (j > 0) {
            TLRPC$UserFull userFull = MessagesController.getInstance(i).getUserFull(UserConfig.getInstance(i).getClientUserId());
            String trim = editText.getText().toString().replace("\n", " ").replaceAll(" +", " ").trim();
            if (userFull != null) {
                String str = userFull.about;
                if ((str != null ? str : "").equals(trim)) {
                    AndroidUtilities.hideKeyboard(editText);
                    dialogInterface.dismiss();
                    return;
                }
                userFull.about = trim;
                NotificationCenter.getInstance(i).postNotificationName(NotificationCenter.userInfoDidLoad, Long.valueOf(j), userFull);
            }
            TLRPC$TL_account_updateProfile tLRPC$TL_account_updateProfile = new TLRPC$TL_account_updateProfile();
            tLRPC$TL_account_updateProfile.about = trim;
            tLRPC$TL_account_updateProfile.flags |= 4;
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.showBulletin, 2, Long.valueOf(j));
            ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_account_updateProfile, AlertsCreator$$ExternalSyntheticLambda128.INSTANCE, 2);
        } else {
            long j2 = -j;
            TLRPC$ChatFull chatFull = MessagesController.getInstance(i).getChatFull(j2);
            String obj = editText.getText().toString();
            if (chatFull != null) {
                String str2 = chatFull.about;
                if ((str2 != null ? str2 : "").equals(obj)) {
                    AndroidUtilities.hideKeyboard(editText);
                    dialogInterface.dismiss();
                    return;
                }
                chatFull.about = obj;
                NotificationCenter notificationCenter = NotificationCenter.getInstance(i);
                int i3 = NotificationCenter.chatInfoDidLoad;
                Boolean bool = Boolean.FALSE;
                notificationCenter.postNotificationName(i3, chatFull, 0, bool, bool);
            }
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.showBulletin, 2, Long.valueOf(j));
            MessagesController.getInstance(i).updateChatAbout(j2, obj, chatFull);
        }
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createChangeBioAlert$59(long j, AlertDialog alertDialog, DialogInterface.OnClickListener onClickListener, TextView textView, int i, KeyEvent keyEvent) {
        if ((i == 6 || (j > 0 && keyEvent.getKeyCode() == 66)) && alertDialog.isShowing()) {
            onClickListener.onClick(alertDialog, 0);
            return true;
        }
        return false;
    }

    public static void createChangeNameAlert(final long j, Context context, final int i) {
        String str;
        String str2;
        int i2;
        String str3;
        final EditText editText;
        if (DialogObject.isUserDialog(j)) {
            TLRPC$User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            str = user.first_name;
            str2 = user.last_name;
        } else {
            str = MessagesController.getInstance(i).getChat(Long.valueOf(-j)).title;
            str2 = null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        int i3 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i3 > 0) {
            i2 = C3301R.string.VoipEditName;
            str3 = "VoipEditName";
        } else {
            i2 = C3301R.string.VoipEditTitle;
            str3 = "VoipEditTitle";
        }
        builder.setTitle(LocaleController.getString(str3, i2));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        final EditText editText2 = new EditText(context);
        editText2.setTextColor(Theme.getColor("voipgroup_actionBarItems"));
        editText2.setTextSize(1, 16.0f);
        editText2.setMaxLines(1);
        editText2.setLines(1);
        editText2.setSingleLine(true);
        editText2.setGravity(LocaleController.isRTL ? 5 : 3);
        editText2.setInputType(49152);
        editText2.setImeOptions(i3 > 0 ? 5 : 6);
        editText2.setHint(i3 > 0 ? LocaleController.getString("FirstName", C3301R.string.FirstName) : LocaleController.getString("VoipEditTitleHint", C3301R.string.VoipEditTitleHint));
        editText2.setBackground(Theme.createEditTextDrawable(context, true));
        editText2.setPadding(0, AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8));
        editText2.requestFocus();
        if (i3 > 0) {
            EditText editText3 = new EditText(context);
            editText3.setTextColor(Theme.getColor("voipgroup_actionBarItems"));
            editText3.setTextSize(1, 16.0f);
            editText3.setMaxLines(1);
            editText3.setLines(1);
            editText3.setSingleLine(true);
            editText3.setGravity(LocaleController.isRTL ? 5 : 3);
            editText3.setInputType(49152);
            editText3.setImeOptions(6);
            editText3.setHint(LocaleController.getString("LastName", C3301R.string.LastName));
            editText3.setBackground(Theme.createEditTextDrawable(context, true));
            editText3.setPadding(0, AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8));
            editText = editText3;
        } else {
            editText = null;
        }
        AndroidUtilities.showKeyboard(editText2);
        linearLayout.addView(editText2, LayoutHelper.createLinear(-1, -2, 0, 23, 12, 23, 21));
        if (editText != null) {
            linearLayout.addView(editText, LayoutHelper.createLinear(-1, -2, 0, 23, 12, 23, 21));
        }
        editText2.setText(str);
        editText2.setSelection(editText2.getText().toString().length());
        if (editText != null) {
            editText.setText(str2);
            editText.setSelection(editText.getText().toString().length());
        }
        builder.setView(linearLayout);
        final EditText editText4 = editText;
        final DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda14
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                AlertsCreator.lambda$createChangeNameAlert$61(editText2, j, i, editText4, dialogInterface, i4);
            }
        };
        builder.setPositiveButton(LocaleController.getString("Save", C3301R.string.Save), onClickListener);
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda54
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.lambda$createChangeNameAlert$62(editText2, editText, dialogInterface);
            }
        });
        final AlertDialog create = builder.create();
        create.setBackgroundColor(Theme.getColor("voipgroup_dialogBackground"));
        create.show();
        create.setTextColor(Theme.getColor("voipgroup_actionBarItems"));
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda106
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                boolean lambda$createChangeNameAlert$63;
                lambda$createChangeNameAlert$63 = AlertsCreator.lambda$createChangeNameAlert$63(AlertDialog.this, onClickListener, textView, i4, keyEvent);
                return lambda$createChangeNameAlert$63;
            }
        };
        if (editText != null) {
            editText.setOnEditorActionListener(onEditorActionListener);
        } else {
            editText2.setOnEditorActionListener(onEditorActionListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createChangeNameAlert$61(EditText editText, long j, int i, EditText editText2, DialogInterface dialogInterface, int i2) {
        if (editText.getText() == null) {
            return;
        }
        if (j > 0) {
            TLRPC$User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            String obj = editText.getText().toString();
            String obj2 = editText2.getText().toString();
            String str = user.first_name;
            String str2 = user.last_name;
            if (str == null) {
                str = "";
            }
            if (str2 == null) {
                str2 = "";
            }
            if (str.equals(obj) && str2.equals(obj2)) {
                dialogInterface.dismiss();
                return;
            }
            TLRPC$TL_account_updateProfile tLRPC$TL_account_updateProfile = new TLRPC$TL_account_updateProfile();
            tLRPC$TL_account_updateProfile.flags = 3;
            tLRPC$TL_account_updateProfile.first_name = obj;
            user.first_name = obj;
            tLRPC$TL_account_updateProfile.last_name = obj2;
            user.last_name = obj2;
            TLRPC$User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(UserConfig.getInstance(i).getClientUserId()));
            if (user2 != null) {
                user2.first_name = tLRPC$TL_account_updateProfile.first_name;
                user2.last_name = tLRPC$TL_account_updateProfile.last_name;
            }
            UserConfig.getInstance(i).saveConfig(true);
            NotificationCenter.getInstance(i).postNotificationName(NotificationCenter.mainUserInfoChanged, new Object[0]);
            NotificationCenter.getInstance(i).postNotificationName(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_NAME));
            ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_account_updateProfile, AlertsCreator$$ExternalSyntheticLambda129.INSTANCE);
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.showBulletin, 3, Long.valueOf(j));
        } else {
            long j2 = -j;
            TLRPC$Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(j2));
            String obj3 = editText.getText().toString();
            String str3 = chat.title;
            if (str3 != null && str3.equals(obj3)) {
                dialogInterface.dismiss();
                return;
            }
            chat.title = obj3;
            NotificationCenter.getInstance(i).postNotificationName(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_CHAT_NAME));
            MessagesController.getInstance(i).changeChatTitle(j2, obj3);
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.showBulletin, 3, Long.valueOf(j));
        }
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createChangeNameAlert$62(EditText editText, EditText editText2, DialogInterface dialogInterface) {
        AndroidUtilities.hideKeyboard(editText);
        AndroidUtilities.hideKeyboard(editText2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createChangeNameAlert$63(AlertDialog alertDialog, DialogInterface.OnClickListener onClickListener, TextView textView, int i, KeyEvent keyEvent) {
        if ((i == 6 || keyEvent.getKeyCode() == 66) && alertDialog.isShowing()) {
            onClickListener.onClick(alertDialog, 0);
            return true;
        }
        return false;
    }

    public static void showChatWithAdmin(BaseFragment baseFragment, TLRPC$User tLRPC$User, String str, boolean z, int i) {
        int i2;
        String str2;
        if (baseFragment.getParentActivity() == null) {
            return;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(baseFragment.getParentActivity());
        if (z) {
            i2 = C3301R.string.ChatWithAdminChannelTitle;
            str2 = "ChatWithAdminChannelTitle";
        } else {
            i2 = C3301R.string.ChatWithAdminGroupTitle;
            str2 = "ChatWithAdminGroupTitle";
        }
        builder.setTitle(LocaleController.getString(str2, i2), true);
        LinearLayout linearLayout = new LinearLayout(baseFragment.getParentActivity());
        linearLayout.setOrientation(1);
        TextView textView = new TextView(baseFragment.getParentActivity());
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -1, 0, 24, 16, 24, 24));
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        textView.setTextSize(1, 16.0f);
        textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("ChatWithAdminMessage", C3301R.string.ChatWithAdminMessage, str, LocaleController.formatDateAudio(i, false))));
        TextView textView2 = new TextView(baseFragment.getParentActivity());
        textView2.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
        textView2.setGravity(17);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setText(LocaleController.getString("IUnderstand", C3301R.string.IUnderstand));
        textView2.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(6), Theme.getColor("featuredStickers_addButton"), Theme.getColor("featuredStickers_addButtonPressed")));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 0, 24, 15, 16, 24));
        builder.setCustomView(linearLayout);
        final BottomSheet show = builder.show();
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda73
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BottomSheet.this.dismiss();
            }
        });
    }

    public static void createContactInviteDialog(final BaseFragment baseFragment, String str, String str2, final String str3) {
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString("ContactNotRegisteredTitle", C3301R.string.ContactNotRegisteredTitle));
        builder.setMessage(LocaleController.formatString("ContactNotRegistered", C3301R.string.ContactNotRegistered, ContactsController.formatName(str, str2)));
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("Invite", C3301R.string.Invite), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda21
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$createContactInviteDialog$65(str3, baseFragment, dialogInterface, i);
            }
        });
        baseFragment.showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createContactInviteDialog$65(String str, BaseFragment baseFragment, DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.fromParts("sms", str, null));
            intent.putExtra("sms_body", ContactsController.getInstance(baseFragment.getCurrentAccount()).getInviteText(1));
            baseFragment.getParentActivity().startActivityForResult(intent, 500);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public static ActionBarPopupWindow createSimplePopup(BaseFragment baseFragment, View view, View view2, float f, float f2) {
        if (baseFragment == null || view2 == null || view == null) {
            return null;
        }
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(view, -2, -2);
        actionBarPopupWindow.setPauseNotifications(true);
        actionBarPopupWindow.setDismissAnimationDuration(220);
        actionBarPopupWindow.setOutsideTouchable(true);
        actionBarPopupWindow.setClippingEnabled(true);
        actionBarPopupWindow.setAnimationStyle(C3301R.style.PopupContextAnimation);
        actionBarPopupWindow.setFocusable(true);
        view.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE));
        actionBarPopupWindow.setInputMethodMode(2);
        actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
        float f3 = BitmapDescriptorFactory.HUE_RED;
        View view3 = view2;
        float f4 = 0.0f;
        while (view3 != view2.getRootView()) {
            f3 += view3.getX();
            f4 += view3.getY();
            view3 = (View) view3.getParent();
            if (view3 == null) {
                break;
            }
        }
        actionBarPopupWindow.showAtLocation(view2.getRootView(), 0, (int) ((f3 + f) - (view.getMeasuredWidth() / 2.0f)), (int) ((f4 + f2) - (view.getMeasuredHeight() / 2.0f)));
        actionBarPopupWindow.dimBehind();
        return actionBarPopupWindow;
    }

    public static void checkRestrictedInviteUsers(final int i, final TLRPC$Chat tLRPC$Chat, TLRPC$Updates tLRPC$Updates) {
        TLRPC$User user;
        if (tLRPC$Updates == null || tLRPC$Updates.updates == null || tLRPC$Chat == null) {
            return;
        }
        final ArrayList arrayList = null;
        for (int i2 = 0; i2 < tLRPC$Updates.updates.size(); i2++) {
            if ((tLRPC$Updates.updates.get(i2) instanceof TLRPC$TL_updateGroupInvitePrivacyForbidden) && (user = MessagesController.getInstance(i).getUser(Long.valueOf(((TLRPC$TL_updateGroupInvitePrivacyForbidden) tLRPC$Updates.updates.get(i2)).user_id))) != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(user);
            }
        }
        if (arrayList != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda108
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.lambda$checkRestrictedInviteUsers$66(i, tLRPC$Chat, arrayList);
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkRestrictedInviteUsers$66(int i, TLRPC$Chat tLRPC$Chat, ArrayList arrayList) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null || lastFragment.getParentActivity() == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(lastFragment, lastFragment.getParentActivity(), 11, i);
        limitReachedBottomSheet.setRestrictedUsers(tLRPC$Chat, arrayList);
        limitReachedBottomSheet.show();
    }

    public static void createBlockDialogAlert(BaseFragment baseFragment, int i, boolean z, TLRPC$User tLRPC$User, final BlockDialogCallback blockDialogCallback) {
        String string;
        int i2;
        String str;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (i == 1 && tLRPC$User == null) {
            return;
        }
        Activity parentActivity = baseFragment.getParentActivity();
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity);
        CheckBoxCell[] checkBoxCellArr = new CheckBoxCell[2];
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        builder.setView(linearLayout);
        if (i == 1) {
            String formatName = ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name);
            builder.setTitle(LocaleController.formatString("BlockUserTitle", C3301R.string.BlockUserTitle, formatName));
            string = LocaleController.getString("BlockUser", C3301R.string.BlockUser);
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUserMessage", C3301R.string.BlockUserMessage, formatName)));
        } else {
            builder.setTitle(LocaleController.formatString("BlockUserTitle", C3301R.string.BlockUserTitle, LocaleController.formatPluralString("UsersCountTitle", i, new Object[0])));
            string = LocaleController.getString("BlockUsers", C3301R.string.BlockUsers);
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BlockUsersMessage", C3301R.string.BlockUsersMessage, LocaleController.formatPluralString("UsersCount", i, new Object[0]))));
        }
        final boolean[] zArr = {true, true};
        final int i3 = 0;
        for (int i4 = 2; i3 < i4; i4 = 2) {
            if (i3 != 0 || z) {
                checkBoxCellArr[i3] = new CheckBoxCell(parentActivity, 1);
                checkBoxCellArr[i3].setBackgroundDrawable(Theme.getSelectorDrawable(false));
                if (i3 == 0) {
                    checkBoxCellArr[i3].setText(LocaleController.getString("ReportSpamTitle", C3301R.string.ReportSpamTitle), "", true, false);
                } else {
                    CheckBoxCell checkBoxCell = checkBoxCellArr[i3];
                    if (i == 1) {
                        i2 = C3301R.string.DeleteThisChatBothSides;
                        str = "DeleteThisChatBothSides";
                    } else {
                        i2 = C3301R.string.DeleteTheseChatsBothSides;
                        str = "DeleteTheseChatsBothSides";
                    }
                    checkBoxCell.setText(LocaleController.getString(str, i2), "", true, false);
                }
                checkBoxCellArr[i3].setPadding(LocaleController.isRTL ? AndroidUtilities.m50dp(16) : AndroidUtilities.m50dp(8), 0, LocaleController.isRTL ? AndroidUtilities.m50dp(8) : AndroidUtilities.m50dp(16), 0);
                linearLayout.addView(checkBoxCellArr[i3], LayoutHelper.createLinear(-1, 48));
                checkBoxCellArr[i3].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda94
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AlertsCreator.lambda$createBlockDialogAlert$67(zArr, i3, view);
                    }
                });
            }
            i3++;
        }
        builder.setPositiveButton(string, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda43
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i5) {
                AlertsCreator.lambda$createBlockDialogAlert$68(AlertsCreator.BlockDialogCallback.this, zArr, dialogInterface, i5);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        AlertDialog create = builder.create();
        baseFragment.showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor("dialogTextRed"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createBlockDialogAlert$67(boolean[] zArr, int i, View view) {
        zArr[i] = !zArr[i];
        ((CheckBoxCell) view).setChecked(zArr[i], true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createBlockDialogAlert$68(BlockDialogCallback blockDialogCallback, boolean[] zArr, DialogInterface dialogInterface, int i) {
        blockDialogCallback.run(zArr[0], zArr[1]);
    }

    public static AlertDialog.Builder createDatePickerDialog(Context context, int i, int i2, int i3, int i4, int i5, int i6, String str, final boolean z, final DatePickerDelegate datePickerDelegate) {
        if (context == null) {
            return null;
        }
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setWeightSum(1.0f);
        final NumberPicker numberPicker = new NumberPicker(context);
        final NumberPicker numberPicker2 = new NumberPicker(context);
        final NumberPicker numberPicker3 = new NumberPicker(context);
        linearLayout.addView(numberPicker2, LayoutHelper.createLinear(0, -2, 0.3f));
        numberPicker2.setOnScrollListener(new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda154
            @Override // org.telegram.p048ui.Components.NumberPicker.OnScrollListener
            public final void onScrollStateChange(NumberPicker numberPicker4, int i7) {
                AlertsCreator.lambda$createDatePickerDialog$69(z, numberPicker2, numberPicker, numberPicker3, numberPicker4, i7);
            }
        });
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(11);
        linearLayout.addView(numberPicker, LayoutHelper.createLinear(0, -2, 0.3f));
        numberPicker.setFormatter(AlertsCreator$$ExternalSyntheticLambda140.INSTANCE);
        numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda162
            @Override // org.telegram.p048ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i7, int i8) {
                AlertsCreator.updateDayPicker(NumberPicker.this, numberPicker, numberPicker3);
            }
        });
        numberPicker.setOnScrollListener(new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda152
            @Override // org.telegram.p048ui.Components.NumberPicker.OnScrollListener
            public final void onScrollStateChange(NumberPicker numberPicker4, int i7) {
                AlertsCreator.lambda$createDatePickerDialog$72(z, numberPicker2, numberPicker, numberPicker3, numberPicker4, i7);
            }
        });
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i7 = calendar.get(1);
        numberPicker3.setMinValue(i7 + i);
        numberPicker3.setMaxValue(i7 + i2);
        numberPicker3.setValue(i7 + i3);
        linearLayout.addView(numberPicker3, LayoutHelper.createLinear(0, -2, 0.4f));
        numberPicker3.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda163
            @Override // org.telegram.p048ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i8, int i9) {
                AlertsCreator.updateDayPicker(NumberPicker.this, numberPicker, numberPicker3);
            }
        });
        numberPicker3.setOnScrollListener(new NumberPicker.OnScrollListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda153
            @Override // org.telegram.p048ui.Components.NumberPicker.OnScrollListener
            public final void onScrollStateChange(NumberPicker numberPicker4, int i8) {
                AlertsCreator.lambda$createDatePickerDialog$74(z, numberPicker2, numberPicker, numberPicker3, numberPicker4, i8);
            }
        });
        updateDayPicker(numberPicker2, numberPicker, numberPicker3);
        if (z) {
            checkPickerDate(numberPicker2, numberPicker, numberPicker3);
        }
        if (i4 != -1) {
            numberPicker2.setValue(i4);
            numberPicker.setValue(i5);
            numberPicker3.setValue(i6);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString("Set", C3301R.string.Set), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda47
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i8) {
                AlertsCreator.lambda$createDatePickerDialog$75(z, numberPicker2, numberPicker, numberPicker3, datePickerDelegate, dialogInterface, i8);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDatePickerDialog$69(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i) {
        if (z && i == 0) {
            checkPickerDate(numberPicker, numberPicker2, numberPicker3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createDatePickerDialog$70(int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(5, 1);
        calendar.set(2, i);
        return calendar.getDisplayName(2, 1, Locale.getDefault());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDatePickerDialog$72(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i) {
        if (z && i == 0) {
            checkPickerDate(numberPicker, numberPicker2, numberPicker3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDatePickerDialog$74(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i) {
        if (z && i == 0) {
            checkPickerDate(numberPicker, numberPicker2, numberPicker3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDatePickerDialog$75(boolean z, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, DatePickerDelegate datePickerDelegate, DialogInterface dialogInterface, int i) {
        if (z) {
            checkPickerDate(numberPicker, numberPicker2, numberPicker3);
        }
        datePickerDelegate.didSelectDate(numberPicker3.getValue(), numberPicker2.getValue(), numberPicker.getValue());
    }

    public static boolean checkScheduleDate(TextView textView, TextView textView2, int i, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        return checkScheduleDate(textView, textView2, 0L, i, numberPicker, numberPicker2, numberPicker3);
    }

    public static boolean checkScheduleDate(TextView textView, TextView textView2, long j, int i, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        long j2;
        int i2;
        int i3;
        int i4;
        boolean z;
        boolean z2;
        String formatPluralString;
        int i5;
        int i6;
        int value = numberPicker.getValue();
        int value2 = numberPicker2.getValue();
        int value3 = numberPicker3.getValue();
        Calendar calendar = Calendar.getInstance();
        long currentTimeMillis = System.currentTimeMillis();
        calendar.setTimeInMillis(currentTimeMillis);
        int i7 = calendar.get(1);
        calendar.get(6);
        if (j > 0) {
            calendar.setTimeInMillis(currentTimeMillis + (j * 1000));
            calendar.set(11, 23);
            calendar.set(12, 59);
            calendar.set(13, 59);
            i3 = 7;
            i4 = 59;
            j2 = calendar.getTimeInMillis();
            i2 = 23;
        } else {
            j2 = j;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        long j3 = currentTimeMillis + 60000;
        calendar.setTimeInMillis(j3);
        int i8 = calendar.get(11);
        int i9 = calendar.get(12);
        calendar.setTimeInMillis(System.currentTimeMillis() + (value * 24 * 3600 * 1000));
        calendar.set(11, value2);
        calendar.set(12, value3);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.setTimeInMillis(timeInMillis);
        numberPicker.setMinValue(0);
        long j4 = j2;
        int i10 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i10 > 0) {
            numberPicker.setMaxValue(i3);
        }
        int value4 = numberPicker.getValue();
        numberPicker2.setMinValue(value4 == 0 ? i8 : 0);
        if (i10 > 0) {
            numberPicker2.setMaxValue(value4 == i3 ? i2 : 23);
        }
        int value5 = numberPicker2.getValue();
        numberPicker3.setMinValue((value4 == 0 && value5 == i8) ? i9 : 0);
        if (i10 > 0) {
            numberPicker3.setMaxValue((value4 == i3 && value5 == i2) ? i4 : 59);
        }
        int value6 = numberPicker3.getValue();
        if (timeInMillis <= j3) {
            calendar.setTimeInMillis(j3);
        } else if (i10 > 0 && timeInMillis > j4) {
            calendar.setTimeInMillis(j4);
        }
        int i11 = calendar.get(1);
        calendar.setTimeInMillis(System.currentTimeMillis() + (value4 * 24 * 3600 * 1000));
        calendar.set(11, value5);
        calendar.set(12, value6);
        long timeInMillis2 = calendar.getTimeInMillis();
        if (textView != null) {
            if (value4 == 0) {
                i5 = i;
                i6 = 0;
            } else if (i7 == i11) {
                i5 = i;
                i6 = 1;
            } else {
                i5 = i;
                i6 = 2;
            }
            if (i5 == 1) {
                i6 += 3;
            } else if (i5 == 2) {
                i6 += 6;
            } else if (i5 == 3) {
                i6 += 9;
            }
            textView.setText(LocaleController.getInstance().formatterScheduleSend[i6].format(timeInMillis2));
        }
        if (textView2 != null) {
            int i12 = (int) ((timeInMillis2 - currentTimeMillis) / 1000);
            if (i12 > 86400) {
                z = false;
                formatPluralString = LocaleController.formatPluralString("DaysSchedule", Math.round(i12 / 86400.0f), new Object[0]);
            } else {
                z = false;
                z = false;
                z = false;
                if (i12 >= 3600) {
                    formatPluralString = LocaleController.formatPluralString("HoursSchedule", Math.round(i12 / 3600.0f), new Object[0]);
                } else if (i12 >= 60) {
                    formatPluralString = LocaleController.formatPluralString("MinutesSchedule", Math.round(i12 / 60.0f), new Object[0]);
                } else {
                    formatPluralString = LocaleController.formatPluralString("SecondsSchedule", i12, new Object[0]);
                }
            }
            if (textView2.getTag() != null) {
                int i13 = C3301R.string.VoipChannelScheduleInfo;
                z2 = true;
                Object[] objArr = new Object[1];
                objArr[z ? 1 : 0] = formatPluralString;
                textView2.setText(LocaleController.formatString("VoipChannelScheduleInfo", i13, objArr));
            } else {
                z2 = true;
                int i14 = C3301R.string.VoipGroupScheduleInfo;
                Object[] objArr2 = new Object[1];
                objArr2[z ? 1 : 0] = formatPluralString;
                textView2.setText(LocaleController.formatString("VoipGroupScheduleInfo", i14, objArr2));
            }
        } else {
            z = false;
            z2 = true;
        }
        return timeInMillis - currentTimeMillis > 60000 ? z2 : z;
    }

    /* renamed from: org.telegram.ui.Components.AlertsCreator$ScheduleDatePickerColors */
    /* loaded from: classes6.dex */
    public static class ScheduleDatePickerColors {
        public final int backgroundColor;
        public final int buttonBackgroundColor;
        public final int buttonBackgroundPressedColor;
        public final int buttonTextColor;
        public final int iconColor;
        public final int iconSelectorColor;
        public final int subMenuBackgroundColor;
        public final int subMenuSelectorColor;
        public final int subMenuTextColor;
        public final int textColor;

        private ScheduleDatePickerColors() {
            this((Theme.ResourcesProvider) null);
        }

        private ScheduleDatePickerColors(Theme.ResourcesProvider resourcesProvider) {
            this(resourcesProvider != null ? resourcesProvider.getColorOrDefault("dialogTextBlack") : Theme.getColor("dialogTextBlack"), resourcesProvider != null ? resourcesProvider.getColorOrDefault("dialogBackground") : Theme.getColor("dialogBackground"), resourcesProvider != null ? resourcesProvider.getColorOrDefault("key_sheet_other") : Theme.getColor("key_sheet_other"), resourcesProvider != null ? resourcesProvider.getColorOrDefault("player_actionBarSelector") : Theme.getColor("player_actionBarSelector"), resourcesProvider != null ? resourcesProvider.getColorOrDefault("actionBarDefaultSubmenuItem") : Theme.getColor("actionBarDefaultSubmenuItem"), resourcesProvider != null ? resourcesProvider.getColorOrDefault("actionBarDefaultSubmenuBackground") : Theme.getColor("actionBarDefaultSubmenuBackground"), resourcesProvider != null ? resourcesProvider.getColorOrDefault("listSelectorSDK21") : Theme.getColor("listSelectorSDK21"), resourcesProvider != null ? resourcesProvider.getColorOrDefault("featuredStickers_buttonText") : Theme.getColor("featuredStickers_buttonText"), resourcesProvider != null ? resourcesProvider.getColorOrDefault("featuredStickers_addButton") : Theme.getColor("featuredStickers_addButton"), resourcesProvider != null ? resourcesProvider.getColorOrDefault("featuredStickers_addButtonPressed") : Theme.getColor("featuredStickers_addButtonPressed"));
        }

        public ScheduleDatePickerColors(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            this(i, i2, i3, i4, i5, i6, i7, Theme.getColor("featuredStickers_buttonText"), Theme.getColor("featuredStickers_addButton"), Theme.getColor("featuredStickers_addButtonPressed"));
        }

        public ScheduleDatePickerColors(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.textColor = i;
            this.backgroundColor = i2;
            this.iconColor = i3;
            this.iconSelectorColor = i4;
            this.subMenuTextColor = i5;
            this.subMenuBackgroundColor = i6;
            this.subMenuSelectorColor = i7;
            this.buttonTextColor = i8;
            this.buttonBackgroundColor = i9;
            this.buttonBackgroundPressedColor = i10;
        }
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, ScheduleDatePickerDelegate scheduleDatePickerDelegate, ChatActivity chatActivity) {
        return createScheduleDatePickerDialog(context, j, -1L, scheduleDatePickerDelegate, (Runnable) null, chatActivity);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Theme.ResourcesProvider resourcesProvider, ChatActivity chatActivity) {
        return createScheduleDatePickerDialog(context, j, -1L, scheduleDatePickerDelegate, null, resourcesProvider, chatActivity);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, ScheduleDatePickerDelegate scheduleDatePickerDelegate, ScheduleDatePickerColors scheduleDatePickerColors, ChatActivity chatActivity) {
        return createScheduleDatePickerDialog(context, j, -1L, scheduleDatePickerDelegate, null, scheduleDatePickerColors, null, chatActivity);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Runnable runnable, Theme.ResourcesProvider resourcesProvider, ChatActivity chatActivity) {
        return createScheduleDatePickerDialog(context, j, -1L, scheduleDatePickerDelegate, runnable, resourcesProvider, chatActivity);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, long j2, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Runnable runnable, ChatActivity chatActivity) {
        return createScheduleDatePickerDialog(context, j, j2, scheduleDatePickerDelegate, runnable, new ScheduleDatePickerColors(), null, chatActivity);
    }

    public static BottomSheet.Builder createScheduleDatePickerDialog(Context context, long j, long j2, ScheduleDatePickerDelegate scheduleDatePickerDelegate, Runnable runnable, Theme.ResourcesProvider resourcesProvider, ChatActivity chatActivity) {
        return createScheduleDatePickerDialog(context, j, j2, scheduleDatePickerDelegate, runnable, new ScheduleDatePickerColors(resourcesProvider), resourcesProvider, chatActivity);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.telegram.p048ui.ActionBar.BottomSheet.Builder createScheduleDatePickerDialog(android.content.Context r34, long r35, long r37, final org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate r39, final java.lang.Runnable r40, final org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerColors r41, org.telegram.p048ui.ActionBar.Theme.ResourcesProvider r42, org.telegram.p048ui.ChatActivity r43) {
        /*
            Method dump skipped, instructions count: 986
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.AlertsCreator.createScheduleDatePickerDialog(android.content.Context, long, long, org.telegram.ui.Components.AlertsCreator$ScheduleDatePickerDelegate, java.lang.Runnable, org.telegram.ui.Components.AlertsCreator$ScheduleDatePickerColors, org.telegram.ui.ActionBar.Theme$ResourcesProvider, org.telegram.ui.ChatActivity):org.telegram.ui.ActionBar.BottomSheet$Builder");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createScheduleDatePickerDialog$78(ActionBarMenuItem actionBarMenuItem, ScheduleDatePickerColors scheduleDatePickerColors, View view) {
        actionBarMenuItem.toggleSubMenu();
        actionBarMenuItem.setPopupItemsColor(scheduleDatePickerColors.subMenuTextColor, false);
        actionBarMenuItem.setupPopupRadialSelectors(scheduleDatePickerColors.subMenuSelectorColor);
        actionBarMenuItem.redrawPopup(scheduleDatePickerColors.subMenuBackgroundColor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createScheduleDatePickerDialog$79(ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, int i) {
        if (i == 1) {
            scheduleDatePickerDelegate.didSelectDate(true, 2147483646, null);
            builder.getDismissRunnable().run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createScheduleDatePickerDialog$80(long j, Calendar calendar, int i, int i2) {
        if (i2 == 0) {
            return LocaleController.getString("MessageScheduleToday", C3301R.string.MessageScheduleToday);
        }
        long j2 = j + (i2 * 86400000);
        calendar.setTimeInMillis(j2);
        if (calendar.get(1) == i) {
            return LocaleController.getInstance().formatterScheduleDay.format(j2);
        }
        return LocaleController.getInstance().formatterScheduleYear.format(j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createScheduleDatePickerDialog$81(LinearLayout linearLayout, TextView textView, long j, long j2, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i, int i2) {
        try {
            linearLayout.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        checkScheduleDate(textView, null, j == j2 ? 1 : 0, numberPicker, numberPicker2, numberPicker3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createScheduleDatePickerDialog$82(int i) {
        return String.format("%02d", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createScheduleDatePickerDialog$83(int i) {
        return String.format("%02d", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createScheduleDatePickerDialog$84(boolean[] zArr, long j, long j2, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        zArr[0] = false;
        boolean checkScheduleDate = checkScheduleDate(null, null, j == j2 ? 1 : 0, numberPicker, numberPicker2, numberPicker3);
        calendar.setTimeInMillis(System.currentTimeMillis() + (numberPicker.getValue() * 24 * 3600 * 1000));
        calendar.set(11, numberPicker2.getValue());
        calendar.set(12, numberPicker3.getValue());
        if (checkScheduleDate) {
            calendar.set(13, 0);
        }
        scheduleDatePickerDelegate.didSelectDate(true, (int) (calendar.getTimeInMillis() / 1000), null);
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createScheduleDatePickerDialog$85(Runnable runnable, boolean[] zArr, DialogInterface dialogInterface) {
        if (runnable == null || !zArr[0]) {
            return;
        }
        runnable.run();
    }

    public static BottomSheet.Builder createDatePickerDialog(Context context, long j, final ScheduleDatePickerDelegate scheduleDatePickerDelegate) {
        LinearLayout linearLayout;
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors();
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setTextOffset(AndroidUtilities.m50dp(10));
        numberPicker.setItemCount(5);
        final NumberPicker numberPicker2 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.17
            @Override // org.telegram.p048ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Hours", i, new Object[0]);
            }
        };
        numberPicker2.setItemCount(5);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setTextOffset(-AndroidUtilities.m50dp(10));
        final NumberPicker numberPicker3 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.18
            @Override // org.telegram.p048ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Minutes", i, new Object[0]);
            }
        };
        numberPicker3.setItemCount(5);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setTextOffset(-AndroidUtilities.m50dp(34));
        final LinearLayout linearLayout2 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.19
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i3);
                numberPicker2.setItemCount(i3);
                numberPicker3.setItemCount(i3);
                numberPicker.getLayoutParams().height = AndroidUtilities.m50dp(42) * i3;
                numberPicker2.getLayoutParams().height = AndroidUtilities.m50dp(42) * i3;
                numberPicker3.getLayoutParams().height = AndroidUtilities.m50dp(42) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout2.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout2.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString("ExpireAfter", C3301R.string.ExpireAfter));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 51, 0, 12, 0, 0));
        textView.setOnTouchListener(AlertsCreator$$ExternalSyntheticLambda99.INSTANCE);
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        linearLayout3.setWeightSum(1.0f);
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        final long currentTimeMillis = System.currentTimeMillis();
        final Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(currentTimeMillis);
        final int i = calendar.get(1);
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.20
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout3.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(365);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda134
            @Override // org.telegram.p048ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                String lambda$createDatePickerDialog$87;
                lambda$createDatePickerDialog$87 = AlertsCreator.lambda$createDatePickerDialog$87(currentTimeMillis, calendar, i, i2);
                return lambda$createDatePickerDialog$87;
            }
        });
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda160
            @Override // org.telegram.p048ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i2, int i3) {
                AlertsCreator.lambda$createDatePickerDialog$88(linearLayout2, numberPicker, numberPicker2, numberPicker3, numberPicker4, i2, i3);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(23);
        linearLayout3.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
        numberPicker2.setFormatter(AlertsCreator$$ExternalSyntheticLambda151.INSTANCE);
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(59);
        numberPicker3.setValue(0);
        numberPicker3.setFormatter(AlertsCreator$$ExternalSyntheticLambda141.INSTANCE);
        linearLayout3.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.3f));
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        if (j <= 0 || j == 2147483646) {
            linearLayout = linearLayout2;
        } else {
            long j2 = 1000 * j;
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar.set(11, 0);
            linearLayout = linearLayout2;
            int timeInMillis = (int) ((j2 - calendar.getTimeInMillis()) / 86400000);
            calendar.setTimeInMillis(j2);
            if (timeInMillis >= 0) {
                numberPicker3.setValue(calendar.get(12));
                numberPicker2.setValue(calendar.get(11));
                numberPicker.setValue(timeInMillis);
            }
        }
        checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
        textView2.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
        textView2.setGravity(17);
        textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
        textView2.setText(LocaleController.getString("SetTimeLimit", C3301R.string.SetTimeLimit));
        LinearLayout linearLayout4 = linearLayout;
        linearLayout4.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda76
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.lambda$createDatePickerDialog$91(NumberPicker.this, numberPicker2, numberPicker3, calendar, scheduleDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout4);
        BottomSheet show = builder.show();
        show.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        show.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createDatePickerDialog$87(long j, Calendar calendar, int i, int i2) {
        if (i2 == 0) {
            return LocaleController.getString("MessageScheduleToday", C3301R.string.MessageScheduleToday);
        }
        long j2 = j + (i2 * 86400000);
        calendar.setTimeInMillis(j2);
        if (calendar.get(1) == i) {
            return LocaleController.getInstance().formatterScheduleDay.format(j2);
        }
        return LocaleController.getInstance().formatterScheduleYear.format(j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDatePickerDialog$88(LinearLayout linearLayout, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i, int i2) {
        try {
            linearLayout.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createDatePickerDialog$89(int i) {
        return String.format("%02d", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createDatePickerDialog$90(int i) {
        return String.format("%02d", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDatePickerDialog$91(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        boolean checkScheduleDate = checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
        calendar.setTimeInMillis(System.currentTimeMillis() + (numberPicker.getValue() * 24 * 3600 * 1000));
        calendar.set(11, numberPicker2.getValue());
        calendar.set(12, numberPicker3.getValue());
        if (checkScheduleDate) {
            calendar.set(13, 0);
        }
        scheduleDatePickerDelegate.didSelectDate(true, (int) (calendar.getTimeInMillis() / 1000), null);
        builder.getDismissRunnable().run();
    }

    public static BottomSheet.Builder createStatusUntilDatePickerDialog(Context context, long j, final StatusUntilDatePickerDelegate statusUntilDatePickerDelegate) {
        LinearLayout linearLayout;
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors();
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setTextOffset(AndroidUtilities.m50dp(10));
        numberPicker.setItemCount(5);
        final NumberPicker numberPicker2 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.21
            @Override // org.telegram.p048ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Hours", i, new Object[0]);
            }
        };
        numberPicker2.setItemCount(5);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setTextOffset(-AndroidUtilities.m50dp(10));
        final NumberPicker numberPicker3 = new NumberPicker(context) { // from class: org.telegram.ui.Components.AlertsCreator.22
            @Override // org.telegram.p048ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Minutes", i, new Object[0]);
            }
        };
        numberPicker3.setItemCount(5);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setTextOffset(-AndroidUtilities.m50dp(34));
        final LinearLayout linearLayout2 = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.23
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i3);
                numberPicker2.setItemCount(i3);
                numberPicker3.setItemCount(i3);
                numberPicker.getLayoutParams().height = AndroidUtilities.m50dp(42) * i3;
                numberPicker2.getLayoutParams().height = AndroidUtilities.m50dp(42) * i3;
                numberPicker3.getLayoutParams().height = AndroidUtilities.m50dp(42) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout2.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout2.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString("SetEmojiStatusUntilTitle", C3301R.string.SetEmojiStatusUntilTitle));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 51, 0, 12, 0, 0));
        textView.setOnTouchListener(AlertsCreator$$ExternalSyntheticLambda101.INSTANCE);
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        linearLayout3.setWeightSum(1.0f);
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        final long currentTimeMillis = System.currentTimeMillis();
        final Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(currentTimeMillis);
        final int i = calendar.get(1);
        final int i2 = calendar.get(6);
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.24
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout3.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(365);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda135
            @Override // org.telegram.p048ui.Components.NumberPicker.Formatter
            public final String format(int i3) {
                String lambda$createStatusUntilDatePickerDialog$93;
                lambda$createStatusUntilDatePickerDialog$93 = AlertsCreator.lambda$createStatusUntilDatePickerDialog$93(currentTimeMillis, calendar, i, i2, i3);
                return lambda$createStatusUntilDatePickerDialog$93;
            }
        });
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda159
            @Override // org.telegram.p048ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i3, int i4) {
                AlertsCreator.lambda$createStatusUntilDatePickerDialog$94(linearLayout2, numberPicker, numberPicker2, numberPicker3, numberPicker4, i3, i4);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(23);
        linearLayout3.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
        numberPicker2.setFormatter(AlertsCreator$$ExternalSyntheticLambda142.INSTANCE);
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(59);
        numberPicker3.setValue(0);
        numberPicker3.setFormatter(AlertsCreator$$ExternalSyntheticLambda138.INSTANCE);
        linearLayout3.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.3f));
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        if (j <= 0 || j == 2147483646) {
            linearLayout = linearLayout2;
        } else {
            long j2 = 1000 * j;
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar.set(11, 0);
            linearLayout = linearLayout2;
            int timeInMillis = (int) ((j2 - calendar.getTimeInMillis()) / 86400000);
            calendar.setTimeInMillis(j2);
            if (timeInMillis >= 0) {
                numberPicker3.setValue(calendar.get(12));
                numberPicker2.setValue(calendar.get(11));
                numberPicker.setValue(timeInMillis);
            }
        }
        checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
        textView2.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
        textView2.setGravity(17);
        textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
        textView2.setText(LocaleController.getString("SetEmojiStatusUntilButton", C3301R.string.SetEmojiStatusUntilButton));
        LinearLayout linearLayout4 = linearLayout;
        linearLayout4.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda77
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.lambda$createStatusUntilDatePickerDialog$97(NumberPicker.this, numberPicker2, numberPicker3, calendar, statusUntilDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout4);
        BottomSheet show = builder.show();
        show.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        show.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createStatusUntilDatePickerDialog$93(long j, Calendar calendar, int i, int i2, int i3) {
        if (i3 == 0) {
            return LocaleController.getString("MessageScheduleToday", C3301R.string.MessageScheduleToday);
        }
        long j2 = j + (i3 * 86400000);
        calendar.setTimeInMillis(j2);
        int i4 = calendar.get(1);
        int i5 = calendar.get(6);
        if (i4 != i || i5 >= i2 + 7) {
            if (i4 == i) {
                return LocaleController.getInstance().formatterScheduleDay.format(j2);
            }
            return LocaleController.getInstance().formatterScheduleYear.format(j2);
        }
        return LocaleController.getInstance().formatterWeek.format(j2) + ", " + LocaleController.getInstance().formatterScheduleDay.format(j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createStatusUntilDatePickerDialog$94(LinearLayout linearLayout, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i, int i2) {
        try {
            linearLayout.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createStatusUntilDatePickerDialog$95(int i) {
        return String.format("%02d", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createStatusUntilDatePickerDialog$96(int i) {
        return String.format("%02d", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createStatusUntilDatePickerDialog$97(NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, StatusUntilDatePickerDelegate statusUntilDatePickerDelegate, BottomSheet.Builder builder, View view) {
        boolean checkScheduleDate = checkScheduleDate(null, null, 0, numberPicker, numberPicker2, numberPicker3);
        calendar.setTimeInMillis(System.currentTimeMillis() + (numberPicker.getValue() * 24 * 3600 * 1000));
        calendar.set(11, numberPicker2.getValue());
        calendar.set(12, numberPicker3.getValue());
        if (checkScheduleDate) {
            calendar.set(13, 0);
        }
        statusUntilDatePickerDelegate.didSelectDate((int) (calendar.getTimeInMillis() / 1000));
        builder.getDismissRunnable().run();
    }

    public static BottomSheet.Builder createAutoDeleteDatePickerDialog(Context context, int i, Theme.ResourcesProvider resourcesProvider, final ScheduleDatePickerDelegate scheduleDatePickerDelegate) {
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors(resourcesProvider);
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final int[] iArr = {0, 1440, 2880, 4320, 5760, 7200, 8640, 10080, 20160, 30240, 44640, 89280, 133920, 178560, 223200, 267840, 525600};
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.25
            @Override // org.telegram.p048ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i2) {
                int[] iArr2 = iArr;
                if (iArr2[i2] == 0) {
                    return LocaleController.getString("AutoDeleteNever", C3301R.string.AutoDeleteNever);
                }
                if (iArr2[i2] < 10080) {
                    return LocaleController.formatPluralString("Days", iArr2[i2] / 1440, new Object[0]);
                }
                if (iArr2[i2] < 44640) {
                    return LocaleController.formatPluralString("Weeks", iArr2[i2] / 1440, new Object[0]);
                }
                if (iArr2[i2] < 525600) {
                    return LocaleController.formatPluralString("Months", iArr2[i2] / 10080, new Object[0]);
                }
                return LocaleController.formatPluralString("Years", ((iArr2[i2] * 5) / 31) * 60 * 24, new Object[0]);
            }
        };
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(16);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setValue(0);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda137
            @Override // org.telegram.p048ui.Components.NumberPicker.Formatter
            public final String format(int i2) {
                String lambda$createAutoDeleteDatePickerDialog$98;
                lambda$createAutoDeleteDatePickerDialog$98 = AlertsCreator.lambda$createAutoDeleteDatePickerDialog$98(iArr, i2);
                return lambda$createAutoDeleteDatePickerDialog$98;
            }
        });
        final LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.26
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i4 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i4);
                numberPicker.getLayoutParams().height = AndroidUtilities.m50dp(42) * i4;
                this.ignoreLayout = false;
                super.onMeasure(i2, i3);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString("AutoDeleteAfteTitle", C3301R.string.AutoDeleteAfteTitle));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 51, 0, 12, 0, 0));
        textView.setOnTouchListener(AlertsCreator$$ExternalSyntheticLambda100.INSTANCE);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        final AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, false) { // from class: org.telegram.ui.Components.AlertsCreator.27
            @Override // android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 1.0f));
        animatedTextView.setPadding(0, 0, 0, 0);
        animatedTextView.setGravity(17);
        animatedTextView.setTextColor(scheduleDatePickerColors.buttonTextColor);
        animatedTextView.setTextSize(AndroidUtilities.m50dp(14));
        animatedTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        animatedTextView.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
        linearLayout.addView(animatedTextView, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        animatedTextView.setText(LocaleController.getString("DisableAutoDeleteTimer", C3301R.string.DisableAutoDeleteTimer));
        numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda161
            @Override // org.telegram.p048ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker2, int i2, int i3) {
                AlertsCreator.lambda$createAutoDeleteDatePickerDialog$100(AnimatedTextView.this, linearLayout, numberPicker2, i2, i3);
            }
        });
        animatedTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda84
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.lambda$createAutoDeleteDatePickerDialog$101(iArr, numberPicker, scheduleDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        BottomSheet show = builder.show();
        show.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        show.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createAutoDeleteDatePickerDialog$98(int[] iArr, int i) {
        if (iArr[i] == 0) {
            return LocaleController.getString("AutoDeleteNever", C3301R.string.AutoDeleteNever);
        }
        if (iArr[i] < 10080) {
            return LocaleController.formatPluralString("Days", iArr[i] / 1440, new Object[0]);
        }
        if (iArr[i] < 44640) {
            return LocaleController.formatPluralString("Weeks", iArr[i] / 10080, new Object[0]);
        }
        if (iArr[i] < 525600) {
            return LocaleController.formatPluralString("Months", iArr[i] / 44640, new Object[0]);
        }
        return LocaleController.formatPluralString("Years", iArr[i] / 525600, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createAutoDeleteDatePickerDialog$100(AnimatedTextView animatedTextView, LinearLayout linearLayout, NumberPicker numberPicker, int i, int i2) {
        try {
            if (i2 == 0) {
                animatedTextView.setText(LocaleController.getString("DisableAutoDeleteTimer", C3301R.string.DisableAutoDeleteTimer));
            } else {
                animatedTextView.setText(LocaleController.getString("SetAutoDeleteTimer", C3301R.string.SetAutoDeleteTimer));
            }
            linearLayout.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createAutoDeleteDatePickerDialog$101(int[] iArr, NumberPicker numberPicker, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        scheduleDatePickerDelegate.didSelectDate(true, iArr[numberPicker.getValue()], null);
        builder.getDismissRunnable().run();
    }

    public static BottomSheet.Builder createSoundFrequencyPickerDialog(Context context, int i, int i2, final SoundFrequencyDelegate soundFrequencyDelegate, Theme.ResourcesProvider resourcesProvider) {
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors(resourcesProvider);
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.28
            @Override // org.telegram.p048ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i3) {
                return LocaleController.formatPluralString("Times", i3 + 1, new Object[0]);
            }
        };
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(10);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setValue(i - 1);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(AlertsCreator$$ExternalSyntheticLambda149.INSTANCE);
        final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.29
            @Override // org.telegram.p048ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i3) {
                return LocaleController.formatPluralString("Times", i3 + 1, new Object[0]);
            }
        };
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(10);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setValue((i2 / 60) - 1);
        numberPicker2.setWrapSelectorWheel(false);
        numberPicker2.setFormatter(AlertsCreator$$ExternalSyntheticLambda147.INSTANCE);
        final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider);
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(0);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setValue(0);
        numberPicker3.setWrapSelectorWheel(false);
        numberPicker3.setFormatter(AlertsCreator$$ExternalSyntheticLambda145.INSTANCE);
        final LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.30
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i5 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i5);
                numberPicker.getLayoutParams().height = AndroidUtilities.m50dp(42) * i5;
                numberPicker2.setItemCount(i5);
                numberPicker2.getLayoutParams().height = AndroidUtilities.m50dp(42) * i5;
                numberPicker3.setItemCount(i5);
                numberPicker3.getLayoutParams().height = AndroidUtilities.m50dp(42) * i5;
                this.ignoreLayout = false;
                super.onMeasure(i3, i4);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString("NotfificationsFrequencyTitle", C3301R.string.NotfificationsFrequencyTitle));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 51, 0, 12, 0, 0));
        textView.setOnTouchListener(AlertsCreator$$ExternalSyntheticLambda103.INSTANCE);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.31
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.4f));
        linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, -2, 0.2f, 16));
        linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.4f));
        textView2.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
        textView2.setGravity(17);
        textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
        textView2.setText(LocaleController.getString("AutoDeleteConfirm", C3301R.string.AutoDeleteConfirm));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda155
            @Override // org.telegram.p048ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i3, int i4) {
                AlertsCreator.lambda$createSoundFrequencyPickerDialog$106(linearLayout, numberPicker4, i3, i4);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda75
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.lambda$createSoundFrequencyPickerDialog$107(NumberPicker.this, numberPicker2, soundFrequencyDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        BottomSheet show = builder.show();
        show.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        show.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createSoundFrequencyPickerDialog$102(int i) {
        return LocaleController.formatPluralString("Times", i + 1, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createSoundFrequencyPickerDialog$103(int i) {
        return LocaleController.formatPluralString("Minutes", i + 1, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createSoundFrequencyPickerDialog$104(int i) {
        return LocaleController.getString("NotificationsFrequencyDivider", C3301R.string.NotificationsFrequencyDivider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createSoundFrequencyPickerDialog$106(LinearLayout linearLayout, NumberPicker numberPicker, int i, int i2) {
        try {
            linearLayout.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createSoundFrequencyPickerDialog$107(NumberPicker numberPicker, NumberPicker numberPicker2, SoundFrequencyDelegate soundFrequencyDelegate, BottomSheet.Builder builder, View view) {
        soundFrequencyDelegate.didSelectValues(numberPicker.getValue() + 1, (numberPicker2.getValue() + 1) * 60);
        builder.getDismissRunnable().run();
    }

    public static BottomSheet.Builder createMuteForPickerDialog(Context context, Theme.ResourcesProvider resourcesProvider, final ScheduleDatePickerDelegate scheduleDatePickerDelegate) {
        if (context == null) {
            return null;
        }
        ScheduleDatePickerColors scheduleDatePickerColors = new ScheduleDatePickerColors(resourcesProvider);
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final int[] iArr = {30, 60, 120, 180, 480, 1440, 2880, 4320, 5760, 7200, 8640, 10080, 20160, 30240, 44640, 89280, 133920, 178560, 223200, 267840, 525600};
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.AlertsCreator.32
            @Override // org.telegram.p048ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                int[] iArr2 = iArr;
                if (iArr2[i] == 0) {
                    return LocaleController.getString("MuteNever", C3301R.string.MuteNever);
                }
                if (iArr2[i] < 60) {
                    return LocaleController.formatPluralString("Minutes", iArr2[i], new Object[0]);
                }
                if (iArr2[i] < 1440) {
                    return LocaleController.formatPluralString("Hours", iArr2[i] / 60, new Object[0]);
                }
                if (iArr2[i] < 10080) {
                    return LocaleController.formatPluralString("Days", iArr2[i] / 1440, new Object[0]);
                }
                if (iArr2[i] < 44640) {
                    return LocaleController.formatPluralString("Weeks", iArr2[i] / 10080, new Object[0]);
                }
                if (iArr2[i] < 525600) {
                    return LocaleController.formatPluralString("Months", iArr2[i] / 44640, new Object[0]);
                }
                return LocaleController.formatPluralString("Years", iArr2[i] / 525600, new Object[0]);
            }
        };
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(20);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setValue(0);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda136
            @Override // org.telegram.p048ui.Components.NumberPicker.Formatter
            public final String format(int i) {
                String lambda$createMuteForPickerDialog$108;
                lambda$createMuteForPickerDialog$108 = AlertsCreator.lambda$createMuteForPickerDialog$108(iArr, i);
                return lambda$createMuteForPickerDialog$108;
            }
        });
        final LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.33
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i3);
                numberPicker.getLayoutParams().height = AndroidUtilities.m50dp(42) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString("MuteForAlert", C3301R.string.MuteForAlert));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 51, 0, 12, 0, 0));
        textView.setOnTouchListener(AlertsCreator$$ExternalSyntheticLambda98.INSTANCE);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.34
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 1.0f));
        numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda156
            @Override // org.telegram.p048ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker2, int i, int i2) {
                AlertsCreator.lambda$createMuteForPickerDialog$110(linearLayout, numberPicker2, i, i2);
            }
        });
        textView2.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
        textView2.setGravity(17);
        textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), scheduleDatePickerColors.buttonBackgroundColor, scheduleDatePickerColors.buttonBackgroundPressedColor));
        textView2.setText(LocaleController.getString("AutoDeleteConfirm", C3301R.string.AutoDeleteConfirm));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda83
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.lambda$createMuteForPickerDialog$111(iArr, numberPicker, scheduleDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        BottomSheet show = builder.show();
        show.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        show.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createMuteForPickerDialog$108(int[] iArr, int i) {
        if (iArr[i] == 0) {
            return LocaleController.getString("MuteNever", C3301R.string.MuteNever);
        }
        if (iArr[i] < 60) {
            return LocaleController.formatPluralString("Minutes", iArr[i], new Object[0]);
        }
        if (iArr[i] < 1440) {
            return LocaleController.formatPluralString("Hours", iArr[i] / 60, new Object[0]);
        }
        if (iArr[i] < 10080) {
            return LocaleController.formatPluralString("Days", iArr[i] / 1440, new Object[0]);
        }
        if (iArr[i] < 44640) {
            return LocaleController.formatPluralString("Weeks", iArr[i] / 10080, new Object[0]);
        }
        if (iArr[i] < 525600) {
            return LocaleController.formatPluralString("Months", iArr[i] / 44640, new Object[0]);
        }
        return LocaleController.formatPluralString("Years", iArr[i] / 525600, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createMuteForPickerDialog$110(LinearLayout linearLayout, NumberPicker numberPicker, int i, int i2) {
        try {
            linearLayout.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createMuteForPickerDialog$111(int[] iArr, NumberPicker numberPicker, ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        scheduleDatePickerDelegate.didSelectDate(true, iArr[numberPicker.getValue()] * 60, null);
        builder.getDismissRunnable().run();
    }

    private static void checkCalendarDate(long j, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        int i = 1;
        int i2 = calendar.get(1);
        int i3 = calendar.get(2);
        int i4 = calendar.get(5);
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i5 = calendar.get(1);
        int i6 = calendar.get(2);
        int i7 = calendar.get(5);
        numberPicker3.setMaxValue(i5);
        numberPicker3.setMinValue(i2);
        int value = numberPicker3.getValue();
        numberPicker2.setMaxValue(value == i5 ? i6 : 11);
        numberPicker2.setMinValue(value == i2 ? i3 : 0);
        int value2 = numberPicker2.getValue();
        calendar.set(1, value);
        calendar.set(2, value2);
        int actualMaximum = calendar.getActualMaximum(5);
        if (value == i5 && value2 == i6) {
            actualMaximum = Math.min(i7, actualMaximum);
        }
        numberPicker.setMaxValue(actualMaximum);
        if (value == i2 && value2 == i3) {
            i = i4;
        }
        numberPicker.setMinValue(i);
    }

    public static BottomSheet.Builder createCalendarPickerDialog(Context context, final long j, final MessagesStorage.IntCallback intCallback, Theme.ResourcesProvider resourcesProvider) {
        if (context == null) {
            return null;
        }
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider);
        numberPicker.setTextOffset(AndroidUtilities.m50dp(10));
        numberPicker.setItemCount(5);
        final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider);
        numberPicker2.setItemCount(5);
        numberPicker2.setTextOffset(-AndroidUtilities.m50dp(10));
        final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider);
        numberPicker3.setItemCount(5);
        numberPicker3.setTextOffset(-AndroidUtilities.m50dp(24));
        final LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.35
            boolean ignoreLayout = false;

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                numberPicker.setItemCount(i3);
                numberPicker2.setItemCount(i3);
                numberPicker3.setItemCount(i3);
                numberPicker.getLayoutParams().height = AndroidUtilities.m50dp(42) * i3;
                numberPicker2.getLayoutParams().height = AndroidUtilities.m50dp(42) * i3;
                numberPicker3.getLayoutParams().height = AndroidUtilities.m50dp(42) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString("ChooseDate", C3301R.string.ChooseDate));
        textView.setTextColor(Theme.getColor("dialogTextBlack", resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 51, 0, 12, 0, 0));
        textView.setOnTouchListener(AlertsCreator$$ExternalSyntheticLambda104.INSTANCE);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        System.currentTimeMillis();
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.AlertsCreator.36
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.25f));
        numberPicker.setMinValue(1);
        numberPicker.setMaxValue(31);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setFormatter(AlertsCreator$$ExternalSyntheticLambda146.INSTANCE);
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda157
            @Override // org.telegram.p048ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i, int i2) {
                AlertsCreator.lambda$createCalendarPickerDialog$114(linearLayout, j, numberPicker, numberPicker2, numberPicker3, numberPicker4, i, i2);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(11);
        numberPicker2.setWrapSelectorWheel(false);
        linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker2.setFormatter(AlertsCreator$$ExternalSyntheticLambda144.INSTANCE);
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        final Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        int i = calendar.get(1);
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i2 = calendar.get(1);
        numberPicker3.setMinValue(i);
        numberPicker3.setMaxValue(i2);
        numberPicker3.setWrapSelectorWheel(false);
        numberPicker3.setFormatter(AlertsCreator$$ExternalSyntheticLambda148.INSTANCE);
        linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.25f));
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        numberPicker.setValue(31);
        numberPicker2.setValue(12);
        numberPicker3.setValue(i2);
        checkCalendarDate(j, numberPicker, numberPicker2, numberPicker3);
        textView2.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
        textView2.setGravity(17);
        textView2.setTextColor(Theme.getColor("featuredStickers_buttonText", resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setText(LocaleController.getString("JumpToDate", C3301R.string.JumpToDate));
        textView2.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), Theme.getColor("featuredStickers_addButton", resourcesProvider), Theme.getColor("featuredStickers_addButtonPressed", resourcesProvider)));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda63
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.lambda$createCalendarPickerDialog$117(j, numberPicker, numberPicker2, numberPicker3, calendar, intCallback, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createCalendarPickerDialog$113(int i) {
        return "" + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createCalendarPickerDialog$114(LinearLayout linearLayout, long j, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i, int i2) {
        try {
            linearLayout.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        checkCalendarDate(j, numberPicker, numberPicker2, numberPicker3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createCalendarPickerDialog$115(int i) {
        switch (i) {
            case 0:
                return LocaleController.getString("January", C3301R.string.January);
            case 1:
                return LocaleController.getString("February", C3301R.string.February);
            case 2:
                return LocaleController.getString("March", C3301R.string.March);
            case 3:
                return LocaleController.getString("April", C3301R.string.April);
            case 4:
                return LocaleController.getString("May", C3301R.string.May);
            case 5:
                return LocaleController.getString("June", C3301R.string.June);
            case 6:
                return LocaleController.getString("July", C3301R.string.July);
            case 7:
                return LocaleController.getString("August", C3301R.string.August);
            case 8:
                return LocaleController.getString("September", C3301R.string.September);
            case 9:
                return LocaleController.getString("October", C3301R.string.October);
            case 10:
                return LocaleController.getString("November", C3301R.string.November);
            default:
                return LocaleController.getString("December", C3301R.string.December);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createCalendarPickerDialog$116(int i) {
        return String.format("%02d", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createCalendarPickerDialog$117(long j, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, Calendar calendar, MessagesStorage.IntCallback intCallback, BottomSheet.Builder builder, View view) {
        checkCalendarDate(j, numberPicker, numberPicker2, numberPicker3);
        calendar.set(1, numberPicker3.getValue());
        calendar.set(2, numberPicker2.getValue());
        calendar.set(5, numberPicker.getValue());
        calendar.set(12, 0);
        calendar.set(11, 0);
        calendar.set(13, 0);
        intCallback.run((int) (calendar.getTimeInMillis() / 1000));
        builder.getDismissRunnable().run();
    }

    public static BottomSheet createMuteAlert(final BaseFragment baseFragment, final long j, final int i, final Theme.ResourcesProvider resourcesProvider) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return null;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(baseFragment.getParentActivity(), false, resourcesProvider);
        builder.setTitle(LocaleController.getString("Notifications", C3301R.string.Notifications), true);
        int i2 = C3301R.string.MuteFor;
        builder.setItems(new CharSequence[]{LocaleController.formatString("MuteFor", i2, LocaleController.formatPluralString("Hours", 1, new Object[0])), LocaleController.formatString("MuteFor", i2, LocaleController.formatPluralString("Hours", 8, new Object[0])), LocaleController.formatString("MuteFor", i2, LocaleController.formatPluralString("Days", 2, new Object[0])), LocaleController.getString("MuteDisable", C3301R.string.MuteDisable)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                AlertsCreator.lambda$createMuteAlert$118(j, i, baseFragment, resourcesProvider, dialogInterface, i3);
            }
        });
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createMuteAlert$118(long j, int i, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, DialogInterface dialogInterface, int i2) {
        int i3 = 2;
        if (i2 == 0) {
            i3 = 0;
        } else if (i2 == 1) {
            i3 = 1;
        } else if (i2 != 2) {
            i3 = 3;
        }
        NotificationsController.getInstance(UserConfig.selectedAccount).setDialogNotificationsSettings(j, i, i3);
        if (BulletinFactory.canShowBulletin(baseFragment)) {
            BulletinFactory.createMuteBulletin(baseFragment, i3, 0, resourcesProvider).show();
        }
    }

    public static BottomSheet createMuteAlert(final BaseFragment baseFragment, final ArrayList<Long> arrayList, final int i, final Theme.ResourcesProvider resourcesProvider) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return null;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(baseFragment.getParentActivity(), false, resourcesProvider);
        builder.setTitle(LocaleController.getString("Notifications", C3301R.string.Notifications), true);
        int i2 = C3301R.string.MuteFor;
        builder.setItems(new CharSequence[]{LocaleController.formatString("MuteFor", i2, LocaleController.formatPluralString("Hours", 1, new Object[0])), LocaleController.formatString("MuteFor", i2, LocaleController.formatPluralString("Hours", 8, new Object[0])), LocaleController.formatString("MuteFor", i2, LocaleController.formatPluralString("Days", 2, new Object[0])), LocaleController.getString("MuteDisable", C3301R.string.MuteDisable)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda22
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                AlertsCreator.lambda$createMuteAlert$119(arrayList, i, baseFragment, resourcesProvider, dialogInterface, i3);
            }
        });
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createMuteAlert$119(ArrayList arrayList, int i, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, DialogInterface dialogInterface, int i2) {
        int i3 = 2;
        if (i2 == 0) {
            i3 = 0;
        } else if (i2 == 1) {
            i3 = 1;
        } else if (i2 != 2) {
            i3 = 3;
        }
        if (arrayList != null) {
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                NotificationsController.getInstance(UserConfig.selectedAccount).setDialogNotificationsSettings(((Long) arrayList.get(i4)).longValue(), i, i3);
            }
        }
        if (BulletinFactory.canShowBulletin(baseFragment)) {
            BulletinFactory.createMuteBulletin(baseFragment, i3, 0, resourcesProvider).show();
        }
    }

    public static void sendReport(TLRPC$InputPeer tLRPC$InputPeer, int i, String str, ArrayList<Integer> arrayList) {
        TLRPC$TL_messages_report tLRPC$TL_messages_report = new TLRPC$TL_messages_report();
        tLRPC$TL_messages_report.peer = tLRPC$InputPeer;
        tLRPC$TL_messages_report.f1601id.addAll(arrayList);
        tLRPC$TL_messages_report.message = str;
        if (i == 0) {
            tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonSpam();
        } else if (i == 6) {
            tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonFake();
        } else if (i == 1) {
            tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonViolence();
        } else if (i == 2) {
            tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonChildAbuse();
        } else if (i == 5) {
            tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonPornography();
        } else if (i == 3) {
            tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonIllegalDrugs();
        } else if (i == 4) {
            tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonPersonalDetails();
        } else if (i == 100) {
            tLRPC$TL_messages_report.reason = new TLRPC$ReportReason() { // from class: org.telegram.tgnet.TLRPC$TL_inputReportReasonOther
                public static int constructor = -1041980751;

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                    abstractSerializedData.writeInt32(constructor);
                }
            };
        }
        ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tLRPC$TL_messages_report, AlertsCreator$$ExternalSyntheticLambda131.INSTANCE);
    }

    public static void createReportAlert(final Context context, final long j, final int i, final BaseFragment baseFragment, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        CharSequence[] charSequenceArr;
        int[] iArr;
        int[] iArr2;
        if (context == null || baseFragment == null) {
            return;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(context, true, resourcesProvider);
        builder.setDimBehind(runnable == null);
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda57
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AlertsCreator.lambda$createReportAlert$121(runnable, dialogInterface);
            }
        });
        builder.setTitle(LocaleController.getString("ReportChat", C3301R.string.ReportChat), true);
        if (i != 0) {
            charSequenceArr = new CharSequence[]{LocaleController.getString("ReportChatSpam", C3301R.string.ReportChatSpam), LocaleController.getString("ReportChatViolence", C3301R.string.ReportChatViolence), LocaleController.getString("ReportChatChild", C3301R.string.ReportChatChild), LocaleController.getString("ReportChatIllegalDrugs", C3301R.string.ReportChatIllegalDrugs), LocaleController.getString("ReportChatPersonalDetails", C3301R.string.ReportChatPersonalDetails), LocaleController.getString("ReportChatPornography", C3301R.string.ReportChatPornography), LocaleController.getString("ReportChatOther", C3301R.string.ReportChatOther)};
            iArr = new int[]{C3301R.C3303drawable.msg_clearcache, C3301R.C3303drawable.msg_report_violence, C3301R.C3303drawable.msg_block2, C3301R.C3303drawable.msg_report_drugs, C3301R.C3303drawable.msg_report_personal, C3301R.C3303drawable.msg_report_xxx, C3301R.C3303drawable.msg_report_other};
            iArr2 = new int[]{0, 1, 2, 3, 4, 5, 100};
        } else {
            charSequenceArr = new CharSequence[]{LocaleController.getString("ReportChatSpam", C3301R.string.ReportChatSpam), LocaleController.getString("ReportChatFakeAccount", C3301R.string.ReportChatFakeAccount), LocaleController.getString("ReportChatViolence", C3301R.string.ReportChatViolence), LocaleController.getString("ReportChatChild", C3301R.string.ReportChatChild), LocaleController.getString("ReportChatIllegalDrugs", C3301R.string.ReportChatIllegalDrugs), LocaleController.getString("ReportChatPersonalDetails", C3301R.string.ReportChatPersonalDetails), LocaleController.getString("ReportChatPornography", C3301R.string.ReportChatPornography), LocaleController.getString("ReportChatOther", C3301R.string.ReportChatOther)};
            iArr = new int[]{C3301R.C3303drawable.msg_clearcache, C3301R.C3303drawable.msg_report_fake, C3301R.C3303drawable.msg_report_violence, C3301R.C3303drawable.msg_block2, C3301R.C3303drawable.msg_report_drugs, C3301R.C3303drawable.msg_report_personal, C3301R.C3303drawable.msg_report_xxx, C3301R.C3303drawable.msg_report_other};
            iArr2 = new int[]{0, 6, 1, 2, 3, 4, 5, 100};
        }
        final int[] iArr3 = iArr2;
        builder.setItems(charSequenceArr, iArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda49
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                AlertsCreator.lambda$createReportAlert$123(iArr3, i, baseFragment, context, j, resourcesProvider, dialogInterface, i2);
            }
        });
        baseFragment.showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createReportAlert$121(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$createReportAlert$123(int[] iArr, final int i, final BaseFragment baseFragment, Context context, final long j, Theme.ResourcesProvider resourcesProvider, DialogInterface dialogInterface, int i2) {
        TLRPC$TL_account_reportPeer tLRPC$TL_account_reportPeer;
        int i3 = iArr[i2];
        if (i == 0 && ((i3 == 0 || i3 == 1 || i3 == 2 || i3 == 5 || i3 == 3 || i3 == 4) && (baseFragment instanceof ChatActivity))) {
            ((ChatActivity) baseFragment).openReportChat(i3);
        } else if ((i == 0 && (i3 == 100 || i3 == 6)) || (i != 0 && i3 == 100)) {
            if (baseFragment instanceof ChatActivity) {
                AndroidUtilities.requestAdjustNothing(baseFragment.getParentActivity(), baseFragment.getClassGuid());
            }
            baseFragment.showDialog(new ReportAlert(context, i3) { // from class: org.telegram.ui.Components.AlertsCreator.37
                @Override // org.telegram.p048ui.ActionBar.BottomSheet
                public void dismissInternal() {
                    super.dismissInternal();
                    BaseFragment baseFragment2 = baseFragment;
                    if (baseFragment2 instanceof ChatActivity) {
                        ((ChatActivity) baseFragment2).checkAdjustResize();
                    }
                }

                @Override // org.telegram.p048ui.Components.ReportAlert
                protected void onSend(int i4, String str) {
                    UndoView undoView;
                    ArrayList arrayList = new ArrayList();
                    int i5 = i;
                    if (i5 != 0) {
                        arrayList.add(Integer.valueOf(i5));
                    }
                    AlertsCreator.sendReport(MessagesController.getInstance(UserConfig.selectedAccount).getInputPeer(j), i4, str, arrayList);
                    BaseFragment baseFragment2 = baseFragment;
                    if (!(baseFragment2 instanceof ChatActivity) || (undoView = ((ChatActivity) baseFragment2).getUndoView()) == null) {
                        return;
                    }
                    undoView.showWithAction(0L, 74, (Runnable) null);
                }
            });
        } else {
            TLRPC$InputPeer inputPeer = MessagesController.getInstance(UserConfig.selectedAccount).getInputPeer(j);
            if (i != 0) {
                TLRPC$TL_messages_report tLRPC$TL_messages_report = new TLRPC$TL_messages_report();
                tLRPC$TL_messages_report.peer = inputPeer;
                tLRPC$TL_messages_report.f1601id.add(Integer.valueOf(i));
                tLRPC$TL_messages_report.message = "";
                tLRPC$TL_account_reportPeer = tLRPC$TL_messages_report;
                if (i3 == 0) {
                    tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonSpam();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_messages_report;
                } else if (i3 == 1) {
                    tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonViolence();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_messages_report;
                } else if (i3 == 2) {
                    tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonChildAbuse();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_messages_report;
                } else if (i3 == 5) {
                    tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonPornography();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_messages_report;
                } else if (i3 == 3) {
                    tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonIllegalDrugs();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_messages_report;
                } else if (i3 == 4) {
                    tLRPC$TL_messages_report.reason = new TLRPC$TL_inputReportReasonPersonalDetails();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_messages_report;
                }
            } else {
                TLRPC$TL_account_reportPeer tLRPC$TL_account_reportPeer2 = new TLRPC$TL_account_reportPeer();
                tLRPC$TL_account_reportPeer2.peer = inputPeer;
                tLRPC$TL_account_reportPeer2.message = "";
                tLRPC$TL_account_reportPeer = tLRPC$TL_account_reportPeer2;
                if (i3 == 0) {
                    tLRPC$TL_account_reportPeer2.reason = new TLRPC$TL_inputReportReasonSpam();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_account_reportPeer2;
                } else if (i3 == 6) {
                    tLRPC$TL_account_reportPeer2.reason = new TLRPC$TL_inputReportReasonFake();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_account_reportPeer2;
                } else if (i3 == 1) {
                    tLRPC$TL_account_reportPeer2.reason = new TLRPC$TL_inputReportReasonViolence();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_account_reportPeer2;
                } else if (i3 == 2) {
                    tLRPC$TL_account_reportPeer2.reason = new TLRPC$TL_inputReportReasonChildAbuse();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_account_reportPeer2;
                } else if (i3 == 5) {
                    tLRPC$TL_account_reportPeer2.reason = new TLRPC$TL_inputReportReasonPornography();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_account_reportPeer2;
                } else if (i3 == 3) {
                    tLRPC$TL_account_reportPeer2.reason = new TLRPC$TL_inputReportReasonIllegalDrugs();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_account_reportPeer2;
                } else if (i3 == 4) {
                    tLRPC$TL_account_reportPeer2.reason = new TLRPC$TL_inputReportReasonPersonalDetails();
                    tLRPC$TL_account_reportPeer = tLRPC$TL_account_reportPeer2;
                }
            }
            ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tLRPC$TL_account_reportPeer, AlertsCreator$$ExternalSyntheticLambda130.INSTANCE);
            if (baseFragment instanceof ChatActivity) {
                UndoView undoView = ((ChatActivity) baseFragment).getUndoView();
                if (undoView != null) {
                    undoView.showWithAction(0L, 74, (Runnable) null);
                    return;
                }
                return;
            }
            BulletinFactory.m27of(baseFragment).createReportSent(resourcesProvider).show();
        }
    }

    private static String getFloodWaitString(String str) {
        String formatPluralString;
        int intValue = Utilities.parseInt((CharSequence) str).intValue();
        if (intValue < 60) {
            formatPluralString = LocaleController.formatPluralString("Seconds", intValue, new Object[0]);
        } else {
            formatPluralString = LocaleController.formatPluralString("Minutes", intValue / 60, new Object[0]);
        }
        return LocaleController.formatString("FloodWaitTime", C3301R.string.FloodWaitTime, formatPluralString);
    }

    public static void showFloodWaitAlert(String str, BaseFragment baseFragment) {
        String formatPluralString;
        if (str == null || !str.startsWith("FLOOD_WAIT") || baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        int intValue = Utilities.parseInt((CharSequence) str).intValue();
        if (intValue < 60) {
            formatPluralString = LocaleController.formatPluralString("Seconds", intValue, new Object[0]);
        } else {
            formatPluralString = LocaleController.formatPluralString("Minutes", intValue / 60, new Object[0]);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString("AppName", C3301R.string.AppName));
        builder.setMessage(LocaleController.formatString("FloodWaitTime", C3301R.string.FloodWaitTime, formatPluralString));
        builder.setPositiveButton(LocaleController.getString("OK", C3301R.string.OK), null);
        baseFragment.showDialog(builder.create(), true, null);
    }

    public static void showSendMediaAlert(int i, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        if (i == 0 || baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), resourcesProvider);
        builder.setTitle(LocaleController.getString("UnableForward", C3301R.string.UnableForward));
        if (i == 1) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedStickers", C3301R.string.ErrorSendRestrictedStickers));
        } else if (i == 2) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedMedia", C3301R.string.ErrorSendRestrictedMedia));
        } else if (i == 3) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedPolls", C3301R.string.ErrorSendRestrictedPolls));
        } else if (i == 4) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedStickersAll", C3301R.string.ErrorSendRestrictedStickersAll));
        } else if (i == 5) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedMediaAll", C3301R.string.ErrorSendRestrictedMediaAll));
        } else if (i == 6) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedPollsAll", C3301R.string.ErrorSendRestrictedPollsAll));
        } else if (i == 7) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedPrivacyVoiceMessages", C3301R.string.ErrorSendRestrictedPrivacyVoiceMessages));
        } else if (i == 8) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedPrivacyVideoMessages", C3301R.string.ErrorSendRestrictedPrivacyVideoMessages));
        } else if (i == 9) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedPrivacyVideo", C3301R.string.ErrorSendRestrictedVideoAll));
        } else if (i == 10) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedPrivacyPhoto", C3301R.string.ErrorSendRestrictedPhotoAll));
        } else if (i == 11) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedVideo", C3301R.string.ErrorSendRestrictedVideo));
        } else if (i == 12) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedPhoto", C3301R.string.ErrorSendRestrictedPhoto));
        } else if (i == 13) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedVoiceAll", C3301R.string.ErrorSendRestrictedVoiceAll));
        } else if (i == 14) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedVoice", C3301R.string.ErrorSendRestrictedVoice));
        } else if (i == 15) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedRoundAll", C3301R.string.ErrorSendRestrictedRoundAll));
        } else if (i == 16) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedRound", C3301R.string.ErrorSendRestrictedRound));
        } else if (i == 17) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedDocumentsAll", C3301R.string.ErrorSendRestrictedDocumentsAll));
        } else if (i == 18) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedDocuments", C3301R.string.ErrorSendRestrictedDocuments));
        } else if (i == 19) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedMusicAll", C3301R.string.ErrorSendRestrictedMusicAll));
        } else if (i == 20) {
            builder.setMessage(LocaleController.getString("ErrorSendRestrictedMusic", C3301R.string.ErrorSendRestrictedMusic));
        }
        builder.setPositiveButton(LocaleController.getString("OK", C3301R.string.OK), null);
        baseFragment.showDialog(builder.create(), true, null);
    }

    public static void showAddUserAlert(String str, final BaseFragment baseFragment, boolean z, TLObject tLObject) {
        if (str == null || baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString("AppName", C3301R.string.AppName));
        char c = 65535;
        switch (str.hashCode()) {
            case -2120721660:
                if (str.equals("CHANNELS_ADMIN_LOCATED_TOO_MUCH")) {
                    c = 0;
                    break;
                }
                break;
            case -2012133105:
                if (str.equals("CHANNELS_ADMIN_PUBLIC_TOO_MUCH")) {
                    c = 1;
                    break;
                }
                break;
            case -1763467626:
                if (str.equals("USERS_TOO_FEW")) {
                    c = 2;
                    break;
                }
                break;
            case -538116776:
                if (str.equals("USER_BLOCKED")) {
                    c = 3;
                    break;
                }
                break;
            case -512775857:
                if (str.equals("USER_RESTRICTED")) {
                    c = 4;
                    break;
                }
                break;
            case -454039871:
                if (str.equals("PEER_FLOOD")) {
                    c = 5;
                    break;
                }
                break;
            case -420079733:
                if (str.equals("BOTS_TOO_MUCH")) {
                    c = 6;
                    break;
                }
                break;
            case 98635865:
                if (str.equals("USER_KICKED")) {
                    c = 7;
                    break;
                }
                break;
            case 517420851:
                if (str.equals("USER_BOT")) {
                    c = '\b';
                    break;
                }
                break;
            case 845559454:
                if (str.equals("YOU_BLOCKED_USER")) {
                    c = '\t';
                    break;
                }
                break;
            case 916342611:
                if (str.equals("USER_ADMIN_INVALID")) {
                    c = '\n';
                    break;
                }
                break;
            case 1047173446:
                if (str.equals("CHAT_ADMIN_BAN_REQUIRED")) {
                    c = 11;
                    break;
                }
                break;
            case 1167301807:
                if (str.equals("USERS_TOO_MUCH")) {
                    c = '\f';
                    break;
                }
                break;
            case 1227003815:
                if (str.equals("USER_ID_INVALID")) {
                    c = '\r';
                    break;
                }
                break;
            case 1253103379:
                if (str.equals("ADMINS_TOO_MUCH")) {
                    c = 14;
                    break;
                }
                break;
            case 1355367367:
                if (str.equals("CHANNELS_TOO_MUCH")) {
                    c = 15;
                    break;
                }
                break;
            case 1377621075:
                if (str.equals("USER_CHANNELS_TOO_MUCH")) {
                    c = 16;
                    break;
                }
                break;
            case 1623167701:
                if (str.equals("USER_NOT_MUTUAL_CONTACT")) {
                    c = 17;
                    break;
                }
                break;
            case 1754587486:
                if (str.equals("CHAT_ADMIN_INVITE_REQUIRED")) {
                    c = 18;
                    break;
                }
                break;
            case 1916725894:
                if (str.equals("USER_PRIVACY_RESTRICTED")) {
                    c = 19;
                    break;
                }
                break;
            case 1965565720:
                if (str.equals("USER_ALREADY_PARTICIPANT")) {
                    c = 20;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                builder.setMessage(LocaleController.getString("LocatedChannelsTooMuch", C3301R.string.LocatedChannelsTooMuch));
                break;
            case 1:
                builder.setMessage(LocaleController.getString("PublicChannelsTooMuch", C3301R.string.PublicChannelsTooMuch));
                break;
            case 2:
                builder.setMessage(LocaleController.getString("CreateGroupError", C3301R.string.CreateGroupError));
                break;
            case 3:
            case '\b':
            case '\r':
                if (z) {
                    builder.setMessage(LocaleController.getString("ChannelUserCantAdd", C3301R.string.ChannelUserCantAdd));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString("GroupUserCantAdd", C3301R.string.GroupUserCantAdd));
                    break;
                }
            case 4:
                builder.setMessage(LocaleController.getString("UserRestricted", C3301R.string.UserRestricted));
                break;
            case 5:
                builder.setMessage(LocaleController.getString("NobodyLikesSpam2", C3301R.string.NobodyLikesSpam2));
                builder.setNegativeButton(LocaleController.getString("MoreInfo", C3301R.string.MoreInfo), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda38
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        AlertsCreator.lambda$showAddUserAlert$124(BaseFragment.this, dialogInterface, i);
                    }
                });
                break;
            case 6:
                if (z) {
                    builder.setMessage(LocaleController.getString("ChannelUserCantBot", C3301R.string.ChannelUserCantBot));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString("GroupUserCantBot", C3301R.string.GroupUserCantBot));
                    break;
                }
            case 7:
            case 11:
                if (tLObject instanceof TLRPC$TL_channels_inviteToChannel) {
                    builder.setMessage(LocaleController.getString("AddUserErrorBlacklisted", C3301R.string.AddUserErrorBlacklisted));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString("AddAdminErrorBlacklisted", C3301R.string.AddAdminErrorBlacklisted));
                    break;
                }
            case '\t':
                builder.setMessage(LocaleController.getString("YouBlockedUser", C3301R.string.YouBlockedUser));
                break;
            case '\n':
                builder.setMessage(LocaleController.getString("AddBannedErrorAdmin", C3301R.string.AddBannedErrorAdmin));
                break;
            case '\f':
                if (z) {
                    builder.setMessage(LocaleController.getString("ChannelUserAddLimit", C3301R.string.ChannelUserAddLimit));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString("GroupUserAddLimit", C3301R.string.GroupUserAddLimit));
                    break;
                }
            case 14:
                if (z) {
                    builder.setMessage(LocaleController.getString("ChannelUserCantAdmin", C3301R.string.ChannelUserCantAdmin));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString("GroupUserCantAdmin", C3301R.string.GroupUserCantAdmin));
                    break;
                }
            case 15:
                builder.setTitle(LocaleController.getString("ChannelTooMuchTitle", C3301R.string.ChannelTooMuchTitle));
                if (tLObject instanceof TLRPC$TL_channels_createChannel) {
                    builder.setMessage(LocaleController.getString("ChannelTooMuch", C3301R.string.ChannelTooMuch));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString("ChannelTooMuchJoin", C3301R.string.ChannelTooMuchJoin));
                    break;
                }
            case 16:
                builder.setTitle(LocaleController.getString("ChannelTooMuchTitle", C3301R.string.ChannelTooMuchTitle));
                builder.setMessage(LocaleController.getString("UserChannelTooMuchJoin", C3301R.string.UserChannelTooMuchJoin));
                break;
            case 17:
                if (z) {
                    builder.setMessage(LocaleController.getString("ChannelUserLeftError", C3301R.string.ChannelUserLeftError));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString("GroupUserLeftError", C3301R.string.GroupUserLeftError));
                    break;
                }
            case 18:
                builder.setMessage(LocaleController.getString("AddAdminErrorNotAMember", C3301R.string.AddAdminErrorNotAMember));
                break;
            case 19:
                if (z) {
                    builder.setMessage(LocaleController.getString("InviteToChannelError", C3301R.string.InviteToChannelError));
                    break;
                } else {
                    builder.setMessage(LocaleController.getString("InviteToGroupError", C3301R.string.InviteToGroupError));
                    break;
                }
            case 20:
                builder.setTitle(LocaleController.getString("VoipGroupVoiceChat", C3301R.string.VoipGroupVoiceChat));
                builder.setMessage(LocaleController.getString("VoipGroupInviteAlreadyParticipant", C3301R.string.VoipGroupInviteAlreadyParticipant));
                break;
            default:
                builder.setMessage(LocaleController.getString("ErrorOccurred", C3301R.string.ErrorOccurred) + "\n" + str);
                break;
        }
        builder.setPositiveButton(LocaleController.getString("OK", C3301R.string.OK), null);
        baseFragment.showDialog(builder.create(), true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showAddUserAlert$124(BaseFragment baseFragment, DialogInterface dialogInterface, int i) {
        MessagesController.getInstance(baseFragment.getCurrentAccount()).openByUserName("spambot", baseFragment, 1);
    }

    public static Dialog createColorSelectDialog(Activity activity, long j, int i, int i2, Runnable runnable) {
        return createColorSelectDialog(activity, j, i, i2, runnable, null);
    }

    public static Dialog createColorSelectDialog(Activity activity, final long j, final int i, final int i2, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        int i3;
        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(UserConfig.selectedAccount);
        final String sharedPrefKey = NotificationsController.getSharedPrefKey(j, i);
        int i4 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i4 != 0) {
            if (notificationsSettings.contains("color_" + sharedPrefKey)) {
                i3 = notificationsSettings.getInt("color_" + sharedPrefKey, -16776961);
            } else if (DialogObject.isChatDialog(j)) {
                i3 = notificationsSettings.getInt("GroupLed", -16776961);
            } else {
                i3 = notificationsSettings.getInt("MessagesLed", -16776961);
            }
        } else if (i2 == 1) {
            i3 = notificationsSettings.getInt("MessagesLed", -16776961);
        } else if (i2 == 0) {
            i3 = notificationsSettings.getInt("GroupLed", -16776961);
        } else {
            i3 = notificationsSettings.getInt("ChannelLed", -16776961);
        }
        final LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        String[] strArr = {LocaleController.getString("ColorRed", C3301R.string.ColorRed), LocaleController.getString("ColorOrange", C3301R.string.ColorOrange), LocaleController.getString("ColorYellow", C3301R.string.ColorYellow), LocaleController.getString("ColorGreen", C3301R.string.ColorGreen), LocaleController.getString("ColorCyan", C3301R.string.ColorCyan), LocaleController.getString("ColorBlue", C3301R.string.ColorBlue), LocaleController.getString("ColorViolet", C3301R.string.ColorViolet), LocaleController.getString("ColorPink", C3301R.string.ColorPink), LocaleController.getString("ColorWhite", C3301R.string.ColorWhite)};
        final int[] iArr = {i3};
        int i5 = 0;
        while (i5 < 9) {
            RadioColorCell radioColorCell = new RadioColorCell(activity, resourcesProvider);
            int i6 = i4;
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setTag(Integer.valueOf(i5));
            int[] iArr2 = TextColorCell.colors;
            radioColorCell.setCheckColor(iArr2[i5], iArr2[i5]);
            radioColorCell.setTextAndValue(strArr[i5], i3 == TextColorCell.colorsToSave[i5]);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda64
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createColorSelectDialog$125(linearLayout, iArr, view);
                }
            });
            i5++;
            i4 = i6;
        }
        int i7 = i4;
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
        builder.setTitle(LocaleController.getString("LedColor", C3301R.string.LedColor));
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString("Set", C3301R.string.Set), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i8) {
                AlertsCreator.lambda$createColorSelectDialog$126(j, sharedPrefKey, iArr, i, i2, runnable, dialogInterface, i8);
            }
        });
        builder.setNeutralButton(LocaleController.getString("LedDisabled", C3301R.string.LedDisabled), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i8) {
                AlertsCreator.lambda$createColorSelectDialog$127(j, i2, runnable, dialogInterface, i8);
            }
        });
        if (i7 != 0) {
            builder.setNegativeButton(LocaleController.getString("Default", C3301R.string.Default), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda20
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i8) {
                    AlertsCreator.lambda$createColorSelectDialog$128(sharedPrefKey, runnable, dialogInterface, i8);
                }
            });
        }
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createColorSelectDialog$125(LinearLayout linearLayout, int[] iArr, View view) {
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RadioColorCell radioColorCell = (RadioColorCell) linearLayout.getChildAt(i);
            radioColorCell.setChecked(radioColorCell == view, true);
        }
        iArr[0] = TextColorCell.colorsToSave[((Integer) view.getTag()).intValue()];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createColorSelectDialog$126(long j, String str, int[] iArr, int i, int i2, Runnable runnable, DialogInterface dialogInterface, int i3) {
        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        if (j != 0) {
            edit.putInt("color_" + str, iArr[0]);
            NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannel(j, i);
        } else {
            if (i2 == 1) {
                edit.putInt("MessagesLed", iArr[0]);
            } else if (i2 == 0) {
                edit.putInt("GroupLed", iArr[0]);
            } else {
                edit.putInt("ChannelLed", iArr[0]);
            }
            NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(i2);
        }
        edit.commit();
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createColorSelectDialog$127(long j, int i, Runnable runnable, DialogInterface dialogInterface, int i2) {
        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        if (j != 0) {
            edit.putInt("color_" + j, 0);
        } else if (i == 1) {
            edit.putInt("MessagesLed", 0);
        } else if (i == 0) {
            edit.putInt("GroupLed", 0);
        } else {
            edit.putInt("ChannelLed", 0);
        }
        edit.commit();
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createColorSelectDialog$128(String str, Runnable runnable, DialogInterface dialogInterface, int i) {
        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        edit.remove("color_" + str);
        edit.commit();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static Dialog createVibrationSelectDialog(Activity activity, long j, int i, boolean z, boolean z2, Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        String str;
        if (j != 0) {
            str = "vibrate_" + j;
        } else {
            str = z ? "vibrate_group" : "vibrate_messages";
        }
        return createVibrationSelectDialog(activity, j, i, str, runnable, resourcesProvider);
    }

    public static Dialog createVibrationSelectDialog(Activity activity, long j, int i, String str, Runnable runnable) {
        return createVibrationSelectDialog(activity, j, i, str, runnable, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [int] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.widget.FrameLayout, android.view.View, org.telegram.ui.Cells.RadioColorCell] */
    public static Dialog createVibrationSelectDialog(Activity activity, final long j, final int i, final String str, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        String[] strArr;
        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(UserConfig.selectedAccount);
        boolean z = true;
        final int[] iArr = new int[1];
        int i2 = 4;
        ?? r14 = 0;
        if (j != 0) {
            iArr[0] = notificationsSettings.getInt(str, 0);
            if (iArr[0] == 3) {
                iArr[0] = 2;
            } else if (iArr[0] == 2) {
                iArr[0] = 3;
            }
            strArr = new String[]{LocaleController.getString("VibrationDefault", C3301R.string.VibrationDefault), LocaleController.getString("Short", C3301R.string.Short), LocaleController.getString("Long", C3301R.string.Long), LocaleController.getString("VibrationDisabled", C3301R.string.VibrationDisabled)};
        } else {
            iArr[0] = notificationsSettings.getInt(str, 0);
            if (iArr[0] == 0) {
                iArr[0] = 1;
            } else if (iArr[0] == 1) {
                iArr[0] = 2;
            } else if (iArr[0] == 2) {
                iArr[0] = 0;
            }
            strArr = new String[]{LocaleController.getString("VibrationDisabled", C3301R.string.VibrationDisabled), LocaleController.getString("VibrationDefault", C3301R.string.VibrationDefault), LocaleController.getString("Short", C3301R.string.Short), LocaleController.getString("Long", C3301R.string.Long), LocaleController.getString("OnlyIfSilent", C3301R.string.OnlyIfSilent)};
        }
        String[] strArr2 = strArr;
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        final AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
        int i3 = 0;
        LinearLayout linearLayout2 = linearLayout;
        while (i3 < strArr2.length) {
            ?? radioColorCell = new RadioColorCell(activity, resourcesProvider);
            radioColorCell.setPadding(AndroidUtilities.m50dp(i2), r14, AndroidUtilities.m50dp(i2), r14);
            radioColorCell.setTag(Integer.valueOf(i3));
            radioColorCell.setCheckColor(Theme.getColor("radioBackground", resourcesProvider), Theme.getColor("dialogRadioBackgroundChecked", resourcesProvider));
            radioColorCell.setTextAndValue(strArr2[i3], iArr[r14] == i3 ? z : r14);
            linearLayout2.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda81
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createVibrationSelectDialog$129(iArr, j, str, i, builder, runnable, view);
                }
            });
            i3++;
            linearLayout2 = linearLayout2;
            z = true;
            i2 = 4;
            r14 = 0;
        }
        builder.setTitle(LocaleController.getString("Vibrate", C3301R.string.Vibrate));
        builder.setView(linearLayout2);
        builder.setPositiveButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createVibrationSelectDialog$129(int[] iArr, long j, String str, int i, AlertDialog.Builder builder, Runnable runnable, View view) {
        iArr[0] = ((Integer) view.getTag()).intValue();
        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        if (j != 0) {
            if (iArr[0] == 0) {
                edit.putInt(str, 0);
            } else if (iArr[0] == 1) {
                edit.putInt(str, 1);
            } else if (iArr[0] == 2) {
                edit.putInt(str, 3);
            } else if (iArr[0] == 3) {
                edit.putInt(str, 2);
            }
            NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannel(j, i);
        } else {
            if (iArr[0] == 0) {
                edit.putInt(str, 2);
            } else if (iArr[0] == 1) {
                edit.putInt(str, 0);
            } else if (iArr[0] == 2) {
                edit.putInt(str, 1);
            } else if (iArr[0] == 3) {
                edit.putInt(str, 3);
            } else if (iArr[0] == 4) {
                edit.putInt(str, 4);
            }
            if (str.equals("vibrate_channel")) {
                NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(2);
            } else if (str.equals("vibrate_group")) {
                NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(0);
            } else {
                NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(1);
            }
        }
        edit.commit();
        builder.getDismissRunnable().run();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static Dialog createLocationUpdateDialog(Activity activity, TLRPC$User tLRPC$User, final MessagesStorage.IntCallback intCallback, Theme.ResourcesProvider resourcesProvider) {
        final int[] iArr = new int[1];
        String[] strArr = {LocaleController.getString("SendLiveLocationFor15m", C3301R.string.SendLiveLocationFor15m), LocaleController.getString("SendLiveLocationFor1h", C3301R.string.SendLiveLocationFor1h), LocaleController.getString("SendLiveLocationFor8h", C3301R.string.SendLiveLocationFor8h)};
        final LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(activity);
        if (tLRPC$User != null) {
            textView.setText(LocaleController.formatString("LiveLocationAlertPrivate", C3301R.string.LiveLocationAlertPrivate, UserObject.getFirstName(tLRPC$User)));
        } else {
            textView.setText(LocaleController.getString("LiveLocationAlertGroup", C3301R.string.LiveLocationAlertGroup));
        }
        textView.setTextColor(resourcesProvider != null ? resourcesProvider.getColorOrDefault("dialogTextBlack") : Theme.getColor("dialogTextBlack"));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 24, 0, 24, 8));
        int i = 0;
        while (i < 3) {
            RadioColorCell radioColorCell = new RadioColorCell(activity, resourcesProvider);
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setTag(Integer.valueOf(i));
            radioColorCell.setCheckColor(resourcesProvider != null ? resourcesProvider.getColorOrDefault("radioBackground") : Theme.getColor("radioBackground"), resourcesProvider != null ? resourcesProvider.getColorOrDefault("dialogRadioBackgroundChecked") : Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue(strArr[i], iArr[0] == i);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda82
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createLocationUpdateDialog$130(iArr, linearLayout, view);
                }
            });
            i++;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
        builder.setTopImage(new ShareLocationDrawable(activity, 0), resourcesProvider != null ? resourcesProvider.getColorOrDefault("dialogTopBackground") : Theme.getColor("dialogTopBackground"));
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString("ShareFile", C3301R.string.ShareFile), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda50
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                AlertsCreator.lambda$createLocationUpdateDialog$131(iArr, intCallback, dialogInterface, i2);
            }
        });
        builder.setNeutralButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createLocationUpdateDialog$130(int[] iArr, LinearLayout linearLayout, View view) {
        iArr[0] = ((Integer) view.getTag()).intValue();
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = linearLayout.getChildAt(i);
            if (childAt instanceof RadioColorCell) {
                ((RadioColorCell) childAt).setChecked(childAt == view, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createLocationUpdateDialog$131(int[] iArr, MessagesStorage.IntCallback intCallback, DialogInterface dialogInterface, int i) {
        int i2;
        if (iArr[0] == 0) {
            i2 = 900;
        } else {
            i2 = iArr[0] == 1 ? 3600 : 28800;
        }
        intCallback.run(i2);
    }

    public static AlertDialog.Builder createBackgroundLocationPermissionDialog(final Activity activity, TLRPC$User tLRPC$User, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        if (activity == null || Build.VERSION.SDK_INT < 29) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, resourcesProvider);
        String readRes = RLottieDrawable.readRes(null, Theme.getCurrentTheme().isDark() ? C3301R.C3306raw.permission_map_dark : C3301R.C3306raw.permission_map);
        String readRes2 = RLottieDrawable.readRes(null, Theme.getCurrentTheme().isDark() ? C3301R.C3306raw.permission_pin_dark : C3301R.C3306raw.permission_pin);
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setClipToOutline(true);
        frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.38
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(6));
            }
        });
        View view = new View(activity);
        view.setBackground(SvgHelper.getDrawable(readRes));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 0, 0));
        View view2 = new View(activity);
        view2.setBackground(SvgHelper.getDrawable(readRes2));
        frameLayout.addView(view2, LayoutHelper.createFrame(60, 82, 17, 0, 0, 0, 0));
        BackupImageView backupImageView = new BackupImageView(activity);
        backupImageView.setRoundRadius(AndroidUtilities.m50dp(26));
        backupImageView.setForUserOrChat(tLRPC$User, new AvatarDrawable(tLRPC$User));
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(52, 52, 17, 0, 0, 0, 11));
        builder.setTopView(frameLayout);
        builder.setTopViewAspectRatio(0.37820512f);
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C3301R.string.PermissionBackgroundLocation)));
        builder.setPositiveButton(LocaleController.getString(C3301R.string.Continue), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$createBackgroundLocationPermissionDialog$132(activity, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda17
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        });
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createBackgroundLocationPermissionDialog$132(Activity activity, DialogInterface dialogInterface, int i) {
        if (activity.checkSelfPermission("android.permission.ACCESS_BACKGROUND_LOCATION") != 0) {
            activity.requestPermissions(new String[]{"android.permission.ACCESS_BACKGROUND_LOCATION"}, 30);
        }
    }

    public static AlertDialog.Builder createGigagroupConvertAlert(Activity activity, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        String readRes = RLottieDrawable.readRes(null, C3301R.C3306raw.gigagroup);
        FrameLayout frameLayout = new FrameLayout(activity);
        if (Build.VERSION.SDK_INT >= 21) {
            frameLayout.setClipToOutline(true);
            frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.39
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(6));
                }
            });
        }
        View view = new View(activity);
        view.setBackground(new BitmapDrawable(SvgHelper.getBitmap(readRes, AndroidUtilities.m50dp(320), AndroidUtilities.m51dp(127.17949f), false)));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, -1, 0, -1, -1, -1, -1));
        builder.setTopView(frameLayout);
        builder.setTopViewAspectRatio(0.3974359f);
        builder.setTitle(LocaleController.getString("GigagroupAlertTitle", C3301R.string.GigagroupAlertTitle));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("GigagroupAlertText", C3301R.string.GigagroupAlertText)));
        builder.setPositiveButton(LocaleController.getString("GigagroupAlertLearnMore", C3301R.string.GigagroupAlertLearnMore), onClickListener);
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), onClickListener2);
        return builder;
    }

    public static AlertDialog.Builder createDrawOverlayPermissionDialog(final Activity activity, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        String readRes = RLottieDrawable.readRes(null, C3301R.C3306raw.pip_video_request);
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.BL_TR, new int[]{-14535089, -14527894}));
        frameLayout.setClipToOutline(true);
        frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.40
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.m50dp(6), AndroidUtilities.dpf2(6.0f));
            }
        });
        View view = new View(activity);
        view.setBackground(new BitmapDrawable(SvgHelper.getBitmap(readRes, AndroidUtilities.m50dp(320), AndroidUtilities.m51dp(161.36752f), false)));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, -1, 0, -1, -1, -1, -1));
        builder.setTopView(frameLayout);
        builder.setTitle(LocaleController.getString("PermissionDrawAboveOtherAppsTitle", C3301R.string.PermissionDrawAboveOtherAppsTitle));
        builder.setMessage(LocaleController.getString("PermissionDrawAboveOtherApps", C3301R.string.PermissionDrawAboveOtherApps));
        builder.setPositiveButton(LocaleController.getString("Enable", C3301R.string.Enable), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$createDrawOverlayPermissionDialog$134(activity, dialogInterface, i);
            }
        });
        builder.notDrawBackgroundOnTopView(true);
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), onClickListener);
        builder.setTopViewAspectRatio(0.50427353f);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDrawOverlayPermissionDialog$134(Activity activity, DialogInterface dialogInterface, int i) {
        if (activity == null || Build.VERSION.SDK_INT < 23) {
            return;
        }
        try {
            activity.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + activity.getPackageName())));
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public static AlertDialog.Builder createDrawOverlayGroupCallPermissionDialog(final Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        String readRes = RLottieDrawable.readRes(null, C3301R.C3306raw.pip_voice_request);
        final GroupCallPipButton groupCallPipButton = new GroupCallPipButton(context, 0, true);
        groupCallPipButton.setImportantForAccessibility(2);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AlertsCreator.41
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                groupCallPipButton.setTranslationY((getMeasuredHeight() * 0.28f) - (groupCallPipButton.getMeasuredWidth() / 2.0f));
                groupCallPipButton.setTranslationX((getMeasuredWidth() * 0.82f) - (groupCallPipButton.getMeasuredWidth() / 2.0f));
            }
        };
        frameLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.BL_TR, new int[]{-15128003, -15118002}));
        frameLayout.setClipToOutline(true);
        frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AlertsCreator.42
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.m50dp(6), AndroidUtilities.dpf2(6.0f));
            }
        });
        View view = new View(context);
        view.setBackground(new BitmapDrawable(SvgHelper.getBitmap(readRes, AndroidUtilities.m50dp(320), AndroidUtilities.m51dp(184.61539f), false)));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, -1, 0, -1, -1, -1, -1));
        frameLayout.addView(groupCallPipButton, LayoutHelper.createFrame(117, 117));
        builder.setTopView(frameLayout);
        builder.setTitle(LocaleController.getString("PermissionDrawAboveOtherAppsGroupCallTitle", C3301R.string.PermissionDrawAboveOtherAppsGroupCallTitle));
        builder.setMessage(LocaleController.getString("PermissionDrawAboveOtherAppsGroupCall", C3301R.string.PermissionDrawAboveOtherAppsGroupCall));
        builder.setPositiveButton(LocaleController.getString("Enable", C3301R.string.Enable), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$createDrawOverlayGroupCallPermissionDialog$135(context, dialogInterface, i);
            }
        });
        builder.notDrawBackgroundOnTopView(true);
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        builder.setTopViewAspectRatio(0.5769231f);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDrawOverlayGroupCallPermissionDialog$135(Context context, DialogInterface dialogInterface, int i) {
        if (context != null) {
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
                    Activity findActivity = AndroidUtilities.findActivity(context);
                    if (findActivity instanceof LaunchActivity) {
                        findActivity.startActivityForResult(intent, 105);
                    } else {
                        context.startActivity(intent);
                    }
                }
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
    }

    public static AlertDialog.Builder createContactsPermissionDialog(Activity activity, final MessagesStorage.IntCallback intCallback) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTopAnimation(C3301R.C3306raw.permission_request_contacts, 72, false, Theme.getColor("dialogTopBackground"));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("ContactsPermissionAlert", C3301R.string.ContactsPermissionAlert)));
        builder.setPositiveButton(LocaleController.getString("ContactsPermissionAlertContinue", C3301R.string.ContactsPermissionAlertContinue), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda31
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MessagesStorage.IntCallback.this.run(1);
            }
        });
        builder.setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3301R.string.ContactsPermissionAlertNotNow), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda30
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MessagesStorage.IntCallback.this.run(0);
            }
        });
        return builder;
    }

    public static Dialog createFreeSpaceDialog(final LaunchActivity launchActivity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(launchActivity);
        builder.setTitle(LocaleController.getString("LowDiskSpaceTitle", C3301R.string.LowDiskSpaceTitle));
        builder.setMessage(LocaleController.getString("LowDiskSpaceMessage2", C3301R.string.LowDiskSpaceMessage2));
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("LowDiskSpaceButton", C3301R.string.LowDiskSpaceButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda44
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AlertsCreator.lambda$createFreeSpaceDialog$138(LaunchActivity.this, dialogInterface, i);
            }
        });
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createFreeSpaceDialog$138(LaunchActivity launchActivity, DialogInterface dialogInterface, int i) {
        launchActivity.lambda$runLinkRequest$86(new CacheControlActivity());
    }

    public static Dialog createPrioritySelectDialog(Activity activity, long j, int i, int i2, Runnable runnable) {
        return createPrioritySelectDialog(activity, j, i, i2, runnable, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Dialog createPrioritySelectDialog(Activity activity, final long j, final int i, final int i2, final Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        int i3;
        CharSequence[] charSequenceArr;
        int i4;
        Activity activity2 = activity;
        final SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(UserConfig.selectedAccount);
        int[] iArr = new int[1];
        int i5 = 0;
        if (j != 0) {
            iArr[0] = notificationsSettings.getInt("priority_" + j, 3);
            if (iArr[0] == 3) {
                iArr[0] = 0;
            } else if (iArr[0] == 4) {
                iArr[0] = 1;
            } else {
                i4 = 5;
                if (iArr[0] == 5) {
                    iArr[0] = 2;
                } else if (iArr[0] == 0) {
                    iArr[0] = 3;
                } else {
                    iArr[0] = 4;
                }
                CharSequence[] charSequenceArr2 = new String[i4];
                charSequenceArr2[0] = LocaleController.getString("NotificationsPrioritySettings", C3301R.string.NotificationsPrioritySettings);
                charSequenceArr2[1] = LocaleController.getString("NotificationsPriorityLow", C3301R.string.NotificationsPriorityLow);
                charSequenceArr2[2] = LocaleController.getString("NotificationsPriorityMedium", C3301R.string.NotificationsPriorityMedium);
                charSequenceArr2[3] = LocaleController.getString("NotificationsPriorityHigh", C3301R.string.NotificationsPriorityHigh);
                charSequenceArr2[4] = LocaleController.getString("NotificationsPriorityUrgent", C3301R.string.NotificationsPriorityUrgent);
                charSequenceArr = charSequenceArr2;
                i3 = 1;
            }
            i4 = 5;
            CharSequence[] charSequenceArr22 = new String[i4];
            charSequenceArr22[0] = LocaleController.getString("NotificationsPrioritySettings", C3301R.string.NotificationsPrioritySettings);
            charSequenceArr22[1] = LocaleController.getString("NotificationsPriorityLow", C3301R.string.NotificationsPriorityLow);
            charSequenceArr22[2] = LocaleController.getString("NotificationsPriorityMedium", C3301R.string.NotificationsPriorityMedium);
            charSequenceArr22[3] = LocaleController.getString("NotificationsPriorityHigh", C3301R.string.NotificationsPriorityHigh);
            charSequenceArr22[4] = LocaleController.getString("NotificationsPriorityUrgent", C3301R.string.NotificationsPriorityUrgent);
            charSequenceArr = charSequenceArr22;
            i3 = 1;
        } else {
            if (i2 == 1) {
                iArr[0] = notificationsSettings.getInt("priority_messages", 1);
            } else if (i2 == 0) {
                iArr[0] = notificationsSettings.getInt("priority_group", 1);
            } else if (i2 == 2) {
                iArr[0] = notificationsSettings.getInt("priority_channel", 1);
            }
            if (iArr[0] == 4) {
                iArr[0] = 0;
            } else if (iArr[0] == 5) {
                iArr[0] = 1;
            } else if (iArr[0] == 0) {
                iArr[0] = 2;
            } else {
                iArr[0] = 3;
            }
            i3 = 1;
            charSequenceArr = new String[]{LocaleController.getString("NotificationsPriorityLow", C3301R.string.NotificationsPriorityLow), LocaleController.getString("NotificationsPriorityMedium", C3301R.string.NotificationsPriorityMedium), LocaleController.getString("NotificationsPriorityHigh", C3301R.string.NotificationsPriorityHigh), LocaleController.getString("NotificationsPriorityUrgent", C3301R.string.NotificationsPriorityUrgent)};
        }
        LinearLayout linearLayout = new LinearLayout(activity2);
        linearLayout.setOrientation(i3);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity2, resourcesProvider);
        int i6 = 0;
        LinearLayout linearLayout2 = linearLayout;
        while (i6 < charSequenceArr.length) {
            RadioColorCell radioColorCell = new RadioColorCell(activity2, resourcesProvider);
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), i5, AndroidUtilities.m50dp(4), i5);
            radioColorCell.setTag(Integer.valueOf(i6));
            radioColorCell.setCheckColor(Theme.getColor("radioBackground", resourcesProvider), Theme.getColor("dialogRadioBackgroundChecked", resourcesProvider));
            radioColorCell.setTextAndValue(charSequenceArr[i6], iArr[i5] == i6 ? i3 : i5);
            linearLayout2.addView(radioColorCell);
            final int[] iArr2 = iArr;
            final AlertDialog.Builder builder2 = builder;
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda80
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createPrioritySelectDialog$139(iArr2, j, i, i2, notificationsSettings, builder2, runnable, view);
                }
            });
            i6++;
            activity2 = activity;
            linearLayout2 = linearLayout2;
            charSequenceArr = charSequenceArr;
            builder = builder2;
            i5 = i5;
            iArr = iArr;
            i3 = 1;
        }
        AlertDialog.Builder builder3 = builder;
        builder3.setTitle(LocaleController.getString("NotificationsImportance", C3301R.string.NotificationsImportance));
        builder3.setView(linearLayout2);
        builder3.setPositiveButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        return builder3.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createPrioritySelectDialog$139(int[] iArr, long j, int i, int i2, SharedPreferences sharedPreferences, AlertDialog.Builder builder, Runnable runnable, View view) {
        int i3 = 0;
        iArr[0] = ((Integer) view.getTag()).intValue();
        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        int i4 = 5;
        if (j != 0) {
            if (iArr[0] == 0) {
                i3 = 3;
            } else if (iArr[0] == 1) {
                i3 = 4;
            } else if (iArr[0] == 2) {
                i3 = 5;
            } else if (iArr[0] != 3) {
                i3 = 1;
            }
            edit.putInt("priority_" + j, i3);
            NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannel(j, i);
        } else {
            if (iArr[0] == 0) {
                i4 = 4;
            } else if (iArr[0] != 1) {
                i4 = iArr[0] == 2 ? 0 : 1;
            }
            if (i2 == 1) {
                edit.putInt("priority_messages", i4);
                iArr[0] = sharedPreferences.getInt("priority_messages", 1);
            } else if (i2 == 0) {
                edit.putInt("priority_group", i4);
                iArr[0] = sharedPreferences.getInt("priority_group", 1);
            } else if (i2 == 2) {
                edit.putInt("priority_channel", i4);
                iArr[0] = sharedPreferences.getInt("priority_channel", 1);
            }
            NotificationsController.getInstance(UserConfig.selectedAccount).deleteNotificationChannelGlobal(i2);
        }
        edit.commit();
        builder.getDismissRunnable().run();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static Dialog createPopupSelectDialog(Activity activity, final int i, final Runnable runnable) {
        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(UserConfig.selectedAccount);
        final int[] iArr = new int[1];
        if (i == 1) {
            iArr[0] = notificationsSettings.getInt("popupAll", 0);
        } else if (i == 0) {
            iArr[0] = notificationsSettings.getInt("popupGroup", 0);
        } else {
            iArr[0] = notificationsSettings.getInt("popupChannel", 0);
        }
        String[] strArr = {LocaleController.getString("NoPopup", C3301R.string.NoPopup), LocaleController.getString("OnlyWhenScreenOn", C3301R.string.OnlyWhenScreenOn), LocaleController.getString("OnlyWhenScreenOff", C3301R.string.OnlyWhenScreenOff), LocaleController.getString("AlwaysShowPopup", C3301R.string.AlwaysShowPopup)};
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        final AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        int i2 = 0;
        while (i2 < 4) {
            RadioColorCell radioColorCell = new RadioColorCell(activity);
            radioColorCell.setTag(Integer.valueOf(i2));
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setCheckColor(Theme.getColor("radioBackground"), Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue(strArr[i2], iArr[0] == i2);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda79
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createPopupSelectDialog$140(iArr, i, builder, runnable, view);
                }
            });
            i2++;
        }
        builder.setTitle(LocaleController.getString("PopupNotification", C3301R.string.PopupNotification));
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createPopupSelectDialog$140(int[] iArr, int i, AlertDialog.Builder builder, Runnable runnable, View view) {
        iArr[0] = ((Integer) view.getTag()).intValue();
        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(UserConfig.selectedAccount).edit();
        if (i == 1) {
            edit.putInt("popupAll", iArr[0]);
        } else if (i == 0) {
            edit.putInt("popupGroup", iArr[0]);
        } else {
            edit.putInt("popupChannel", iArr[0]);
        }
        edit.commit();
        builder.getDismissRunnable().run();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static Dialog createSingleChoiceDialog(Activity activity, String[] strArr, String str, int i, final DialogInterface.OnClickListener onClickListener) {
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        final AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        int i2 = 0;
        while (i2 < strArr.length) {
            RadioColorCell radioColorCell = new RadioColorCell(activity);
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setTag(Integer.valueOf(i2));
            radioColorCell.setCheckColor(Theme.getColor("radioBackground"), Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue(strArr[i2], i == i2);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda70
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AlertsCreator.lambda$createSingleChoiceDialog$141(AlertDialog.Builder.this, onClickListener, view);
                }
            });
            i2++;
        }
        builder.setTitle(str);
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createSingleChoiceDialog$141(AlertDialog.Builder builder, DialogInterface.OnClickListener onClickListener, View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        builder.getDismissRunnable().run();
        onClickListener.onClick(null, intValue);
    }

    public static AlertDialog.Builder createTTLAlert(Context context, final TLRPC$EncryptedChat tLRPC$EncryptedChat, Theme.ResourcesProvider resourcesProvider) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString("MessageLifetime", C3301R.string.MessageLifetime));
        final NumberPicker numberPicker = new NumberPicker(context);
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(20);
        int i = tLRPC$EncryptedChat.ttl;
        if (i > 0 && i < 16) {
            numberPicker.setValue(i);
        } else if (i == 30) {
            numberPicker.setValue(16);
        } else if (i == 60) {
            numberPicker.setValue(17);
        } else if (i == 3600) {
            numberPicker.setValue(18);
        } else if (i == 86400) {
            numberPicker.setValue(19);
        } else if (i == 604800) {
            numberPicker.setValue(20);
        } else if (i == 0) {
            numberPicker.setValue(0);
        }
        numberPicker.setFormatter(AlertsCreator$$ExternalSyntheticLambda139.INSTANCE);
        builder.setView(numberPicker);
        builder.setNegativeButton(LocaleController.getString("Done", C3301R.string.Done), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda32
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                AlertsCreator.lambda$createTTLAlert$143(TLRPC$EncryptedChat.this, numberPicker, dialogInterface, i2);
            }
        });
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createTTLAlert$142(int i) {
        if (i == 0) {
            return LocaleController.getString("ShortMessageLifetimeForever", C3301R.string.ShortMessageLifetimeForever);
        }
        if (i < 1 || i >= 16) {
            if (i == 16) {
                return LocaleController.formatTTLString(30);
            }
            if (i == 17) {
                return LocaleController.formatTTLString(60);
            }
            if (i == 18) {
                return LocaleController.formatTTLString(3600);
            }
            if (i == 19) {
                return LocaleController.formatTTLString(86400);
            }
            return i == 20 ? LocaleController.formatTTLString(604800) : "";
        }
        return LocaleController.formatTTLString(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createTTLAlert$143(TLRPC$EncryptedChat tLRPC$EncryptedChat, NumberPicker numberPicker, DialogInterface dialogInterface, int i) {
        int i2 = tLRPC$EncryptedChat.ttl;
        int value = numberPicker.getValue();
        if (value >= 0 && value < 16) {
            tLRPC$EncryptedChat.ttl = value;
        } else if (value == 16) {
            tLRPC$EncryptedChat.ttl = 30;
        } else if (value == 17) {
            tLRPC$EncryptedChat.ttl = 60;
        } else if (value == 18) {
            tLRPC$EncryptedChat.ttl = 3600;
        } else if (value == 19) {
            tLRPC$EncryptedChat.ttl = 86400;
        } else if (value == 20) {
            tLRPC$EncryptedChat.ttl = 604800;
        }
        if (i2 != tLRPC$EncryptedChat.ttl) {
            SecretChatHelper.getInstance(UserConfig.selectedAccount).sendTTLMessage(tLRPC$EncryptedChat, null);
            MessagesStorage.getInstance(UserConfig.selectedAccount).updateEncryptedChatTTL(tLRPC$EncryptedChat);
        }
    }

    public static AlertDialog createAccountSelectDialog(Activity activity, final AccountSelectDelegate accountSelectDelegate) {
        if (UserConfig.getActivatedAccountsCount() < 2) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        final Runnable dismissRunnable = builder.getDismissRunnable();
        final AlertDialog[] alertDialogArr = new AlertDialog[1];
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        for (int i = 0; i < 5; i++) {
            if (UserConfig.getInstance(i).getCurrentUser() != null) {
                AccountSelectCell accountSelectCell = new AccountSelectCell(activity, false);
                accountSelectCell.setAccount(i, false);
                accountSelectCell.setPadding(AndroidUtilities.m50dp(14), 0, AndroidUtilities.m50dp(14), 0);
                accountSelectCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                linearLayout.addView(accountSelectCell, LayoutHelper.createLinear(-1, 50));
                accountSelectCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda85
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AlertsCreator.lambda$createAccountSelectDialog$144(alertDialogArr, dismissRunnable, accountSelectDelegate, view);
                    }
                });
            }
        }
        builder.setTitle(LocaleController.getString("SelectAccount", C3301R.string.SelectAccount));
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        AlertDialog create = builder.create();
        alertDialogArr[0] = create;
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createAccountSelectDialog$144(AlertDialog[] alertDialogArr, Runnable runnable, AccountSelectDelegate accountSelectDelegate, View view) {
        if (alertDialogArr[0] != null) {
            alertDialogArr[0].setOnDismissListener(null);
        }
        runnable.run();
        accountSelectDelegate.didSelectAccount(((AccountSelectCell) view).getAccountNumber());
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x063a  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0707  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0711  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0742  */
    /* JADX WARN: Removed duplicated region for block: B:378:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void createDeleteMessagesAlert(final org.telegram.p048ui.ActionBar.BaseFragment r43, final org.telegram.tgnet.TLRPC$User r44, final org.telegram.tgnet.TLRPC$Chat r45, final org.telegram.tgnet.TLRPC$EncryptedChat r46, final org.telegram.tgnet.TLRPC$ChatFull r47, final long r48, final org.telegram.messenger.MessageObject r50, final android.util.SparseArray<org.telegram.messenger.MessageObject>[] r51, final org.telegram.messenger.MessageObject.GroupedMessages r52, final boolean r53, int r54, final java.lang.Runnable r55, final java.lang.Runnable r56, final org.telegram.p048ui.ActionBar.Theme.ResourcesProvider r57) {
        /*
            Method dump skipped, instructions count: 1868
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.AlertsCreator.createDeleteMessagesAlert(org.telegram.ui.ActionBar.BaseFragment, org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$EncryptedChat, org.telegram.tgnet.TLRPC$ChatFull, long, org.telegram.messenger.MessageObject, android.util.SparseArray[], org.telegram.messenger.MessageObject$GroupedMessages, boolean, int, java.lang.Runnable, java.lang.Runnable, org.telegram.ui.ActionBar.Theme$ResourcesProvider):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDeleteMessagesAlert$146(final AlertDialog[] alertDialogArr, final BaseFragment baseFragment, final TLRPC$User tLRPC$User, final TLRPC$Chat tLRPC$Chat, final TLRPC$EncryptedChat tLRPC$EncryptedChat, final TLRPC$ChatFull tLRPC$ChatFull, final long j, final MessageObject messageObject, final SparseArray[] sparseArrayArr, final MessageObject.GroupedMessages groupedMessages, final boolean z, final Runnable runnable, final Runnable runnable2, final Theme.ResourcesProvider resourcesProvider, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda117
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.lambda$createDeleteMessagesAlert$145(alertDialogArr, tLObject, tLRPC$TL_error, baseFragment, tLRPC$User, tLRPC$Chat, tLRPC$EncryptedChat, tLRPC$ChatFull, j, messageObject, sparseArrayArr, groupedMessages, z, runnable, runnable2, resourcesProvider);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDeleteMessagesAlert$145(AlertDialog[] alertDialogArr, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error, BaseFragment baseFragment, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, TLRPC$EncryptedChat tLRPC$EncryptedChat, TLRPC$ChatFull tLRPC$ChatFull, long j, MessageObject messageObject, SparseArray[] sparseArrayArr, MessageObject.GroupedMessages groupedMessages, boolean z, Runnable runnable, Runnable runnable2, Theme.ResourcesProvider resourcesProvider) {
        int i;
        int i2 = 0;
        try {
            alertDialogArr[0].dismiss();
        } catch (Throwable unused) {
        }
        alertDialogArr[0] = null;
        if (tLObject != null) {
            TLRPC$ChannelParticipant tLRPC$ChannelParticipant = ((TLRPC$TL_channels_channelParticipant) tLObject).participant;
            if ((tLRPC$ChannelParticipant instanceof TLRPC$TL_channelParticipantAdmin) || (tLRPC$ChannelParticipant instanceof TLRPC$TL_channelParticipantCreator)) {
                i2 = 2;
            }
        } else if (tLRPC$TL_error == null || !"USER_NOT_PARTICIPANT".equals(tLRPC$TL_error.text)) {
            i = 2;
            createDeleteMessagesAlert(baseFragment, tLRPC$User, tLRPC$Chat, tLRPC$EncryptedChat, tLRPC$ChatFull, j, messageObject, sparseArrayArr, groupedMessages, z, i, runnable, runnable2, resourcesProvider);
        }
        i = i2;
        createDeleteMessagesAlert(baseFragment, tLRPC$User, tLRPC$Chat, tLRPC$EncryptedChat, tLRPC$ChatFull, j, messageObject, sparseArrayArr, groupedMessages, z, i, runnable, runnable2, resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDeleteMessagesAlert$148(AlertDialog[] alertDialogArr, final int i, final int i2, BaseFragment baseFragment) {
        if (alertDialogArr[0] == null) {
            return;
        }
        alertDialogArr[0].setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                AlertsCreator.lambda$createDeleteMessagesAlert$147(i, i2, dialogInterface);
            }
        });
        baseFragment.showDialog(alertDialogArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDeleteMessagesAlert$147(int i, int i2, DialogInterface dialogInterface) {
        ConnectionsManager.getInstance(i).cancelRequest(i2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDeleteMessagesAlert$149(boolean[] zArr, View view) {
        if (view.isEnabled()) {
            CheckBoxCell checkBoxCell = (CheckBoxCell) view;
            Integer num = (Integer) checkBoxCell.getTag();
            zArr[num.intValue()] = !zArr[num.intValue()];
            checkBoxCell.setChecked(zArr[num.intValue()], true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDeleteMessagesAlert$150(boolean[] zArr, View view) {
        zArr[0] = !zArr[0];
        ((CheckBoxCell) view).setChecked(zArr[0], true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDeleteMessagesAlert$151(boolean[] zArr, View view) {
        zArr[0] = !zArr[0];
        ((CheckBoxCell) view).setChecked(zArr[0], true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$createDeleteMessagesAlert$153(MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, TLRPC$EncryptedChat tLRPC$EncryptedChat, int i, long j, boolean[] zArr, boolean z, SparseArray[] sparseArrayArr, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, boolean[] zArr2, TLRPC$Chat tLRPC$Chat2, Runnable runnable, DialogInterface dialogInterface, int i2) {
        int i3;
        ArrayList<Integer> arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        int i4 = 10;
        ArrayList arrayList4 = null;
        int i5 = 0;
        if (messageObject != null) {
            ArrayList<Integer> arrayList5 = new ArrayList<>();
            if (groupedMessages != null) {
                for (int i6 = 0; i6 < groupedMessages.messages.size(); i6++) {
                    MessageObject messageObject2 = groupedMessages.messages.get(i6);
                    arrayList5.add(Integer.valueOf(messageObject2.getId()));
                    if (tLRPC$EncryptedChat != null && messageObject2.messageOwner.random_id != 0 && messageObject2.type != 10) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(Long.valueOf(messageObject2.messageOwner.random_id));
                    }
                }
            } else {
                arrayList5.add(Integer.valueOf(messageObject.getId()));
                if (tLRPC$EncryptedChat != null && messageObject.messageOwner.random_id != 0 && messageObject.type != 10) {
                    ArrayList arrayList6 = new ArrayList();
                    arrayList6.add(Long.valueOf(messageObject.messageOwner.random_id));
                    arrayList3 = arrayList6;
                    arrayList = arrayList5;
                    i3 = 0;
                    MessagesController.getInstance(i).deleteMessages(arrayList5, arrayList3, tLRPC$EncryptedChat, j, zArr[0], z);
                }
            }
            arrayList3 = arrayList4;
            arrayList = arrayList5;
            i3 = 0;
            MessagesController.getInstance(i).deleteMessages(arrayList5, arrayList3, tLRPC$EncryptedChat, j, zArr[0], z);
        } else {
            ArrayList<Integer> arrayList7 = null;
            int i7 = 1;
            while (i7 >= 0) {
                ArrayList<Integer> arrayList8 = new ArrayList<>();
                for (int i8 = i5; i8 < sparseArrayArr[i7].size(); i8++) {
                    arrayList8.add(Integer.valueOf(sparseArrayArr[i7].keyAt(i8)));
                }
                if (!arrayList8.isEmpty()) {
                    long j2 = ((MessageObject) sparseArrayArr[i7].get(arrayList8.get(i5).intValue())).messageOwner.peer_id.channel_id;
                }
                if (tLRPC$EncryptedChat != null) {
                    ArrayList arrayList9 = new ArrayList();
                    for (int i9 = i5; i9 < sparseArrayArr[i7].size(); i9++) {
                        MessageObject messageObject3 = (MessageObject) sparseArrayArr[i7].valueAt(i9);
                        long j3 = messageObject3.messageOwner.random_id;
                        if (j3 != 0 && messageObject3.type != i4) {
                            arrayList9.add(Long.valueOf(j3));
                        }
                    }
                    arrayList2 = arrayList9;
                } else {
                    arrayList2 = null;
                }
                MessagesController.getInstance(i).deleteMessages(arrayList8, arrayList2, tLRPC$EncryptedChat, j, zArr[i5], z);
                sparseArrayArr[i7].clear();
                i7--;
                i5 = i5;
                arrayList7 = arrayList8;
                i4 = 10;
            }
            i3 = i5;
            arrayList = arrayList7;
        }
        if (tLRPC$User != null || tLRPC$Chat != null) {
            if (zArr2[i3]) {
                MessagesController.getInstance(i).deleteParticipantFromChat(tLRPC$Chat2.f1500id, tLRPC$User, tLRPC$Chat, false, false);
            }
            if (zArr2[1]) {
                TLRPC$TL_channels_reportSpam tLRPC$TL_channels_reportSpam = new TLRPC$TL_channels_reportSpam();
                tLRPC$TL_channels_reportSpam.channel = MessagesController.getInputChannel(tLRPC$Chat2);
                if (tLRPC$User != null) {
                    tLRPC$TL_channels_reportSpam.participant = MessagesController.getInputPeer(tLRPC$User);
                } else {
                    tLRPC$TL_channels_reportSpam.participant = MessagesController.getInputPeer(tLRPC$Chat);
                }
                tLRPC$TL_channels_reportSpam.f1544id = arrayList;
                ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_channels_reportSpam, AlertsCreator$$ExternalSyntheticLambda127.INSTANCE);
            }
            if (zArr2[2]) {
                MessagesController.getInstance(i).deleteUserChannelHistory(tLRPC$Chat2, tLRPC$User, tLRPC$Chat, i3);
            }
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createDeleteMessagesAlert$154(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void createThemeCreateDialog(final BaseFragment baseFragment, int i, final Theme.ThemeInfo themeInfo, final Theme.ThemeAccent themeAccent) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        Activity parentActivity = baseFragment.getParentActivity();
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(parentActivity);
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setLineColors(Theme.getColor("dialogInputField"), Theme.getColor("dialogInputFieldActivated"), Theme.getColor("dialogTextRed"));
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity);
        builder.setTitle(LocaleController.getString("NewTheme", C3301R.string.NewTheme));
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("Create", C3301R.string.Create), AlertsCreator$$ExternalSyntheticLambda51.INSTANCE);
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        builder.setView(linearLayout);
        TextView textView = new TextView(parentActivity);
        if (i != 0) {
            textView.setText(AndroidUtilities.replaceTags(LocaleController.getString("EnterThemeNameEdit", C3301R.string.EnterThemeNameEdit)));
        } else {
            textView.setText(LocaleController.getString("EnterThemeName", C3301R.string.EnterThemeName));
        }
        textView.setTextSize(1, 16.0f);
        textView.setPadding(AndroidUtilities.m50dp(23), AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(23), AndroidUtilities.m50dp(6));
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
        editTextBoldCursor.setTextSize(1, 16.0f);
        editTextBoldCursor.setTextColor(Theme.getColor("dialogTextBlack"));
        editTextBoldCursor.setMaxLines(1);
        editTextBoldCursor.setLines(1);
        editTextBoldCursor.setInputType(16385);
        editTextBoldCursor.setGravity(51);
        editTextBoldCursor.setSingleLine(true);
        editTextBoldCursor.setImeOptions(6);
        editTextBoldCursor.setCursorColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        editTextBoldCursor.setCursorSize(AndroidUtilities.m50dp(20));
        editTextBoldCursor.setCursorWidth(1.5f);
        editTextBoldCursor.setPadding(0, AndroidUtilities.m50dp(4), 0, 0);
        linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, 36, 51, 24, 6, 24, 0));
        editTextBoldCursor.setOnEditorActionListener(AlertsCreator$$ExternalSyntheticLambda107.INSTANCE);
        editTextBoldCursor.setText(generateThemeName(themeAccent));
        editTextBoldCursor.setSelection(editTextBoldCursor.length());
        final AlertDialog create = builder.create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda60
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                AlertsCreator.lambda$createThemeCreateDialog$158(EditTextBoldCursor.this, dialogInterface);
            }
        });
        baseFragment.showDialog(create);
        editTextBoldCursor.requestFocus();
        create.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda71
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertsCreator.lambda$createThemeCreateDialog$161(BaseFragment.this, editTextBoldCursor, themeAccent, themeInfo, create, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createThemeCreateDialog$158(final EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda113
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.lambda$createThemeCreateDialog$157(EditTextBoldCursor.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createThemeCreateDialog$157(EditTextBoldCursor editTextBoldCursor) {
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createThemeCreateDialog$161(final BaseFragment baseFragment, final EditTextBoldCursor editTextBoldCursor, Theme.ThemeAccent themeAccent, Theme.ThemeInfo themeInfo, final AlertDialog alertDialog, View view) {
        if (baseFragment.getParentActivity() == null) {
            return;
        }
        if (editTextBoldCursor.length() == 0) {
            Vibrator vibrator = (Vibrator) ApplicationLoader.applicationContext.getSystemService("vibrator");
            if (vibrator != null) {
                vibrator.vibrate(200L);
            }
            AndroidUtilities.shakeView(editTextBoldCursor);
            return;
        }
        if (baseFragment instanceof ThemePreviewActivity) {
            Theme.applyPreviousTheme();
            baseFragment.finishFragment();
        }
        if (themeAccent != null) {
            themeInfo.setCurrentAccentId(themeAccent.f1656id);
            Theme.refreshThemeColors();
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda114
                @Override // java.lang.Runnable
                public final void run() {
                    AlertsCreator.lambda$createThemeCreateDialog$160(EditTextBoldCursor.this, alertDialog, baseFragment);
                }
            });
            return;
        }
        processCreate(editTextBoldCursor, alertDialog, baseFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createThemeCreateDialog$160(final EditTextBoldCursor editTextBoldCursor, final AlertDialog alertDialog, final BaseFragment baseFragment) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda115
            @Override // java.lang.Runnable
            public final void run() {
                AlertsCreator.processCreate(EditTextBoldCursor.this, alertDialog, baseFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void processCreate(EditTextBoldCursor editTextBoldCursor, AlertDialog alertDialog, BaseFragment baseFragment) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        AndroidUtilities.hideKeyboard(editTextBoldCursor);
        Theme.ThemeInfo createNewTheme = Theme.createNewTheme(editTextBoldCursor.getText().toString());
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.themeListUpdated, new Object[0]);
        new ThemeEditorView().show(baseFragment.getParentActivity(), createNewTheme);
        alertDialog.dismiss();
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        if (globalMainSettings.getBoolean("themehint", false)) {
            return;
        }
        globalMainSettings.edit().putBoolean("themehint", true).commit();
        try {
            Toast.makeText(baseFragment.getParentActivity(), LocaleController.getString("CreateNewThemeHelp", C3301R.string.CreateNewThemeHelp), 1).show();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    private static String generateThemeName(Theme.ThemeAccent themeAccent) {
        int i;
        List asList = Arrays.asList("Ancient", "Antique", "Autumn", "Baby", "Barely", "Baroque", "Blazing", "Blushing", "Bohemian", "Bubbly", "Burning", "Buttered", "Classic", "Clear", "Cool", "Cosmic", "Cotton", "Cozy", "Crystal", "Dark", "Daring", "Darling", "Dawn", "Dazzling", "Deep", "Deepest", "Delicate", "Delightful", "Divine", "Double", "Downtown", "Dreamy", "Dusky", "Dusty", "Electric", "Enchanted", "Endless", "Evening", "Fantastic", "Flirty", "Forever", "Frigid", "Frosty", "Frozen", "Gentle", "Heavenly", "Hyper", "Icy", "Infinite", "Innocent", "Instant", "Luscious", "Lunar", "Lustrous", "Magic", "Majestic", "Mambo", "Midnight", "Millenium", "Morning", "Mystic", "Natural", "Neon", "Night", "Opaque", "Paradise", "Perfect", "Perky", "Polished", "Powerful", "Rich", "Royal", "Sheer", "Simply", "Sizzling", "Solar", "Sparkling", "Splendid", "Spicy", "Spring", "Stellar", "Sugared", "Summer", "Sunny", "Super", "Sweet", "Tender", "Tenacious", "Tidal", "Toasted", "Totally", "Tranquil", "Tropical", "True", "Twilight", "Twinkling", "Ultimate", "Ultra", "Velvety", "Vibrant", "Vintage", "Virtual", "Warm", "Warmest", "Whipped", "Wild", "Winsome");
        List asList2 = Arrays.asList("Ambrosia", "Attack", "Avalanche", "Blast", "Bliss", "Blossom", "Blush", "Burst", "Butter", "Candy", "Carnival", "Charm", "Chiffon", "Cloud", "Comet", "Delight", "Dream", "Dust", "Fantasy", "Flame", "Flash", "Fire", "Freeze", "Frost", "Glade", "Glaze", "Gleam", "Glimmer", "Glitter", "Glow", "Grande", "Haze", "Highlight", "Ice", "Illusion", "Intrigue", "Jewel", "Jubilee", "Kiss", "Lights", "Lollypop", "Love", "Luster", "Madness", "Matte", "Mirage", "Mist", "Moon", "Muse", "Myth", "Nectar", "Nova", "Parfait", "Passion", "Pop", "Rain", "Reflection", "Rhapsody", "Romance", "Satin", "Sensation", "Silk", "Shine", "Shadow", "Shimmer", "Sky", "Spice", "Star", "Sugar", "Sunrise", "Sunset", "Sun", "Twist", "Unbound", "Velvet", "Vibrant", "Waters", "Wine", "Wink", "Wonder", "Zone");
        HashMap hashMap = new HashMap();
        hashMap.put(9306112, "Berry");
        hashMap.put(14598550, "Brandy");
        hashMap.put(8391495, "Cherry");
        hashMap.put(16744272, "Coral");
        hashMap.put(14372985, "Cranberry");
        hashMap.put(14423100, "Crimson");
        hashMap.put(14725375, "Mauve");
        hashMap.put(16761035, "Pink");
        hashMap.put(16711680, "Red");
        hashMap.put(16711807, "Rose");
        hashMap.put(8406555, "Russet");
        hashMap.put(16720896, "Scarlet");
        hashMap.put(15856113, "Seashell");
        hashMap.put(16724889, "Strawberry");
        hashMap.put(16760576, "Amber");
        hashMap.put(15438707, "Apricot");
        hashMap.put(16508850, "Banana");
        hashMap.put(10601738, "Citrus");
        hashMap.put(11560192, "Ginger");
        hashMap.put(16766720, "Gold");
        hashMap.put(16640272, "Lemon");
        hashMap.put(16753920, "Orange");
        hashMap.put(16770484, "Peach");
        hashMap.put(16739155, "Persimmon");
        hashMap.put(14996514, "Sunflower");
        hashMap.put(15893760, "Tangerine");
        hashMap.put(16763004, "Topaz");
        hashMap.put(16776960, "Yellow");
        hashMap.put(3688720, "Clover");
        hashMap.put(8628829, "Cucumber");
        hashMap.put(5294200, "Emerald");
        hashMap.put(11907932, "Olive");
        hashMap.put(65280, "Green");
        hashMap.put(43115, "Jade");
        hashMap.put(2730887, "Jungle");
        hashMap.put(12582656, "Lime");
        hashMap.put(776785, "Malachite");
        hashMap.put(10026904, "Mint");
        hashMap.put(11394989, "Moss");
        hashMap.put(3234721, "Azure");
        hashMap.put(255, "Blue");
        hashMap.put(18347, "Cobalt");
        hashMap.put(5204422, "Indigo");
        hashMap.put(96647, "Lagoon");
        hashMap.put(7461346, "Aquamarine");
        hashMap.put(1182351, "Ultramarine");
        hashMap.put(128, "Navy");
        hashMap.put(3101086, "Sapphire");
        hashMap.put(7788522, "Sky");
        hashMap.put(32896, "Teal");
        hashMap.put(4251856, "Turquoise");
        hashMap.put(10053324, "Amethyst");
        hashMap.put(5046581, "Blackberry");
        hashMap.put(6373457, "Eggplant");
        hashMap.put(13148872, "Lilac");
        hashMap.put(11894492, "Lavender");
        hashMap.put(13421823, "Periwinkle");
        hashMap.put(8663417, "Plum");
        hashMap.put(6684825, "Purple");
        hashMap.put(14204888, "Thistle");
        hashMap.put(14315734, "Orchid");
        hashMap.put(2361920, "Violet");
        hashMap.put(4137225, "Bronze");
        hashMap.put(3604994, "Chocolate");
        hashMap.put(8077056, "Cinnamon");
        hashMap.put(3153694, "Cocoa");
        hashMap.put(7365973, "Coffee");
        hashMap.put(7956873, "Rum");
        hashMap.put(5113350, "Mahogany");
        hashMap.put(7875865, "Mocha");
        hashMap.put(12759680, "Sand");
        hashMap.put(8924439, "Sienna");
        hashMap.put(7864585, "Maple");
        hashMap.put(15787660, "Khaki");
        hashMap.put(12088115, "Copper");
        hashMap.put(12144200, "Chestnut");
        hashMap.put(15653316, "Almond");
        hashMap.put(16776656, "Cream");
        hashMap.put(12186367, "Diamond");
        hashMap.put(11109127, "Honey");
        hashMap.put(16777200, "Ivory");
        hashMap.put(15392968, "Pearl");
        hashMap.put(15725299, "Porcelain");
        hashMap.put(13745832, "Vanilla");
        hashMap.put(16777215, "White");
        hashMap.put(8421504, "Gray");
        hashMap.put(0, "Black");
        hashMap.put(15266260, "Chrome");
        hashMap.put(3556687, "Charcoal");
        hashMap.put(789277, "Ebony");
        hashMap.put(12632256, "Silver");
        hashMap.put(16119285, "Smoke");
        hashMap.put(2499381, "Steel");
        hashMap.put(5220413, "Apple");
        hashMap.put(8434628, "Glacier");
        hashMap.put(16693933, "Melon");
        hashMap.put(12929932, "Mulberry");
        hashMap.put(11126466, "Opal");
        hashMap.put(5547512, "Blue");
        Theme.ThemeAccent accent = themeAccent == null ? Theme.getCurrentTheme().getAccent(false) : themeAccent;
        if (accent == null || (i = accent.accentColor) == 0) {
            i = AndroidUtilities.calcDrawableColor(Theme.getCachedWallpaper())[0];
        }
        String str = null;
        int i2 = Integer.MAX_VALUE;
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        for (Map.Entry entry : hashMap.entrySet()) {
            Integer num = (Integer) entry.getKey();
            int red2 = Color.red(num.intValue());
            int i3 = (red + red2) / 2;
            int i4 = red - red2;
            int green2 = green - Color.green(num.intValue());
            int blue2 = blue - Color.blue(num.intValue());
            int i5 = ((((i3 + 512) * i4) * i4) >> 8) + (green2 * 4 * green2) + ((((767 - i3) * blue2) * blue2) >> 8);
            if (i5 < i2) {
                str = (String) entry.getValue();
                i2 = i5;
            }
        }
        if (Utilities.random.nextInt() % 2 == 0) {
            return ((String) asList.get(Utilities.random.nextInt(asList.size()))) + " " + str;
        }
        return str + " " + ((String) asList2.get(Utilities.random.nextInt(asList2.size())));
    }

    public static ActionBarPopupWindow showPopupMenu(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, View view, int i, int i2) {
        final Rect rect = new Rect();
        final ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
        if (Build.VERSION.SDK_INT >= 19) {
            actionBarPopupWindow.setAnimationStyle(0);
        } else {
            actionBarPopupWindow.setAnimationStyle(C3301R.style.PopupAnimation);
        }
        actionBarPopupWindow.setAnimationEnabled(true);
        actionBarPopupWindow.setOutsideTouchable(true);
        actionBarPopupWindow.setClippingEnabled(true);
        actionBarPopupWindow.setInputMethodMode(2);
        actionBarPopupWindow.setSoftInputMode(0);
        actionBarPopupWindow.setFocusable(true);
        actionBarPopupWindowLayout.setFocusableInTouchMode(true);
        actionBarPopupWindowLayout.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda96
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view2, int i3, KeyEvent keyEvent) {
                boolean lambda$showPopupMenu$162;
                lambda$showPopupMenu$162 = AlertsCreator.lambda$showPopupMenu$162(ActionBarPopupWindow.this, view2, i3, keyEvent);
                return lambda$showPopupMenu$162;
            }
        });
        actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x - AndroidUtilities.m50dp(40), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.y, Integer.MIN_VALUE));
        actionBarPopupWindow.showAsDropDown(view, i, i2);
        actionBarPopupWindowLayout.updateRadialSelectors();
        actionBarPopupWindow.startAnimation();
        actionBarPopupWindowLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda97
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean lambda$showPopupMenu$163;
                lambda$showPopupMenu$163 = AlertsCreator.lambda$showPopupMenu$163(ActionBarPopupWindow.this, rect, view2, motionEvent);
                return lambda$showPopupMenu$163;
            }
        });
        return actionBarPopupWindow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$showPopupMenu$162(ActionBarPopupWindow actionBarPopupWindow, View view, int i, KeyEvent keyEvent) {
        if (i == 82 && keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 1 && actionBarPopupWindow.isShowing()) {
            actionBarPopupWindow.dismiss();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$showPopupMenu$163(ActionBarPopupWindow actionBarPopupWindow, Rect rect, View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0 && actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            view.getHitRect(rect);
            if (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
            actionBarPopupWindow.dismiss();
            return false;
        }
        return false;
    }
}
