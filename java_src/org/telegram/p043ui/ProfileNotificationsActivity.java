package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.Settings;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.NotificationsSettingsFacade;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.RadioCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCheckBoxCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextColorCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Cells.UserCell2;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.ChatAvatarContainer;
import org.telegram.p043ui.Components.Forum.ForumUtilities;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.NotificationsSettingsActivity;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_peerNotifySettings;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.ProfileNotificationsActivity */
/* loaded from: classes5.dex */
public class ProfileNotificationsActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private ListAdapter adapter;
    private boolean addingException;
    private AnimatorSet animatorSet;
    ChatAvatarContainer avatarContainer;
    private int avatarRow;
    private int avatarSectionRow;
    private int callsRow;
    private int callsVibrateRow;
    private int colorRow;
    private int customResetRow;
    private int customResetShadowRow;
    private ProfileNotificationsActivityDelegate delegate;
    private long dialogId;
    private int enableRow;
    private int generalRow;
    private boolean isInTop5Peers;
    private int ledInfoRow;
    private int ledRow;
    private RecyclerListView listView;
    private boolean needReset;
    private boolean notificationsEnabled;
    private int popupDisabledRow;
    private int popupEnabledRow;
    private int popupInfoRow;
    private int popupRow;
    private int previewRow;
    private int priorityInfoRow;
    private int priorityRow;
    private Theme.ResourcesProvider resourcesProvider;
    private int ringtoneInfoRow;
    private int ringtoneRow;
    private int rowCount;
    private int smartRow;
    private int soundRow;
    private int storiesRow;
    private int topicId;
    private int vibrateRow;

    /* renamed from: org.telegram.ui.ProfileNotificationsActivity$ProfileNotificationsActivityDelegate */
    /* loaded from: classes5.dex */
    public interface ProfileNotificationsActivityDelegate {

        /* renamed from: org.telegram.ui.ProfileNotificationsActivity$ProfileNotificationsActivityDelegate$-CC  reason: invalid class name */
        /* loaded from: classes5.dex */
        public final /* synthetic */ class CC {
            public static void $default$didRemoveException(ProfileNotificationsActivityDelegate profileNotificationsActivityDelegate, long j) {
            }
        }

        void didCreateNewException(NotificationsSettingsActivity.NotificationException notificationException);

        void didRemoveException(long j);
    }

    public ProfileNotificationsActivity(Bundle bundle) {
        this(bundle, null);
    }

    public ProfileNotificationsActivity(Bundle bundle, Theme.ResourcesProvider resourcesProvider) {
        super(bundle);
        this.resourcesProvider = resourcesProvider;
        this.dialogId = bundle.getLong("dialog_id");
        this.topicId = bundle.getInt("topic_id");
        this.addingException = bundle.getBoolean("exception", false);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0181  */
    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onFragmentCreate() {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileNotificationsActivity.onFragmentCreate():boolean");
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (!this.needReset) {
            String sharedPrefKey = NotificationsController.getSharedPrefKey(this.dialogId, this.topicId);
            SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
            edit.putBoolean("custom_" + sharedPrefKey, true).apply();
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.notificationsSettingsUpdated);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public Theme.ResourcesProvider getResourceProvider() {
        return this.resourcesProvider;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_avatar_actionBarSelectorBlue, this.resourcesProvider), false);
        this.actionBar.setItemsColor(Theme.getColor(Theme.key_actionBarDefaultIcon, this.resourcesProvider), false);
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        final String sharedPrefKey = NotificationsController.getSharedPrefKey(this.dialogId, this.topicId);
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ProfileNotificationsActivity.1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    if (!ProfileNotificationsActivity.this.addingException && ProfileNotificationsActivity.this.notificationsEnabled) {
                        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(((BaseFragment) ProfileNotificationsActivity.this).currentAccount).edit();
                        edit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 0).apply();
                    }
                } else if (i == 1) {
                    SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(((BaseFragment) ProfileNotificationsActivity.this).currentAccount);
                    SharedPreferences.Editor edit2 = notificationsSettings.edit();
                    edit2.putBoolean("custom_" + sharedPrefKey, true);
                    TLRPC$Dialog tLRPC$Dialog = MessagesController.getInstance(((BaseFragment) ProfileNotificationsActivity.this).currentAccount).dialogs_dict.get(ProfileNotificationsActivity.this.dialogId);
                    if (ProfileNotificationsActivity.this.notificationsEnabled) {
                        edit2.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 0);
                        if (ProfileNotificationsActivity.this.topicId == 0) {
                            MessagesStorage.getInstance(((BaseFragment) ProfileNotificationsActivity.this).currentAccount).setDialogFlags(ProfileNotificationsActivity.this.dialogId, 0L);
                            if (tLRPC$Dialog != null) {
                                tLRPC$Dialog.notify_settings = new TLRPC$TL_peerNotifySettings();
                            }
                        }
                    } else {
                        edit2.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 2);
                        if (ProfileNotificationsActivity.this.topicId == 0) {
                            NotificationsController.getInstance(((BaseFragment) ProfileNotificationsActivity.this).currentAccount).removeNotificationsForDialog(ProfileNotificationsActivity.this.dialogId);
                            MessagesStorage.getInstance(((BaseFragment) ProfileNotificationsActivity.this).currentAccount).setDialogFlags(ProfileNotificationsActivity.this.dialogId, 1L);
                            if (tLRPC$Dialog != null) {
                                TLRPC$TL_peerNotifySettings tLRPC$TL_peerNotifySettings = new TLRPC$TL_peerNotifySettings();
                                tLRPC$Dialog.notify_settings = tLRPC$TL_peerNotifySettings;
                                tLRPC$TL_peerNotifySettings.mute_until = Integer.MAX_VALUE;
                            }
                        }
                    }
                    edit2.apply();
                    NotificationsController.getInstance(((BaseFragment) ProfileNotificationsActivity.this).currentAccount).updateServerNotificationsSettings(ProfileNotificationsActivity.this.dialogId, ProfileNotificationsActivity.this.topicId);
                    if (ProfileNotificationsActivity.this.delegate != null) {
                        NotificationsSettingsActivity.NotificationException notificationException = new NotificationsSettingsActivity.NotificationException();
                        notificationException.did = ProfileNotificationsActivity.this.dialogId;
                        notificationException.hasCustom = true;
                        int i2 = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 0);
                        notificationException.notify = i2;
                        if (i2 != 0) {
                            notificationException.muteUntil = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + sharedPrefKey, 0);
                        }
                        ProfileNotificationsActivity.this.delegate.didCreateNewException(notificationException);
                    }
                }
                ProfileNotificationsActivity.this.finishFragment();
            }
        });
        ChatAvatarContainer chatAvatarContainer = new ChatAvatarContainer(context, null, false, this.resourcesProvider);
        this.avatarContainer = chatAvatarContainer;
        chatAvatarContainer.setOccupyStatusBar(!AndroidUtilities.isTablet());
        this.actionBar.addView(this.avatarContainer, 0, LayoutHelper.createFrame(-2, -1, 51, !this.inPreviewMode ? 56 : 0, 0, 40, 0));
        this.actionBar.setAllowOverlayTitle(false);
        if (this.dialogId < 0) {
            if (this.topicId != 0) {
                TLRPC$TL_forumTopic findTopic = getMessagesController().getTopicsController().findTopic(-this.dialogId, this.topicId);
                ForumUtilities.setTopicIcon(this.avatarContainer.getAvatarImageView(), findTopic, false, true, this.resourcesProvider);
                this.avatarContainer.setTitle(findTopic.title);
            } else {
                TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-this.dialogId));
                this.avatarContainer.setChatAvatar(chat);
                this.avatarContainer.setTitle(chat.title);
            }
        } else {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.dialogId));
            if (user != null) {
                this.avatarContainer.setUserAvatar(user);
                this.avatarContainer.setTitle(ContactsController.formatName(user.first_name, user.last_name));
            }
        }
        if (this.addingException) {
            this.avatarContainer.setSubtitle(LocaleController.getString("NotificationsNewException", C3632R.string.NotificationsNewException));
            this.actionBar.createMenu().addItem(1, LocaleController.getString("Done", C3632R.string.Done).toUpperCase());
        } else {
            this.avatarContainer.setSubtitle(LocaleController.getString("CustomNotifications", C3632R.string.CustomNotifications));
        }
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        FrameLayout frameLayout2 = frameLayout;
        frameLayout2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        frameLayout2.addView(recyclerListView, LayoutHelper.createFrame(-1, -1));
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.adapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        this.listView.setItemAnimator(null);
        this.listView.setLayoutAnimation(null);
        this.listView.setLayoutManager(new LinearLayoutManager(this, context) { // from class: org.telegram.ui.ProfileNotificationsActivity.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        });
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ProfileNotificationsActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                ProfileNotificationsActivity.this.lambda$createView$6(context, sharedPrefKey, view, i);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(Context context, final String str, View view, int i) {
        if (view.isEnabled()) {
            Parcelable parcelable = null;
            if (i == this.customResetRow) {
                AlertDialog create = new AlertDialog.Builder(context, this.resourcesProvider).setTitle(LocaleController.getString(C3632R.string.ResetCustomNotificationsAlertTitle)).setMessage(LocaleController.getString(C3632R.string.ResetCustomNotificationsAlert)).setPositiveButton(LocaleController.getString(C3632R.string.Reset), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileNotificationsActivity$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ProfileNotificationsActivity.this.lambda$createView$0(str, dialogInterface, i2);
                    }
                }).setNegativeButton(LocaleController.getString(C3632R.string.Cancel), null).create();
                showDialog(create);
                TextView textView = (TextView) create.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                }
            } else if (i == this.soundRow) {
                Bundle bundle = new Bundle();
                bundle.putLong("dialog_id", this.dialogId);
                bundle.putInt("topic_id", this.topicId);
                presentFragment(new NotificationsSoundActivity(bundle, this.resourcesProvider));
            } else if (i == this.ringtoneRow) {
                try {
                    Intent intent = new Intent("android.intent.action.RINGTONE_PICKER");
                    intent.putExtra("android.intent.extra.ringtone.TYPE", 1);
                    intent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", true);
                    intent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", true);
                    intent.putExtra("android.intent.extra.ringtone.DEFAULT_URI", RingtoneManager.getDefaultUri(1));
                    SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
                    Uri uri = Settings.System.DEFAULT_NOTIFICATION_URI;
                    String path = uri != null ? uri.getPath() : null;
                    String string = notificationsSettings.getString("ringtone_path_" + str, path);
                    if (string != null && !string.equals("NoSound")) {
                        parcelable = string.equals(path) ? uri : Uri.parse(string);
                    }
                    intent.putExtra("android.intent.extra.ringtone.EXISTING_URI", parcelable);
                    startActivityForResult(intent, 13);
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
            } else if (i == this.vibrateRow) {
                showDialog(AlertsCreator.createVibrationSelectDialog(getParentActivity(), this.dialogId, this.topicId, false, false, new Runnable() { // from class: org.telegram.ui.ProfileNotificationsActivity$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileNotificationsActivity.this.lambda$createView$1();
                    }
                }, this.resourcesProvider));
            } else if (i == this.enableRow) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                boolean z = !textCheckCell.isChecked();
                this.notificationsEnabled = z;
                textCheckCell.setChecked(z);
                checkRowsEnabled();
            } else if (i == this.previewRow) {
                TextCheckCell textCheckCell2 = (TextCheckCell) view;
                MessagesController.getNotificationsSettings(this.currentAccount).edit().putBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + str, !textCheckCell2.isChecked()).apply();
                textCheckCell2.setChecked(textCheckCell2.isChecked() ^ true);
            } else if (i == this.callsVibrateRow) {
                showDialog(AlertsCreator.createVibrationSelectDialog(getParentActivity(), this.dialogId, this.topicId, "calls_vibrate_" + str, new Runnable() { // from class: org.telegram.ui.ProfileNotificationsActivity$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileNotificationsActivity.this.lambda$createView$2();
                    }
                }, this.resourcesProvider));
            } else if (i == this.priorityRow) {
                showDialog(AlertsCreator.createPrioritySelectDialog(getParentActivity(), this.dialogId, this.topicId, -1, new Runnable() { // from class: org.telegram.ui.ProfileNotificationsActivity$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileNotificationsActivity.this.lambda$createView$3();
                    }
                }, this.resourcesProvider));
            } else {
                if (i == this.smartRow) {
                    if (getParentActivity() == null) {
                        return;
                    }
                    SharedPreferences notificationsSettings2 = MessagesController.getNotificationsSettings(this.currentAccount);
                    int i2 = notificationsSettings2.getInt("smart_max_count_" + str, 2);
                    AlertsCreator.createSoundFrequencyPickerDialog(getParentActivity(), i2 != 0 ? i2 : 2, notificationsSettings2.getInt("smart_delay_" + str, 180), new AlertsCreator.SoundFrequencyDelegate() { // from class: org.telegram.ui.ProfileNotificationsActivity$$ExternalSyntheticLambda6
                        @Override // org.telegram.p043ui.Components.AlertsCreator.SoundFrequencyDelegate
                        public final void didSelectValues(int i3, int i4) {
                            ProfileNotificationsActivity.this.lambda$createView$4(str, i3, i4);
                        }
                    }, this.resourcesProvider);
                } else if (i == this.colorRow) {
                    if (getParentActivity() == null) {
                        return;
                    }
                    showDialog(AlertsCreator.createColorSelectDialog(getParentActivity(), this.dialogId, this.topicId, -1, new Runnable() { // from class: org.telegram.ui.ProfileNotificationsActivity$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            ProfileNotificationsActivity.this.lambda$createView$5();
                        }
                    }, this.resourcesProvider));
                } else if (i == this.popupEnabledRow) {
                    MessagesController.getNotificationsSettings(this.currentAccount).edit().putInt("popup_" + str, 1).apply();
                    ((RadioCell) view).setChecked(true, true);
                    View findViewWithTag = this.listView.findViewWithTag(2);
                    if (findViewWithTag != null) {
                        ((RadioCell) findViewWithTag).setChecked(false, true);
                    }
                } else if (i == this.popupDisabledRow) {
                    MessagesController.getNotificationsSettings(this.currentAccount).edit().putInt("popup_" + str, 2).apply();
                    ((RadioCell) view).setChecked(true, true);
                    View findViewWithTag2 = this.listView.findViewWithTag(1);
                    if (findViewWithTag2 != null) {
                        ((RadioCell) findViewWithTag2).setChecked(false, true);
                    }
                } else if (i == this.storiesRow) {
                    TextCheckCell textCheckCell3 = (TextCheckCell) view;
                    boolean z2 = !textCheckCell3.isChecked();
                    textCheckCell3.setChecked(z2);
                    SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
                    if (this.isInTop5Peers && z2) {
                        edit.remove(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + str);
                    } else {
                        edit.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + str, z2);
                    }
                    edit.apply();
                    getNotificationsController().updateServerNotificationsSettings(this.dialogId, this.topicId);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(String str, DialogInterface dialogInterface, int i) {
        this.needReset = true;
        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
        SharedPreferences.Editor putBoolean = edit.putBoolean("custom_" + str, false);
        putBoolean.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + str).apply();
        finishFragment();
        ProfileNotificationsActivityDelegate profileNotificationsActivityDelegate = this.delegate;
        if (profileNotificationsActivityDelegate != null) {
            profileNotificationsActivityDelegate.didRemoveException(this.dialogId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1() {
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(this.vibrateRow);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2() {
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(this.callsVibrateRow);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3() {
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(this.priorityRow);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(String str, int i, int i2) {
        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
        SharedPreferences.Editor putInt = edit.putInt("smart_max_count_" + str, i);
        putInt.putInt("smart_delay_" + str, i2).apply();
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(this.smartRow);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5() {
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(this.colorRow);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        Ringtone ringtone;
        if (i2 != -1 || intent == null) {
            return;
        }
        Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
        String str = null;
        if (uri != null && (ringtone = RingtoneManager.getRingtone(ApplicationLoader.applicationContext, uri)) != null) {
            if (i == 13) {
                if (uri.equals(Settings.System.DEFAULT_RINGTONE_URI)) {
                    str = LocaleController.getString("DefaultRingtone", C3632R.string.DefaultRingtone);
                } else {
                    str = ringtone.getTitle(getParentActivity());
                }
            } else if (uri.equals(Settings.System.DEFAULT_NOTIFICATION_URI)) {
                str = LocaleController.getString("SoundDefault", C3632R.string.SoundDefault);
            } else {
                str = ringtone.getTitle(getParentActivity());
            }
            ringtone.stop();
        }
        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
        String sharedPrefKey = NotificationsController.getSharedPrefKey(this.dialogId, this.topicId);
        if (i == 12) {
            if (str != null) {
                edit.putString("sound_" + sharedPrefKey, str);
                edit.putString("sound_path_" + sharedPrefKey, uri.toString());
            } else {
                edit.putString("sound_" + sharedPrefKey, "NoSound");
                edit.putString("sound_path_" + sharedPrefKey, "NoSound");
            }
            getNotificationsController().deleteNotificationChannel(this.dialogId, this.topicId);
        } else if (i == 13) {
            if (str != null) {
                edit.putString("ringtone_" + sharedPrefKey, str);
                edit.putString("ringtone_path_" + sharedPrefKey, uri.toString());
            } else {
                edit.putString("ringtone_" + sharedPrefKey, "NoSound");
                edit.putString("ringtone_path_" + sharedPrefKey, "NoSound");
            }
        }
        edit.apply();
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(i == 13 ? this.ringtoneRow : this.soundRow);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.notificationsSettingsUpdated) {
            try {
                this.adapter.notifyDataSetChanged();
            } catch (Exception unused) {
            }
        }
    }

    public void setDelegate(ProfileNotificationsActivityDelegate profileNotificationsActivityDelegate) {
        this.delegate = profileNotificationsActivityDelegate;
    }

    private void checkRowsEnabled() {
        int childCount = this.listView.getChildCount();
        ArrayList<Animator> arrayList = new ArrayList<>();
        for (int i = 0; i < childCount; i++) {
            RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.getChildViewHolder(this.listView.getChildAt(i));
            int itemViewType = holder.getItemViewType();
            int adapterPosition = holder.getAdapterPosition();
            if (adapterPosition != this.enableRow && adapterPosition != this.customResetRow) {
                if (itemViewType == 0) {
                    ((HeaderCell) holder.itemView).setEnabled(this.notificationsEnabled, arrayList);
                } else if (itemViewType == 1) {
                    ((TextSettingsCell) holder.itemView).setEnabled(this.notificationsEnabled, arrayList);
                } else if (itemViewType == 2) {
                    ((TextInfoPrivacyCell) holder.itemView).setEnabled(this.notificationsEnabled, arrayList);
                } else if (itemViewType == 3) {
                    ((TextColorCell) holder.itemView).setEnabled(this.notificationsEnabled, arrayList);
                } else if (itemViewType == 4) {
                    ((RadioCell) holder.itemView).setEnabled(this.notificationsEnabled, arrayList);
                } else if (itemViewType == 7 && adapterPosition == this.previewRow) {
                    ((TextCheckCell) holder.itemView).setEnabled(this.notificationsEnabled, arrayList);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.animatorSet = animatorSet2;
        animatorSet2.playTogether(arrayList);
        this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileNotificationsActivity.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (animator.equals(ProfileNotificationsActivity.this.animatorSet)) {
                    ProfileNotificationsActivity.this.animatorSet = null;
                }
            }
        });
        this.animatorSet.setDuration(150L);
        this.animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileNotificationsActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context context;

        public ListAdapter(Context context) {
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ProfileNotificationsActivity.this.rowCount;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getAdapterPosition() == ProfileNotificationsActivity.this.previewRow) {
                return ProfileNotificationsActivity.this.notificationsEnabled;
            }
            if (viewHolder.getAdapterPosition() == ProfileNotificationsActivity.this.customResetRow) {
                return true;
            }
            switch (viewHolder.getItemViewType()) {
                case 0:
                case 2:
                case 5:
                case 6:
                    return false;
                case 1:
                case 3:
                case 4:
                    return ProfileNotificationsActivity.this.notificationsEnabled;
                default:
                    return true;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View headerCell;
            switch (i) {
                case 0:
                    headerCell = new HeaderCell(this.context, ProfileNotificationsActivity.this.resourcesProvider);
                    headerCell.setBackgroundColor(ProfileNotificationsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    break;
                case 1:
                    headerCell = new TextSettingsCell(this.context, ProfileNotificationsActivity.this.resourcesProvider);
                    headerCell.setBackgroundColor(ProfileNotificationsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    break;
                case 2:
                    headerCell = new TextInfoPrivacyCell(this.context, ProfileNotificationsActivity.this.resourcesProvider);
                    break;
                case 3:
                    headerCell = new TextColorCell(this.context, ProfileNotificationsActivity.this.resourcesProvider);
                    headerCell.setBackgroundColor(ProfileNotificationsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    break;
                case 4:
                    headerCell = new RadioCell(this.context, ProfileNotificationsActivity.this.resourcesProvider);
                    headerCell.setBackgroundColor(ProfileNotificationsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    break;
                case 5:
                    headerCell = new UserCell2(this.context, 4, 0, ProfileNotificationsActivity.this.resourcesProvider);
                    headerCell.setBackgroundColor(ProfileNotificationsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    break;
                case 6:
                    headerCell = new ShadowSectionCell(this.context, ProfileNotificationsActivity.this.resourcesProvider);
                    break;
                default:
                    headerCell = new TextCheckCell(this.context, ProfileNotificationsActivity.this.resourcesProvider);
                    headerCell.setBackgroundColor(ProfileNotificationsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    break;
            }
            headerCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(headerCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2;
            switch (viewHolder.getItemViewType()) {
                case 0:
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    if (i != ProfileNotificationsActivity.this.generalRow) {
                        if (i != ProfileNotificationsActivity.this.popupRow) {
                            if (i != ProfileNotificationsActivity.this.ledRow) {
                                if (i == ProfileNotificationsActivity.this.callsRow) {
                                    headerCell.setText(LocaleController.getString("VoipNotificationSettings", C3632R.string.VoipNotificationSettings));
                                    return;
                                }
                                return;
                            }
                            headerCell.setText(LocaleController.getString("NotificationsLed", C3632R.string.NotificationsLed));
                            return;
                        }
                        headerCell.setText(LocaleController.getString("ProfilePopupNotification", C3632R.string.ProfilePopupNotification));
                        return;
                    }
                    headerCell.setText(LocaleController.getString("General", C3632R.string.General));
                    return;
                case 1:
                    TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                    String sharedPrefKey = NotificationsController.getSharedPrefKey(ProfileNotificationsActivity.this.dialogId, ProfileNotificationsActivity.this.topicId);
                    SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(((BaseFragment) ProfileNotificationsActivity.this).currentAccount);
                    if (i == ProfileNotificationsActivity.this.customResetRow) {
                        textSettingsCell.setText(LocaleController.getString(C3632R.string.ResetCustomNotifications), false);
                        textSettingsCell.setTextColor(ProfileNotificationsActivity.this.getThemedColor(Theme.key_text_RedBold));
                        return;
                    }
                    textSettingsCell.setTextColor(ProfileNotificationsActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                    if (i != ProfileNotificationsActivity.this.soundRow) {
                        if (i != ProfileNotificationsActivity.this.ringtoneRow) {
                            if (i != ProfileNotificationsActivity.this.vibrateRow) {
                                if (i != ProfileNotificationsActivity.this.priorityRow) {
                                    if (i != ProfileNotificationsActivity.this.smartRow) {
                                        if (i == ProfileNotificationsActivity.this.callsVibrateRow) {
                                            int i3 = notificationsSettings.getInt("calls_vibrate_" + sharedPrefKey, 0);
                                            if (i3 == 0 || i3 == 4) {
                                                textSettingsCell.setTextAndValue(LocaleController.getString("Vibrate", C3632R.string.Vibrate), LocaleController.getString("VibrationDefault", C3632R.string.VibrationDefault), true);
                                                return;
                                            } else if (i3 == 1) {
                                                textSettingsCell.setTextAndValue(LocaleController.getString("Vibrate", C3632R.string.Vibrate), LocaleController.getString("Short", C3632R.string.Short), true);
                                                return;
                                            } else if (i3 == 2) {
                                                textSettingsCell.setTextAndValue(LocaleController.getString("Vibrate", C3632R.string.Vibrate), LocaleController.getString("VibrationDisabled", C3632R.string.VibrationDisabled), true);
                                                return;
                                            } else if (i3 == 3) {
                                                textSettingsCell.setTextAndValue(LocaleController.getString("Vibrate", C3632R.string.Vibrate), LocaleController.getString("Long", C3632R.string.Long), true);
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                    int i4 = notificationsSettings.getInt("smart_max_count_" + sharedPrefKey, 2);
                                    int i5 = notificationsSettings.getInt("smart_delay_" + sharedPrefKey, 180);
                                    if (i4 == 0) {
                                        textSettingsCell.setTextAndValue(LocaleController.getString("SmartNotifications", C3632R.string.SmartNotifications), LocaleController.getString("SmartNotificationsDisabled", C3632R.string.SmartNotificationsDisabled), ProfileNotificationsActivity.this.priorityRow != -1);
                                        return;
                                    } else {
                                        textSettingsCell.setTextAndValue(LocaleController.getString("SmartNotifications", C3632R.string.SmartNotifications), LocaleController.formatString("SmartNotificationsInfo", C3632R.string.SmartNotificationsInfo, Integer.valueOf(i4), LocaleController.formatPluralString("Minutes", i5 / 60, new Object[0])), ProfileNotificationsActivity.this.priorityRow != -1);
                                        return;
                                    }
                                }
                                int i6 = notificationsSettings.getInt("priority_" + sharedPrefKey, 3);
                                if (i6 == 0) {
                                    textSettingsCell.setTextAndValue(LocaleController.getString("NotificationsImportance", C3632R.string.NotificationsImportance), LocaleController.getString("NotificationsPriorityHigh", C3632R.string.NotificationsPriorityHigh), false);
                                    return;
                                } else if (i6 == 1 || i6 == 2) {
                                    textSettingsCell.setTextAndValue(LocaleController.getString("NotificationsImportance", C3632R.string.NotificationsImportance), LocaleController.getString("NotificationsPriorityUrgent", C3632R.string.NotificationsPriorityUrgent), false);
                                    return;
                                } else if (i6 == 3) {
                                    textSettingsCell.setTextAndValue(LocaleController.getString("NotificationsImportance", C3632R.string.NotificationsImportance), LocaleController.getString("NotificationsPrioritySettings", C3632R.string.NotificationsPrioritySettings), false);
                                    return;
                                } else if (i6 == 4) {
                                    textSettingsCell.setTextAndValue(LocaleController.getString("NotificationsImportance", C3632R.string.NotificationsImportance), LocaleController.getString("NotificationsPriorityLow", C3632R.string.NotificationsPriorityLow), false);
                                    return;
                                } else if (i6 == 5) {
                                    textSettingsCell.setTextAndValue(LocaleController.getString("NotificationsImportance", C3632R.string.NotificationsImportance), LocaleController.getString("NotificationsPriorityMedium", C3632R.string.NotificationsPriorityMedium), false);
                                    return;
                                } else {
                                    return;
                                }
                            }
                            int i7 = notificationsSettings.getInt("vibrate_" + sharedPrefKey, 0);
                            if (i7 == 0 || i7 == 4) {
                                String string = LocaleController.getString("Vibrate", C3632R.string.Vibrate);
                                String string2 = LocaleController.getString("VibrationDefault", C3632R.string.VibrationDefault);
                                if (ProfileNotificationsActivity.this.smartRow != -1 || ProfileNotificationsActivity.this.priorityRow != -1) {
                                    r6 = true;
                                }
                                textSettingsCell.setTextAndValue(string, string2, r6);
                                return;
                            } else if (i7 == 1) {
                                String string3 = LocaleController.getString("Vibrate", C3632R.string.Vibrate);
                                String string4 = LocaleController.getString("Short", C3632R.string.Short);
                                if (ProfileNotificationsActivity.this.smartRow != -1 || ProfileNotificationsActivity.this.priorityRow != -1) {
                                    r6 = true;
                                }
                                textSettingsCell.setTextAndValue(string3, string4, r6);
                                return;
                            } else if (i7 == 2) {
                                String string5 = LocaleController.getString("Vibrate", C3632R.string.Vibrate);
                                String string6 = LocaleController.getString("VibrationDisabled", C3632R.string.VibrationDisabled);
                                if (ProfileNotificationsActivity.this.smartRow != -1 || ProfileNotificationsActivity.this.priorityRow != -1) {
                                    r6 = true;
                                }
                                textSettingsCell.setTextAndValue(string5, string6, r6);
                                return;
                            } else if (i7 == 3) {
                                String string7 = LocaleController.getString("Vibrate", C3632R.string.Vibrate);
                                String string8 = LocaleController.getString("Long", C3632R.string.Long);
                                if (ProfileNotificationsActivity.this.smartRow != -1 || ProfileNotificationsActivity.this.priorityRow != -1) {
                                    r6 = true;
                                }
                                textSettingsCell.setTextAndValue(string7, string8, r6);
                                return;
                            } else {
                                return;
                            }
                        }
                        String string9 = notificationsSettings.getString("ringtone_" + sharedPrefKey, LocaleController.getString("DefaultRingtone", C3632R.string.DefaultRingtone));
                        if (string9.equals("NoSound")) {
                            string9 = LocaleController.getString("NoSound", C3632R.string.NoSound);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("VoipSettingsRingtone", C3632R.string.VoipSettingsRingtone), string9, false);
                        return;
                    }
                    int i8 = C3632R.string.SoundDefault;
                    String string10 = notificationsSettings.getString("sound_" + sharedPrefKey, LocaleController.getString("SoundDefault", i8));
                    long j = notificationsSettings.getLong("sound_document_id_" + sharedPrefKey, 0L);
                    if (j != 0) {
                        TLRPC$Document document = ProfileNotificationsActivity.this.getMediaDataController().ringtoneDataStore.getDocument(j);
                        if (document == null) {
                            string10 = LocaleController.getString("CustomSound", C3632R.string.CustomSound);
                        } else {
                            string10 = NotificationsSoundActivity.trimTitle(document, document.file_name_fixed);
                        }
                    } else if (string10.equals("NoSound")) {
                        string10 = LocaleController.getString("NoSound", C3632R.string.NoSound);
                    } else if (string10.equals("Default")) {
                        string10 = LocaleController.getString("SoundDefault", i8);
                    }
                    textSettingsCell.setTextAndValue(LocaleController.getString("Sound", C3632R.string.Sound), string10, true);
                    return;
                case 2:
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    textInfoPrivacyCell.setFixedSize(0);
                    if (i != ProfileNotificationsActivity.this.popupInfoRow) {
                        if (i != ProfileNotificationsActivity.this.ledInfoRow) {
                            if (i == ProfileNotificationsActivity.this.priorityInfoRow) {
                                if (ProfileNotificationsActivity.this.priorityRow == -1) {
                                    textInfoPrivacyCell.setText("");
                                } else {
                                    textInfoPrivacyCell.setText(LocaleController.getString("PriorityInfo", C3632R.string.PriorityInfo));
                                }
                                textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.context, C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                                return;
                            } else if (i == ProfileNotificationsActivity.this.ringtoneInfoRow) {
                                textInfoPrivacyCell.setText(LocaleController.getString("VoipRingtoneInfo", C3632R.string.VoipRingtoneInfo));
                                textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.context, C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                                return;
                            } else {
                                return;
                            }
                        }
                        textInfoPrivacyCell.setText(LocaleController.getString("NotificationsLedInfo", C3632R.string.NotificationsLedInfo));
                        textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.context, C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                        return;
                    }
                    textInfoPrivacyCell.setText(LocaleController.getString("ProfilePopupNotificationInfo", C3632R.string.ProfilePopupNotificationInfo));
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.context, C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                    return;
                case 3:
                    TextColorCell textColorCell = (TextColorCell) viewHolder.itemView;
                    String sharedPrefKey2 = NotificationsController.getSharedPrefKey(ProfileNotificationsActivity.this.dialogId, ProfileNotificationsActivity.this.topicId);
                    SharedPreferences notificationsSettings2 = MessagesController.getNotificationsSettings(((BaseFragment) ProfileNotificationsActivity.this).currentAccount);
                    if (!notificationsSettings2.contains("color_" + sharedPrefKey2)) {
                        if (DialogObject.isChatDialog(ProfileNotificationsActivity.this.dialogId)) {
                            i2 = notificationsSettings2.getInt("GroupLed", -16776961);
                        } else {
                            i2 = notificationsSettings2.getInt("MessagesLed", -16776961);
                        }
                    } else {
                        i2 = notificationsSettings2.getInt("color_" + sharedPrefKey2, -16776961);
                    }
                    int i9 = 0;
                    while (true) {
                        if (i9 < 9) {
                            if (TextColorCell.colorsToSave[i9] == i2) {
                                i2 = TextColorCell.colors[i9];
                            } else {
                                i9++;
                            }
                        }
                    }
                    textColorCell.setTextAndColor(LocaleController.getString("NotificationsLedColor", C3632R.string.NotificationsLedColor), i2, false);
                    return;
                case 4:
                    RadioCell radioCell = (RadioCell) viewHolder.itemView;
                    SharedPreferences notificationsSettings3 = MessagesController.getNotificationsSettings(((BaseFragment) ProfileNotificationsActivity.this).currentAccount);
                    int i10 = notificationsSettings3.getInt("popup_" + NotificationsController.getSharedPrefKey(ProfileNotificationsActivity.this.dialogId, ProfileNotificationsActivity.this.topicId), 0);
                    if (i10 == 0) {
                        i10 = notificationsSettings3.getInt(DialogObject.isChatDialog(ProfileNotificationsActivity.this.dialogId) ? "popupGroup" : "popupAll", 0) != 0 ? 1 : 2;
                    }
                    if (i != ProfileNotificationsActivity.this.popupEnabledRow) {
                        if (i == ProfileNotificationsActivity.this.popupDisabledRow) {
                            radioCell.setText(LocaleController.getString("PopupDisabled", C3632R.string.PopupDisabled), i10 == 2, false);
                            radioCell.setTag(2);
                            return;
                        }
                        return;
                    }
                    radioCell.setText(LocaleController.getString("PopupEnabled", C3632R.string.PopupEnabled), i10 == 1, true);
                    radioCell.setTag(1);
                    return;
                case 5:
                    ((UserCell2) viewHolder.itemView).setData(DialogObject.isUserDialog(ProfileNotificationsActivity.this.dialogId) ? MessagesController.getInstance(((BaseFragment) ProfileNotificationsActivity.this).currentAccount).getUser(Long.valueOf(ProfileNotificationsActivity.this.dialogId)) : MessagesController.getInstance(((BaseFragment) ProfileNotificationsActivity.this).currentAccount).getChat(Long.valueOf(-ProfileNotificationsActivity.this.dialogId)), null, null, 0);
                    return;
                case 6:
                    ((ShadowSectionCell) viewHolder.itemView).setTopBottom(i > 0, i < getItemCount() - 1);
                    return;
                case 7:
                    TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                    SharedPreferences notificationsSettings4 = MessagesController.getNotificationsSettings(((BaseFragment) ProfileNotificationsActivity.this).currentAccount);
                    if (i == ProfileNotificationsActivity.this.enableRow) {
                        textCheckCell.setTextAndCheck(LocaleController.getString("Notifications", C3632R.string.Notifications), ProfileNotificationsActivity.this.notificationsEnabled, true);
                        return;
                    } else if (i == ProfileNotificationsActivity.this.previewRow) {
                        String sharedPrefKey3 = NotificationsController.getSharedPrefKey(ProfileNotificationsActivity.this.dialogId, ProfileNotificationsActivity.this.topicId);
                        textCheckCell.setTextAndCheck(LocaleController.getString("MessagePreview", C3632R.string.MessagePreview), notificationsSettings4.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + sharedPrefKey3, true), true);
                        return;
                    } else if (i == ProfileNotificationsActivity.this.storiesRow) {
                        String str = NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + NotificationsController.getSharedPrefKey(ProfileNotificationsActivity.this.dialogId, ProfileNotificationsActivity.this.topicId);
                        if (ProfileNotificationsActivity.this.isInTop5Peers || (notificationsSettings4.contains("EnableAllStories") && notificationsSettings4.getBoolean("EnableAllStories", true))) {
                            r6 = true;
                        }
                        textCheckCell.setTextAndCheck(LocaleController.getString("StoriesSoundEnabled", C3632R.string.StoriesSoundEnabled), notificationsSettings4.getBoolean(str, r6), true);
                        return;
                    } else {
                        return;
                    }
                default:
                    return;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                ((HeaderCell) viewHolder.itemView).setEnabled(ProfileNotificationsActivity.this.notificationsEnabled, null);
            } else if (itemViewType == 1) {
                TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                if (viewHolder.getAdapterPosition() != ProfileNotificationsActivity.this.customResetRow) {
                    textSettingsCell.setEnabled(ProfileNotificationsActivity.this.notificationsEnabled, null);
                } else {
                    textSettingsCell.setEnabled(true, null);
                }
            } else if (itemViewType == 2) {
                ((TextInfoPrivacyCell) viewHolder.itemView).setEnabled(ProfileNotificationsActivity.this.notificationsEnabled, null);
            } else if (itemViewType == 3) {
                ((TextColorCell) viewHolder.itemView).setEnabled(ProfileNotificationsActivity.this.notificationsEnabled, null);
            } else if (itemViewType == 4) {
                ((RadioCell) viewHolder.itemView).setEnabled(ProfileNotificationsActivity.this.notificationsEnabled, null);
            } else if (itemViewType != 7) {
            } else {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                if (viewHolder.getAdapterPosition() == ProfileNotificationsActivity.this.previewRow) {
                    textCheckCell.setEnabled(ProfileNotificationsActivity.this.notificationsEnabled, null);
                } else if (viewHolder.getAdapterPosition() == ProfileNotificationsActivity.this.storiesRow) {
                    textCheckCell.setEnabled(ProfileNotificationsActivity.this.notificationsEnabled, null);
                } else {
                    textCheckCell.setEnabled(true, null);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == ProfileNotificationsActivity.this.generalRow || i == ProfileNotificationsActivity.this.popupRow || i == ProfileNotificationsActivity.this.ledRow || i == ProfileNotificationsActivity.this.callsRow) {
                return 0;
            }
            if (i == ProfileNotificationsActivity.this.soundRow || i == ProfileNotificationsActivity.this.vibrateRow || i == ProfileNotificationsActivity.this.priorityRow || i == ProfileNotificationsActivity.this.smartRow || i == ProfileNotificationsActivity.this.ringtoneRow || i == ProfileNotificationsActivity.this.callsVibrateRow || i == ProfileNotificationsActivity.this.customResetRow) {
                return 1;
            }
            if (i == ProfileNotificationsActivity.this.popupInfoRow || i == ProfileNotificationsActivity.this.ledInfoRow || i == ProfileNotificationsActivity.this.priorityInfoRow || i == ProfileNotificationsActivity.this.ringtoneInfoRow) {
                return 2;
            }
            if (i == ProfileNotificationsActivity.this.colorRow) {
                return 3;
            }
            if (i == ProfileNotificationsActivity.this.popupEnabledRow || i == ProfileNotificationsActivity.this.popupDisabledRow) {
                return 4;
            }
            if (i == ProfileNotificationsActivity.this.avatarRow) {
                return 5;
            }
            if (i == ProfileNotificationsActivity.this.avatarSectionRow || i == ProfileNotificationsActivity.this.customResetShadowRow) {
                return 6;
            }
            return (i == ProfileNotificationsActivity.this.enableRow || i == ProfileNotificationsActivity.this.previewRow || i == ProfileNotificationsActivity.this.storiesRow) ? 7 : 0;
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ProfileNotificationsActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ProfileNotificationsActivity.this.lambda$getThemeDescriptions$7();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, TextSettingsCell.class, TextColorCell.class, RadioCell.class, UserCell2.class, TextCheckCell.class, TextCheckBoxCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3704ActionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i3 = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextColorCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{RadioCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_radioBackground));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_radioBackgroundChecked));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteGrayText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$7() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof UserCell2) {
                    ((UserCell2) childAt).update(0);
                }
            }
        }
    }
}
