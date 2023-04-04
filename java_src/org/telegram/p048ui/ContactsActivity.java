package org.telegram.p048ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.enums.ContactsActionType;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.model.contacts.ContactsFilter;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p032ui.base.mvp.JavaMvpFragment;
import com.iMe.p032ui.contacts.ContactsPresenter;
import com.iMe.p032ui.contacts.ContactsView;
import com.iMe.p032ui.contacts.view.TextCellWithRightImage;
import com.iMe.p032ui.wallet.actions.send.recipient.WalletSendRecipientPresenter;
import com.iMe.p032ui.wallet.actions.send.recipient.WalletSendRecipientView;
import com.iMe.services.FilteredContactsProcessingService;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SecretChatHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.ActionBarMenu;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BackDrawable;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3381ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Adapters.ContactsAdapter;
import org.telegram.p048ui.Adapters.SearchAdapter;
import org.telegram.p048ui.CameraScanActivity;
import org.telegram.p048ui.Cells.GraySectionCell;
import org.telegram.p048ui.Cells.LetterSectionCell;
import org.telegram.p048ui.Cells.ProfileSearchCell;
import org.telegram.p048ui.Cells.RadioColorCell;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Cells.UserCell;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.BulletinFactory;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.EditTextBoldCursor;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.NumberTextView;
import org.telegram.p048ui.Components.RLottieImageView;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.StickerEmptyView;
import org.telegram.p048ui.ContactsActivity;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$TL_contact;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.ContactsActivity */
/* loaded from: classes5.dex */
public class ContactsActivity extends JavaMvpFragment implements NotificationCenter.NotificationCenterDelegate, ContactsView, WalletSendRecipientView {
    private static final int[] observers = {NotificationCenter.blockedUsersDidLoad, NotificationCenter.onContactsActionsClicked};
    private ValueAnimator actionBarColorAnimator;
    private boolean allowBots;
    private boolean allowSelf;
    private boolean allowUsernameSearch;
    private int animationIndex;
    private boolean askAboutContacts;
    private BackDrawable backDrawable;
    private AnimatorSet bounceIconAnimator;
    private long channelId;
    private long chatId;
    private boolean checkPermission;
    private ActionBarMenuItem contactsPrivacySettingsItem;
    private boolean createSecretChat;
    private boolean creatingChat;
    private ContactsActivityDelegate delegate;
    private boolean destroyAfterSelect;
    private boolean disableSections;
    private StickerEmptyView emptyView;
    private RLottieImageView floatingButton;
    private FrameLayout floatingButtonContainer;
    private boolean floatingHidden;
    private AccelerateDecelerateInterpolator floatingInterpolator;
    private boolean hasGps;
    private LongSparseArray<TLRPC$User> ignoreUsers;
    private String initialSearchString;
    private boolean isChooseWalletTransferRecipient;
    private LinearLayoutManager layoutManager;
    private RecyclerListView listView;
    private ContactsAdapter listViewAdapter;
    private boolean needFinishFragment;
    private boolean needForwardCount;
    private boolean needPhonebook;
    private NetworkType networkType;
    private boolean onlyUsers;
    private AlertDialog permissionDialog;
    private long permissionRequestTime;
    @InjectPresenter
    public ContactsPresenter presenter;
    private int prevPosition;
    private int prevTop;
    private float progressToActionMode;
    private boolean resetDelegate;
    public Lazy<ResourceManager> resourceManager;
    private boolean returnAsResult;
    private boolean scrollUpdated;
    private SearchAdapter searchListViewAdapter;
    private boolean searchWas;
    private boolean searching;
    private String selectAlertString;
    private NumberTextView selectedContactsCount;
    private boolean sortByName;
    private ActionBarMenuItem sortItem;
    @InjectPresenter
    public WalletSendRecipientPresenter transferRecipientPresenter;
    private Callbacks$Callback2<TLRPC$User, String> userWithCryptoAddressDelegate;

