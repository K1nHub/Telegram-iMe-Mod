package org.telegram.p043ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.ConnectionResult;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.enums.LockedSection;
import com.stripe.android.model.Card;
import java.util.ArrayList;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3706ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.RadioColorCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.TextStyleSpan;
import org.telegram.p043ui.SessionsActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$PrivacyRule;
import org.telegram.tgnet.TLRPC$TL_accountDaysTTL;
import org.telegram.tgnet.TLRPC$TL_account_authorizationForm;
import org.telegram.tgnet.TLRPC$TL_account_getPassword;
import org.telegram.tgnet.TLRPC$TL_account_setAccountTTL;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_globalPrivacySettings;
import org.telegram.tgnet.TLRPC$TL_payments_clearSavedInfo;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowAll;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowChatParticipants;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowUsers;
import org.telegram.tgnet.TLRPC$TL_privacyValueDisallowAll;
import org.telegram.tgnet.TLRPC$TL_privacyValueDisallowChatParticipants;
import org.telegram.tgnet.TLRPC$TL_privacyValueDisallowUsers;
import org.telegram.tgnet.TLRPC$account_Password;
/* renamed from: org.telegram.ui.PrivacySettingsActivity */
/* loaded from: classes5.dex */
public class PrivacySettingsActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private int advancedSectionRow;
    private boolean archiveChats;
    private int autoDeleteMesages;
    private int bioRow;
    private int blockedRow;
    private int botsAndWebsitesShadowRow;
    private int botsDetailRow;
    private int botsSectionRow;
    private int callsRow;
    private boolean[] clear;
    private int contactsDeleteRow;
    private int contactsDetailRow;
    private int contactsSectionRow;
    private int contactsSuggestRow;
    private int contactsSyncRow;
    private TLRPC$account_Password currentPassword;
    private boolean currentSuggest;
    private boolean currentSync;
    private int customScreenType;
    private int deleteAccountDetailRow;
    private int deleteAccountRow;
    private boolean deleteAccountUpdate;
    private SessionsActivity devicesActivityPreload;
    private int emailLoginRow;
    private int forwardsRow;
    private int groupsDetailRow;
    private int groupsRow;
    private int lastSeenRow;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private int newChatsHeaderRow;
    private int newChatsRow;
    private int newChatsSectionRow;
    private boolean newSuggest;
    private boolean newSync;
    private int passcodeArchiveRow;
    private int passcodeCloudRow;
    private int passcodeRow;
    private int passportRow;
    private int passwordRow;
    private int paymentsClearRow;
    private int phoneNumberRow;
    private int privacySectionRow;
    private int privacyShadowRow;
    private int profilePhotoRow;
    private AlertDialog progressDialog;
    private int rowCount;
    private int secretDetailRow;
    private int secretMapRow;
    private boolean secretMapUpdate;
    private int secretSectionRow;
    private int secretWebpageRow;
    private int securitySectionRow;
    private int sessionsDetailRow;
    private int sessionsRow;
    private int voicesRow;
    private SessionsActivity webSessionsActivityPreload;
    private int webSessionsRow;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$16(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onFragmentDestroy$2(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onFragmentDestroy$3(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public PrivacySettingsActivity() {
        this(null);
    }

    public PrivacySettingsActivity(Bundle bundle) {
        super(bundle);
        this.clear = new boolean[2];
    }

    private boolean isContactsType() {
        return this.customScreenType == IdFabric$CustomType.CONTACTS_PRIVACY_SETTINGS;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        Bundle bundle = this.arguments;
        if (bundle != null) {
            this.customScreenType = bundle.getInt("custom_screen_type", 0);
        }
        getContactsController().loadPrivacySettings();
        getMessagesController().getBlockedPeers(true);
        boolean z = getUserConfig().syncContacts;
        this.newSync = z;
        this.currentSync = z;
        boolean z2 = getUserConfig().suggestContacts;
        this.newSuggest = z2;
        this.currentSuggest = z2;
        TLRPC$TL_globalPrivacySettings globalPrivacySettings = getContactsController().getGlobalPrivacySettings();
        if (globalPrivacySettings != null) {
            this.archiveChats = globalPrivacySettings.archive_and_mute_new_noncontact_peers;
        }
        updateRows();
        loadPasswordSettings();
        getNotificationCenter().addObserver(this, NotificationCenter.privacyRulesUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.blockedUsersDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.didSetOrRemoveTwoStepPassword);
        getNotificationCenter().addObserver(this, NotificationCenter.didUpdateGlobalAutoDeleteTimer);
        getUserConfig().loadGlobalTTl();
        SessionsActivity sessionsActivity = new SessionsActivity(0);
        this.devicesActivityPreload = sessionsActivity;
        sessionsActivity.setDelegate(new SessionsActivity.Delegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda21
            @Override // org.telegram.p043ui.SessionsActivity.Delegate
            public final void sessionsLoaded() {
                PrivacySettingsActivity.this.lambda$onFragmentCreate$0();
            }
        });
        this.devicesActivityPreload.lambda$loadSessions$17(false);
        SessionsActivity sessionsActivity2 = new SessionsActivity(1);
        this.webSessionsActivityPreload = sessionsActivity2;
        sessionsActivity2.setDelegate(new SessionsActivity.Delegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda20
            @Override // org.telegram.p043ui.SessionsActivity.Delegate
            public final void sessionsLoaded() {
                PrivacySettingsActivity.this.lambda$onFragmentCreate$1();
            }
        });
        this.webSessionsActivityPreload.lambda$loadSessions$17(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$0() {
        int i;
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter == null || (i = this.sessionsRow) < 0) {
            return;
        }
        listAdapter.notifyItemChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$1() {
        if (this.listAdapter != null) {
            int sessionsCount = this.webSessionsActivityPreload.getSessionsCount();
            if (this.webSessionsRow >= 0 || sessionsCount <= 0) {
                return;
            }
            updateRows();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onFragmentDestroy() {
        /*
            r6 = this;
            super.onFragmentDestroy()
            org.telegram.messenger.NotificationCenter r0 = r6.getNotificationCenter()
            int r1 = org.telegram.messenger.NotificationCenter.privacyRulesUpdated
            r0.removeObserver(r6, r1)
            org.telegram.messenger.NotificationCenter r0 = r6.getNotificationCenter()
            int r1 = org.telegram.messenger.NotificationCenter.blockedUsersDidLoad
            r0.removeObserver(r6, r1)
            org.telegram.messenger.NotificationCenter r0 = r6.getNotificationCenter()
            int r1 = org.telegram.messenger.NotificationCenter.didSetOrRemoveTwoStepPassword
            r0.removeObserver(r6, r1)
            org.telegram.messenger.NotificationCenter r0 = r6.getNotificationCenter()
            int r1 = org.telegram.messenger.NotificationCenter.didUpdateGlobalAutoDeleteTimer
            r0.removeObserver(r6, r1)
            boolean r0 = r6.currentSync
            boolean r1 = r6.newSync
            r2 = 0
            r3 = 1
            if (r0 == r1) goto L5b
            org.telegram.messenger.UserConfig r0 = r6.getUserConfig()
            boolean r1 = r6.newSync
            r0.syncContacts = r1
            if (r1 == 0) goto L59
            org.telegram.messenger.ContactsController r0 = r6.getContactsController()
            r0.forceImportContacts()
            android.app.Activity r0 = r6.getParentActivity()
            if (r0 == 0) goto L59
            android.app.Activity r0 = r6.getParentActivity()
            int r1 = org.telegram.messenger.C3634R.string.SyncContactsAdded
            java.lang.String r4 = "SyncContactsAdded"
            java.lang.String r1 = org.telegram.messenger.LocaleController.getString(r4, r1)
            android.widget.Toast r0 = android.widget.Toast.makeText(r0, r1, r2)
            r0.show()
        L59:
            r0 = r3
            goto L5c
        L5b:
            r0 = r2
        L5c:
            boolean r1 = r6.newSuggest
            boolean r4 = r6.currentSuggest
            if (r1 == r4) goto L86
            if (r1 != 0) goto L6b
            org.telegram.messenger.MediaDataController r0 = r6.getMediaDataController()
            r0.clearTopPeers()
        L6b:
            org.telegram.messenger.UserConfig r0 = r6.getUserConfig()
            boolean r1 = r6.newSuggest
            r0.suggestContacts = r1
            org.telegram.tgnet.TLRPC$TL_contacts_toggleTopPeers r0 = new org.telegram.tgnet.TLRPC$TL_contacts_toggleTopPeers
            r0.<init>()
            boolean r1 = r6.newSuggest
            r0.enabled = r1
            org.telegram.tgnet.ConnectionsManager r1 = r6.getConnectionsManager()
            org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda18 r4 = new org.telegram.tgnet.RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda18
                static {
                    /*
                        org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda18 r0 = new org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda18
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda18) org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda18.INSTANCE org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda18
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PrivacySettingsActivity$$ExternalSyntheticLambda18.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PrivacySettingsActivity$$ExternalSyntheticLambda18.<init>():void");
                }

                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(org.telegram.tgnet.TLObject r1, org.telegram.tgnet.TLRPC$TL_error r2) {
                    /*
                        r0 = this;
                        org.telegram.p043ui.PrivacySettingsActivity.$r8$lambda$eCom5AnOVY7xn_PRwv5OLVdd3zg(r1, r2)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PrivacySettingsActivity$$ExternalSyntheticLambda18.run(org.telegram.tgnet.TLObject, org.telegram.tgnet.TLRPC$TL_error):void");
                }
            }
            r1.sendRequest(r0, r4)
            r0 = r3
        L86:
            org.telegram.messenger.ContactsController r1 = r6.getContactsController()
            org.telegram.tgnet.TLRPC$TL_globalPrivacySettings r1 = r1.getGlobalPrivacySettings()
            if (r1 == 0) goto Lb7
            boolean r4 = r1.archive_and_mute_new_noncontact_peers
            boolean r5 = r6.archiveChats
            if (r4 == r5) goto Lb7
            r1.archive_and_mute_new_noncontact_peers = r5
            org.telegram.tgnet.TLRPC$TL_account_setGlobalPrivacySettings r0 = new org.telegram.tgnet.TLRPC$TL_account_setGlobalPrivacySettings
            r0.<init>()
            org.telegram.tgnet.TLRPC$TL_globalPrivacySettings r1 = new org.telegram.tgnet.TLRPC$TL_globalPrivacySettings
            r1.<init>()
            r0.settings = r1
            int r4 = r1.flags
            r4 = r4 | r3
            r1.flags = r4
            boolean r4 = r6.archiveChats
            r1.archive_and_mute_new_noncontact_peers = r4
            org.telegram.tgnet.ConnectionsManager r1 = r6.getConnectionsManager()
            org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda17 r4 = new org.telegram.tgnet.RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda17
                static {
                    /*
                        org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda17 r0 = new org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda17
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda17) org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda17.INSTANCE org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda17
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PrivacySettingsActivity$$ExternalSyntheticLambda17.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PrivacySettingsActivity$$ExternalSyntheticLambda17.<init>():void");
                }

                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(org.telegram.tgnet.TLObject r1, org.telegram.tgnet.TLRPC$TL_error r2) {
                    /*
                        r0 = this;
                        org.telegram.p043ui.PrivacySettingsActivity.$r8$lambda$7cwFQpa4UknO2rk7V8hcb1ligrU(r1, r2)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PrivacySettingsActivity$$ExternalSyntheticLambda17.run(org.telegram.tgnet.TLObject, org.telegram.tgnet.TLRPC$TL_error):void");
                }
            }
            r1.sendRequest(r0, r4)
            goto Lb8
        Lb7:
            r3 = r0
        Lb8:
            if (r3 == 0) goto Lc1
            org.telegram.messenger.UserConfig r0 = r6.getUserConfig()
            r0.saveConfig(r2)
        Lc1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PrivacySettingsActivity.onFragmentDestroy():void");
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setBackButtonImage(C3634R.C3636drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString("PrivacySettings", C3634R.string.PrivacySettings));
        this.actionBar.setActionBarMenuOnItemClick(new C3706ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.PrivacySettingsActivity.1
            @Override // org.telegram.p043ui.ActionBar.C3706ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    PrivacySettingsActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        FrameLayout frameLayout2 = frameLayout;
        frameLayout2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setLayoutManager(new LinearLayoutManager(this, context, 1, false) { // from class: org.telegram.ui.PrivacySettingsActivity.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        });
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setLayoutAnimation(null);
        this.listView.setItemAnimator(null);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda19
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                PrivacySettingsActivity.this.lambda$createView$19(context, view, i);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$19(Context context, View view, int i) {
        String string;
        String str;
        int i2 = this.passcodeCloudRow;
        if (i == i2 || i == this.passcodeArchiveRow) {
            presentFragment(PasscodeActivity.determineOpenFragment(i == i2 ? LockedSection.CLOUD : LockedSection.ARCHIVE));
        } else if (!view.isEnabled()) {
            return;
        }
        if (i == this.autoDeleteMesages && getUserConfig().getGlobalTTl() >= 0) {
            presentFragment(new AutoDeleteMessagesActivity());
        }
        if (i == this.blockedRow) {
            presentFragment(new PrivacyUsersActivity());
        } else if (i == this.sessionsRow) {
            this.devicesActivityPreload.resetFragment();
            presentFragment(this.devicesActivityPreload);
        } else if (i == this.webSessionsRow) {
            this.webSessionsActivityPreload.resetFragment();
            presentFragment(this.webSessionsActivityPreload);
        } else if (i == this.deleteAccountRow) {
            if (getParentActivity() == null) {
                return;
            }
            int deleteAccountTTL = getContactsController().getDeleteAccountTTL();
            int i3 = deleteAccountTTL <= 31 ? 0 : deleteAccountTTL <= 93 ? 1 : deleteAccountTTL <= 182 ? 2 : 3;
            final AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString("DeleteAccountTitle", C3634R.string.DeleteAccountTitle));
            String[] strArr = {LocaleController.formatPluralString("Months", 1, new Object[0]), LocaleController.formatPluralString("Months", 3, new Object[0]), LocaleController.formatPluralString("Months", 6, new Object[0]), LocaleController.formatPluralString("Years", 1, new Object[0])};
            LinearLayout linearLayout = new LinearLayout(getParentActivity());
            linearLayout.setOrientation(1);
            builder.setView(linearLayout);
            int i4 = 0;
            while (i4 < 4) {
                RadioColorCell radioColorCell = new RadioColorCell(getParentActivity());
                radioColorCell.setPadding(AndroidUtilities.m104dp(4), 0, AndroidUtilities.m104dp(4), 0);
                radioColorCell.setTag(Integer.valueOf(i4));
                radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
                radioColorCell.setTextAndValue(strArr[i4], i3 == i4);
                linearLayout.addView(radioColorCell);
                radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        PrivacySettingsActivity.this.lambda$createView$6(builder, view2);
                    }
                });
                i4++;
            }
            builder.setNegativeButton(LocaleController.getString("Cancel", C3634R.string.Cancel), null);
            showDialog(builder.create());
        } else if (i == this.lastSeenRow) {
            presentFragment(new PrivacyControlActivity(0));
        } else if (i == this.phoneNumberRow) {
            presentFragment(new PrivacyControlActivity(6));
        } else if (i == this.groupsRow) {
            presentFragment(new PrivacyControlActivity(1));
        } else if (i == this.callsRow) {
            presentFragment(new PrivacyControlActivity(2));
        } else if (i == this.profilePhotoRow) {
            presentFragment(new PrivacyControlActivity(4));
        } else if (i == this.bioRow) {
            presentFragment(new PrivacyControlActivity(9));
        } else if (i == this.forwardsRow) {
            presentFragment(new PrivacyControlActivity(5));
        } else if (i == this.voicesRow) {
            if (!getUserConfig().isPremium()) {
                try {
                    this.fragmentView.performHapticFeedback(3, 2);
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
                BulletinFactory.m62of(this).createRestrictVoiceMessagesPremiumBulletin().show();
                return;
            }
            presentFragment(new PrivacyControlActivity(8));
        } else if (i == this.emailLoginRow) {
            TLRPC$account_Password tLRPC$account_Password = this.currentPassword;
            if (tLRPC$account_Password == null || (str = tLRPC$account_Password.login_email_pattern) == null) {
                return;
            }
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(str);
            int indexOf = this.currentPassword.login_email_pattern.indexOf(42);
            int lastIndexOf = this.currentPassword.login_email_pattern.lastIndexOf(42);
            if (indexOf != lastIndexOf && indexOf != -1 && lastIndexOf != -1) {
                TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                textStyleRun.flags |= 256;
                textStyleRun.start = indexOf;
                int i5 = lastIndexOf + 1;
                textStyleRun.end = i5;
                valueOf.setSpan(new TextStyleSpan(textStyleRun), indexOf, i5, 0);
            }
            new AlertDialog.Builder(context).setTitle(valueOf).setMessage(LocaleController.getString(C3634R.string.EmailLoginChangeMessage)).setPositiveButton(LocaleController.getString(C3634R.string.ChangeEmail), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i6) {
                    PrivacySettingsActivity.this.lambda$createView$8(dialogInterface, i6);
                }
            }).setNegativeButton(LocaleController.getString(C3634R.string.Cancel), null).show();
        } else if (i == this.passwordRow) {
            TLRPC$account_Password tLRPC$account_Password2 = this.currentPassword;
            if (tLRPC$account_Password2 == null) {
                return;
            }
            if (!TwoStepVerificationActivity.canHandleCurrentPassword(tLRPC$account_Password2, false)) {
                AlertsCreator.showUpdateAppAlert(getParentActivity(), LocaleController.getString("UpdateAppAlert", C3634R.string.UpdateAppAlert), true);
            }
            TLRPC$account_Password tLRPC$account_Password3 = this.currentPassword;
            if (tLRPC$account_Password3.has_password) {
                TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
                twoStepVerificationActivity.setPassword(this.currentPassword);
                presentFragment(twoStepVerificationActivity);
                return;
            }
            presentFragment(new TwoStepVerificationSetupActivity(TextUtils.isEmpty(tLRPC$account_Password3.email_unconfirmed_pattern) ? 6 : 5, this.currentPassword));
        } else if (i == this.passcodeRow) {
            presentFragment(PasscodeActivity.determineOpenFragment());
        } else if (i == this.secretWebpageRow) {
            if (getMessagesController().secretWebpagePreview == 1) {
                getMessagesController().secretWebpagePreview = 0;
            } else {
                getMessagesController().secretWebpagePreview = 1;
            }
            MessagesController.getGlobalMainSettings().edit().putInt("secretWebpage2", getMessagesController().secretWebpagePreview).commit();
            if (view instanceof TextCheckCell) {
                ((TextCheckCell) view).setChecked(getMessagesController().secretWebpagePreview == 1);
            }
        } else if (i == this.contactsDeleteRow) {
            if (getParentActivity() == null) {
                return;
            }
            AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
            builder2.setTitle(LocaleController.getString("SyncContactsDeleteTitle", C3634R.string.SyncContactsDeleteTitle));
            builder2.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("SyncContactsDeleteText", C3634R.string.SyncContactsDeleteText)));
            builder2.setNegativeButton(LocaleController.getString("Cancel", C3634R.string.Cancel), null);
            builder2.setPositiveButton(LocaleController.getString("Delete", C3634R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i6) {
                    PrivacySettingsActivity.this.lambda$createView$10(dialogInterface, i6);
                }
            });
            AlertDialog create = builder2.create();
            showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        } else if (i == this.contactsSuggestRow) {
            final TextCheckCell textCheckCell = (TextCheckCell) view;
            if (this.newSuggest) {
                AlertDialog.Builder builder3 = new AlertDialog.Builder(getParentActivity());
                builder3.setTitle(LocaleController.getString("SuggestContactsTitle", C3634R.string.SuggestContactsTitle));
                builder3.setMessage(LocaleController.getString("SuggestContactsAlert", C3634R.string.SuggestContactsAlert));
                builder3.setPositiveButton(LocaleController.getString("MuteDisable", C3634R.string.MuteDisable), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i6) {
                        PrivacySettingsActivity.this.lambda$createView$13(textCheckCell, dialogInterface, i6);
                    }
                });
                builder3.setNegativeButton(LocaleController.getString("Cancel", C3634R.string.Cancel), null);
                AlertDialog create2 = builder3.create();
                showDialog(create2);
                TextView textView2 = (TextView) create2.getButton(-1);
                if (textView2 != null) {
                    textView2.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                    return;
                }
                return;
            }
            this.newSuggest = true;
            textCheckCell.setChecked(true);
        } else if (i == this.newChatsRow) {
            boolean z = !this.archiveChats;
            this.archiveChats = z;
            ((TextCheckCell) view).setChecked(z);
        } else if (i == this.contactsSyncRow) {
            boolean z2 = !this.newSync;
            this.newSync = z2;
            if (view instanceof TextCheckCell) {
                ((TextCheckCell) view).setChecked(z2);
            }
        } else if (i == this.secretMapRow) {
            AlertsCreator.showSecretLocationAlert(getParentActivity(), this.currentAccount, new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    PrivacySettingsActivity.this.lambda$createView$14();
                }
            }, false, null);
        } else if (i == this.paymentsClearRow) {
            AlertDialog.Builder builder4 = new AlertDialog.Builder(getParentActivity());
            builder4.setTitle(LocaleController.getString("PrivacyPaymentsClearAlertTitle", C3634R.string.PrivacyPaymentsClearAlertTitle));
            builder4.setMessage(LocaleController.getString("PrivacyPaymentsClearAlertText", C3634R.string.PrivacyPaymentsClearAlertText));
            LinearLayout linearLayout2 = new LinearLayout(getParentActivity());
            linearLayout2.setOrientation(1);
            builder4.setView(linearLayout2);
            for (int i6 = 0; i6 < 2; i6++) {
                if (i6 == 0) {
                    string = LocaleController.getString("PrivacyClearShipping", C3634R.string.PrivacyClearShipping);
                } else {
                    string = LocaleController.getString("PrivacyClearPayment", C3634R.string.PrivacyClearPayment);
                }
                this.clear[i6] = true;
                CheckBoxCell checkBoxCell = new CheckBoxCell(getParentActivity(), 1, 21, null);
                checkBoxCell.setTag(Integer.valueOf(i6));
                checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                checkBoxCell.setPadding(AndroidUtilities.m104dp(4), 0, AndroidUtilities.m104dp(4), 0);
                linearLayout2.addView(checkBoxCell, LayoutHelper.createLinear(-1, 50));
                checkBoxCell.setText(string, null, true, false);
                checkBoxCell.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
                checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        PrivacySettingsActivity.this.lambda$createView$15(view2);
                    }
                });
            }
            builder4.setPositiveButton(LocaleController.getString("ClearButton", C3634R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i7) {
                    PrivacySettingsActivity.this.lambda$createView$18(dialogInterface, i7);
                }
            });
            builder4.setNegativeButton(LocaleController.getString("Cancel", C3634R.string.Cancel), null);
            showDialog(builder4.create());
            AlertDialog create3 = builder4.create();
            showDialog(create3);
            TextView textView3 = (TextView) create3.getButton(-1);
            if (textView3 != null) {
                textView3.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        } else if (i == this.passportRow) {
            presentFragment(new PassportActivity(5, 0L, "", "", (String) null, (String) null, (String) null, (TLRPC$TL_account_authorizationForm) null, (TLRPC$account_Password) null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(AlertDialog.Builder builder, View view) {
        int i;
        builder.getDismissRunnable().run();
        Integer num = (Integer) view.getTag();
        if (num.intValue() == 0) {
            i = 30;
        } else if (num.intValue() == 1) {
            i = 90;
        } else if (num.intValue() == 2) {
            i = 182;
        } else {
            i = num.intValue() == 3 ? 365 : 0;
        }
        final AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        alertDialog.setCanCancel(false);
        alertDialog.show();
        final TLRPC$TL_account_setAccountTTL tLRPC$TL_account_setAccountTTL = new TLRPC$TL_account_setAccountTTL();
        TLRPC$TL_accountDaysTTL tLRPC$TL_accountDaysTTL = new TLRPC$TL_accountDaysTTL();
        tLRPC$TL_account_setAccountTTL.ttl = tLRPC$TL_accountDaysTTL;
        tLRPC$TL_accountDaysTTL.days = i;
        getConnectionsManager().sendRequest(tLRPC$TL_account_setAccountTTL, new RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda14
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PrivacySettingsActivity.this.lambda$createView$5(alertDialog, tLRPC$TL_account_setAccountTTL, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(final AlertDialog alertDialog, final TLRPC$TL_account_setAccountTTL tLRPC$TL_account_setAccountTTL, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                PrivacySettingsActivity.this.lambda$createView$4(alertDialog, tLObject, tLRPC$TL_account_setAccountTTL);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(AlertDialog alertDialog, TLObject tLObject, TLRPC$TL_account_setAccountTTL tLRPC$TL_account_setAccountTTL) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            this.deleteAccountUpdate = true;
            getContactsController().setDeleteAccountTTL(tLRPC$TL_account_setAccountTTL.ttl.days);
            this.listAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(DialogInterface dialogInterface, int i) {
        presentFragment(new LoginActivity().changeEmail(new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                PrivacySettingsActivity.this.lambda$createView$7();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7() {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), null);
        lottieLayout.setAnimation(C3634R.raw.email_check_inbox, new String[0]);
        lottieLayout.textView.setText(LocaleController.getString(C3634R.string.YourLoginEmailChangedSuccess));
        Bulletin.make(this, lottieLayout, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).show();
        try {
            this.fragmentView.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        loadPasswordSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(DialogInterface dialogInterface, int i) {
        AlertDialog show = new AlertDialog.Builder(getParentActivity(), 3, null).show();
        this.progressDialog = show;
        show.setCanCancel(false);
        if (this.currentSync != this.newSync) {
            UserConfig userConfig = getUserConfig();
            boolean z = this.newSync;
            userConfig.syncContacts = z;
            this.currentSync = z;
            getUserConfig().saveConfig(false);
        }
        getContactsController().deleteAllContacts(new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                PrivacySettingsActivity.this.lambda$createView$9();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9() {
        this.progressDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(final TextCheckCell textCheckCell, DialogInterface dialogInterface, int i) {
        TLRPC$TL_payments_clearSavedInfo tLRPC$TL_payments_clearSavedInfo = new TLRPC$TL_payments_clearSavedInfo();
        boolean[] zArr = this.clear;
        tLRPC$TL_payments_clearSavedInfo.credentials = zArr[1];
        tLRPC$TL_payments_clearSavedInfo.info = zArr[0];
        getUserConfig().tmpPassword = null;
        getUserConfig().saveConfig(false);
        getConnectionsManager().sendRequest(tLRPC$TL_payments_clearSavedInfo, new RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda15
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PrivacySettingsActivity.this.lambda$createView$12(textCheckCell, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(final TextCheckCell textCheckCell, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                PrivacySettingsActivity.this.lambda$createView$11(textCheckCell);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(TextCheckCell textCheckCell) {
        boolean z = !this.newSuggest;
        this.newSuggest = z;
        textCheckCell.setChecked(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$14() {
        this.listAdapter.notifyDataSetChanged();
        this.secretMapUpdate = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$15(View view) {
        CheckBoxCell checkBoxCell = (CheckBoxCell) view;
        int intValue = ((Integer) checkBoxCell.getTag()).intValue();
        boolean[] zArr = this.clear;
        zArr[intValue] = !zArr[intValue];
        checkBoxCell.setChecked(zArr[intValue], true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18(DialogInterface dialogInterface, int i) {
        try {
            Dialog dialog = this.visibleDialog;
            if (dialog != null) {
                dialog.dismiss();
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString("PrivacyPaymentsClearAlertTitle", C3634R.string.PrivacyPaymentsClearAlertTitle));
        builder.setMessage(LocaleController.getString("PrivacyPaymentsClearAlert", C3634R.string.PrivacyPaymentsClearAlert));
        builder.setPositiveButton(LocaleController.getString("ClearButton", C3634R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                PrivacySettingsActivity.this.lambda$createView$17(dialogInterface2, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3634R.string.Cancel), null);
        showDialog(builder.create());
        AlertDialog create = builder.create();
        showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$17(DialogInterface dialogInterface, int i) {
        String string;
        TLRPC$TL_payments_clearSavedInfo tLRPC$TL_payments_clearSavedInfo = new TLRPC$TL_payments_clearSavedInfo();
        boolean[] zArr = this.clear;
        tLRPC$TL_payments_clearSavedInfo.credentials = zArr[1];
        tLRPC$TL_payments_clearSavedInfo.info = zArr[0];
        getUserConfig().tmpPassword = null;
        getUserConfig().saveConfig(false);
        getConnectionsManager().sendRequest(tLRPC$TL_payments_clearSavedInfo, new RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda16
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PrivacySettingsActivity.lambda$createView$16(tLObject, tLRPC$TL_error);
            }
        });
        boolean[] zArr2 = this.clear;
        if (zArr2[0] && zArr2[1]) {
            string = LocaleController.getString("PrivacyPaymentsPaymentShippingCleared", C3634R.string.PrivacyPaymentsPaymentShippingCleared);
        } else if (zArr2[0]) {
            string = LocaleController.getString("PrivacyPaymentsShippingInfoCleared", C3634R.string.PrivacyPaymentsShippingInfoCleared);
        } else if (!zArr2[1]) {
            return;
        } else {
            string = LocaleController.getString("PrivacyPaymentsPaymentInfoCleared", C3634R.string.PrivacyPaymentsPaymentInfoCleared);
        }
        BulletinFactory.m62of(this).createSimpleBulletin(C3634R.raw.chats_infotip, string).show();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ListAdapter listAdapter;
        if (i == NotificationCenter.privacyRulesUpdated) {
            TLRPC$TL_globalPrivacySettings globalPrivacySettings = getContactsController().getGlobalPrivacySettings();
            if (globalPrivacySettings != null) {
                this.archiveChats = globalPrivacySettings.archive_and_mute_new_noncontact_peers;
            }
            ListAdapter listAdapter2 = this.listAdapter;
            if (listAdapter2 != null) {
                listAdapter2.notifyDataSetChanged();
            }
        } else if (i == NotificationCenter.blockedUsersDidLoad) {
            if (isContactsType()) {
                return;
            }
            this.listAdapter.notifyItemChanged(this.blockedRow);
        } else if (i == NotificationCenter.didSetOrRemoveTwoStepPassword) {
            if (isContactsType()) {
                return;
            }
            if (objArr.length > 0) {
                this.currentPassword = (TLRPC$account_Password) objArr[0];
                ListAdapter listAdapter3 = this.listAdapter;
                if (listAdapter3 != null) {
                    listAdapter3.notifyItemChanged(this.passwordRow);
                }
            } else {
                this.currentPassword = null;
                loadPasswordSettings();
                updateRows();
            }
        }
        if (i != NotificationCenter.didUpdateGlobalAutoDeleteTimer || (listAdapter = this.listAdapter) == null) {
            return;
        }
        listAdapter.notifyItemChanged(this.autoDeleteMesages);
    }

    private void updateRows() {
        updateRows(true);
    }

    private void updateRows(boolean z) {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.securitySectionRow = 0;
        int i2 = i + 1;
        this.rowCount = i2;
        this.passwordRow = i;
        int i3 = i2 + 1;
        this.rowCount = i3;
        this.autoDeleteMesages = i2;
        int i4 = i3 + 1;
        this.rowCount = i4;
        this.passcodeRow = i3;
        int i5 = i4 + 1;
        this.rowCount = i5;
        this.passcodeArchiveRow = i4;
        int i6 = i5 + 1;
        this.rowCount = i6;
        this.passcodeCloudRow = i5;
        TLRPC$account_Password tLRPC$account_Password = this.currentPassword;
        if (tLRPC$account_Password == null ? SharedConfig.hasEmailLogin : tLRPC$account_Password.login_email_pattern != null) {
            this.rowCount = i6 + 1;
            this.emailLoginRow = i6;
        } else {
            this.emailLoginRow = -1;
        }
        int i7 = this.rowCount;
        this.rowCount = i7 + 1;
        this.blockedRow = i7;
        if (tLRPC$account_Password != null) {
            boolean z2 = tLRPC$account_Password.login_email_pattern != null;
            if (SharedConfig.hasEmailLogin != z2) {
                SharedConfig.hasEmailLogin = z2;
                SharedConfig.saveConfig();
            }
        }
        int i8 = this.rowCount;
        int i9 = i8 + 1;
        this.rowCount = i9;
        this.sessionsRow = i8;
        int i10 = i9 + 1;
        this.rowCount = i10;
        this.sessionsDetailRow = i9;
        int i11 = i10 + 1;
        this.rowCount = i11;
        this.privacySectionRow = i10;
        int i12 = i11 + 1;
        this.rowCount = i12;
        this.phoneNumberRow = i11;
        int i13 = i12 + 1;
        this.rowCount = i13;
        this.lastSeenRow = i12;
        int i14 = i13 + 1;
        this.rowCount = i14;
        this.profilePhotoRow = i13;
        int i15 = i14 + 1;
        this.rowCount = i15;
        this.bioRow = i14;
        int i16 = i15 + 1;
        this.rowCount = i16;
        this.forwardsRow = i15;
        int i17 = i16 + 1;
        this.rowCount = i17;
        this.callsRow = i16;
        this.rowCount = i17 + 1;
        this.groupsRow = i17;
        this.groupsDetailRow = -1;
        if (!getMessagesController().premiumLocked || getUserConfig().isPremium()) {
            int i18 = this.rowCount;
            this.rowCount = i18 + 1;
            this.voicesRow = i18;
        } else {
            this.voicesRow = -1;
        }
        int i19 = this.rowCount;
        this.rowCount = i19 + 1;
        this.privacyShadowRow = i19;
        if (getMessagesController().autoarchiveAvailable || getUserConfig().isPremium()) {
            int i20 = this.rowCount;
            int i21 = i20 + 1;
            this.rowCount = i21;
            this.newChatsHeaderRow = i20;
            int i22 = i21 + 1;
            this.rowCount = i22;
            this.newChatsRow = i21;
            this.rowCount = i22 + 1;
            this.newChatsSectionRow = i22;
        } else {
            this.newChatsHeaderRow = -1;
            this.newChatsRow = -1;
            this.newChatsSectionRow = -1;
        }
        int i23 = this.rowCount;
        int i24 = i23 + 1;
        this.rowCount = i24;
        this.advancedSectionRow = i23;
        int i25 = i24 + 1;
        this.rowCount = i25;
        this.deleteAccountRow = i24;
        int i26 = i25 + 1;
        this.rowCount = i26;
        this.deleteAccountDetailRow = i25;
        this.rowCount = i26 + 1;
        this.botsSectionRow = i26;
        if (getUserConfig().hasSecureData) {
            int i27 = this.rowCount;
            this.rowCount = i27 + 1;
            this.passportRow = i27;
        } else {
            this.passportRow = -1;
        }
        int i28 = this.rowCount;
        this.rowCount = i28 + 1;
        this.paymentsClearRow = i28;
        SessionsActivity sessionsActivity = this.webSessionsActivityPreload;
        if (sessionsActivity != null && sessionsActivity.getSessionsCount() > 0) {
            int i29 = this.rowCount;
            int i30 = i29 + 1;
            this.rowCount = i30;
            this.webSessionsRow = i29;
            this.rowCount = i30 + 1;
            this.botsDetailRow = i30;
            this.botsAndWebsitesShadowRow = -1;
        } else {
            this.webSessionsRow = -1;
            this.botsDetailRow = -1;
            int i31 = this.rowCount;
            this.rowCount = i31 + 1;
            this.botsAndWebsitesShadowRow = i31;
        }
        int i32 = this.rowCount;
        int i33 = i32 + 1;
        this.rowCount = i33;
        this.contactsSectionRow = i32;
        int i34 = i33 + 1;
        this.rowCount = i34;
        this.contactsDeleteRow = i33;
        int i35 = i34 + 1;
        this.rowCount = i35;
        this.contactsSyncRow = i34;
        int i36 = i35 + 1;
        this.rowCount = i36;
        this.contactsSuggestRow = i35;
        int i37 = i36 + 1;
        this.rowCount = i37;
        this.contactsDetailRow = i36;
        int i38 = i37 + 1;
        this.rowCount = i38;
        this.secretSectionRow = i37;
        int i39 = i38 + 1;
        this.rowCount = i39;
        this.secretMapRow = i38;
        int i40 = i39 + 1;
        this.rowCount = i40;
        this.secretWebpageRow = i39;
        this.rowCount = i40 + 1;
        this.secretDetailRow = i40;
        if (isContactsType()) {
            this.rowCount = 0;
            this.contactsSectionRow = -1;
            this.secretDetailRow = -1;
            this.secretWebpageRow = -1;
            this.secretMapRow = -1;
            this.secretSectionRow = -1;
            this.botsDetailRow = -1;
            this.webSessionsRow = -1;
            this.paymentsClearRow = -1;
            this.passportRow = -1;
            this.botsSectionRow = -1;
            this.deleteAccountDetailRow = -1;
            this.deleteAccountRow = -1;
            this.advancedSectionRow = -1;
            this.newChatsSectionRow = -1;
            this.newChatsRow = -1;
            this.newChatsHeaderRow = -1;
            this.sessionsDetailRow = -1;
            this.autoDeleteMesages = -1;
            this.passcodeRow = -1;
            this.sessionsRow = -1;
            this.passwordRow = -1;
            this.securitySectionRow = -1;
            this.groupsDetailRow = -1;
            this.groupsRow = -1;
            this.privacyShadowRow = -1;
            this.emailLoginRow = -1;
            this.voicesRow = -1;
            this.callsRow = -1;
            this.forwardsRow = -1;
            this.bioRow = -1;
            this.profilePhotoRow = -1;
            this.lastSeenRow = -1;
            this.phoneNumberRow = -1;
            this.blockedRow = -1;
            this.privacySectionRow = -1;
            int i41 = 0 + 1;
            this.rowCount = i41;
            this.contactsDeleteRow = 0;
            int i42 = i41 + 1;
            this.rowCount = i42;
            this.contactsSyncRow = i41;
            int i43 = i42 + 1;
            this.rowCount = i43;
            this.contactsSuggestRow = i42;
            this.rowCount = i43 + 1;
            this.contactsDetailRow = i43;
        }
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter == null || !z) {
            return;
        }
        listAdapter.notifyDataSetChanged();
    }

    public PrivacySettingsActivity setCurrentPassword(TLRPC$account_Password tLRPC$account_Password) {
        this.currentPassword = tLRPC$account_Password;
        if (tLRPC$account_Password != null) {
            initPassword();
        }
        return this;
    }

    private void initPassword() {
        TwoStepVerificationActivity.initPasswordNewAlgo(this.currentPassword);
        boolean z = true;
        if (!getUserConfig().hasSecureData && this.currentPassword.has_secure_values) {
            getUserConfig().hasSecureData = true;
            getUserConfig().saveConfig(false);
            updateRows();
            return;
        }
        TLRPC$account_Password tLRPC$account_Password = this.currentPassword;
        if (tLRPC$account_Password != null) {
            int i = this.emailLoginRow;
            String str = tLRPC$account_Password.login_email_pattern;
            boolean z2 = str != null && i == -1;
            if (str != null || i == -1) {
                z = false;
            }
            if (z2 || z) {
                updateRows(false);
                ListAdapter listAdapter = this.listAdapter;
                if (listAdapter != null) {
                    if (z2) {
                        listAdapter.notifyItemInserted(this.emailLoginRow);
                    } else {
                        listAdapter.notifyItemRemoved(i);
                    }
                }
            }
        }
        ListAdapter listAdapter2 = this.listAdapter;
        if (listAdapter2 != null) {
            listAdapter2.notifyItemChanged(this.passwordRow);
        }
    }

    private void loadPasswordSettings() {
        if (isContactsType()) {
            return;
        }
        getConnectionsManager().sendRequest(new TLRPC$TL_account_getPassword(), new RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda13
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PrivacySettingsActivity.this.lambda$loadPasswordSettings$21(tLObject, tLRPC$TL_error);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPasswordSettings$21(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            final TLRPC$account_Password tLRPC$account_Password = (TLRPC$account_Password) tLObject;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    PrivacySettingsActivity.this.lambda$loadPasswordSettings$20(tLRPC$account_Password);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPasswordSettings$20(TLRPC$account_Password tLRPC$account_Password) {
        this.currentPassword = tLRPC$account_Password;
        initPassword();
    }

    public static String formatRulesString(AccountInstance accountInstance, int i) {
        ArrayList<TLRPC$PrivacyRule> privacyRules = accountInstance.getContactsController().getPrivacyRules(i);
        if (privacyRules == null || privacyRules.size() == 0) {
            if (i == 3) {
                return LocaleController.getString("P2PNobody", C3634R.string.P2PNobody);
            }
            return LocaleController.getString("LastSeenNobody", C3634R.string.LastSeenNobody);
        }
        boolean z = true;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < privacyRules.size(); i4++) {
            TLRPC$PrivacyRule tLRPC$PrivacyRule = privacyRules.get(i4);
            if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueAllowChatParticipants) {
                TLRPC$TL_privacyValueAllowChatParticipants tLRPC$TL_privacyValueAllowChatParticipants = (TLRPC$TL_privacyValueAllowChatParticipants) tLRPC$PrivacyRule;
                int size = tLRPC$TL_privacyValueAllowChatParticipants.chats.size();
                for (int i5 = 0; i5 < size; i5++) {
                    TLRPC$Chat chat = accountInstance.getMessagesController().getChat(tLRPC$TL_privacyValueAllowChatParticipants.chats.get(i5));
                    if (chat != null) {
                        i3 += chat.participants_count;
                    }
                }
            } else if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueDisallowChatParticipants) {
                TLRPC$TL_privacyValueDisallowChatParticipants tLRPC$TL_privacyValueDisallowChatParticipants = (TLRPC$TL_privacyValueDisallowChatParticipants) tLRPC$PrivacyRule;
                int size2 = tLRPC$TL_privacyValueDisallowChatParticipants.chats.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    TLRPC$Chat chat2 = accountInstance.getMessagesController().getChat(tLRPC$TL_privacyValueDisallowChatParticipants.chats.get(i6));
                    if (chat2 != null) {
                        i2 += chat2.participants_count;
                    }
                }
            } else if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueAllowUsers) {
                i3 += ((TLRPC$TL_privacyValueAllowUsers) tLRPC$PrivacyRule).users.size();
            } else if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueDisallowUsers) {
                i2 += ((TLRPC$TL_privacyValueDisallowUsers) tLRPC$PrivacyRule).users.size();
            } else if (z) {
                if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueAllowAll) {
                    z = false;
                } else {
                    z = tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueDisallowAll ? true : true;
                }
            }
        }
        if (!z || (z && i2 > 0)) {
            return i == 3 ? i2 == 0 ? LocaleController.getString("P2PEverybody", C3634R.string.P2PEverybody) : LocaleController.formatString("P2PEverybodyMinus", C3634R.string.P2PEverybodyMinus, Integer.valueOf(i2)) : i2 == 0 ? LocaleController.getString("LastSeenEverybody", C3634R.string.LastSeenEverybody) : LocaleController.formatString("LastSeenEverybodyMinus", C3634R.string.LastSeenEverybodyMinus, Integer.valueOf(i2));
        } else if (!z && (!z || i2 <= 0 || i3 <= 0)) {
            return (z || i3 > 0) ? i == 3 ? i3 == 0 ? LocaleController.getString("P2PNobody", C3634R.string.P2PNobody) : LocaleController.formatString("P2PNobodyPlus", C3634R.string.P2PNobodyPlus, Integer.valueOf(i3)) : i3 == 0 ? LocaleController.getString("LastSeenNobody", C3634R.string.LastSeenNobody) : LocaleController.formatString("LastSeenNobodyPlus", C3634R.string.LastSeenNobodyPlus, Integer.valueOf(i3)) : Card.FUNDING_UNKNOWN;
        } else if (i == 3) {
            if (i3 == 0 && i2 == 0) {
                return LocaleController.getString("P2PContacts", C3634R.string.P2PContacts);
            }
            return (i3 == 0 || i2 == 0) ? i2 != 0 ? LocaleController.formatString("P2PContactsMinus", C3634R.string.P2PContactsMinus, Integer.valueOf(i2)) : LocaleController.formatString("P2PContactsPlus", C3634R.string.P2PContactsPlus, Integer.valueOf(i3)) : LocaleController.formatString("P2PContactsMinusPlus", C3634R.string.P2PContactsMinusPlus, Integer.valueOf(i2), Integer.valueOf(i3));
        } else if (i3 == 0 && i2 == 0) {
            return LocaleController.getString("LastSeenContacts", C3634R.string.LastSeenContacts);
        } else {
            return (i3 == 0 || i2 == 0) ? i2 != 0 ? LocaleController.formatString("LastSeenContactsMinus", C3634R.string.LastSeenContactsMinus, Integer.valueOf(i2)) : LocaleController.formatString("LastSeenContactsPlus", C3634R.string.LastSeenContactsPlus, Integer.valueOf(i3)) : LocaleController.formatString("LastSeenContactsMinusPlus", C3634R.string.LastSeenContactsMinusPlus, Integer.valueOf(i2), Integer.valueOf(i3));
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PrivacySettingsActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            return adapterPosition == PrivacySettingsActivity.this.passcodeArchiveRow || adapterPosition == PrivacySettingsActivity.this.passcodeCloudRow || adapterPosition == PrivacySettingsActivity.this.passcodeRow || adapterPosition == PrivacySettingsActivity.this.passwordRow || adapterPosition == PrivacySettingsActivity.this.blockedRow || adapterPosition == PrivacySettingsActivity.this.sessionsRow || adapterPosition == PrivacySettingsActivity.this.secretWebpageRow || adapterPosition == PrivacySettingsActivity.this.webSessionsRow || (adapterPosition == PrivacySettingsActivity.this.groupsRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(1)) || ((adapterPosition == PrivacySettingsActivity.this.lastSeenRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(0)) || ((adapterPosition == PrivacySettingsActivity.this.callsRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(2)) || ((adapterPosition == PrivacySettingsActivity.this.profilePhotoRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(4)) || ((adapterPosition == PrivacySettingsActivity.this.bioRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(9)) || ((adapterPosition == PrivacySettingsActivity.this.forwardsRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(5)) || ((adapterPosition == PrivacySettingsActivity.this.phoneNumberRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(6)) || ((adapterPosition == PrivacySettingsActivity.this.voicesRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(8)) || ((adapterPosition == PrivacySettingsActivity.this.deleteAccountRow && !PrivacySettingsActivity.this.getContactsController().getLoadingDeleteInfo()) || ((adapterPosition == PrivacySettingsActivity.this.newChatsRow && !PrivacySettingsActivity.this.getContactsController().getLoadingGlobalSettings()) || adapterPosition == PrivacySettingsActivity.this.emailLoginRow || adapterPosition == PrivacySettingsActivity.this.paymentsClearRow || adapterPosition == PrivacySettingsActivity.this.secretMapRow || adapterPosition == PrivacySettingsActivity.this.contactsSyncRow || adapterPosition == PrivacySettingsActivity.this.passportRow || adapterPosition == PrivacySettingsActivity.this.contactsDeleteRow || adapterPosition == PrivacySettingsActivity.this.contactsSuggestRow || adapterPosition == PrivacySettingsActivity.this.autoDeleteMesages)))))))));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return PrivacySettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textSettingsCell;
            if (i == 0) {
                textSettingsCell = new TextSettingsCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 1) {
                textSettingsCell = new TextInfoPrivacyCell(this.mContext);
            } else if (i == 2) {
                textSettingsCell = new HeaderCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 4) {
                textSettingsCell = new ShadowSectionCell(this.mContext);
            } else if (i == 5) {
                textSettingsCell = new TextCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else {
                textSettingsCell = new TextCheckCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            }
            return new RecyclerListView.Holder(textSettingsCell);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            boolean z;
            String format;
            String str;
            String string2;
            int i2;
            String string3;
            String str2;
            String str3;
            String format2;
            String str4;
            String string4;
            String str5;
            int itemViewType = viewHolder.getItemViewType();
            int i3 = 16;
            String str6 = null;
            if (itemViewType == 0) {
                boolean z2 = viewHolder.itemView.getTag() != null && ((Integer) viewHolder.itemView.getTag()).intValue() == i;
                viewHolder.itemView.setTag(Integer.valueOf(i));
                TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                if (i != PrivacySettingsActivity.this.webSessionsRow) {
                    if (i == PrivacySettingsActivity.this.phoneNumberRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(6)) {
                            r5 = true;
                            i3 = 30;
                        } else {
                            str6 = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 6);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyPhone", C3634R.string.PrivacyPhone), str6, true);
                    } else if (i == PrivacySettingsActivity.this.lastSeenRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(0)) {
                            r5 = true;
                            i3 = 30;
                        } else {
                            str6 = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 0);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyLastSeen", C3634R.string.PrivacyLastSeen), str6, true);
                    } else if (i == PrivacySettingsActivity.this.groupsRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(1)) {
                            r5 = true;
                            i3 = 30;
                        } else {
                            str6 = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 1);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("GroupsAndChannels", C3634R.string.GroupsAndChannels), str6, true);
                    } else if (i == PrivacySettingsActivity.this.callsRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(2)) {
                            r5 = true;
                            i3 = 30;
                        } else {
                            str6 = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 2);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("Calls", C3634R.string.Calls), str6, true);
                    } else if (i == PrivacySettingsActivity.this.profilePhotoRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(4)) {
                            r5 = true;
                            i3 = 30;
                        } else {
                            str6 = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 4);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyProfilePhoto", C3634R.string.PrivacyProfilePhoto), str6, true);
                    } else if (i == PrivacySettingsActivity.this.bioRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(9)) {
                            r5 = true;
                            i3 = 30;
                        } else {
                            str6 = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 9);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyBio", C3634R.string.PrivacyBio), str6, true);
                    } else if (i == PrivacySettingsActivity.this.forwardsRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(5)) {
                            r5 = true;
                            i3 = 30;
                        } else {
                            str6 = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 5);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyForwards", C3634R.string.PrivacyForwards), str6, true);
                    } else if (i == PrivacySettingsActivity.this.voicesRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(8)) {
                            z = true;
                            i3 = 30;
                        } else {
                            if (!PrivacySettingsActivity.this.getUserConfig().isPremium()) {
                                str6 = LocaleController.getString(C3634R.string.P2PEverybody);
                            } else {
                                str6 = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 8);
                            }
                            z = false;
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString(C3634R.string.PrivacyVoiceMessages), str6, false);
                        ImageView valueImageView = textSettingsCell.getValueImageView();
                        if (!PrivacySettingsActivity.this.getUserConfig().isPremium()) {
                            valueImageView.setVisibility(0);
                            valueImageView.setImageResource(C3634R.C3636drawable.msg_mini_premiumlock);
                            valueImageView.setTranslationY(AndroidUtilities.m104dp(1));
                            valueImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteValueText), PorterDuff.Mode.MULTIPLY));
                        } else {
                            valueImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
                        }
                        r5 = z;
                    } else if (i != PrivacySettingsActivity.this.passportRow) {
                        if (i == PrivacySettingsActivity.this.deleteAccountRow) {
                            if (!PrivacySettingsActivity.this.getContactsController().getLoadingDeleteInfo()) {
                                int deleteAccountTTL = PrivacySettingsActivity.this.getContactsController().getDeleteAccountTTL();
                                if (deleteAccountTTL <= 182) {
                                    str6 = LocaleController.formatPluralString("Months", deleteAccountTTL / 30, new Object[0]);
                                } else if (deleteAccountTTL == 365) {
                                    str6 = LocaleController.formatPluralString("Years", deleteAccountTTL / 365, new Object[0]);
                                } else {
                                    str6 = LocaleController.formatPluralString("Days", deleteAccountTTL, new Object[0]);
                                }
                                r6 = false;
                            }
                            textSettingsCell.setTextAndValue(LocaleController.getString("DeleteAccountIfAwayFor3", C3634R.string.DeleteAccountIfAwayFor3), str6, PrivacySettingsActivity.this.deleteAccountUpdate, false);
                            PrivacySettingsActivity.this.deleteAccountUpdate = false;
                            r5 = r6;
                        } else if (i != PrivacySettingsActivity.this.paymentsClearRow) {
                            if (i != PrivacySettingsActivity.this.secretMapRow) {
                                if (i == PrivacySettingsActivity.this.contactsDeleteRow) {
                                    textSettingsCell.setText(LocaleController.getString("SyncContactsDelete", C3634R.string.SyncContactsDelete), true);
                                }
                            } else {
                                int i4 = SharedConfig.mapPreviewType;
                                if (i4 == 0) {
                                    string = LocaleController.getString("MapPreviewProviderTelegram", C3634R.string.MapPreviewProviderTelegram);
                                } else if (i4 == 1) {
                                    string = LocaleController.getString("MapPreviewProviderGoogle", C3634R.string.MapPreviewProviderGoogle);
                                } else if (i4 == 2) {
                                    string = LocaleController.getString("MapPreviewProviderNobody", C3634R.string.MapPreviewProviderNobody);
                                } else {
                                    string = LocaleController.getString("MapPreviewProviderYandex", C3634R.string.MapPreviewProviderYandex);
                                }
                                textSettingsCell.setTextAndValue(LocaleController.getString("MapPreviewProvider", C3634R.string.MapPreviewProvider), string, PrivacySettingsActivity.this.secretMapUpdate, true);
                                PrivacySettingsActivity.this.secretMapUpdate = false;
                            }
                        } else {
                            textSettingsCell.setText(LocaleController.getString("PrivacyPaymentsClear", C3634R.string.PrivacyPaymentsClear), true);
                        }
                    } else {
                        textSettingsCell.setText(LocaleController.getString("TelegramPassport", C3634R.string.TelegramPassport), true);
                    }
                } else {
                    textSettingsCell.setText(LocaleController.getString("WebSessionsTitle", C3634R.string.WebSessionsTitle), false);
                }
                textSettingsCell.setDrawLoading(r5, i3, z2);
            } else if (itemViewType == 1) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.mContext, i == getItemCount() - 1 ? C3634R.C3636drawable.greydivider_bottom : C3634R.C3636drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                if (i != PrivacySettingsActivity.this.deleteAccountDetailRow) {
                    if (i != PrivacySettingsActivity.this.groupsDetailRow) {
                        if (i != PrivacySettingsActivity.this.sessionsDetailRow) {
                            if (i != PrivacySettingsActivity.this.secretDetailRow) {
                                if (i != PrivacySettingsActivity.this.botsDetailRow) {
                                    if (i != PrivacySettingsActivity.this.contactsDetailRow) {
                                        if (i == PrivacySettingsActivity.this.newChatsSectionRow) {
                                            textInfoPrivacyCell.setText(LocaleController.getString("ArchiveAndMuteInfo", C3634R.string.ArchiveAndMuteInfo));
                                            return;
                                        }
                                        return;
                                    }
                                    textInfoPrivacyCell.setText(LocaleController.getString("SuggestContactsInfo", C3634R.string.SuggestContactsInfo));
                                    return;
                                }
                                textInfoPrivacyCell.setText(LocaleController.getString("PrivacyBotsInfo", C3634R.string.PrivacyBotsInfo));
                                return;
                            }
                            textInfoPrivacyCell.setText(LocaleController.getString("SecretWebPageInfo", C3634R.string.SecretWebPageInfo));
                            return;
                        }
                        textInfoPrivacyCell.setText(LocaleController.getString("SessionsSettingsInfo", C3634R.string.SessionsSettingsInfo));
                        return;
                    }
                    textInfoPrivacyCell.setText(LocaleController.getString("GroupsAndChannelsHelp", C3634R.string.GroupsAndChannelsHelp));
                    return;
                }
                textInfoPrivacyCell.setText(LocaleController.getString("DeleteAccountHelp", C3634R.string.DeleteAccountHelp));
            } else if (itemViewType == 2) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (i != PrivacySettingsActivity.this.privacySectionRow) {
                    if (i != PrivacySettingsActivity.this.securitySectionRow) {
                        if (i != PrivacySettingsActivity.this.advancedSectionRow) {
                            if (i != PrivacySettingsActivity.this.secretSectionRow) {
                                if (i != PrivacySettingsActivity.this.botsSectionRow) {
                                    if (i != PrivacySettingsActivity.this.contactsSectionRow) {
                                        if (i == PrivacySettingsActivity.this.newChatsHeaderRow) {
                                            headerCell.setText(LocaleController.getString("NewChatsFromNonContacts", C3634R.string.NewChatsFromNonContacts));
                                            return;
                                        }
                                        return;
                                    }
                                    headerCell.setText(LocaleController.getString("Contacts", C3634R.string.Contacts));
                                    return;
                                }
                                headerCell.setText(LocaleController.getString("PrivacyBots", C3634R.string.PrivacyBots));
                                return;
                            }
                            headerCell.setText(LocaleController.getString("SecretChat", C3634R.string.SecretChat));
                            return;
                        }
                        headerCell.setText(LocaleController.getString("DeleteMyAccount", C3634R.string.DeleteMyAccount));
                        return;
                    }
                    headerCell.setText(LocaleController.getString("SecurityTitle", C3634R.string.SecurityTitle));
                    return;
                }
                headerCell.setText(LocaleController.getString("PrivacyTitle", C3634R.string.PrivacyTitle));
            } else if (itemViewType == 3) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                if (i != PrivacySettingsActivity.this.secretWebpageRow) {
                    if (i == PrivacySettingsActivity.this.contactsSyncRow) {
                        textCheckCell.setTextAndCheck(LocaleController.getString("SyncContacts", C3634R.string.SyncContacts), PrivacySettingsActivity.this.newSync, true);
                        return;
                    } else if (i == PrivacySettingsActivity.this.contactsSuggestRow) {
                        textCheckCell.setTextAndCheck(LocaleController.getString("SuggestContacts", C3634R.string.SuggestContacts), PrivacySettingsActivity.this.newSuggest, false);
                        return;
                    } else if (i == PrivacySettingsActivity.this.newChatsRow) {
                        textCheckCell.setTextAndCheck(LocaleController.getString("ArchiveAndMute", C3634R.string.ArchiveAndMute), PrivacySettingsActivity.this.archiveChats, false);
                        return;
                    } else {
                        return;
                    }
                }
                textCheckCell.setTextAndCheck(LocaleController.getString("SecretWebPage", C3634R.string.SecretWebPage), PrivacySettingsActivity.this.getMessagesController().secretWebpagePreview == 1, false);
            } else if (itemViewType != 5) {
            } else {
                View view = viewHolder.itemView;
                TextCell textCell = (TextCell) view;
                boolean z3 = view.getTag() != null && ((Integer) viewHolder.itemView.getTag()).intValue() == i;
                viewHolder.itemView.setTag(Integer.valueOf(i));
                textCell.setPrioritizeTitleOverValue(false);
                if (i != PrivacySettingsActivity.this.passcodeCloudRow && i != PrivacySettingsActivity.this.passcodeArchiveRow) {
                    if (i != PrivacySettingsActivity.this.autoDeleteMesages) {
                        String str7 = "";
                        if (i == PrivacySettingsActivity.this.sessionsRow) {
                            if (PrivacySettingsActivity.this.devicesActivityPreload.getSessionsCount() == 0) {
                                if (PrivacySettingsActivity.this.getMessagesController().lastKnownSessionsCount == 0) {
                                    r5 = true;
                                    str4 = str7;
                                    PrivacySettingsActivity.this.getMessagesController().lastKnownSessionsCount = PrivacySettingsActivity.this.devicesActivityPreload.getSessionsCount();
                                    textCell.setTextAndValueAndIcon(LocaleController.getString("SessionsTitle", C3634R.string.SessionsTitle), str4, true, C3634R.C3636drawable.msg2_devices, false);
                                } else {
                                    format2 = String.format(LocaleController.getInstance().getCurrentLocale(), "%d", Integer.valueOf(PrivacySettingsActivity.this.getMessagesController().lastKnownSessionsCount));
                                }
                            } else {
                                format2 = String.format(LocaleController.getInstance().getCurrentLocale(), "%d", Integer.valueOf(PrivacySettingsActivity.this.devicesActivityPreload.getSessionsCount()));
                            }
                            str4 = format2;
                            PrivacySettingsActivity.this.getMessagesController().lastKnownSessionsCount = PrivacySettingsActivity.this.devicesActivityPreload.getSessionsCount();
                            textCell.setTextAndValueAndIcon(LocaleController.getString("SessionsTitle", C3634R.string.SessionsTitle), str4, true, C3634R.C3636drawable.msg2_devices, false);
                        } else if (i == PrivacySettingsActivity.this.emailLoginRow) {
                            if (PrivacySettingsActivity.this.currentPassword == null) {
                                r5 = true;
                                str3 = str7;
                            } else {
                                SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(PrivacySettingsActivity.this.currentPassword.login_email_pattern);
                                int indexOf = PrivacySettingsActivity.this.currentPassword.login_email_pattern.indexOf(42);
                                int lastIndexOf = PrivacySettingsActivity.this.currentPassword.login_email_pattern.lastIndexOf(42);
                                str3 = valueOf;
                                str3 = valueOf;
                                str3 = valueOf;
                                if (indexOf != lastIndexOf && indexOf != -1 && lastIndexOf != -1) {
                                    TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                                    textStyleRun.flags |= 256;
                                    textStyleRun.start = indexOf;
                                    int i5 = lastIndexOf + 1;
                                    textStyleRun.end = i5;
                                    valueOf.setSpan(new TextStyleSpan(textStyleRun), indexOf, i5, 0);
                                    str3 = valueOf;
                                }
                            }
                            textCell.setPrioritizeTitleOverValue(true);
                            textCell.setTextAndSpoilersValueAndIcon(LocaleController.getString(C3634R.string.EmailLogin), str3, C3634R.C3636drawable.msg2_email, true);
                        } else if (i == PrivacySettingsActivity.this.passwordRow) {
                            if (PrivacySettingsActivity.this.currentPassword == null) {
                                r5 = true;
                                str2 = str7;
                            } else {
                                if (PrivacySettingsActivity.this.currentPassword.has_password) {
                                    string3 = LocaleController.getString("PasswordOn", C3634R.string.PasswordOn);
                                } else {
                                    string3 = LocaleController.getString("PasswordOff", C3634R.string.PasswordOff);
                                }
                                str2 = string3;
                            }
                            textCell.setTextAndValueAndIcon(LocaleController.getString("TwoStepVerification", C3634R.string.TwoStepVerification), str2, true, C3634R.C3636drawable.msg2_permissions, true);
                        } else if (i != PrivacySettingsActivity.this.passcodeRow) {
                            if (i == PrivacySettingsActivity.this.blockedRow) {
                                int i6 = PrivacySettingsActivity.this.getMessagesController().totalBlockedCount;
                                if (i6 == 0) {
                                    format = LocaleController.getString("BlockedEmpty", C3634R.string.BlockedEmpty);
                                } else if (i6 > 0) {
                                    format = String.format(LocaleController.getInstance().getCurrentLocale(), "%d", Integer.valueOf(i6));
                                } else {
                                    r5 = true;
                                    str = str7;
                                    textCell.setTextAndValueAndIcon(LocaleController.getString("BlockedUsers", C3634R.string.BlockedUsers), str, true, C3634R.C3636drawable.msg2_block2, true);
                                }
                                str = format;
                                textCell.setTextAndValueAndIcon(LocaleController.getString("BlockedUsers", C3634R.string.BlockedUsers), str, true, C3634R.C3636drawable.msg2_block2, true);
                            }
                        } else {
                            if (SharedConfig.passcodeHash.length() != 0) {
                                string2 = LocaleController.getString("PasswordOn", C3634R.string.PasswordOn);
                                i2 = C3634R.C3636drawable.msg2_secret;
                            } else {
                                string2 = LocaleController.getString("PasswordOff", C3634R.string.PasswordOff);
                                i2 = C3634R.C3636drawable.msg2_secret;
                            }
                            textCell.setTextAndValueAndIcon(LocaleController.getString("Passcode", C3634R.string.Passcode), string2, true, i2, true);
                        }
                    } else {
                        int globalTTl = PrivacySettingsActivity.this.getUserConfig().getGlobalTTl();
                        if (globalTTl == -1) {
                            str5 = null;
                            r5 = true;
                        } else {
                            if (globalTTl > 0) {
                                string4 = LocaleController.formatTTLString(globalTTl * 60);
                            } else {
                                string4 = LocaleController.getString("PasswordOff", C3634R.string.PasswordOff);
                            }
                            str5 = string4;
                        }
                        textCell.setTextAndValueAndIcon(LocaleController.getString("AutoDeleteMessages", C3634R.string.AutoDeleteMessages), str5, true, C3634R.C3636drawable.msg2_autodelete, true);
                    }
                } else {
                    LockedSection lockedSection = i == PrivacySettingsActivity.this.passcodeCloudRow ? LockedSection.CLOUD : LockedSection.ARCHIVE;
                    LockedSectionsController.SectionPasscodeData sectionsPasscodeData = PrivacySettingsActivity.this.getLockedSectionsController().getSectionsPasscodeData(lockedSection);
                    textCell.setTextAndValueAndIcon(LocaleController.getInternalString(lockedSection.getNameResId()), (sectionsPasscodeData == null || sectionsPasscodeData.getPasscodeHash().isEmpty()) ? LocaleController.getString("PasswordOff", C3634R.string.PasswordOff) : LocaleController.getString("PasswordOn", C3634R.string.PasswordOn), true, lockedSection.getIconResId(), true);
                }
                textCell.setDrawLoading(r5, 16, z3);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == PrivacySettingsActivity.this.passportRow || i == PrivacySettingsActivity.this.lastSeenRow || i == PrivacySettingsActivity.this.phoneNumberRow || i == PrivacySettingsActivity.this.deleteAccountRow || i == PrivacySettingsActivity.this.webSessionsRow || i == PrivacySettingsActivity.this.groupsRow || i == PrivacySettingsActivity.this.paymentsClearRow || i == PrivacySettingsActivity.this.secretMapRow || i == PrivacySettingsActivity.this.contactsDeleteRow) {
                return 0;
            }
            if (i == PrivacySettingsActivity.this.deleteAccountDetailRow || i == PrivacySettingsActivity.this.groupsDetailRow || i == PrivacySettingsActivity.this.sessionsDetailRow || i == PrivacySettingsActivity.this.secretDetailRow || i == PrivacySettingsActivity.this.botsDetailRow || i == PrivacySettingsActivity.this.contactsDetailRow || i == PrivacySettingsActivity.this.newChatsSectionRow) {
                return 1;
            }
            if (i == PrivacySettingsActivity.this.securitySectionRow || i == PrivacySettingsActivity.this.advancedSectionRow || i == PrivacySettingsActivity.this.privacySectionRow || i == PrivacySettingsActivity.this.secretSectionRow || i == PrivacySettingsActivity.this.botsSectionRow || i == PrivacySettingsActivity.this.contactsSectionRow || i == PrivacySettingsActivity.this.newChatsHeaderRow) {
                return 2;
            }
            if (i == PrivacySettingsActivity.this.secretWebpageRow || i == PrivacySettingsActivity.this.contactsSyncRow || i == PrivacySettingsActivity.this.contactsSuggestRow || i == PrivacySettingsActivity.this.newChatsRow) {
                return 3;
            }
            if (i == PrivacySettingsActivity.this.privacyShadowRow || i == PrivacySettingsActivity.this.botsAndWebsitesShadowRow) {
                return 4;
            }
            return (i == PrivacySettingsActivity.this.autoDeleteMesages || i == PrivacySettingsActivity.this.sessionsRow || i == PrivacySettingsActivity.this.emailLoginRow || i == PrivacySettingsActivity.this.passwordRow || i == PrivacySettingsActivity.this.passcodeRow || i == PrivacySettingsActivity.this.blockedRow || i == PrivacySettingsActivity.this.passcodeCloudRow || i == PrivacySettingsActivity.this.passcodeArchiveRow) ? 5 : 0;
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, HeaderCell.class, TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        C3706ActionBar c3706ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3706ActionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        return arrayList;
    }
}