    /* renamed from: org.telegram.ui.ContactsActivity$ContactsActivityDelegate */
    /* loaded from: classes5.dex */
    public interface ContactsActivityDelegate {
        void didSelectContact(TLRPC$User tLRPC$User, String str, ContactsActivity contactsActivity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public ContactsPresenter providePresenter() {
        return (ContactsPresenter) KoinJavaComponent.get(ContactsPresenter.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ParametersHolder lambda$provideTransferRecipientPresenter$0() {
        return ParametersHolderKt.parametersOf(this.networkType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public WalletSendRecipientPresenter provideTransferRecipientPresenter() {
        return (WalletSendRecipientPresenter) KoinJavaComponent.get(WalletSendRecipientPresenter.class, null, new Function0() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ParametersHolder lambda$provideTransferRecipientPresenter$0;
                lambda$provideTransferRecipientPresenter$0 = ContactsActivity.this.lambda$provideTransferRecipientPresenter$0();
                return lambda$provideTransferRecipientPresenter$0;
            }
        });
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        C3381ActionBar c3381ActionBar = this.actionBar;
        if (c3381ActionBar != null && c3381ActionBar.isActionModeShowed()) {
            this.presenter.closeActionMode();
            return false;
        }
        return super.onBackPressed();
    }

    @Override // com.iMe.p032ui.contacts.ContactsView
    public void onSelectedQtyChange(int i) {
        NumberTextView numberTextView;
        C3381ActionBar c3381ActionBar = this.actionBar;
        if (c3381ActionBar == null || !c3381ActionBar.isActionModeShowed() || (numberTextView = this.selectedContactsCount) == null) {
            return;
        }
        numberTextView.setNumber(i, true);
    }

    @Override // com.iMe.p032ui.contacts.ContactsView
    public void openActionMode() {
        C3381ActionBar c3381ActionBar = this.actionBar;
        if (c3381ActionBar == null || c3381ActionBar.isActionModeShowed()) {
            return;
        }
        ContactsAdapter contactsAdapter = this.listViewAdapter;
        if (contactsAdapter != null) {
            contactsAdapter.changeActionMode(true);
        }
        showActionMode();
    }

    @Override // com.iMe.p032ui.contacts.ContactsView
    public void closeActionMode() {
        C3381ActionBar c3381ActionBar = this.actionBar;
        if (c3381ActionBar == null || !c3381ActionBar.isActionModeShowed()) {
            return;
        }
        ContactsAdapter contactsAdapter = this.listViewAdapter;
        if (contactsAdapter != null) {
            contactsAdapter.changeActionMode(false);
        }
        hideActionMode();
    }

    @Override // com.iMe.p032ui.contacts.ContactsView
    public void clearSelectedContacts() {
        ContactsAdapter contactsAdapter = this.listViewAdapter;
        if (contactsAdapter == null) {
            return;
        }
        contactsAdapter.notifyDataSetChanged();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public C3381ActionBar createActionBar(Context context) {
        C3381ActionBar c3381ActionBar = new C3381ActionBar(context);
        c3381ActionBar.setBackgroundColor(Theme.getColor("actionBarDefault"));
        c3381ActionBar.setItemsBackgroundColor(Theme.getColor("actionBarDefaultSelector"), false);
        c3381ActionBar.setItemsBackgroundColor(Theme.getColor("actionBarActionModeDefaultSelector"), true);
        c3381ActionBar.setItemsColor(Theme.getColor("actionBarDefaultIcon"), false);
        c3381ActionBar.setItemsColor(Theme.getColor("actionBarActionModeDefaultIcon"), true);
        return c3381ActionBar;
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void onRecipientSelected(String str, String str2, boolean z) {
        if (this.userWithCryptoAddressDelegate != null) {
            if (TextUtils.isEmpty(str)) {
                this.userWithCryptoAddressDelegate.invoke(null, str2);
            } else {
                this.userWithCryptoAddressDelegate.invoke(getMessagesController().getUser(Long.valueOf(str)), str2);
            }
            if (this.resetDelegate) {
                this.userWithCryptoAddressDelegate = null;
            }
        }
        if (this.needFinishFragment) {
            finishFragment();
        }
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showRequestPermissionDialog(String str, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        showDialog(DialogUtils.createDialog(getParentActivity(), dialogModel, callbacks$Callback, null));
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showErrorDialog(String str, String str2, String str3) {
        DialogsFactoryKt.showErrorAlert(this, str, str2, str3, null);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showRequestPermissionSuccessDialog(String str, String str2, Callbacks$Callback callbacks$Callback) {
        DialogsFactoryKt.showSuccessAlert(this, str, str2, this.resourceManager.getValue().getString(C3316R.string.common_ok), callbacks$Callback);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void openChatScreen(long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", j);
        presentFragment(new ChatActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void validateAndGoNext(String str, boolean z) {
        this.transferRecipientPresenter.validateRecipient(str, z);
    }

    public void setUserWithCryptoAddressDelegate(Callbacks$Callback2<TLRPC$User, String> callbacks$Callback2) {
        this.userWithCryptoAddressDelegate = callbacks$Callback2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: openQrCodeScreen */
    public void lambda$createView$7() {
        if (Build.VERSION.SDK_INT >= 23 && getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
            getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
        } else {
            showCameraScanner();
        }
    }

    private void showCameraScanner() {
        CameraScanActivity.showAsSheet((BaseFragment) this, true, 1, new CameraScanActivity.CameraScanActivityDelegate() { // from class: org.telegram.ui.ContactsActivity.1
            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String str) {
                ContactsActivity.this.validateAndGoNext(str, false);
            }
        }, true);
    }

    private void processSwitchCheckedUserCell(UserCell userCell) {
        if (userCell.getCurrentObject() instanceof TLRPC$User) {
            long j = ((TLRPC$User) userCell.getCurrentObject()).f1642id;
            userCell.setChecked(this.presenter.indexOfSelectedId(j) < 0, true);
            this.presenter.addOrRemoveSelectedContact(j);
        }
    }

    private void showActionMode() {
        if (!this.actionBar.actionModeIsExist(null)) {
            createActionMode();
        }
        this.backDrawable.setRotation(BitmapDescriptorFactory.HUE_RED, true);
        this.actionBar.showActionMode();
        callActionModeAnimation();
    }

    private void hideActionMode() {
        if (this.actionBar == null) {
            return;
        }
        this.backDrawable.setRotation(1.0f, true);
        this.actionBar.hideActionMode();
        ValueAnimator valueAnimator = this.actionBarColorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        callActionModeAnimation();
    }

    private void createActionMode() {
        ActionBarMenu createActionMode = this.actionBar.createActionMode();
        NumberTextView numberTextView = new NumberTextView(createActionMode.getContext());
        this.selectedContactsCount = numberTextView;
        numberTextView.setTextSize(18);
        this.selectedContactsCount.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.selectedContactsCount.setTextColor(Theme.getColor("actionBarActionModeDefaultIcon"));
        createActionMode.addView(this.selectedContactsCount, LayoutHelper.createLinear(0, -1, 1.0f, 72, 0, 0, 0));
        createActionMode.addItemWithWidth(IdFabric$Menu.DELETE, C3316R.C3318drawable.msg_delete, AndroidUtilities.m50dp(54));
    }

    private void callActionModeAnimation() {
        ValueAnimator valueAnimator = this.actionBarColorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.progressToActionMode, BitmapDescriptorFactory.HUE_RED);
        this.actionBarColorAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ContactsActivity.this.lambda$callActionModeAnimation$1(valueAnimator2);
            }
        });
        this.actionBarColorAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.actionBarColorAnimator.setDuration(200L);
        this.actionBarColorAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callActionModeAnimation$1(ValueAnimator valueAnimator) {
        this.progressToActionMode = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        for (int i = 0; i < this.actionBar.getChildCount(); i++) {
            if (this.actionBar.getChildAt(i).getVisibility() == 0 && this.actionBar.getChildAt(i) != this.actionBar.getActionMode() && this.actionBar.getChildAt(i) != this.actionBar.getBackButton()) {
                this.actionBar.getChildAt(i).setAlpha(1.0f - this.progressToActionMode);
            }
        }
        this.fragmentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openDeleteContactsDialog(final Runnable runnable) {
        if (getParentActivity() == null) {
            return;
        }
        AlertsCreator.showConfirmationDialog(this, getParentActivity(), LocaleController.getString("SyncContactsDeleteTitle", C3316R.string.SyncContactsDeleteTitle), AndroidUtilities.replaceTags(LocaleController.getString("SyncContactsDeleteText", C3316R.string.SyncContactsDeleteText)), LocaleController.getString("Delete", C3316R.string.Delete), true, getResourceProvider(), new Callbacks$Callback1() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda9
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                ContactsActivity.lambda$openDeleteContactsDialog$2(runnable, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openDeleteContactsDialog$2(Runnable runnable, Boolean bool) {
        if (bool.booleanValue()) {
            runnable.run();
        }
    }

    private void openFilterBottomSheet() {
        if (getParentActivity() == null) {
            return;
        }
        final AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getInternalString(C3316R.string.contacts_filter_header));
        final ContactsFilter[] values = ContactsFilter.values();
        LinearLayout linearLayout = new LinearLayout(getParentActivity());
        linearLayout.setOrientation(1);
        builder.setView(linearLayout);
        for (int i = 0; i < values.length; i++) {
            RadioColorCell radioColorCell = new RadioColorCell(getParentActivity());
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setTag(Integer.valueOf(i));
            radioColorCell.setCheckColor(Theme.getColor("radioBackground"), Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue(LocaleController.getInternalString(values[i].getTitle()), getForkCommonController().getSelectedContactsFilter() == values[i]);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ContactsActivity.this.lambda$openFilterBottomSheet$3(values, builder, view);
                }
            });
        }
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openFilterBottomSheet$3(ContactsFilter[] contactsFilterArr, AlertDialog.Builder builder, View view) {
        getForkCommonController().setSelectedContactsFilter(contactsFilterArr[((Integer) view.getTag()).intValue()]);
        getForkCommonController().saveConfig();
        ContactsAdapter contactsAdapter = this.listViewAdapter;
        if (contactsAdapter != null) {
            contactsAdapter.setFilterModel(getForkCommonController().getSelectedContactsFilter());
            this.listViewAdapter.refreshContactsList();
            this.listViewAdapter.notifyDataSetChanged();
        }
        builder.getDismissRunnable().run();
    }

    private void createMenuForBlockedContactsAction() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setItems(ContactsActionType.getTextsArray(), ContactsActionType.getIconsArray(), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ContactsActivity.this.lambda$createMenuForBlockedContactsAction$4(dialogInterface, i);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenuForBlockedContactsAction$4(DialogInterface dialogInterface, int i) {
        showMembersActionConfirmationAlert(ContactsActionType.getByPosition(i));
    }

    private void showMembersActionConfirmationAlert(final ContactsActionType contactsActionType) {
        if (contactsActionType == ContactsActionType.DELETE) {
            openDeleteContactsDialog(new Runnable() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsActivity.this.lambda$showMembersActionConfirmationAlert$5(contactsActionType);
                }
            });
        } else if (contactsActionType == ContactsActionType.UNBLOCK) {
            AlertsCreator.showConfirmationDialog(this, getParentActivity(), null, LocaleController.getInternalString(C3316R.string.contacts_filter_confirm_unblock), LocaleController.getString("Unblock", C3316R.string.Unblock), true, null, new Callbacks$Callback1() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda10
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    ContactsActivity.this.lambda$showMembersActionConfirmationAlert$6(contactsActionType, (Boolean) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMembersActionConfirmationAlert$6(ContactsActionType contactsActionType, Boolean bool) {
        if (bool.booleanValue()) {
            lambda$showMembersActionConfirmationAlert$5(contactsActionType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startContactsProcessingService */
    public void lambda$showMembersActionConfirmationAlert$5(ContactsActionType contactsActionType) {
        if (AndroidUtilities.isServiceRunning(FilteredContactsProcessingService.class)) {
            showToast(LocaleController.getInternalString(C3316R.string.already_processing));
            return;
        }
        ContactsFilter selectedContactsFilter = getForkCommonController().getSelectedContactsFilter();
        ArrayList<TLRPC$TL_contact> filteredContacts = this.listViewAdapter.getFilteredContacts(selectedContactsFilter);
        long[] jArr = new long[filteredContacts.size()];
        for (int i = 0; i < filteredContacts.size(); i++) {
            jArr[i] = filteredContacts.get(i).user_id;
        }
        Intent intent = new Intent(ApplicationLoader.applicationContext, FilteredContactsProcessingService.class);
        intent.putExtra("contacts_ids", jArr);
        intent.putExtra("selected_filter_name", selectedContactsFilter.name());
        intent.putExtra("selected_contacts_action_name", contactsActionType.name());
        ApplicationLoader.applicationContext.startService(intent);
    }

    public ContactsActivity(Bundle bundle) {
        super(bundle);
        this.resourceManager = KoinJavaComponent.inject(ResourceManager.class);
        this.isChooseWalletTransferRecipient = false;
        this.floatingInterpolator = new AccelerateDecelerateInterpolator();
        this.allowSelf = true;
        this.allowBots = true;
        this.needForwardCount = true;
        this.needFinishFragment = true;
        this.resetDelegate = true;
        this.selectAlertString = null;
        this.allowUsernameSearch = true;
        this.askAboutContacts = true;
        this.checkPermission = true;
        this.animationIndex = -1;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        MessagesController.getInstance(this.currentAccount).loadBlockedPeersIfNeedIt();
        NotificationCenter.getInstance(this.currentAccount).addObservers(this, observers);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.contactsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.encryptedChatCreated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.closeChats);
        this.checkPermission = UserConfig.getInstance(this.currentAccount).syncContacts;
        Bundle bundle = this.arguments;
        if (bundle != null) {
            this.isChooseWalletTransferRecipient = bundle.getBoolean("is_choose_wallet_transfer_recipient", false);
            String string = this.arguments.getString("network_type");
            if (!TextUtils.isEmpty(string)) {
                this.networkType = NetworkType.map(string);
            }
            this.onlyUsers = this.arguments.getBoolean("onlyUsers", false);
            this.destroyAfterSelect = this.arguments.getBoolean("destroyAfterSelect", false);
            this.returnAsResult = this.arguments.getBoolean("returnAsResult", false);
            this.createSecretChat = this.arguments.getBoolean("createSecretChat", false);
            this.selectAlertString = this.arguments.getString("selectAlertString");
            this.allowUsernameSearch = this.arguments.getBoolean("allowUsernameSearch", true);
            this.needForwardCount = this.arguments.getBoolean("needForwardCount", true);
            this.allowBots = this.arguments.getBoolean("allowBots", true);
            this.allowSelf = this.arguments.getBoolean("allowSelf", true);
            this.channelId = this.arguments.getLong("channelId", 0L);
            this.needFinishFragment = this.arguments.getBoolean("needFinishFragment", true);
            this.chatId = this.arguments.getLong("chat_id", 0L);
            this.disableSections = this.arguments.getBoolean("disableSections", false);
            this.resetDelegate = this.arguments.getBoolean("resetDelegate", false);
        } else {
            this.needPhonebook = true;
        }
        if (!this.createSecretChat && !this.returnAsResult) {
            this.sortByName = SharedConfig.sortContactsByName;
        }
        getContactsController().checkInviteText();
        getContactsController().reloadContactsStatusesMaybe();
        return true;
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObservers(this, observers);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.contactsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.encryptedChatCreated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.closeChats);
        this.delegate = null;
        AndroidUtilities.removeAdjustResize(getParentActivity(), this.classGuid);
        getNotificationCenter().onAnimationFinish(this.animationIndex);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        super.onTransitionAnimationProgress(z, f);
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(45:1|(1:3)(1:112)|4|(2:6|(1:8)(2:107|(1:109)(1:110)))(1:111)|9|(3:13|(1:15)(1:17)|16)|18|(1:20)|21|(1:23)(2:98|(2:100|(1:105)(1:104))(13:106|25|26|27|(1:29)(2:93|(1:95))|30|(2:32|(1:34)(1:91))(1:92)|35|(21:39|(1:41)(1:88)|42|(1:44)(1:87)|45|(1:47)|48|(1:50)(1:86)|51|(1:53)(1:85)|54|(1:56)|57|(1:59)(3:80|(1:82)(1:84)|83)|60|(1:62)(1:79)|(1:64)|65|(1:67)(1:78)|(1:69)(1:77)|70)|71|(1:73)|74|75))|24|25|26|27|(0)(0)|30|(0)(0)|35|(26:37|39|(0)(0)|42|(0)(0)|45|(0)|48|(0)(0)|51|(0)(0)|54|(0)|57|(0)(0)|60|(0)(0)|(0)|65|(0)(0)|(0)(0)|70|71|(0)|74|75)|89|39|(0)(0)|42|(0)(0)|45|(0)|48|(0)(0)|51|(0)(0)|54|(0)|57|(0)(0)|60|(0)(0)|(0)|65|(0)(0)|(0)(0)|70|71|(0)|74|75) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x013c, code lost:
        r22.hasGps = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x034e  */
    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createView(android.content.Context r23) {
        /*
            Method dump skipped, instructions count: 987
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ContactsActivity.createView(android.content.Context):android.view.View");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ContactsActivity$2 */
    /* loaded from: classes5.dex */
    public class C54622 extends C3381ActionBar.ActionBarMenuOnItemClick {
        C54622() {
        }

        @Override // org.telegram.p048ui.ActionBar.C3381ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1 && ((BaseFragment) ContactsActivity.this).actionBar != null && ((BaseFragment) ContactsActivity.this).actionBar.isActionModeShowed()) {
                ContactsActivity.this.presenter.closeActionMode();
            } else if (i == IdFabric$Menu.CONTACTS_PRIVACY_SETTINGS) {
                Bundle bundle = new Bundle();
                bundle.putInt("custom_screen_type", IdFabric$CustomType.CONTACTS_PRIVACY_SETTINGS);
                ContactsActivity.this.presentFragment(new PrivacySettingsActivity(bundle));
            } else if (i == IdFabric$Menu.DELETE) {
                ContactsActivity.this.openDeleteContactsDialog(new Runnable() { // from class: org.telegram.ui.ContactsActivity$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContactsActivity.C54622.this.lambda$onItemClick$0();
                    }
                });
            } else if (i == -1) {
                ContactsActivity.this.finishFragment();
            } else {
                if (i == 1) {
                    SharedConfig.toggleSortContactsByName();
                    ContactsActivity.this.sortByName = SharedConfig.sortContactsByName;
                    ContactsActivity.this.listViewAdapter.setSortType(ContactsActivity.this.sortByName ? 1 : 2, false);
                    ContactsActivity.this.sortItem.setIcon(ContactsActivity.this.sortByName ? C3316R.C3318drawable.msg_contacts_time : C3316R.C3318drawable.msg_contacts_name);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0() {
            ContactsActivity.this.presenter.deleteSelectedContacts();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$8(View view, int i) {
        if ((view instanceof UserCell) && this.needPhonebook) {
            processSwitchCheckedUserCell((UserCell) view);
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(int i, View view, int i2) {
        Activity parentActivity;
        C3381ActionBar c3381ActionBar;
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        SearchAdapter searchAdapter = this.searchListViewAdapter;
        boolean z = true;
        if (adapter == searchAdapter) {
            Object item = searchAdapter.getItem(i2);
            if (item instanceof TLRPC$User) {
                TLRPC$User tLRPC$User = (TLRPC$User) item;
                if (this.searchListViewAdapter.isGlobalSearch(i2)) {
                    ArrayList<TLRPC$User> arrayList = new ArrayList<>();
                    arrayList.add(tLRPC$User);
                    getMessagesController().putUsers(arrayList, false);
                    MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(arrayList, null, false, true);
                }
                if (this.returnAsResult) {
                    LongSparseArray<TLRPC$User> longSparseArray = this.ignoreUsers;
                    if (longSparseArray == null || longSparseArray.indexOfKey(tLRPC$User.f1642id) < 0) {
                        didSelectResult(tLRPC$User, true, null);
                        return;
                    }
                    return;
                } else if (this.createSecretChat) {
                    if (tLRPC$User.f1642id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                        return;
                    }
                    this.creatingChat = true;
                    SecretChatHelper.getInstance(this.currentAccount).startSecretChat(getParentActivity(), tLRPC$User);
                    return;
                } else {
                    Bundle bundle = new Bundle();
                    bundle.putLong("user_id", tLRPC$User.f1642id);
                    if (getMessagesController().checkCanOpenChat(bundle, this)) {
                        if (this.needPhonebook) {
                            presentFragment(new ChatActivity(bundle));
                            return;
                        } else {
                            presentFragment(new ChatActivity(bundle), true);
                            return;
                        }
                    }
                    return;
                }
            } else if (item instanceof String) {
                String str = (String) item;
                if (str.equals("section")) {
                    return;
                }
                NewContactBottomSheet newContactBottomSheet = new NewContactBottomSheet(this, getContext());
                newContactBottomSheet.setInitialPhoneNumber(str, true);
                newContactBottomSheet.show();
                return;
            } else if (item instanceof ContactsController.Contact) {
                ContactsController.Contact contact = (ContactsController.Contact) item;
                AlertsCreator.createContactInviteDialog(this, contact.first_name, contact.last_name, contact.phones.get(0));
                return;
            } else {
                return;
            }
        }
        int sectionForPosition = this.listViewAdapter.getSectionForPosition(i2);
        int positionInSectionForPosition = this.listViewAdapter.getPositionInSectionForPosition(i2);
        if (positionInSectionForPosition < 0 || sectionForPosition < 0) {
            return;
        }
        if ((view instanceof UserCell) && this.needPhonebook && (c3381ActionBar = this.actionBar) != null && c3381ActionBar.isActionModeShowed()) {
            processSwitchCheckedUserCell((UserCell) view);
        } else if (view instanceof TextCellWithRightImage) {
            openFilterBottomSheet();
        } else if ((!this.onlyUsers || i != 0) && sectionForPosition == 0) {
            if (this.needPhonebook) {
                if (positionInSectionForPosition == 0) {
                    presentFragment(new InviteContactsActivity());
                } else if (positionInSectionForPosition == 1 && this.hasGps) {
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 23 && (parentActivity = getParentActivity()) != null && parentActivity.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
                        presentFragment(new ActionIntroActivity(1));
                        return;
                    }
                    if (i3 >= 28) {
                        z = ((LocationManager) ApplicationLoader.applicationContext.getSystemService("location")).isLocationEnabled();
                    } else if (i3 >= 19) {
                        try {
                            z = Settings.Secure.getInt(ApplicationLoader.applicationContext.getContentResolver(), "location_mode", 0) != 0;
                        } catch (Throwable th) {
                            FileLog.m45e(th);
                        }
                    }
                    if (!z) {
                        presentFragment(new ActionIntroActivity(4));
                    } else {
                        presentFragment(new PeopleNearbyActivity());
                    }
                }
            } else if (i != 0) {
                if (positionInSectionForPosition == 0) {
                    long j = this.chatId;
                    if (j == 0) {
                        j = this.channelId;
                    }
                    presentFragment(new GroupInviteActivity(j));
                }
            } else if (positionInSectionForPosition == 0) {
                presentFragment(new GroupCreateActivity(new Bundle()), false);
            } else if (positionInSectionForPosition == 1) {
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("onlyUsers", true);
                bundle2.putBoolean("destroyAfterSelect", true);
                bundle2.putBoolean("createSecretChat", true);
                bundle2.putBoolean("allowBots", false);
                bundle2.putBoolean("allowSelf", false);
                presentFragment(new ContactsActivity(bundle2), false);
            } else if (positionInSectionForPosition == 2) {
                SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
                if (!BuildVars.DEBUG_VERSION && globalMainSettings.getBoolean("channel_intro", false)) {
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt("step", 0);
                    presentFragment(new ChannelCreateActivity(bundle3));
                    return;
                }
                presentFragment(new ActionIntroActivity(0));
                globalMainSettings.edit().putBoolean("channel_intro", true).commit();
            }
        } else {
            Object item2 = this.listViewAdapter.getItem(sectionForPosition, positionInSectionForPosition);
            if (item2 instanceof TLRPC$User) {
                TLRPC$User tLRPC$User2 = (TLRPC$User) item2;
                if (this.returnAsResult) {
                    LongSparseArray<TLRPC$User> longSparseArray2 = this.ignoreUsers;
                    if (longSparseArray2 == null || longSparseArray2.indexOfKey(tLRPC$User2.f1642id) < 0) {
                        didSelectResult(tLRPC$User2, true, null);
                    }
                } else if (this.createSecretChat) {
                    this.creatingChat = true;
                    SecretChatHelper.getInstance(this.currentAccount).startSecretChat(getParentActivity(), tLRPC$User2);
                } else {
                    Bundle bundle4 = new Bundle();
                    bundle4.putLong("user_id", tLRPC$User2.f1642id);
                    if (getMessagesController().checkCanOpenChat(bundle4, this)) {
                        if (this.needPhonebook) {
                            presentFragment(new ChatActivity(bundle4));
                        } else {
                            presentFragment(new ChatActivity(bundle4), true);
                        }
                    }
                }
            } else if (item2 instanceof ContactsController.Contact) {
                ContactsController.Contact contact2 = (ContactsController.Contact) item2;
                final String str2 = !contact2.phones.isEmpty() ? contact2.phones.get(0) : null;
                if (str2 == null || getParentActivity() == null) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setMessage(LocaleController.getString("InviteUser", C3316R.string.InviteUser));
                builder.setTitle(LocaleController.getString("AppName", C3316R.string.AppName));
                builder.setPositiveButton(LocaleController.getString("OK", C3316R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i4) {
                        ContactsActivity.this.lambda$createView$9(str2, dialogInterface, i4);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3316R.string.Cancel), null);
                showDialog(builder.create());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(String str, DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.fromParts("sms", str, null));
            intent.putExtra("sms_body", ContactsController.getInstance(this.currentAccount).getInviteText(1));
            getParentActivity().startActivityForResult(intent, 500);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(View view) {
        AndroidUtilities.requestAdjustNothing(getParentActivity(), getClassGuid());
        if (this.isChooseWalletTransferRecipient) {
            validateAndGoNext(this.listViewAdapter.getRecipient(), false);
        } else {
            new NewContactBottomSheet(this, getContext()) { // from class: org.telegram.ui.ContactsActivity.9
                @Override // org.telegram.p048ui.ActionBar.BottomSheet
                public void dismissInternal() {
                    super.dismissInternal();
                    AndroidUtilities.requestAdjustResize(ContactsActivity.this.getParentActivity(), this.classGuid);
                }
            }.show();
        }
    }

    private void didSelectResult(final TLRPC$User tLRPC$User, boolean z, final String str) {
        final EditTextBoldCursor editTextBoldCursor;
        if (z && this.selectAlertString != null) {
            if (getParentActivity() == null) {
                return;
            }
            if (tLRPC$User.bot) {
                if (tLRPC$User.bot_nochats) {
                    try {
                        BulletinFactory.m27of(this).createErrorBulletin(LocaleController.getString("BotCantJoinGroups", C3316R.string.BotCantJoinGroups)).show();
                        return;
                    } catch (Exception e) {
                        FileLog.m45e(e);
                        return;
                    }
                } else if (this.channelId != 0) {
                    TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(this.channelId));
                    AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                    if (ChatObject.canAddAdmins(chat)) {
                        builder.setTitle(LocaleController.getString("AddBotAdminAlert", C3316R.string.AddBotAdminAlert));
                        builder.setMessage(LocaleController.getString("AddBotAsAdmin", C3316R.string.AddBotAsAdmin));
                        builder.setPositiveButton(LocaleController.getString("AddAsAdmin", C3316R.string.AddAsAdmin), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda6
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i) {
                                ContactsActivity.this.lambda$didSelectResult$12(tLRPC$User, str, dialogInterface, i);
                            }
                        });
                        builder.setNegativeButton(LocaleController.getString("Cancel", C3316R.string.Cancel), null);
                    } else {
                        builder.setMessage(LocaleController.getString("CantAddBotAsAdmin", C3316R.string.CantAddBotAsAdmin));
                        builder.setPositiveButton(LocaleController.getString("OK", C3316R.string.OK), null);
                    }
                    showDialog(builder.create());
                    return;
                }
            }
            AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
            builder2.setTitle(LocaleController.getString("AppName", C3316R.string.AppName));
            String formatStringSimple = LocaleController.formatStringSimple(this.selectAlertString, UserObject.getUserName(tLRPC$User));
            if (tLRPC$User.bot || !this.needForwardCount) {
                editTextBoldCursor = null;
            } else {
                formatStringSimple = String.format("%s\n\n%s", formatStringSimple, LocaleController.getString("AddToTheGroupForwardCount", C3316R.string.AddToTheGroupForwardCount));
                editTextBoldCursor = new EditTextBoldCursor(getParentActivity());
                editTextBoldCursor.setTextSize(1, 18.0f);
                editTextBoldCursor.setText("50");
                editTextBoldCursor.setTextColor(Theme.getColor("dialogTextBlack"));
                editTextBoldCursor.setGravity(17);
                editTextBoldCursor.setInputType(2);
                editTextBoldCursor.setImeOptions(6);
                editTextBoldCursor.setBackgroundDrawable(Theme.createEditTextDrawable(getParentActivity(), true));
                editTextBoldCursor.addTextChangedListener(new TextWatcher(this) { // from class: org.telegram.ui.ContactsActivity.11
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        try {
                            String obj = editable.toString();
                            if (obj.length() != 0) {
                                int intValue = Utilities.parseInt((CharSequence) obj).intValue();
                                if (intValue < 0) {
                                    editTextBoldCursor.setText(SessionDescription.SUPPORTED_SDP_VERSION);
                                    EditText editText = editTextBoldCursor;
                                    editText.setSelection(editText.length());
                                } else if (intValue > 300) {
                                    editTextBoldCursor.setText("300");
                                    EditText editText2 = editTextBoldCursor;
                                    editText2.setSelection(editText2.length());
                                } else {
                                    if (!obj.equals("" + intValue)) {
                                        EditText editText3 = editTextBoldCursor;
                                        editText3.setText("" + intValue);
                                        EditText editText4 = editTextBoldCursor;
                                        editText4.setSelection(editText4.length());
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            FileLog.m45e(e2);
                        }
                    }
                });
                builder2.setView(editTextBoldCursor);
            }
            builder2.setMessage(formatStringSimple);
            builder2.setPositiveButton(LocaleController.getString("OK", C3316R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ContactsActivity.this.lambda$didSelectResult$13(tLRPC$User, editTextBoldCursor, dialogInterface, i);
                }
            });
            builder2.setNegativeButton(LocaleController.getString("Cancel", C3316R.string.Cancel), null);
            showDialog(builder2.create());
            if (editTextBoldCursor != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) editTextBoldCursor.getLayoutParams();
                if (marginLayoutParams != null) {
                    if (marginLayoutParams instanceof FrameLayout.LayoutParams) {
                        ((FrameLayout.LayoutParams) marginLayoutParams).gravity = 1;
                    }
                    int m50dp = AndroidUtilities.m50dp(24);
                    marginLayoutParams.leftMargin = m50dp;
                    marginLayoutParams.rightMargin = m50dp;
                    marginLayoutParams.height = AndroidUtilities.m50dp(36);
                    editTextBoldCursor.setLayoutParams(marginLayoutParams);
                }
                editTextBoldCursor.setSelection(editTextBoldCursor.getText().length());
            }
        } else if (this.isChooseWalletTransferRecipient) {
            validateAndGoNext(String.valueOf(tLRPC$User.f1642id), true);
        } else {
            ContactsActivityDelegate contactsActivityDelegate = this.delegate;
            if (contactsActivityDelegate != null) {
                contactsActivityDelegate.didSelectContact(tLRPC$User, str, this);
                if (this.resetDelegate) {
                    this.delegate = null;
                }
            }
            if (this.needFinishFragment) {
                finishFragment();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$12(TLRPC$User tLRPC$User, String str, DialogInterface dialogInterface, int i) {
        ContactsActivityDelegate contactsActivityDelegate = this.delegate;
        if (contactsActivityDelegate != null) {
            contactsActivityDelegate.didSelectContact(tLRPC$User, str, this);
            this.delegate = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$13(TLRPC$User tLRPC$User, EditText editText, DialogInterface dialogInterface, int i) {
        didSelectResult(tLRPC$User, false, editText != null ? editText.getText().toString() : SessionDescription.SUPPORTED_SDP_VERSION);
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        Activity parentActivity;
        super.onResume();
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        ContactsAdapter contactsAdapter = this.listViewAdapter;
        if (contactsAdapter != null) {
            contactsAdapter.notifyDataSetChanged();
        }
        if (!this.checkPermission || Build.VERSION.SDK_INT < 23 || (parentActivity = getParentActivity()) == null) {
            return;
        }
        this.checkPermission = false;
        if (parentActivity.checkSelfPermission("android.permission.READ_CONTACTS") != 0) {
            if (parentActivity.shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS")) {
                AlertDialog create = AlertsCreator.createContactsPermissionDialog(parentActivity, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda15
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i) {
                        ContactsActivity.this.lambda$onResume$14(i);
                    }
                }).create();
                this.permissionDialog = create;
                showDialog(create);
                return;
            }
            askForPermissons(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$14(int i) {
        this.askAboutContacts = i != 0;
        if (i == 0) {
            return;
        }
        askForPermissons(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RecyclerListView getListView() {
        return this.listView;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        FrameLayout frameLayout = this.floatingButtonContainer;
        if (frameLayout != null) {
            frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.telegram.ui.ContactsActivity.12
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    ContactsActivity.this.floatingButtonContainer.setTranslationY(ContactsActivity.this.floatingHidden ? AndroidUtilities.m50dp(100) : 0);
                    ContactsActivity.this.floatingButtonContainer.setClickable(!ContactsActivity.this.floatingHidden);
                    if (ContactsActivity.this.floatingButtonContainer != null) {
                        ContactsActivity.this.floatingButtonContainer.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        super.onDialogDismiss(dialog);
        AlertDialog alertDialog = this.permissionDialog;
        if (alertDialog == null || dialog != alertDialog || getParentActivity() == null || !this.askAboutContacts) {
            return;
        }
        askForPermissons(false);
    }

    private void askForPermissons(boolean z) {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null || !UserConfig.getInstance(this.currentAccount).syncContacts || parentActivity.checkSelfPermission("android.permission.READ_CONTACTS") == 0) {
            return;
        }
        if (z && this.askAboutContacts) {
            showDialog(AlertsCreator.createContactsPermissionDialog(parentActivity, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda16
                @Override // org.telegram.messenger.MessagesStorage.IntCallback
                public final void run(int i) {
                    ContactsActivity.this.lambda$askForPermissons$15(i);
                }
            }).create());
            return;
        }
        this.permissionRequestTime = SystemClock.elapsedRealtime();
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.READ_CONTACTS");
        arrayList.add("android.permission.WRITE_CONTACTS");
        arrayList.add("android.permission.GET_ACCOUNTS");
        try {
            parentActivity.requestPermissions((String[]) arrayList.toArray(new String[0]), 1);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$askForPermissons$15(int i) {
        this.askAboutContacts = i != 0;
        if (i == 0) {
            return;
        }
        askForPermissons(false);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (i == 34) {
            if (iArr.length > 0 && iArr[0] == 0) {
                showCameraScanner();
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString("AppName", C3316R.string.AppName));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("QRCodePermissionNoCameraWithHint", C3316R.string.QRCodePermissionNoCameraWithHint)));
            builder.setNegativeButton(LocaleController.getString("PermissionOpenSettings", C3316R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    ContactsActivity.this.lambda$onRequestPermissionsResultFragment$16(dialogInterface, i2);
                }
            });
            builder.setPositiveButton(LocaleController.getString("OK", C3316R.string.OK), null);
            builder.show();
        } else if (i == 1) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (iArr.length > i2 && "android.permission.READ_CONTACTS".equals(strArr[i2])) {
                    if (iArr[i2] == 0) {
                        ContactsController.getInstance(this.currentAccount).forceImportContacts();
                        return;
                    }
                    SharedPreferences.Editor edit = MessagesController.getGlobalNotificationsSettings().edit();
                    this.askAboutContacts = false;
                    edit.putBoolean("askAboutContacts", false).commit();
                    if (SystemClock.elapsedRealtime() - this.permissionRequestTime < 200) {
                        try {
                            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                            intent.setData(Uri.fromParts("package", ApplicationLoader.applicationContext.getPackageName(), null));
                            getParentActivity().startActivity(intent);
                            return;
                        } catch (Exception e) {
                            FileLog.m45e(e);
                            return;
                        }
                    }
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$16(DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            getParentActivity().startActivity(intent);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        C3381ActionBar c3381ActionBar = this.actionBar;
        if (c3381ActionBar != null) {
            c3381ActionBar.closeSearchField();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ContactsAdapter contactsAdapter;
        if (i == NotificationCenter.blockedUsersDidLoad) {
            ContactsAdapter contactsAdapter2 = this.listViewAdapter;
            if (contactsAdapter2 != null) {
                contactsAdapter2.refreshOnBlockedUsersLoaded();
            }
        } else if (i == NotificationCenter.onContactsActionsClicked) {
            if (objArr.length < 1 || !(objArr[0] instanceof ContactsFilter) || this.listViewAdapter == null) {
                return;
            }
            if (((ContactsFilter) objArr[0]) == ContactsFilter.BLOCKED) {
                createMenuForBlockedContactsAction();
            } else {
                showMembersActionConfirmationAlert(ContactsActionType.DELETE);
            }
        } else if (i == NotificationCenter.contactsDidLoad) {
            ContactsAdapter contactsAdapter3 = this.listViewAdapter;
            if (contactsAdapter3 != null) {
                if (!this.sortByName) {
                    contactsAdapter3.setSortType(2, true);
                }
                this.listViewAdapter.notifyDataSetChanged();
            }
        } else if (i == NotificationCenter.updateInterfaces) {
            int intValue = ((Integer) objArr[0]).intValue();
            if ((MessagesController.UPDATE_MASK_AVATAR & intValue) != 0 || (MessagesController.UPDATE_MASK_NAME & intValue) != 0 || (MessagesController.UPDATE_MASK_STATUS & intValue) != 0) {
                updateVisibleRows(intValue);
            }
            if ((intValue & MessagesController.UPDATE_MASK_STATUS) == 0 || this.sortByName || (contactsAdapter = this.listViewAdapter) == null) {
                return;
            }
            contactsAdapter.sortOnlineContacts();
        } else if (i == NotificationCenter.encryptedChatCreated) {
            if (this.createSecretChat && this.creatingChat) {
                Bundle bundle = new Bundle();
                bundle.putInt("enc_id", ((TLRPC$EncryptedChat) objArr[0]).f1514id);
                NotificationCenter.getInstance(this.currentAccount).postNotificationName(NotificationCenter.closeChats, new Object[0]);
                presentFragment(new ChatActivity(bundle), true);
            }
        } else if (i != NotificationCenter.closeChats || this.creatingChat) {
        } else {
            removeSelfFromStack(true);
        }
    }

    private void updateVisibleRows(int i) {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.listView.getChildAt(i2);
                if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFloatingButton(boolean z) {
        if (this.floatingHidden == z) {
            return;
        }
        this.floatingHidden = z;
        AnimatorSet animatorSet = new AnimatorSet();
        Animator[] animatorArr = new Animator[1];
        FrameLayout frameLayout = this.floatingButtonContainer;
        Property property = View.TRANSLATION_Y;
        float[] fArr = new float[1];
        fArr[0] = this.floatingHidden ? AndroidUtilities.m50dp(100) : 0;
        animatorArr[0] = ObjectAnimator.ofFloat(frameLayout, property, fArr);
        animatorSet.playTogether(animatorArr);
        animatorSet.setDuration(300L);
        animatorSet.setInterpolator(this.floatingInterpolator);
        this.floatingButtonContainer.setClickable(!z);
        animatorSet.start();
    }

    public void setDelegate(ContactsActivityDelegate contactsActivityDelegate) {
        this.delegate = contactsActivityDelegate;
    }

    public void setInitialSearchString(String str) {
        this.initialSearchString = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showItemsAnimated() {
        LinearLayoutManager linearLayoutManager = this.layoutManager;
        final int findLastVisibleItemPosition = linearLayoutManager == null ? 0 : linearLayoutManager.findLastVisibleItemPosition();
        this.listView.invalidate();
        this.listView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.ContactsActivity.13
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                ContactsActivity.this.listView.getViewTreeObserver().removeOnPreDrawListener(this);
                int childCount = ContactsActivity.this.listView.getChildCount();
                AnimatorSet animatorSet = new AnimatorSet();
                for (int i = 0; i < childCount; i++) {
                    View childAt = ContactsActivity.this.listView.getChildAt(i);
                    if (ContactsActivity.this.listView.getChildAdapterPosition(childAt) > findLastVisibleItemPosition) {
                        childAt.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f);
                        ofFloat.setStartDelay((int) ((Math.min(ContactsActivity.this.listView.getMeasuredHeight(), Math.max(0, childAt.getTop())) / ContactsActivity.this.listView.getMeasuredHeight()) * 100.0f));
                        ofFloat.setDuration(200L);
                        animatorSet.playTogether(ofFloat);
                    }
                }
                animatorSet.start();
                return true;
            }
        });
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public AnimatorSet onCustomTransitionAnimation(final boolean z, final Runnable runnable) {
        final ValueAnimator ofFloat;
        if (this.createSecretChat) {
            return null;
        }
        float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0f};
        if (z) {
            // fill-array-data instruction
            fArr[0] = 1.0f;
            fArr[1] = 0.0f;
            ofFloat = ValueAnimator.ofFloat(fArr);
        } else {
            ofFloat = ValueAnimator.ofFloat(fArr);
        }
        final ViewGroup viewGroup = (ViewGroup) this.fragmentView.getParent();
        BaseFragment baseFragment = this.parentLayout.getFragmentStack().size() > 1 ? this.parentLayout.getFragmentStack().get(this.parentLayout.getFragmentStack().size() - 2) : null;
        DialogsActivity dialogsActivity = baseFragment instanceof DialogsActivity ? (DialogsActivity) baseFragment : null;
        if (dialogsActivity == null) {
            return null;
        }
        final RLottieImageView floatingButton = dialogsActivity.getFloatingButton();
        final View view = floatingButton.getParent() != null ? (View) floatingButton.getParent() : null;
        if (this.floatingButtonContainer == null || view == null || floatingButton.getVisibility() != 0 || Math.abs(view.getTranslationY()) > AndroidUtilities.m50dp(4) || Math.abs(this.floatingButtonContainer.getTranslationY()) > AndroidUtilities.m50dp(4) || dialogsActivity.needDisableContactsActivityFabAnimations()) {
            this.floatingButton.setAnimation(C3316R.C3321raw.write_contacts_fab_icon, 52, 52);
            this.floatingButton.getAnimatedDrawable().setCurrentFrame(this.floatingButton.getAnimatedDrawable().getFramesCount() - 1);
            return null;
        }
        view.setVisibility(8);
        if (z) {
            viewGroup.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ContactsActivity.lambda$onCustomTransitionAnimation$17(ofFloat, viewGroup, valueAnimator);
            }
        });
        FrameLayout frameLayout = this.floatingButtonContainer;
        if (frameLayout != null) {
            ((ViewGroup) this.fragmentView).removeView(frameLayout);
            this.parentLayout.getOverlayContainerView().addView(this.floatingButtonContainer);
        }
        ofFloat.setDuration(150L);
        ofFloat.setInterpolator(new DecelerateInterpolator(1.5f));
        final AnimatorSet animatorSet = new AnimatorSet();
        final View view2 = view;
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ContactsActivity.14
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ContactsActivity.this.floatingButtonContainer != null) {
                    if (ContactsActivity.this.floatingButtonContainer.getParent() instanceof ViewGroup) {
                        ((ViewGroup) ContactsActivity.this.floatingButtonContainer.getParent()).removeView(ContactsActivity.this.floatingButtonContainer);
                    }
                    ((ViewGroup) ((BaseFragment) ContactsActivity.this).fragmentView).addView(ContactsActivity.this.floatingButtonContainer);
                    view2.setVisibility(0);
                    if (!z) {
                        floatingButton.setAnimation(C3316R.C3321raw.write_contacts_fab_icon_reverse, 52, 52);
                        floatingButton.getAnimatedDrawable().setCurrentFrame(ContactsActivity.this.floatingButton.getAnimatedDrawable().getCurrentFrame());
                        floatingButton.playAnimation();
                    }
                }
                runnable.run();
            }
        });
        animatorSet.playTogether(ofFloat);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                ContactsActivity.this.lambda$onCustomTransitionAnimation$18(animatorSet, z, view);
            }
        }, 50L);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onCustomTransitionAnimation$17(ValueAnimator valueAnimator, ViewGroup viewGroup, ValueAnimator valueAnimator2) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        viewGroup.setTranslationX(AndroidUtilities.m50dp(48) * floatValue);
        viewGroup.setAlpha(1.0f - floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomTransitionAnimation$18(AnimatorSet animatorSet, boolean z, final View view) {
        this.animationIndex = getNotificationCenter().setAnimationInProgress(this.animationIndex, new int[]{NotificationCenter.diceStickersDidLoad}, false);
        animatorSet.start();
        if (z) {
            this.floatingButton.setAnimation(C3316R.C3321raw.write_contacts_fab_icon, 52, 52);
            this.floatingButton.playAnimation();
        } else {
            this.floatingButton.setAnimation(C3316R.C3321raw.write_contacts_fab_icon_reverse, 52, 52);
            this.floatingButton.playAnimation();
        }
        AnimatorSet animatorSet2 = this.bounceIconAnimator;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.bounceIconAnimator = new AnimatorSet();
        float duration = (float) this.floatingButton.getAnimatedDrawable().getDuration();
        long j = 0;
        int i = 4;
        if (z) {
            for (int i2 = 0; i2 < 6; i2++) {
                AnimatorSet animatorSet3 = new AnimatorSet();
                if (i2 == 0) {
                    animatorSet3.playTogether(ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 1.0f, 0.9f), ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 1.0f, 0.9f), ObjectAnimator.ofFloat(view, View.SCALE_X, 1.0f, 0.9f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 1.0f, 0.9f));
                    animatorSet3.setDuration(0.12765957f * duration);
                    animatorSet3.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                } else if (i2 == 1) {
                    animatorSet3.playTogether(ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 0.9f, 1.06f), ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 0.9f, 1.06f), ObjectAnimator.ofFloat(view, View.SCALE_X, 0.9f, 1.06f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 0.9f, 1.06f));
                    animatorSet3.setDuration(0.3617021f * duration);
                    animatorSet3.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                } else if (i2 == 2) {
                    animatorSet3.playTogether(ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 1.06f, 0.9f), ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 1.06f, 0.9f), ObjectAnimator.ofFloat(view, View.SCALE_X, 1.06f, 0.9f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 1.06f, 0.9f));
                    animatorSet3.setDuration(0.21276596f * duration);
                    animatorSet3.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                } else if (i2 == 3) {
                    animatorSet3.playTogether(ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 0.9f, 1.03f), ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 0.9f, 1.03f), ObjectAnimator.ofFloat(view, View.SCALE_X, 0.9f, 1.03f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 0.9f, 1.03f));
                    animatorSet3.setDuration(duration * 0.10638298f);
                    animatorSet3.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                } else if (i2 == 4) {
                    animatorSet3.playTogether(ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 1.03f, 0.98f), ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 1.03f, 0.98f), ObjectAnimator.ofFloat(view, View.SCALE_X, 1.03f, 0.98f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 1.03f, 0.98f));
                    animatorSet3.setDuration(duration * 0.10638298f);
                    animatorSet3.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                } else {
                    animatorSet3.playTogether(ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 0.98f, 1.0f), ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 0.98f, 1.0f), ObjectAnimator.ofFloat(view, View.SCALE_X, 0.98f, 1.0f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 0.98f, 1.0f));
                    animatorSet3.setDuration(0.08510638f * duration);
                    animatorSet3.setInterpolator(CubicBezierInterpolator.EASE_IN);
                }
                animatorSet3.setStartDelay(j);
                j += animatorSet3.getDuration();
                this.bounceIconAnimator.playTogether(animatorSet3);
            }
        } else {
            for (int i3 = 0; i3 < 5; i3++) {
                AnimatorSet animatorSet4 = new AnimatorSet();
                if (i3 == 0) {
                    Animator[] animatorArr = new Animator[i];
                    animatorArr[0] = ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 1.0f, 0.9f);
                    animatorArr[1] = ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 1.0f, 0.9f);
                    animatorArr[2] = ObjectAnimator.ofFloat(view, View.SCALE_X, 1.0f, 0.9f);
                    animatorArr[3] = ObjectAnimator.ofFloat(view, View.SCALE_Y, 1.0f, 0.9f);
                    animatorSet4.playTogether(animatorArr);
                    animatorSet4.setDuration(0.19444445f * duration);
                    animatorSet4.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                } else if (i3 == 1) {
                    animatorSet4.playTogether(ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 0.9f, 1.06f), ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 0.9f, 1.06f), ObjectAnimator.ofFloat(view, View.SCALE_X, 0.9f, 1.06f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 0.9f, 1.06f));
                    animatorSet4.setDuration(0.22222222f * duration);
                    animatorSet4.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                } else if (i3 == 2) {
                    animatorSet4.playTogether(ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 1.06f, 0.92f), ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 1.06f, 0.92f), ObjectAnimator.ofFloat(view, View.SCALE_X, 1.06f, 0.92f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 1.06f, 0.92f));
                    animatorSet4.setDuration(0.19444445f * duration);
                    animatorSet4.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                } else if (i3 == 3) {
                    animatorSet4.playTogether(ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 0.92f, 1.02f), ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 0.92f, 1.02f), ObjectAnimator.ofFloat(view, View.SCALE_X, 0.92f, 1.02f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 0.92f, 1.02f));
                    animatorSet4.setDuration(0.25f * duration);
                    animatorSet4.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                } else {
                    i = 4;
                    animatorSet4.playTogether(ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_X, 1.02f, 1.0f), ObjectAnimator.ofFloat(this.floatingButton, View.SCALE_Y, 1.02f, 1.0f), ObjectAnimator.ofFloat(view, View.SCALE_X, 1.02f, 1.0f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 1.02f, 1.0f));
                    animatorSet4.setDuration(duration * 0.10638298f);
                    animatorSet4.setInterpolator(CubicBezierInterpolator.EASE_IN);
                    animatorSet4.setStartDelay(j);
                    j += animatorSet4.getDuration();
                    this.bounceIconAnimator.playTogether(animatorSet4);
                }
                i = 4;
                animatorSet4.setStartDelay(j);
                j += animatorSet4.getDuration();
                this.bounceIconAnimator.playTogether(animatorSet4);
            }
        }
        this.bounceIconAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ContactsActivity.15
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ContactsActivity.this.floatingButton.setScaleX(1.0f);
                ContactsActivity.this.floatingButton.setScaleY(1.0f);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                ContactsActivity.this.bounceIconAnimator = null;
                ContactsActivity.this.getNotificationCenter().onAnimationFinish(ContactsActivity.this.animationIndex);
            }
        });
        this.bounceIconAnimator.start();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda17
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ContactsActivity.this.lambda$getThemeDescriptions$19();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_AM_ITEMSCOLOR, null, null, null, null, "actionBarActionModeDefaultIcon"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_AM_TOPBACKGROUND, null, null, null, null, "actionBarActionModeDefaultTop"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_AM_SELECTORCOLOR, null, null, null, null, "actionBarActionModeDefaultSelector"));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCH, null, null, null, null, "actionBarDefaultSearch"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCHPLACEHOLDER, null, null, null, null, "actionBarDefaultSearchPlaceholder"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SECTIONS, new Class[]{LetterSectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, "fastScrollActive"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, "fastScrollInactive"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, "fastScrollText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, "windowBackgroundWhiteBlueText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, null, Theme.avatarDrawables, null, "avatar_text"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundRed"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundOrange"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundViolet"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundGreen"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundCyan"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundBlue"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundPink"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueText2"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayIcon"));
        arrayList.add(new ThemeDescription(this.floatingButton, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, "chats_actionIcon"));
        arrayList.add(new ThemeDescription(this.floatingButton, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "chats_actionBackground"));
        arrayList.add(new ThemeDescription(this.floatingButton, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, "chats_actionPressedBackground"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "key_graySectionText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{GraySectionCell.class}, null, null, null, "graySection"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, null, new Drawable[]{Theme.dialogs_verifiedCheckDrawable}, null, "chats_verifiedCheck"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, null, new Drawable[]{Theme.dialogs_verifiedDrawable}, null, "chats_verifiedBackground"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, Theme.dialogs_offlinePaint, null, null, "windowBackgroundWhiteGrayText3"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, Theme.dialogs_onlinePaint, null, null, "windowBackgroundWhiteBlueText3"));
        TextPaint[] textPaintArr = Theme.dialogs_namePaint;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, (String[]) null, new Paint[]{textPaintArr[0], textPaintArr[1], Theme.dialogs_searchNamePaint}, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "chats_name"));
        TextPaint[] textPaintArr2 = Theme.dialogs_nameEncryptedPaint;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, (String[]) null, new Paint[]{textPaintArr2[0], textPaintArr2[1], Theme.dialogs_searchNameEncryptedPaint}, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "chats_secretName"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$19() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(0);
                } else if (childAt instanceof ProfileSearchCell) {
                    ((ProfileSearchCell) childAt).update(0);
                }
            }
        }
    }
}
