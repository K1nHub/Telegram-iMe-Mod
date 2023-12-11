package org.telegram.p043ui;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p023ui.view.HeaderCellWithImageViewButtonWrapper;
import com.iMe.fork.p023ui.view.HeaderCellWithNetwork;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.model.common.ScreenType;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.wallet.home.pay.BinancePayScreenArgs;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.model.wallet.staking.StakingScreenType;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.p030ui.base.wallet_auth.JavaWalletAuthBaseFragment;
import com.iMe.p030ui.custom.ChooseRecipientOptionsView;
import com.iMe.p030ui.custom.FeeView;
import com.iMe.p030ui.custom.StakingPercentageView;
import com.iMe.p030ui.custom.StakingPrognosisView;
import com.iMe.p030ui.custom.StakingSafeWithdrawalView;
import com.iMe.p030ui.custom.StakingWithdrawalFeeView;
import com.iMe.p030ui.custom.TransactionActionButtonsView;
import com.iMe.p030ui.custom.donation.DonationBalanceView;
import com.iMe.p030ui.custom.donation.DonationSeeMoreButton;
import com.iMe.p030ui.custom.donation.DonationTransactionView;
import com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda4;
import com.iMe.p030ui.wallet.donations.WalletDonationsPresenter;
import com.iMe.p030ui.wallet.donations.WalletDonationsView;
import com.iMe.p030ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter;
import com.iMe.p030ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayView;
import com.iMe.p030ui.wallet.staking.calculator.StakingCalculatorPresenter;
import com.iMe.p030ui.wallet.staking.calculator.StakingCalculatorView;
import com.iMe.p030ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment;
import com.iMe.p030ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog;
import com.iMe.p030ui.wallet.staking.transaction.StakingTransactionFragment;
import com.iMe.p030ui.wallet.swap.WalletSwapProtocolsFragment;
import com.iMe.p030ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.p030ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog;
import com.iMe.storage.common.AppConfiguration$Bots;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.helper.GlideHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.CameraScanActivity;
import org.telegram.p043ui.Cells.CreationTextCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ManageChatTextCell;
import org.telegram.p043ui.Cells.ManageChatUserCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.ChatRightsEditActivity;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.DotDividerSpan;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.InviteLinkBottomSheet;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkActionView;
import org.telegram.p043ui.Components.QRCodeBottomSheet;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.RecyclerItemsEnterAnimator;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.TimerParticles;
import org.telegram.p043ui.ContactsActivity;
import org.telegram.p043ui.LinkEditActivity;
import org.telegram.p043ui.ManageLinksActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$ExportedChatInvite;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_chatAdminWithInvites;
import org.telegram.tgnet.TLRPC$TL_chatBannedRights;
import org.telegram.tgnet.TLRPC$TL_chatInviteExported;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_chatAdminsWithInvites;
import org.telegram.tgnet.TLRPC$TL_messages_deleteExportedChatInvite;
import org.telegram.tgnet.TLRPC$TL_messages_deleteRevokedExportedChatInvites;
import org.telegram.tgnet.TLRPC$TL_messages_editExportedChatInvite;
import org.telegram.tgnet.TLRPC$TL_messages_exportChatInvite;
import org.telegram.tgnet.TLRPC$TL_messages_exportedChatInvite;
import org.telegram.tgnet.TLRPC$TL_messages_exportedChatInviteReplaced;
import org.telegram.tgnet.TLRPC$TL_messages_exportedChatInvites;
import org.telegram.tgnet.TLRPC$TL_messages_getAdminsWithInvites;
import org.telegram.tgnet.TLRPC$TL_messages_getExportedChatInvites;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.ManageLinksActivity */
/* loaded from: classes5.dex */
public class ManageLinksActivity extends JavaWalletAuthBaseFragment implements WalletReceiveBinancePayView, WalletDonationsView, StakingCalculatorView, NotificationCenter.NotificationCenterDelegate {
    public static int BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE = 1;
    public static int CHANNEL_ADMIN_DONATIONS = 4;
    public static int STAKING_CALCULATOR_SCREEN_TYPE = 9;
    private long adminId;
    private ArrayList<TLRPC$TL_chatAdminWithInvites> admins;
    private int adminsDividerRow;
    private int adminsEndRow;
    private int adminsHeaderRow;
    boolean adminsLoaded;
    private int adminsStartRow;
    private BinancePayScreenArgs binancePayScreenArgs;
    @InjectPresenter
    public WalletReceiveBinancePayPresenter binanceReceivePresenter;
    private boolean canEdit;
    private int chooseContactHeaderRow;
    private int chooseContactRow;
    private int chooseRecipientOptionsRow;
    private int commentHeaderRow;
    private int commentRow;
    private int createLinkHelpRow;
    private int createNewLinkRow;
    private int creatorDividerRow;
    private int creatorRow;
    private TLRPC$Chat currentChat;
    private long currentChatId;
    boolean deletingRevokedLinks;
    private int dividerRow;
    private int donationBalanceHeaderRow;
    private int donationBalanceRow;
    private int donationTransactionsEndRow;
    private int donationTransactionsHeaderRow;
    private int donationTransactionsSeeMoreRow;
    private int donationTransactionsStartRow;
    private int donationsDividerRow;
    @InjectPresenter
    public WalletDonationsPresenter donationsPresenter;
    private ArrayList<TransactionItem> donationsTransactions;
    private int feeRow;
    boolean hasMore;
    private int helpRow;
    private TLRPC$ChatFull info;
    private int informationRow;
    private int inputHeaderRow;
    private int inputRow;
    private TLRPC$TL_chatInviteExported invite;
    private InviteLinkBottomSheet inviteLinkBottomSheet;
    private ArrayList<TLRPC$TL_chatInviteExported> invites;
    private int invitesCount;
    private boolean isBinancePayCreateCollectionType;
    private boolean isChannel;
    private boolean isDonationsType;
    private boolean isOpened;
    private boolean isPublic;
    private boolean isStakingCalculatorType;
    private int lastDivider;
    private final LinkEditActivity.Callback linkEditActivityCallback;
    Drawable linkIcon;
    Drawable linkIconRevoked;
    private int linksEndRow;
    private int linksHeaderRow;
    boolean linksLoading;
    private int linksLoadingRow;
    private int linksStartRow;
    private RecyclerListView listView;
    private ListAdapter listViewAdapter;
    boolean loadAdmins;
    boolean loadRevoked;
    AnimationNotificationsLocker notificationsLocker;
    private int permanentLinkHeaderRow;
    private int permanentLinkRow;
    private RecyclerItemsEnterAnimator recyclerItemsEnterAnimator;
    private final Lazy<ResourceManager> resourceManager;
    private int revokeAllDivider;
    private int revokeAllRow;
    private int revokedDivider;
    private int revokedHeader;
    private ArrayList<TLRPC$TL_chatInviteExported> revokedInvites;
    private int revokedLinksEndRow;
    private int revokedLinksStartRow;
    private int rowCount;
    private int screenType;
    private int selectTokenHeaderRow;
    private int selectTokenRow;
    private int stakingActionsRow;
    @InjectPresenter
    public StakingCalculatorPresenter stakingCalculatorPresenter;
    private StakingDetailsItem stakingDetails;
    private int stakingInfoRow;
    private int stakingPrognosisRow;
    private int stakingSafeWithdrawalRow;
    private int stakingSelectProgrammeHeaderRow;
    private int stakingWithdrawalFeeRow;
    long timeDif;
    private final Lazy<TokenBuyCoordinator> tokenBuyCoordinator;
    Runnable updateTimerRunnable;
    private HashMap<Long, TLRPC$User> users;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showCommonInfoAlert$11() {
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean needDelayOpenAnimation() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void access$7900(ManageLinksActivity manageLinksActivity) {
        manageLinksActivity.openAddAdminScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ParametersHolder lambda$provideBinanceReceivePresenter$0() {
        return ParametersHolderKt.parametersOf(Integer.valueOf(this.screenType), this.binancePayScreenArgs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public WalletReceiveBinancePayPresenter provideBinanceReceivePresenter() {
        return (WalletReceiveBinancePayPresenter) KoinJavaComponent.get(WalletReceiveBinancePayPresenter.class, null, new Function0() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ParametersHolder lambda$provideBinanceReceivePresenter$0;
                lambda$provideBinanceReceivePresenter$0 = ManageLinksActivity.this.lambda$provideBinanceReceivePresenter$0();
                return lambda$provideBinanceReceivePresenter$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ParametersHolder lambda$provideDonationsPresenter$1() {
        return ParametersHolderKt.parametersOf(Integer.valueOf(this.screenType), Long.valueOf(this.currentChatId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public WalletDonationsPresenter provideDonationsPresenter() {
        return (WalletDonationsPresenter) KoinJavaComponent.get(WalletDonationsPresenter.class, null, new Function0() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ParametersHolder lambda$provideDonationsPresenter$1;
                lambda$provideDonationsPresenter$1 = ManageLinksActivity.this.lambda$provideDonationsPresenter$1();
                return lambda$provideDonationsPresenter$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ParametersHolder lambda$provideStakingCalculatorPresenter$2() {
        return ParametersHolderKt.parametersOf(this.stakingDetails);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public StakingCalculatorPresenter provideStakingCalculatorPresenter() {
        return (StakingCalculatorPresenter) KoinJavaComponent.get(StakingCalculatorPresenter.class, null, new Function0() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ParametersHolder lambda$provideStakingCalculatorPresenter$2;
                lambda$provideStakingCalculatorPresenter$2 = ManageLinksActivity.this.lambda$provideStakingCalculatorPresenter$2();
                return lambda$provideStakingCalculatorPresenter$2;
            }
        });
    }

    public ManageLinksActivity(Bundle bundle) {
        this(0L, 0L, 0);
        this.arguments = bundle;
    }

    public static ManageLinksActivity newInstanceForBinancePay(BinancePayScreenArgs binancePayScreenArgs) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("binance_pay_args", binancePayScreenArgs);
        bundle.putInt("screen_type", BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE);
        return new ManageLinksActivity(bundle);
    }

    public static ManageLinksActivity newInstanceForStakingCalculator(StakingDetailsItem stakingDetailsItem) {
        return newInstanceForStaking(stakingDetailsItem, null, STAKING_CALCULATOR_SCREEN_TYPE);
    }

    private static ManageLinksActivity newInstanceForStaking(StakingDetailsItem stakingDetailsItem, Double d, int i) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("staking_args", stakingDetailsItem);
        if (d != null) {
            bundle.putDouble("staking_preset_amount", d.doubleValue());
        }
        bundle.putInt("screen_type", i);
        return new ManageLinksActivity(bundle);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didUpdateConnectionState && this.isDonationsType && this.donationsPresenter != null) {
            this.donationsPresenter.checkLoadedDataOnConnectionChanged(ConnectionsManager.getInstance(i2).getConnectionState());
        }
    }

    @Override // com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment
    public boolean shouldAskPinCode() {
        WalletDonationsPresenter walletDonationsPresenter;
        return this.isBinancePayCreateCollectionType || (this.isDonationsType && (walletDonationsPresenter = this.donationsPresenter) != null && walletDonationsPresenter.isCryptoAddressCreated());
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        Bundle bundle = this.arguments;
        if (bundle != null) {
            this.screenType = bundle.getInt("screen_type", -1);
            BinancePayScreenArgs binancePayScreenArgs = (BinancePayScreenArgs) this.arguments.getParcelable("binance_pay_args");
            StakingDetailsItem stakingDetailsItem = (StakingDetailsItem) this.arguments.getParcelable("staking_args");
            this.arguments.getDouble("staking_preset_amount");
            if (binancePayScreenArgs != null) {
                this.binancePayScreenArgs = binancePayScreenArgs;
            } else if (stakingDetailsItem != null) {
                this.stakingDetails = stakingDetailsItem;
            }
            int i = this.screenType;
            this.isBinancePayCreateCollectionType = i == BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE;
            this.isStakingCalculatorType = i == STAKING_CALCULATOR_SCREEN_TYPE;
        }
        getNotificationCenter().addObserver(this, NotificationCenter.didUpdateConnectionState);
        return super.onFragmentCreate();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.didUpdateConnectionState);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayView
    public void showCreatedCollectionSuccessDialog(String str, String str2, String str3, Callbacks$Callback callbacks$Callback) {
        DialogsFactoryKt.showSuccessAlert(this, str, str2, str3, callbacks$Callback);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayView
    public void showSelectTokenDialog(SelectTokenScreenType selectTokenScreenType, String str, boolean z, Callbacks$Callback2<TokenDetailed, FiatValue> callbacks$Callback2) {
        presentFragment(WalletSelectTokenFragment.newInstance(selectTokenScreenType, null, str, z, callbacks$Callback2));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayView
    public void updateSelectedUser() {
        this.listViewAdapter.notifyItemChanged(this.chooseContactRow);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayView
    public void updateSelectedToken() {
        this.listViewAdapter.notifyItemChanged(this.selectTokenRow);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayView
    public void openChatScreen(long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", j);
        presentFragment(new ChatActivity(bundle), true);
    }

    @Override // com.iMe.p030ui.wallet.staking.calculator.StakingCalculatorView
    public void showBalance(TokenBalance tokenBalance) {
        this.listViewAdapter.notifyItemChanged(this.inputHeaderRow);
    }

    @Override // com.iMe.p030ui.wallet.staking.calculator.StakingCalculatorView
    public void updateStakingCalculatorViews() {
        updateRows(false);
        ListAdapter listAdapter = this.listViewAdapter;
        int i = this.selectTokenRow;
        listAdapter.notifyItemRangeChanged(i, this.rowCount - i);
    }

    @Override // com.iMe.p030ui.wallet.staking.calculator.StakingCalculatorView
    public void openDepositScreen(StakingDetailsItem stakingDetailsItem, double d) {
        presentFragment(StakingTransactionFragment.newInstance(Double.valueOf(d), StakingScreenType.STAKING_REPLENISH_SCREEN_TYPE, stakingDetailsItem));
    }

    @Override // com.iMe.p030ui.wallet.staking.calculator.StakingCalculatorView
    public void showLevelRequiredDialog(AccountLevel accountLevel, final TokenDetailed tokenDetailed) {
        DialogsFactoryKt.showStakingLevelRequiredDialog(this, this.resourceManager.getValue(), accountLevel, new Callbacks$Callback() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda7
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                ManageLinksActivity.this.lambda$showLevelRequiredDialog$3(tokenDetailed);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLevelRequiredDialog$3(TokenDetailed tokenDetailed) {
        presentFragment(WalletSwapProtocolsFragment.newInstance(ScreenType.FULLSCREEN, tokenDetailed));
    }

    @Override // com.iMe.p030ui.wallet.donations.WalletDonationsView
    public void onDonationsAddressLoaded(String str) {
        this.listViewAdapter.notifyItemChanged(this.inputRow);
    }

    @Override // com.iMe.p030ui.wallet.donations.WalletDonationsView
    public void onDonationsTransactionsLoaded(List<TransactionItem> list) {
        this.donationsTransactions = new ArrayList<>(list);
        updateRows(true);
    }

    @Override // com.iMe.p030ui.wallet.donations.WalletDonationsView
    public void updateScreenAfterLoad() {
        updateRows(true);
    }

    @Override // com.iMe.p030ui.wallet.donations.WalletDonationsView
    public void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        showDialog(DialogUtils.createDialog(getParentActivity(), dialogModel, callbacks$Callback, null));
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (i == 34) {
            if (iArr.length > 0 && iArr[0] == 0) {
                showCameraScanner();
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString("AppName", C3632R.string.AppName));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("QRCodePermissionNoCameraWithHint", C3632R.string.QRCodePermissionNoCameraWithHint)));
            builder.setNegativeButton(LocaleController.getString("PermissionOpenSettings", C3632R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    ManageLinksActivity.this.lambda$onRequestPermissionsResultFragment$4(dialogInterface, i2);
                }
            });
            builder.setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), null);
            builder.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$4(DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            getParentActivity().startActivity(intent);
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<ActionBarMenuSubItem> getInputOptionsMenuItems(final LinkActionView linkActionView) {
        ArrayList<ActionBarMenuSubItem> arrayList = new ArrayList<>();
        WalletDonationsPresenter walletDonationsPresenter = this.donationsPresenter;
        if (walletDonationsPresenter != null) {
            if (!walletDonationsPresenter.getCurrentDonationsAddress().isEmpty()) {
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getParentActivity(), true, false);
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("GetQRCode", C3632R.string.GetQRCode), C3632R.C3634drawable.msg_qrcode);
                actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ManageLinksActivity.this.lambda$getInputOptionsMenuItems$5(linkActionView, view);
                    }
                });
                arrayList.add(actionBarMenuSubItem);
                ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(getParentActivity(), false, true);
                actionBarMenuSubItem2.setTextAndIcon(this.resourceManager.getValue().getString(C3632R.string.channel_donations_unlink_address_dialog_title), C3632R.C3634drawable.msg_delete);
                int i = Theme.key_text_RedRegular;
                actionBarMenuSubItem2.setColors(Theme.getColor(i), Theme.getColor(i));
                actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ManageLinksActivity.this.lambda$getInputOptionsMenuItems$6(linkActionView, view);
                    }
                });
                arrayList.add(actionBarMenuSubItem2);
            } else if (this.donationsPresenter.getCurrentDonationsAddress().isEmpty()) {
                if (this.donationsPresenter.isCryptoAddressCreated()) {
                    ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(getParentActivity(), true, false);
                    actionBarMenuSubItem3.setTextAndIcon(this.resourceManager.getValue().getString(C3632R.string.channel_donations_link_non_castodial_wallet_address_dialog_title), C3632R.C3634drawable.msg_link2);
                    actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ManageLinksActivity.this.lambda$getInputOptionsMenuItems$7(linkActionView, view);
                        }
                    });
                    arrayList.add(actionBarMenuSubItem3);
                }
                ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(getParentActivity(), true, false);
                actionBarMenuSubItem4.setTextAndIcon(LocaleController.getString("AuthAnotherClientScan", C3632R.string.AuthAnotherClientScan), C3632R.C3634drawable.msg_qrcode);
                actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ManageLinksActivity.this.lambda$getInputOptionsMenuItems$8(linkActionView, view);
                    }
                });
                arrayList.add(actionBarMenuSubItem4);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getInputOptionsMenuItems$5(LinkActionView linkActionView, View view) {
        linkActionView.dismissPopupWindow();
        showDonationAddressQrCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getInputOptionsMenuItems$6(LinkActionView linkActionView, View view) {
        linkActionView.dismissPopupWindow();
        this.donationsPresenter.unlinkWalletAddress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getInputOptionsMenuItems$7(LinkActionView linkActionView, View view) {
        linkActionView.dismissPopupWindow();
        this.donationsPresenter.linkCryptoWalletAddress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getInputOptionsMenuItems$8(LinkActionView linkActionView, View view) {
        linkActionView.dismissPopupWindow();
        openScanQrCodeScreen();
    }

    private void openScanQrCodeScreen() {
        if (getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
            getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
        } else {
            showCameraScanner();
        }
    }

    private void showCameraScanner() {
        CameraScanActivity.showAsSheet((BaseFragment) this, true, 1, new CameraScanActivity.CameraScanActivityDelegate() { // from class: org.telegram.ui.ManageLinksActivity.1
            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String str) {
                WalletDonationsPresenter walletDonationsPresenter = ManageLinksActivity.this.donationsPresenter;
                if (walletDonationsPresenter != null) {
                    walletDonationsPresenter.linkAddress(str);
                }
            }
        }, true);
    }

    private void showDonationAddressQrCode() {
        String currentDonationsAddress = this.donationsPresenter.getCurrentDonationsAddress();
        QRCodeBottomSheet qRCodeBottomSheet = new QRCodeBottomSheet(this, getParentActivity(), null, currentDonationsAddress, currentDonationsAddress, false) { // from class: org.telegram.ui.ManageLinksActivity.2
            @Override // org.telegram.p043ui.Components.QRCodeBottomSheet
            public int getType() {
                return IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_RECEIVE;
            }

            @Override // org.telegram.p043ui.Components.QRCodeBottomSheet
            public String getCustomQrCenterImageUrl() {
                return NetworksHelper.getBSCNetwork().getLogoUrl();
            }
        };
        qRCodeBottomSheet.setupWalletTypeReceive(this.resourceManager.getValue().getString(C3632R.string.wallet_receive_dialog_title), this.resourceManager.getValue().getString(C3632R.string.wallet_receive_dialog_btn_text), currentDonationsAddress);
        showDialog(qRCodeBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkButtonEnabled(LinkActionView linkActionView) {
        WalletDonationsPresenter walletDonationsPresenter = this.donationsPresenter;
        if (walletDonationsPresenter != null) {
            linkActionView.setEnabledActionButton(walletDonationsPresenter.getCurrentDonationsAddress().isEmpty() || !this.donationsPresenter.getCurrentDonationsAddress().equals(linkActionView.getEditText().getText().toString()), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ManageLinksActivity$3 */
    /* loaded from: classes5.dex */
    public class C64793 implements ChatRightsEditActivity.ChatRightsEditActivityDelegate {
        @Override // org.telegram.p043ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
        public void didChangeOwner(TLRPC$User tLRPC$User) {
        }

        C64793() {
        }

        @Override // org.telegram.p043ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
        public void didSetRights(int i, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, String str) {
            final TLRPC$User user = ManageLinksActivity.this.getMessagesController().getUser(Long.valueOf(AppConfiguration$Bots.getAuthBotId()));
            if (user != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ManageLinksActivity.C64793.this.lambda$didSetRights$0(user);
                    }
                }, 200L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSetRights$0(TLRPC$User tLRPC$User) {
            if (BulletinFactory.canShowBulletin(ManageLinksActivity.this)) {
                BulletinFactory.createPromoteToAdminBulletin(ManageLinksActivity.this, tLRPC$User.first_name).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAddAdminScreen() {
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(AppConfiguration$Bots.getAuthBotId(), this.currentChatId, null, null, null, null, 0, true, true, null);
        chatRightsEditActivity.setDelegate(new C64793());
        presentFragment(chatRightsEditActivity);
    }

    private void removeDefaultRows() {
        this.permanentLinkRow = -1;
        this.permanentLinkHeaderRow = -1;
        this.rowCount -= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createCollection(String str) {
        AndroidUtilities.hideKeyboard(this.fragmentView);
        WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter = this.binanceReceivePresenter;
        if (walletReceiveBinancePayPresenter != null) {
            walletReceiveBinancePayPresenter.createCollection(this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveDonationsAddress(String str) {
        AndroidUtilities.hideKeyboard(this.fragmentView);
        WalletDonationsPresenter walletDonationsPresenter = this.donationsPresenter;
        if (walletDonationsPresenter != null) {
            walletDonationsPresenter.linkAddress(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openSelectToken(final LinkActionView linkActionView) {
        WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter;
        if (!this.isBinancePayCreateCollectionType || (walletReceiveBinancePayPresenter = this.binanceReceivePresenter) == null) {
            return;
        }
        walletReceiveBinancePayPresenter.startSelectTokenFlow(new Callbacks$Callback1() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                ManageLinksActivity.this.lambda$openSelectToken$9(linkActionView, (TokenDetailed) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSelectToken$9(LinkActionView linkActionView, TokenDetailed tokenDetailed) {
        linkActionView.setText(this.resourceManager.getValue().getString(C3632R.string.wallet_common_token_name_with_ticker, tokenDetailed.getName(), tokenDetailed.getTicker()));
        GlideHelper.loadBinanceImageAsBitmap(getParentActivity(), tokenDetailed.getAvatarUrl(), new CreateCryptoBoxFragment$$ExternalSyntheticLambda4(linkActionView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openDonationAddressOnScanner() {
        WalletDonationsPresenter walletDonationsPresenter = this.donationsPresenter;
        if (walletDonationsPresenter == null || TextUtils.isEmpty(walletDonationsPresenter.getCurrentDonationsAddress())) {
            return;
        }
        Browser.openUrl(getParentActivity(), "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openChooseContact() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("destroyAfterSelect", true);
        bundle.putBoolean("returnAsResult", true);
        bundle.putBoolean("allowSelf", false);
        bundle.putBoolean("allowBots", false);
        if (this.isBinancePayCreateCollectionType) {
            bundle.putBoolean("onlyUsers", true);
        }
        ContactsActivity contactsActivity = new ContactsActivity(bundle);
        if (this.isBinancePayCreateCollectionType) {
            contactsActivity.setDelegate(new ContactsActivity.ContactsActivityDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda29
                @Override // org.telegram.p043ui.ContactsActivity.ContactsActivityDelegate
                public final void didSelectContact(TLRPC$User tLRPC$User, String str, ContactsActivity contactsActivity2) {
                    ManageLinksActivity.this.lambda$openChooseContact$10(tLRPC$User, str, contactsActivity2);
                }
            });
        }
        presentFragment(contactsActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openChooseContact$10(TLRPC$User tLRPC$User, String str, ContactsActivity contactsActivity) {
        if (getParentActivity() == null) {
            return;
        }
        WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter = this.binanceReceivePresenter;
        if (walletReceiveBinancePayPresenter != null) {
            walletReceiveBinancePayPresenter.setSelectedUser(tLRPC$User);
        }
        this.listViewAdapter.notifyItemChanged(this.chooseContactRow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCommonInfoAlert(String str, String str2) {
        showDialog(DialogsFactoryKt.createDialogInfoWithAnimation(this, C3632R.raw.fork_common_info, str, str2, 17, LocaleController.getString("OK", C3632R.string.OK), new Callbacks$Callback() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda8
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                ManageLinksActivity.lambda$showCommonInfoAlert$11();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isForkScreenType() {
        return this.screenType != -1;
    }

    /* renamed from: org.telegram.ui.ManageLinksActivity$EmptyView */
    /* loaded from: classes5.dex */
    private class EmptyView extends LinearLayout implements NotificationCenter.NotificationCenterDelegate {
        private final int currentAccount;
        private RLottieImageView lottieImageView;
        private BackupImageView stickerView;

        public EmptyView(Context context) {
            super(context);
            this.currentAccount = UserConfig.selectedAccount;
            setPadding(0, AndroidUtilities.m104dp(12), 0, AndroidUtilities.m104dp(12));
            setOrientation(1);
            if (ManageLinksActivity.this.isForkScreenType()) {
                RLottieImageView rLottieImageView = new RLottieImageView(context);
                this.lottieImageView = rLottieImageView;
                addView(rLottieImageView, LayoutHelper.createLinear(104, 104, 49, 0, 2, 0, 0));
                return;
            }
            BackupImageView backupImageView = new BackupImageView(context);
            this.stickerView = backupImageView;
            addView(backupImageView, LayoutHelper.createLinear(104, 104, 49, 0, 2, 0, 0));
        }

        private void setSticker() {
            int i = 0;
            if (ManageLinksActivity.this.isBinancePayCreateCollectionType || ManageLinksActivity.this.isDonationsType || ManageLinksActivity.this.isStakingCalculatorType) {
                this.lottieImageView.setAutoRepeat(true);
                if (!ManageLinksActivity.this.isBinancePayCreateCollectionType) {
                    if (!ManageLinksActivity.this.isDonationsType) {
                        if (ManageLinksActivity.this.isStakingCalculatorType) {
                            i = C3632R.raw.fork_staking_calculator;
                        }
                    } else {
                        i = C3632R.raw.fork_donations;
                    }
                } else {
                    i = C3632R.raw.fork_binance_pay_create_collection;
                }
                this.lottieImageView.setAnimation(i, 104, 104);
                this.lottieImageView.playAnimation();
                return;
            }
            TLRPC$TL_messages_stickerSet stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME);
            if (stickerSetByName == null) {
                stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME);
            }
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = stickerSetByName;
            if (tLRPC$TL_messages_stickerSet != null && tLRPC$TL_messages_stickerSet.documents.size() >= 4) {
                TLRPC$Document tLRPC$Document = tLRPC$TL_messages_stickerSet.documents.get(3);
                this.stickerView.setImage(ImageLocation.getForDocument(tLRPC$Document), "104_104", "tgs", DocumentObject.getSvgThumb(tLRPC$Document, Theme.key_windowBackgroundGray, 1.0f), tLRPC$TL_messages_stickerSet);
                return;
            }
            MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME, false, tLRPC$TL_messages_stickerSet == null);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            setSticker();
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.diceStickersDidLoad);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.diceStickersDidLoad);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.diceStickersDidLoad && AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME.equals((String) objArr[0])) {
                setSticker();
            }
        }
    }

    public ManageLinksActivity(long j, long j2, int i) {
        this.resourceManager = KoinJavaComponent.inject(ResourceManager.class);
        this.tokenBuyCoordinator = KoinJavaComponent.inject(TokenBuyCoordinator.class);
        this.binancePayScreenArgs = new BinancePayScreenArgs();
        this.donationsTransactions = new ArrayList<>();
        this.stakingDetails = null;
        this.screenType = -1;
        this.invites = new ArrayList<>();
        this.revokedInvites = new ArrayList<>();
        this.users = new HashMap<>();
        this.admins = new ArrayList<>();
        this.updateTimerRunnable = new Runnable() { // from class: org.telegram.ui.ManageLinksActivity.4
            @Override // java.lang.Runnable
            public void run() {
                if (ManageLinksActivity.this.listView == null) {
                    return;
                }
                for (int i2 = 0; i2 < ManageLinksActivity.this.listView.getChildCount(); i2++) {
                    View childAt = ManageLinksActivity.this.listView.getChildAt(i2);
                    if (childAt instanceof LinkCell) {
                        LinkCell linkCell = (LinkCell) childAt;
                        if (linkCell.timerRunning) {
                            linkCell.setLink(linkCell.invite, linkCell.position);
                        }
                    }
                }
                AndroidUtilities.runOnUIThread(this, 500L);
            }
        };
        boolean z = false;
        this.loadRevoked = false;
        this.linkEditActivityCallback = new C64859();
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.currentChatId = j;
        this.invitesCount = i;
        TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
        this.currentChat = chat;
        this.isChannel = ChatObject.isChannel(chat) && !this.currentChat.megagroup;
        if (j2 == 0) {
            this.adminId = getAccountInstance().getUserConfig().clientUserId;
        } else {
            this.adminId = j2;
        }
        TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.adminId));
        if (this.adminId == getAccountInstance().getUserConfig().clientUserId || (user != null && !user.bot)) {
            z = true;
        }
        this.canEdit = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadLinks(boolean z) {
        if (this.loadAdmins && !this.adminsLoaded) {
            this.linksLoading = true;
            TLRPC$TL_messages_getAdminsWithInvites tLRPC$TL_messages_getAdminsWithInvites = new TLRPC$TL_messages_getAdminsWithInvites();
            tLRPC$TL_messages_getAdminsWithInvites.peer = getMessagesController().getInputPeer(-this.currentChatId);
            getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tLRPC$TL_messages_getAdminsWithInvites, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda21
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ManageLinksActivity.this.lambda$loadLinks$14(tLObject, tLRPC$TL_error);
                }
            }), getClassGuid());
        } else {
            TLRPC$TL_messages_getExportedChatInvites tLRPC$TL_messages_getExportedChatInvites = new TLRPC$TL_messages_getExportedChatInvites();
            tLRPC$TL_messages_getExportedChatInvites.peer = getMessagesController().getInputPeer(-this.currentChatId);
            if (this.adminId == getUserConfig().getClientUserId()) {
                tLRPC$TL_messages_getExportedChatInvites.admin_id = getMessagesController().getInputUser(getUserConfig().getCurrentUser());
            } else {
                tLRPC$TL_messages_getExportedChatInvites.admin_id = getMessagesController().getInputUser(this.adminId);
            }
            final boolean z2 = this.loadRevoked;
            if (z2) {
                tLRPC$TL_messages_getExportedChatInvites.revoked = true;
                if (!this.revokedInvites.isEmpty()) {
                    tLRPC$TL_messages_getExportedChatInvites.flags |= 4;
                    ArrayList<TLRPC$TL_chatInviteExported> arrayList = this.revokedInvites;
                    tLRPC$TL_messages_getExportedChatInvites.offset_link = arrayList.get(arrayList.size() - 1).link;
                    ArrayList<TLRPC$TL_chatInviteExported> arrayList2 = this.revokedInvites;
                    tLRPC$TL_messages_getExportedChatInvites.offset_date = arrayList2.get(arrayList2.size() - 1).date;
                }
            } else if (!this.invites.isEmpty()) {
                tLRPC$TL_messages_getExportedChatInvites.flags |= 4;
                ArrayList<TLRPC$TL_chatInviteExported> arrayList3 = this.invites;
                tLRPC$TL_messages_getExportedChatInvites.offset_link = arrayList3.get(arrayList3.size() - 1).link;
                ArrayList<TLRPC$TL_chatInviteExported> arrayList4 = this.invites;
                tLRPC$TL_messages_getExportedChatInvites.offset_date = arrayList4.get(arrayList4.size() - 1).date;
            }
            this.linksLoading = true;
            final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = this.isPublic ? null : this.invite;
            getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tLRPC$TL_messages_getExportedChatInvites, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda25
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ManageLinksActivity.this.lambda$loadLinks$17(tLRPC$TL_chatInviteExported, z2, tLObject, tLRPC$TL_error);
                }
            }), getClassGuid());
        }
        if (z) {
            updateRows(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinks$13(final TLRPC$TL_error tLRPC$TL_error, final TLObject tLObject) {
        getNotificationCenter().doOnIdle(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                ManageLinksActivity.this.lambda$loadLinks$12(tLRPC$TL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinks$14(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                ManageLinksActivity.this.lambda$loadLinks$13(tLRPC$TL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinks$12(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject) {
        this.linksLoading = false;
        if (tLRPC$TL_error == null) {
            TLRPC$TL_messages_chatAdminsWithInvites tLRPC$TL_messages_chatAdminsWithInvites = (TLRPC$TL_messages_chatAdminsWithInvites) tLObject;
            for (int i = 0; i < tLRPC$TL_messages_chatAdminsWithInvites.admins.size(); i++) {
                TLRPC$TL_chatAdminWithInvites tLRPC$TL_chatAdminWithInvites = tLRPC$TL_messages_chatAdminsWithInvites.admins.get(i);
                if (tLRPC$TL_chatAdminWithInvites.admin_id != getAccountInstance().getUserConfig().clientUserId) {
                    this.admins.add(tLRPC$TL_chatAdminWithInvites);
                }
            }
            for (int i2 = 0; i2 < tLRPC$TL_messages_chatAdminsWithInvites.users.size(); i2++) {
                TLRPC$User tLRPC$User = tLRPC$TL_messages_chatAdminsWithInvites.users.get(i2);
                this.users.put(Long.valueOf(tLRPC$User.f1749id), tLRPC$User);
            }
        }
        this.adminsLoaded = true;
        this.hasMore = false;
        resumeDelayedFragmentAnimation();
        if (!this.hasMore && !this.loadRevoked) {
            this.hasMore = true;
            this.loadRevoked = true;
            loadLinks(false);
        }
        updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinks$17(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, final boolean z, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported2;
        if (tLRPC$TL_error == null) {
            TLRPC$TL_messages_exportedChatInvites tLRPC$TL_messages_exportedChatInvites = (TLRPC$TL_messages_exportedChatInvites) tLObject;
            if (tLRPC$TL_messages_exportedChatInvites.invites.size() > 0 && tLRPC$TL_chatInviteExported != null) {
                for (int i = 0; i < tLRPC$TL_messages_exportedChatInvites.invites.size(); i++) {
                    if (((TLRPC$TL_chatInviteExported) tLRPC$TL_messages_exportedChatInvites.invites.get(i)).link.equals(tLRPC$TL_chatInviteExported.link)) {
                        tLRPC$TL_chatInviteExported2 = (TLRPC$TL_chatInviteExported) tLRPC$TL_messages_exportedChatInvites.invites.remove(i);
                        break;
                    }
                }
            }
        }
        tLRPC$TL_chatInviteExported2 = null;
        final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported3 = tLRPC$TL_chatInviteExported2;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                ManageLinksActivity.this.lambda$loadLinks$16(tLRPC$TL_chatInviteExported3, tLRPC$TL_error, tLObject, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinks$16(final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, final TLRPC$TL_error tLRPC$TL_error, final TLObject tLObject, final boolean z) {
        getNotificationCenter().doOnIdle(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                ManageLinksActivity.this.lambda$loadLinks$15(tLRPC$TL_chatInviteExported, tLRPC$TL_error, tLObject, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:80:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadLinks$15(org.telegram.tgnet.TLRPC$TL_chatInviteExported r7, org.telegram.tgnet.TLRPC$TL_error r8, org.telegram.tgnet.TLObject r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ManageLinksActivity.lambda$loadLinks$15(org.telegram.tgnet.TLRPC$TL_chatInviteExported, org.telegram.tgnet.TLRPC$TL_error, org.telegram.tgnet.TLObject, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows(boolean z) {
        this.currentChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.currentChatId));
        if (isForkScreenType() || this.currentChat != null) {
            this.chooseRecipientOptionsRow = -1;
            this.stakingPrognosisRow = -1;
            this.stakingSelectProgrammeHeaderRow = -1;
            this.stakingWithdrawalFeeRow = -1;
            this.stakingSafeWithdrawalRow = -1;
            this.stakingActionsRow = -1;
            this.stakingInfoRow = -1;
            this.donationTransactionsSeeMoreRow = -1;
            this.donationsDividerRow = -1;
            this.donationBalanceRow = -1;
            this.donationBalanceHeaderRow = -1;
            this.donationTransactionsEndRow = -1;
            this.donationTransactionsStartRow = -1;
            this.donationTransactionsHeaderRow = -1;
            this.informationRow = -1;
            this.feeRow = -1;
            this.commentRow = -1;
            this.commentHeaderRow = -1;
            this.inputRow = -1;
            this.inputHeaderRow = -1;
            this.selectTokenRow = -1;
            this.selectTokenHeaderRow = -1;
            this.chooseContactRow = -1;
            this.chooseContactHeaderRow = -1;
            this.creatorRow = -1;
            this.creatorDividerRow = -1;
            this.linksStartRow = -1;
            this.linksEndRow = -1;
            this.linksLoadingRow = -1;
            this.revokedLinksStartRow = -1;
            this.revokedLinksEndRow = -1;
            this.revokedHeader = -1;
            this.revokedDivider = -1;
            this.lastDivider = -1;
            this.revokeAllRow = -1;
            this.revokeAllDivider = -1;
            this.createLinkHelpRow = -1;
            this.helpRow = -1;
            this.createNewLinkRow = -1;
            this.adminsEndRow = -1;
            this.adminsStartRow = -1;
            this.adminsDividerRow = -1;
            this.adminsHeaderRow = -1;
            this.linksHeaderRow = -1;
            this.dividerRow = -1;
            this.rowCount = 0;
            boolean z2 = this.adminId != getAccountInstance().getUserConfig().clientUserId;
            if (z2) {
                int i = this.rowCount;
                int i2 = i + 1;
                this.rowCount = i2;
                this.creatorRow = i;
                this.rowCount = i2 + 1;
                this.creatorDividerRow = i2;
            } else {
                int i3 = this.rowCount;
                this.rowCount = i3 + 1;
                this.helpRow = i3;
            }
            int i4 = this.rowCount;
            int i5 = i4 + 1;
            this.rowCount = i5;
            this.permanentLinkHeaderRow = i4;
            this.rowCount = i5 + 1;
            this.permanentLinkRow = i5;
            if (this.isStakingCalculatorType) {
                removeDefaultRows();
                int i6 = this.rowCount;
                int i7 = i6 + 1;
                this.rowCount = i7;
                this.stakingSelectProgrammeHeaderRow = i6;
                int i8 = i7 + 1;
                this.rowCount = i8;
                this.selectTokenRow = i7;
                int i9 = i8 + 1;
                this.rowCount = i9;
                this.inputHeaderRow = i8;
                this.rowCount = i9 + 1;
                this.inputRow = i9;
                StakingCalculatorPresenter stakingCalculatorPresenter = this.stakingCalculatorPresenter;
                if (stakingCalculatorPresenter != null) {
                    if (stakingCalculatorPresenter.getSelectedStakingProgramme() != null) {
                        int i10 = this.rowCount;
                        this.rowCount = i10 + 1;
                        this.stakingInfoRow = i10;
                    }
                    if (this.stakingCalculatorPresenter.getChartViewData() != null) {
                        int i11 = this.rowCount;
                        int i12 = i11 + 1;
                        this.rowCount = i12;
                        this.dividerRow = i11;
                        this.rowCount = i12 + 1;
                        this.stakingPrognosisRow = i12;
                    }
                }
            } else if (this.isBinancePayCreateCollectionType) {
                removeDefaultRows();
                int i13 = this.rowCount;
                int i14 = i13 + 1;
                this.rowCount = i14;
                this.chooseContactHeaderRow = i13;
                int i15 = i14 + 1;
                this.rowCount = i15;
                this.chooseContactRow = i14;
                int i16 = i15 + 1;
                this.rowCount = i16;
                this.selectTokenHeaderRow = i15;
                int i17 = i16 + 1;
                this.rowCount = i17;
                this.selectTokenRow = i16;
                int i18 = i17 + 1;
                this.rowCount = i18;
                this.inputHeaderRow = i17;
                int i19 = i18 + 1;
                this.rowCount = i19;
                this.inputRow = i18;
                this.rowCount = i19 + 1;
                this.feeRow = i19;
            } else if (this.isDonationsType) {
                removeDefaultRows();
                int i20 = this.rowCount;
                int i21 = i20 + 1;
                this.rowCount = i21;
                this.inputHeaderRow = i20;
                int i22 = i21 + 1;
                this.rowCount = i22;
                this.inputRow = i21;
                this.rowCount = i22 + 1;
                this.informationRow = i22;
                WalletDonationsPresenter walletDonationsPresenter = this.donationsPresenter;
                if (walletDonationsPresenter != null && walletDonationsPresenter.getDonationBalance() != null) {
                    int i23 = this.rowCount;
                    int i24 = i23 + 1;
                    this.rowCount = i24;
                    this.donationBalanceHeaderRow = i23;
                    int i25 = i24 + 1;
                    this.rowCount = i25;
                    this.donationBalanceRow = i24;
                    this.rowCount = i25 + 1;
                    this.donationsDividerRow = i25;
                }
                if (!this.donationsTransactions.isEmpty()) {
                    int i26 = this.rowCount;
                    int i27 = i26 + 1;
                    this.rowCount = i27;
                    this.donationTransactionsHeaderRow = i26;
                    this.donationTransactionsStartRow = i27;
                    int size = i27 + this.donationsTransactions.size();
                    this.rowCount = size;
                    this.donationTransactionsEndRow = size;
                    if (this.donationsTransactions.size() >= 30) {
                        int i28 = this.rowCount;
                        this.rowCount = i28 + 1;
                        this.donationTransactionsSeeMoreRow = i28;
                    }
                }
                WalletDonationsPresenter walletDonationsPresenter2 = this.donationsPresenter;
                if (walletDonationsPresenter2 != null && walletDonationsPresenter2.isLoadingDonationInformation()) {
                    int i29 = this.rowCount;
                    this.rowCount = i29 + 1;
                    this.linksLoadingRow = i29;
                }
            } else {
                this.chooseRecipientOptionsRow = -1;
                this.feeRow = -1;
                this.commentRow = -1;
                this.commentHeaderRow = -1;
                this.inputRow = -1;
                this.inputHeaderRow = -1;
                this.selectTokenRow = -1;
                this.selectTokenHeaderRow = -1;
                this.chooseContactRow = -1;
                this.chooseContactHeaderRow = -1;
            }
            if (!isForkScreenType()) {
                if (!z2) {
                    int i30 = this.rowCount;
                    int i31 = i30 + 1;
                    this.rowCount = i31;
                    this.dividerRow = i30;
                    this.rowCount = i31 + 1;
                    this.createNewLinkRow = i31;
                } else if (!this.invites.isEmpty()) {
                    int i32 = this.rowCount;
                    int i33 = i32 + 1;
                    this.rowCount = i33;
                    this.dividerRow = i32;
                    this.rowCount = i33 + 1;
                    this.linksHeaderRow = i33;
                }
            }
            if (!this.invites.isEmpty()) {
                int i34 = this.rowCount;
                this.linksStartRow = i34;
                int size2 = i34 + this.invites.size();
                this.rowCount = size2;
                this.linksEndRow = size2;
            }
            if (isForkScreenType()) {
                this.createLinkHelpRow = -1;
            } else if (!z2 && this.invites.isEmpty() && this.createNewLinkRow >= 0 && (!this.linksLoading || this.loadAdmins || this.loadRevoked)) {
                int i35 = this.rowCount;
                this.rowCount = i35 + 1;
                this.createLinkHelpRow = i35;
            }
            if (!z2 && this.admins.size() > 0) {
                if ((!this.invites.isEmpty() || this.createNewLinkRow >= 0) && this.createLinkHelpRow == -1) {
                    int i36 = this.rowCount;
                    this.rowCount = i36 + 1;
                    this.adminsDividerRow = i36;
                }
                int i37 = this.rowCount;
                int i38 = i37 + 1;
                this.rowCount = i38;
                this.adminsHeaderRow = i37;
                this.adminsStartRow = i38;
                int size3 = i38 + this.admins.size();
                this.rowCount = size3;
                this.adminsEndRow = size3;
            }
            if (!this.revokedInvites.isEmpty()) {
                if (this.adminsStartRow >= 0) {
                    int i39 = this.rowCount;
                    this.rowCount = i39 + 1;
                    this.revokedDivider = i39;
                } else if ((!this.invites.isEmpty() || this.createNewLinkRow >= 0) && this.createLinkHelpRow == -1) {
                    int i40 = this.rowCount;
                    this.rowCount = i40 + 1;
                    this.revokedDivider = i40;
                } else if (z2 && this.linksStartRow == -1) {
                    int i41 = this.rowCount;
                    this.rowCount = i41 + 1;
                    this.revokedDivider = i41;
                }
                int i42 = this.rowCount;
                int i43 = i42 + 1;
                this.rowCount = i43;
                this.revokedHeader = i42;
                this.revokedLinksStartRow = i43;
                int size4 = i43 + this.revokedInvites.size();
                this.rowCount = size4;
                this.revokedLinksEndRow = size4;
                int i44 = size4 + 1;
                this.rowCount = i44;
                this.revokeAllDivider = size4;
                this.rowCount = i44 + 1;
                this.revokeAllRow = i44;
            }
            if (!this.loadAdmins && !this.loadRevoked && ((this.linksLoading || this.hasMore) && !z2)) {
                int i45 = this.rowCount;
                this.rowCount = i45 + 1;
                this.linksLoadingRow = i45;
            }
            if (!this.invites.isEmpty() || !this.revokedInvites.isEmpty()) {
                int i46 = this.rowCount;
                this.rowCount = i46 + 1;
                this.lastDivider = i46;
            }
            ListAdapter listAdapter = this.listViewAdapter;
            if (listAdapter == null || !z) {
                return;
            }
            listAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        super.createView(context);
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        if (this.isStakingCalculatorType) {
            this.actionBar.setTitle(this.resourceManager.getValue().getString(C3632R.string.staking_calculator_title));
            this.actionBar.createMenu().addItem(IdFabric$Menu.STAKING_HELP, C3632R.C3634drawable.msg_info);
        } else if (this.isBinancePayCreateCollectionType) {
            this.actionBar.setTitle(this.resourceManager.getValue().getString(C3632R.string.wallet_binance_pay_action_receive));
        } else if (this.isDonationsType) {
            this.actionBar.setTitle(this.resourceManager.getValue().getString(C3632R.string.channel_donations_toolbar_title));
        } else {
            this.actionBar.setTitle(LocaleController.getString("InviteLinks", C3632R.string.InviteLinks));
        }
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ManageLinksActivity.5
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == IdFabric$Menu.STAKING_HELP) {
                    ManageLinksActivity manageLinksActivity = ManageLinksActivity.this;
                    manageLinksActivity.showCommonInfoAlert(((ResourceManager) manageLinksActivity.resourceManager.getValue()).getString(C3632R.string.staking_calculator_help_alert_title), ((ResourceManager) ManageLinksActivity.this.resourceManager.getValue()).getString(C3632R.string.staking_calculator_help_alert_description));
                } else if (i == -1) {
                    ManageLinksActivity.this.finishFragment();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.ManageLinksActivity.6
            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                AndroidUtilities.runOnUIThread(ManageLinksActivity.this.updateTimerRunnable, 500L);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                AndroidUtilities.cancelRunOnUIThread(ManageLinksActivity.this.updateTimerRunnable);
            }
        };
        this.fragmentView = frameLayout;
        int i = Theme.key_windowBackgroundGray;
        frameLayout.setBackgroundColor(Theme.getColor(i));
        this.fragmentView.setTag(Integer.valueOf(i));
        FrameLayout frameLayout2 = (FrameLayout) this.fragmentView;
        if (isForkScreenType()) {
            frameLayout2.setFocusable(true);
            frameLayout2.setFocusableInTouchMode(true);
        }
        this.listView = new RecyclerListView(context);
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this, context, 1, false) { // from class: org.telegram.ui.ManageLinksActivity.7
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        };
        this.listView.setLayoutManager(linearLayoutManager);
        RecyclerListView recyclerListView = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listViewAdapter = listAdapter;
        recyclerListView.setAdapter(listAdapter);
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ManageLinksActivity.8
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                super.onScrolled(recyclerView, i2, i3);
                ManageLinksActivity manageLinksActivity = ManageLinksActivity.this;
                if (!manageLinksActivity.hasMore || manageLinksActivity.linksLoading) {
                    return;
                }
                if (ManageLinksActivity.this.rowCount - linearLayoutManager.findLastVisibleItemPosition() < 10) {
                    ManageLinksActivity.this.loadLinks(true);
                }
            }
        });
        this.recyclerItemsEnterAnimator = new RecyclerItemsEnterAnimator(this.listView, false);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda27
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                ManageLinksActivity.this.lambda$createView$21(context, view, i2);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda28
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                boolean lambda$createView$22;
                lambda$createView$22 = ManageLinksActivity.this.lambda$createView$22(view, i2);
                return lambda$createView$22;
            }
        });
        this.linkIcon = ContextCompat.getDrawable(context, C3632R.C3634drawable.msg_link_1);
        this.linkIconRevoked = ContextCompat.getDrawable(context, C3632R.C3634drawable.msg_link_2);
        this.linkIcon.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        updateRows(true);
        this.timeDif = getConnectionsManager().getCurrentTime() - (System.currentTimeMillis() / 1000);
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$21(Context context, View view, int i) {
        int i2 = this.donationTransactionsStartRow;
        if (i >= i2 && i < this.donationTransactionsEndRow) {
            TransactionItem transactionItem = this.donationsTransactions.get(i - i2);
            if (transactionItem.isUnsupported()) {
                return;
            }
            showDialog(WalletTransactionDetailsBottomSheetDialog.newInstance(this, new WalletTransactionDetailsScreenType.TransactionDetails(transactionItem), null));
        } else if (i == this.creatorRow) {
            TLRPC$User tLRPC$User = this.users.get(Long.valueOf(this.invite.admin_id));
            if (tLRPC$User != null) {
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", tLRPC$User.f1749id);
                MessagesController.getInstance(UserConfig.selectedAccount).putUser(tLRPC$User, false);
                presentFragment(new ProfileActivity(bundle));
            }
        } else if (i == this.createNewLinkRow) {
            LinkEditActivity linkEditActivity = new LinkEditActivity(0, this.currentChatId);
            linkEditActivity.setCallback(this.linkEditActivityCallback);
            presentFragment(linkEditActivity);
        } else {
            int i3 = this.linksStartRow;
            if (i >= i3 && i < this.linksEndRow) {
                InviteLinkBottomSheet inviteLinkBottomSheet = new InviteLinkBottomSheet(context, this.invites.get(i - i3), this.info, this.users, this, this.currentChatId, false, this.isChannel);
                this.inviteLinkBottomSheet = inviteLinkBottomSheet;
                inviteLinkBottomSheet.setCanEdit(this.canEdit);
                this.inviteLinkBottomSheet.show();
                return;
            }
            int i4 = this.revokedLinksStartRow;
            if (i >= i4 && i < this.revokedLinksEndRow) {
                InviteLinkBottomSheet inviteLinkBottomSheet2 = new InviteLinkBottomSheet(context, this.revokedInvites.get(i - i4), this.info, this.users, this, this.currentChatId, false, this.isChannel);
                this.inviteLinkBottomSheet = inviteLinkBottomSheet2;
                inviteLinkBottomSheet2.show();
            } else if (i == this.revokeAllRow) {
                if (this.deletingRevokedLinks) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setTitle(LocaleController.getString("DeleteAllRevokedLinks", C3632R.string.DeleteAllRevokedLinks));
                builder.setMessage(LocaleController.getString("DeleteAllRevokedLinkHelp", C3632R.string.DeleteAllRevokedLinkHelp));
                builder.setPositiveButton(LocaleController.getString("Delete", C3632R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i5) {
                        ManageLinksActivity.this.lambda$createView$20(dialogInterface, i5);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                showDialog(builder.create());
            } else {
                int i5 = this.adminsStartRow;
                if (i < i5 || i >= this.adminsEndRow) {
                    return;
                }
                TLRPC$TL_chatAdminWithInvites tLRPC$TL_chatAdminWithInvites = this.admins.get(i - i5);
                if (this.users.containsKey(Long.valueOf(tLRPC$TL_chatAdminWithInvites.admin_id))) {
                    getMessagesController().putUser(this.users.get(Long.valueOf(tLRPC$TL_chatAdminWithInvites.admin_id)), false);
                }
                ManageLinksActivity manageLinksActivity = new ManageLinksActivity(this.currentChatId, tLRPC$TL_chatAdminWithInvites.admin_id, tLRPC$TL_chatAdminWithInvites.invites_count);
                manageLinksActivity.setInfo(this.info, null);
                presentFragment(manageLinksActivity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$20(DialogInterface dialogInterface, int i) {
        TLRPC$TL_messages_deleteRevokedExportedChatInvites tLRPC$TL_messages_deleteRevokedExportedChatInvites = new TLRPC$TL_messages_deleteRevokedExportedChatInvites();
        tLRPC$TL_messages_deleteRevokedExportedChatInvites.peer = getMessagesController().getInputPeer(-this.currentChatId);
        if (this.adminId == getUserConfig().getClientUserId()) {
            tLRPC$TL_messages_deleteRevokedExportedChatInvites.admin_id = getMessagesController().getInputUser(getUserConfig().getCurrentUser());
        } else {
            tLRPC$TL_messages_deleteRevokedExportedChatInvites.admin_id = getMessagesController().getInputUser(this.adminId);
        }
        this.deletingRevokedLinks = true;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_deleteRevokedExportedChatInvites, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda20
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ManageLinksActivity.this.lambda$createView$19(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$19(TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                ManageLinksActivity.this.lambda$createView$18(tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18(TLRPC$TL_error tLRPC$TL_error) {
        this.deletingRevokedLinks = false;
        if (tLRPC$TL_error == null) {
            DiffCallback saveListState = saveListState();
            this.revokedInvites.clear();
            updateRecyclerViewAnimated(saveListState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$22(View view, int i) {
        if ((i < this.linksStartRow || i >= this.linksEndRow) && (i < this.revokedLinksStartRow || i >= this.revokedLinksEndRow)) {
            return false;
        }
        ((LinkCell) view).optionsView.callOnClick();
        view.performHapticFeedback(0, 2);
        return true;
    }

    public void setInfo(TLRPC$ChatFull tLRPC$ChatFull, TLRPC$ExportedChatInvite tLRPC$ExportedChatInvite) {
        this.info = tLRPC$ChatFull;
        this.invite = (TLRPC$TL_chatInviteExported) tLRPC$ExportedChatInvite;
        this.isPublic = ChatObject.isPublic(this.currentChat);
        if (isForkScreenType()) {
            return;
        }
        loadLinks(true);
    }

    @Override // com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listViewAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    /* renamed from: org.telegram.ui.ManageLinksActivity$HintInnerCell */
    /* loaded from: classes5.dex */
    public class HintInnerCell extends FrameLayout {
        private EmptyView emptyView;
        private TextView messageTextView;

        public HintInnerCell(ManageLinksActivity manageLinksActivity, Context context) {
            super(context);
            int i;
            String str;
            EmptyView emptyView = new EmptyView(context);
            this.emptyView = emptyView;
            addView(emptyView, LayoutHelper.createFrame(-2, -2, 49, 0, 10, 0, 0));
            TextView textView = new TextView(context);
            this.messageTextView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_chats_message));
            this.messageTextView.setTextSize(1, 14.0f);
            this.messageTextView.setGravity(17);
            if (manageLinksActivity.isStakingCalculatorType) {
                this.messageTextView.setText(((ResourceManager) manageLinksActivity.resourceManager.getValue()).getString(C3632R.string.staking_calculator_description));
            } else if (manageLinksActivity.isBinancePayCreateCollectionType) {
                this.messageTextView.setText(((ResourceManager) manageLinksActivity.resourceManager.getValue()).getString(C3632R.string.wallet_binance_receive_description));
            } else if (manageLinksActivity.isDonationsType) {
                this.messageTextView.setText(((ResourceManager) manageLinksActivity.resourceManager.getValue()).getString(C3632R.string.channel_donations_description));
            } else {
                TextView textView2 = this.messageTextView;
                if (manageLinksActivity.isChannel) {
                    i = C3632R.string.PrimaryLinkHelpChannel;
                    str = "PrimaryLinkHelpChannel";
                } else {
                    i = C3632R.string.PrimaryLinkHelp;
                    str = "PrimaryLinkHelp";
                }
                textView2.setText(LocaleController.getString(str, i));
            }
            addView(this.messageTextView, LayoutHelper.createFrame(-1, -2, 51, 52, 143, 52, 18));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ManageLinksActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            if ((adapterPosition >= ManageLinksActivity.this.donationTransactionsStartRow && adapterPosition < ManageLinksActivity.this.donationTransactionsEndRow) || ManageLinksActivity.this.creatorRow == adapterPosition || ManageLinksActivity.this.createNewLinkRow == adapterPosition) {
                return true;
            }
            if (adapterPosition < ManageLinksActivity.this.linksStartRow || adapterPosition >= ManageLinksActivity.this.linksEndRow) {
                if ((adapterPosition < ManageLinksActivity.this.revokedLinksStartRow || adapterPosition >= ManageLinksActivity.this.revokedLinksEndRow) && adapterPosition != ManageLinksActivity.this.revokeAllRow) {
                    return adapterPosition >= ManageLinksActivity.this.adminsStartRow && adapterPosition < ManageLinksActivity.this.adminsEndRow;
                }
                return true;
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ManageLinksActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            HeaderCellWithImageViewButtonWrapper headerCellWithImageViewButtonWrapper;
            LinkActionView linkActionView;
            if (i == IdFabric$ViewTypes.STAKING_PROGNOSIS) {
                linkActionView = new StakingPrognosisView(this.mContext);
            } else if (i == IdFabric$ViewTypes.STAKING_INFO) {
                View stakingPercentageView = new StakingPercentageView(this.mContext);
                stakingPercentageView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                stakingPercentageView.setPadding(AndroidUtilities.m104dp(25), 0, AndroidUtilities.m104dp(23), AndroidUtilities.m104dp(12));
                linkActionView = stakingPercentageView;
            } else if (i == IdFabric$ViewTypes.STAKING_ACTIONS) {
                View transactionActionButtonsView = new TransactionActionButtonsView(this.mContext);
                transactionActionButtonsView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                transactionActionButtonsView.setClickable(false);
                transactionActionButtonsView.setPadding(AndroidUtilities.m104dp(25), 0, AndroidUtilities.m104dp(23), 0);
                linkActionView = transactionActionButtonsView;
            } else if (i == IdFabric$ViewTypes.STAKING_SAFE_WITHDRAWAL) {
                View stakingSafeWithdrawalView = new StakingSafeWithdrawalView(this.mContext);
                stakingSafeWithdrawalView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                stakingSafeWithdrawalView.setPadding(AndroidUtilities.m104dp(25), 0, AndroidUtilities.m104dp(23), 0);
                linkActionView = stakingSafeWithdrawalView;
            } else if (i == IdFabric$ViewTypes.STAKING_WITHDRAWAL_FEE) {
                View stakingWithdrawalFeeView = new StakingWithdrawalFeeView(this.mContext);
                stakingWithdrawalFeeView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                stakingWithdrawalFeeView.setPadding(AndroidUtilities.m104dp(25), 0, AndroidUtilities.m104dp(23), ManageLinksActivity.this.feeRow == -1 ? AndroidUtilities.m104dp(12) : 0);
                linkActionView = stakingWithdrawalFeeView;
            } else if (i == IdFabric$ViewTypes.CHOOSE_FEE) {
                View feeView = new FeeView(this.mContext);
                feeView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                feeView.setPadding(AndroidUtilities.m104dp(25), 0, AndroidUtilities.m104dp(23), AndroidUtilities.m104dp(12));
                linkActionView = feeView;
            } else {
                if (i == IdFabric$ViewTypes.HEADER_CELL_WITH_NETWORK) {
                    HeaderCell headerCell = new HeaderCell(this.mContext, 23);
                    headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    headerCellWithImageViewButtonWrapper = new HeaderCellWithNetwork(headerCell);
                } else if (i == IdFabric$ViewTypes.HEADER_CELL_WITH_IMAGE_VIEW_BUTTON) {
                    HeaderCellWithImageViewButtonWrapper headerCellWithImageViewButtonWrapper2 = new HeaderCellWithImageViewButtonWrapper(new HeaderCell(this.mContext, 23));
                    headerCellWithImageViewButtonWrapper2.getImageView().setImageResource(C3632R.C3634drawable.msg_info);
                    headerCellWithImageViewButtonWrapper = headerCellWithImageViewButtonWrapper2;
                } else if (i == IdFabric$ViewTypes.TRANSACTION) {
                    linkActionView = new DonationTransactionView(this.mContext);
                } else if (i == IdFabric$ViewTypes.TOKEN_BALANCE) {
                    View donationBalanceView = new DonationBalanceView(this.mContext);
                    donationBalanceView.setPadding(AndroidUtilities.m104dp(15), AndroidUtilities.m104dp(6), AndroidUtilities.m104dp(15), AndroidUtilities.m104dp(15));
                    linkActionView = donationBalanceView;
                } else if (i != IdFabric$ViewTypes.DONATION_SEE_MORE) {
                    switch (i) {
                        case 1:
                            if (ManageLinksActivity.this.isForkScreenType()) {
                                view = new HeaderCell(this.mContext, Theme.key_windowBackgroundWhiteBlueHeader, 23, 15, true);
                            } else {
                                view = new HeaderCell(this.mContext, 23);
                            }
                            view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                            linkActionView = view;
                            break;
                        case 2:
                            boolean isForkScreenType = ManageLinksActivity.this.isForkScreenType();
                            boolean z = ManageLinksActivity.this.isBinancePayCreateCollectionType || ManageLinksActivity.this.isStakingCalculatorType;
                            boolean z2 = ManageLinksActivity.this.isDonationsType || !ManageLinksActivity.this.isForkScreenType();
                            Context context = this.mContext;
                            ManageLinksActivity manageLinksActivity = ManageLinksActivity.this;
                            final LinkActionView linkActionView2 = new LinkActionView(context, manageLinksActivity, null, manageLinksActivity.currentChatId, true, ManageLinksActivity.this.isChannel, isForkScreenType, z, z2);
                            linkActionView2.setPermanent(true);
                            linkActionView2.setDelegate(new LinkActionView.Delegate() { // from class: org.telegram.ui.ManageLinksActivity.ListAdapter.1
                                @Override // org.telegram.p043ui.Components.LinkActionView.Delegate
                                public /* synthetic */ void editLink() {
                                    LinkActionView.Delegate.CC.$default$editLink(this);
                                }

                                @Override // org.telegram.p043ui.Components.LinkActionView.Delegate
                                public /* synthetic */ void removeLink() {
                                    LinkActionView.Delegate.CC.$default$removeLink(this);
                                }

                                @Override // org.telegram.p043ui.Components.LinkActionView.Delegate
                                public void revokeLink() {
                                    ManageLinksActivity.this.revokePermanent();
                                }

                                @Override // org.telegram.p043ui.Components.LinkActionView.Delegate
                                public void showUsersForPermanentLink() {
                                    ManageLinksActivity manageLinksActivity2 = ManageLinksActivity.this;
                                    Context context2 = linkActionView2.getContext();
                                    TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = ManageLinksActivity.this.invite;
                                    TLRPC$ChatFull tLRPC$ChatFull = ManageLinksActivity.this.info;
                                    HashMap hashMap = ManageLinksActivity.this.users;
                                    ManageLinksActivity manageLinksActivity3 = ManageLinksActivity.this;
                                    manageLinksActivity2.inviteLinkBottomSheet = new InviteLinkBottomSheet(context2, tLRPC$TL_chatInviteExported, tLRPC$ChatFull, hashMap, manageLinksActivity3, manageLinksActivity3.currentChatId, true, ManageLinksActivity.this.isChannel);
                                    ManageLinksActivity.this.inviteLinkBottomSheet.show();
                                }
                            });
                            linkActionView2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                            linkActionView = linkActionView2;
                            break;
                        case 3:
                            View creationTextCell = new CreationTextCell(this.mContext);
                            creationTextCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                            linkActionView = creationTextCell;
                            break;
                        case 4:
                            linkActionView = new ShadowSectionCell(this.mContext);
                            break;
                        case 5:
                            linkActionView = new LinkCell(this.mContext);
                            break;
                        case 6:
                            FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext);
                            flickerLoadingView.setIsSingleCell(true);
                            flickerLoadingView.setViewType(9);
                            flickerLoadingView.showDate(false);
                            flickerLoadingView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                            linkActionView = flickerLoadingView;
                            break;
                        case 7:
                            View shadowSectionCell = new ShadowSectionCell(this.mContext);
                            shadowSectionCell.setBackground(Theme.getThemedDrawableByKey(this.mContext, C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                            linkActionView = shadowSectionCell;
                            break;
                        case 8:
                            TextSettingsCell textSettingsCell = new TextSettingsCell(this.mContext);
                            textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                            textSettingsCell.setText(LocaleController.getString("DeleteAllRevokedLinks", C3632R.string.DeleteAllRevokedLinks), false);
                            textSettingsCell.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
                            linkActionView = textSettingsCell;
                            break;
                        case 9:
                            TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(this.mContext);
                            if (ManageLinksActivity.this.isDonationsType) {
                                textInfoPrivacyCell.setText(((ResourceManager) ManageLinksActivity.this.resourceManager.getValue()).getString(C3632R.string.channel_donations_admin_bot_information, AppConfiguration$Bots.getAuthBotUsernameWithAT()));
                                ViewExtKt.setSubstringClickListener(textInfoPrivacyCell.getTextView(), AppConfiguration$Bots.getAuthBotUsernameWithAT(), false, new Callbacks$Callback() { // from class: org.telegram.ui.ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda7
                                    @Override // com.iMe.fork.utils.Callbacks$Callback
                                    public final void invoke() {
                                        ManageLinksActivity.ListAdapter.this.lambda$onCreateViewHolder$0();
                                    }
                                });
                                TextView textView = textInfoPrivacyCell.getTextView();
                                String string = ((ResourceManager) ManageLinksActivity.this.resourceManager.getValue()).getString(C3632R.string.channel_donations_admin_bot_link_key);
                                final ManageLinksActivity manageLinksActivity2 = ManageLinksActivity.this;
                                ViewExtKt.setSubstringClickListener(textView, string, false, new Callbacks$Callback() { // from class: org.telegram.ui.ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda13
                                    @Override // com.iMe.fork.utils.Callbacks$Callback
                                    public final void invoke() {
                                        ManageLinksActivity.access$7900(ManageLinksActivity.this);
                                    }
                                });
                            } else {
                                textInfoPrivacyCell.setText(LocaleController.getString("CreateNewLinkHelp", C3632R.string.CreateNewLinkHelp));
                            }
                            textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.mContext, C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                            linkActionView = textInfoPrivacyCell;
                            break;
                        case 10:
                            FrameLayout manageChatUserCell = new ManageChatUserCell(this.mContext, 8, 6, false);
                            manageChatUserCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                            linkActionView = manageChatUserCell;
                            break;
                        default:
                            View hintInnerCell = new HintInnerCell(ManageLinksActivity.this, this.mContext);
                            hintInnerCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundWhite));
                            linkActionView = hintInnerCell;
                            break;
                    }
                } else {
                    View donationSeeMoreButton = new DonationSeeMoreButton(this.mContext);
                    donationSeeMoreButton.setPadding(AndroidUtilities.m104dp(23), AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(23), AndroidUtilities.m104dp(15));
                    linkActionView = donationSeeMoreButton;
                }
                linkActionView = headerCellWithImageViewButtonWrapper;
            }
            linkActionView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(linkActionView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0() {
            ManageLinksActivity.this.getMessagesController().openByUserName(AppConfiguration$Bots.getAuthBotUsername(), ManageLinksActivity.this, 3);
        }

        /* JADX WARN: Code restructure failed: missing block: B:82:0x02d2, code lost:
            if (r17 == (r15.this$0.linksEndRow - 1)) goto L104;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0301, code lost:
            if (r17 == (r15.this$0.revokedLinksEndRow - 1)) goto L104;
         */
        /* JADX WARN: Removed duplicated region for block: B:237:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0291  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r16, int r17) {
            /*
                Method dump skipped, instructions count: 2256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ManageLinksActivity.ListAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$2() {
            ManageLinksActivity manageLinksActivity = ManageLinksActivity.this;
            manageLinksActivity.showCommonInfoAlert(((ResourceManager) manageLinksActivity.resourceManager.getValue()).getString(C3632R.string.wallet_crypto_buy_information_dialog_title), ((ResourceManager) ManageLinksActivity.this.resourceManager.getValue()).getString(C3632R.string.staking_replenishment_percentage_info_alert));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$3(StakingDetailsItem stakingDetailsItem, View view) {
            ManageLinksActivity manageLinksActivity = ManageLinksActivity.this;
            manageLinksActivity.showDialog(StakingConditionsBottomSheetDialog.newInstance(stakingDetailsItem, manageLinksActivity));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$4(View view) {
            ManageLinksActivity.this.openDonationAddressOnScanner();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$5(View view) {
            ManageLinksActivity.this.openChooseContact();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$6(LinkActionView linkActionView, View view) {
            ManageLinksActivity.this.openSelectToken(linkActionView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$7(View view) {
            ManageLinksActivity manageLinksActivity = ManageLinksActivity.this;
            final StakingCalculatorPresenter stakingCalculatorPresenter = manageLinksActivity.stakingCalculatorPresenter;
            Objects.requireNonNull(stakingCalculatorPresenter);
            manageLinksActivity.presentFragment(StakingCalculatorProgrammesFragment.newInstance(new Callbacks$Callback1() { // from class: org.telegram.ui.ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda5
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    StakingCalculatorPresenter.this.onStakingSelected((StakingDetailsItem) obj);
                }
            }));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$8(LinkActionView linkActionView) {
            ManageLinksActivity.this.createCollection(linkActionView.getEditText().getText().toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$9(LinkActionView linkActionView) {
            ManageLinksActivity.this.createCollection(linkActionView.getEditText().getText().toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$10(LinkActionView linkActionView) {
            ManageLinksActivity.this.saveDonationsAddress(linkActionView.getEditText().getText().toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$11(LinkActionView linkActionView) {
            ManageLinksActivity.this.saveDonationsAddress(linkActionView.getEditText().getText().toString());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ManageChatUserCell) {
                ((ManageChatUserCell) view).recycle();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i != ManageLinksActivity.this.chooseRecipientOptionsRow) {
                if (i != ManageLinksActivity.this.stakingPrognosisRow) {
                    if (i != ManageLinksActivity.this.stakingInfoRow) {
                        if (i != ManageLinksActivity.this.stakingActionsRow) {
                            if (i != ManageLinksActivity.this.stakingSafeWithdrawalRow) {
                                if (i != ManageLinksActivity.this.stakingWithdrawalFeeRow) {
                                    if (i != ManageLinksActivity.this.stakingSelectProgrammeHeaderRow) {
                                        if (i != ManageLinksActivity.this.chooseContactHeaderRow && i != ManageLinksActivity.this.donationTransactionsHeaderRow) {
                                            if (i != ManageLinksActivity.this.feeRow) {
                                                if (i != ManageLinksActivity.this.donationTransactionsSeeMoreRow) {
                                                    if (i != ManageLinksActivity.this.donationBalanceRow) {
                                                        if (i < ManageLinksActivity.this.donationTransactionsStartRow || i >= ManageLinksActivity.this.donationTransactionsEndRow) {
                                                            if (i == ManageLinksActivity.this.helpRow) {
                                                                return 0;
                                                            }
                                                            if (i == ManageLinksActivity.this.selectTokenHeaderRow || i == ManageLinksActivity.this.inputHeaderRow || i == ManageLinksActivity.this.commentHeaderRow || i == ManageLinksActivity.this.donationBalanceHeaderRow || i == ManageLinksActivity.this.permanentLinkHeaderRow || i == ManageLinksActivity.this.revokedHeader || i == ManageLinksActivity.this.adminsHeaderRow || i == ManageLinksActivity.this.linksHeaderRow) {
                                                                return 1;
                                                            }
                                                            if (i == ManageLinksActivity.this.chooseContactRow || i == ManageLinksActivity.this.selectTokenRow || i == ManageLinksActivity.this.inputRow || i == ManageLinksActivity.this.commentRow || i == ManageLinksActivity.this.permanentLinkRow) {
                                                                return 2;
                                                            }
                                                            if (i == ManageLinksActivity.this.createNewLinkRow) {
                                                                return 3;
                                                            }
                                                            if (i == ManageLinksActivity.this.donationsDividerRow || i == ManageLinksActivity.this.dividerRow || i == ManageLinksActivity.this.revokedDivider || i == ManageLinksActivity.this.revokeAllDivider || i == ManageLinksActivity.this.creatorDividerRow || i == ManageLinksActivity.this.adminsDividerRow) {
                                                                return 4;
                                                            }
                                                            if (i < ManageLinksActivity.this.linksStartRow || i >= ManageLinksActivity.this.linksEndRow) {
                                                                if (i < ManageLinksActivity.this.revokedLinksStartRow || i >= ManageLinksActivity.this.revokedLinksEndRow) {
                                                                    if (i == ManageLinksActivity.this.linksLoadingRow) {
                                                                        return 6;
                                                                    }
                                                                    if (i == ManageLinksActivity.this.lastDivider) {
                                                                        return 7;
                                                                    }
                                                                    if (i == ManageLinksActivity.this.revokeAllRow) {
                                                                        return 8;
                                                                    }
                                                                    if (i == ManageLinksActivity.this.informationRow || i == ManageLinksActivity.this.createLinkHelpRow) {
                                                                        return 9;
                                                                    }
                                                                    if (i != ManageLinksActivity.this.creatorRow) {
                                                                        return (i < ManageLinksActivity.this.adminsStartRow || i >= ManageLinksActivity.this.adminsEndRow) ? 1 : 10;
                                                                    }
                                                                    return 10;
                                                                }
                                                                return 5;
                                                            }
                                                            return 5;
                                                        }
                                                        return IdFabric$ViewTypes.TRANSACTION;
                                                    }
                                                    return IdFabric$ViewTypes.TOKEN_BALANCE;
                                                }
                                                return IdFabric$ViewTypes.DONATION_SEE_MORE;
                                            }
                                            return IdFabric$ViewTypes.CHOOSE_FEE;
                                        }
                                        return IdFabric$ViewTypes.HEADER_CELL_WITH_NETWORK;
                                    }
                                    return IdFabric$ViewTypes.HEADER_CELL_WITH_IMAGE_VIEW_BUTTON;
                                }
                                return IdFabric$ViewTypes.STAKING_WITHDRAWAL_FEE;
                            }
                            return IdFabric$ViewTypes.STAKING_SAFE_WITHDRAWAL;
                        }
                        return IdFabric$ViewTypes.STAKING_ACTIONS;
                    }
                    return IdFabric$ViewTypes.STAKING_INFO;
                }
                return IdFabric$ViewTypes.STAKING_PROGNOSIS;
            }
            return IdFabric$ViewTypes.CHOOSE_RECIPIENT_OPTIONS;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void revokePermanent() {
        if (this.adminId == getAccountInstance().getUserConfig().clientUserId) {
            TLRPC$TL_messages_exportChatInvite tLRPC$TL_messages_exportChatInvite = new TLRPC$TL_messages_exportChatInvite();
            tLRPC$TL_messages_exportChatInvite.peer = getMessagesController().getInputPeer(-this.currentChatId);
            tLRPC$TL_messages_exportChatInvite.legacy_revoke_permanent = true;
            final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = this.invite;
            this.invite = null;
            this.info.exported_invite = null;
            int sendRequest = getConnectionsManager().sendRequest(tLRPC$TL_messages_exportChatInvite, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda22
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ManageLinksActivity.this.lambda$revokePermanent$24(tLRPC$TL_chatInviteExported, tLObject, tLRPC$TL_error);
                }
            });
            AndroidUtilities.updateVisibleRows(this.listView);
            getConnectionsManager().bindRequestToGuid(sendRequest, this.classGuid);
            return;
        }
        revokeLink(this.invite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokePermanent$24(final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                ManageLinksActivity.this.lambda$revokePermanent$23(tLRPC$TL_error, tLObject, tLRPC$TL_chatInviteExported);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokePermanent$23(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
        if (tLRPC$TL_error == null) {
            TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported2 = (TLRPC$TL_chatInviteExported) tLObject;
            this.invite = tLRPC$TL_chatInviteExported2;
            TLRPC$ChatFull tLRPC$ChatFull = this.info;
            if (tLRPC$ChatFull != null) {
                tLRPC$ChatFull.exported_invite = tLRPC$TL_chatInviteExported2;
            }
            if (getParentActivity() == null || tLRPC$TL_chatInviteExported == null) {
                return;
            }
            tLRPC$TL_chatInviteExported.revoked = true;
            DiffCallback saveListState = saveListState();
            this.revokedInvites.add(0, tLRPC$TL_chatInviteExported);
            updateRecyclerViewAnimated(saveListState);
            BulletinFactory.m62of(this).createSimpleBulletin(C3632R.raw.linkbroken, LocaleController.getString("InviteRevokedHint", C3632R.string.InviteRevokedHint)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ManageLinksActivity$LinkCell */
    /* loaded from: classes5.dex */
    public class LinkCell extends FrameLayout {
        int animateFromState;
        boolean animateHideExpiring;
        float animateToStateProgress;
        boolean drawDivider;
        TLRPC$TL_chatInviteExported invite;
        float lastDrawExpringProgress;
        int lastDrawingState;
        ImageView optionsView;
        Paint paint;
        Paint paint2;
        int position;
        RectF rectF;
        TextView subtitleView;
        private TimerParticles timerParticles;
        boolean timerRunning;
        TextView titleView;

        private boolean hasProgress(int i) {
            return i == 2 || i == 1;
        }

        public LinkCell(Context context) {
            super(context);
            this.paint = new Paint(1);
            this.paint2 = new Paint(1);
            this.rectF = new RectF();
            this.animateToStateProgress = 1.0f;
            this.timerParticles = new TimerParticles();
            this.paint2.setStyle(Paint.Style.STROKE);
            this.paint2.setStrokeCap(Paint.Cap.ROUND);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-1, -2, 16, 70, 0, 30, 0));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 16.0f);
            this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            this.titleView.setLines(1);
            this.titleView.setEllipsize(TextUtils.TruncateAt.END);
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            textView2.setTextSize(1, 13.0f);
            this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
            linearLayout.addView(this.titleView, LayoutHelper.createLinear(-1, -2));
            linearLayout.addView(this.subtitleView, LayoutHelper.createLinear(-1, -2, 0, 6, 0, 0));
            ImageView imageView = new ImageView(context);
            this.optionsView = imageView;
            imageView.setImageDrawable(ContextCompat.getDrawable(context, C3632R.C3634drawable.ic_ab_other));
            this.optionsView.setScaleType(ImageView.ScaleType.CENTER);
            this.optionsView.setColorFilter(Theme.getColor(Theme.key_stickers_menu));
            this.optionsView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ManageLinksActivity.LinkCell.this.lambda$new$3(view);
                }
            });
            this.optionsView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 1));
            addView(this.optionsView, LayoutHelper.createFrame(40, 48, 21));
            setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            setWillNotDraw(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00f5  */
        /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$new$3(android.view.View r8) {
            /*
                Method dump skipped, instructions count: 266
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ManageLinksActivity.LinkCell.lambda$new$3(android.view.View):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(ArrayList arrayList, DialogInterface dialogInterface, int i) {
            int intValue = ((Integer) arrayList.get(i)).intValue();
            if (intValue == 0) {
                try {
                    if (this.invite.link == null) {
                        return;
                    }
                    ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", this.invite.link));
                    BulletinFactory.createCopyLinkBulletin(ManageLinksActivity.this).show();
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
            } else if (intValue == 1) {
                try {
                    if (this.invite.link == null) {
                        return;
                    }
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("text/plain");
                    intent.putExtra("android.intent.extra.TEXT", this.invite.link);
                    ManageLinksActivity.this.startActivityForResult(Intent.createChooser(intent, LocaleController.getString("InviteToGroupByLink", C3632R.string.InviteToGroupByLink)), 500);
                } catch (Exception e2) {
                    FileLog.m99e(e2);
                }
            } else if (intValue == 2) {
                ManageLinksActivity.this.editLink(this.invite);
            } else if (intValue == 3) {
                final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = this.invite;
                AlertDialog.Builder builder = new AlertDialog.Builder(ManageLinksActivity.this.getParentActivity());
                builder.setMessage(LocaleController.getString("RevokeAlert", C3632R.string.RevokeAlert));
                builder.setTitle(LocaleController.getString("RevokeLink", C3632R.string.RevokeLink));
                builder.setPositiveButton(LocaleController.getString("RevokeButton", C3632R.string.RevokeButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface2, int i2) {
                        ManageLinksActivity.LinkCell.this.lambda$new$0(tLRPC$TL_chatInviteExported, dialogInterface2, i2);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                ManageLinksActivity.this.showDialog(builder.create());
            } else if (intValue != 4) {
            } else {
                final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported2 = this.invite;
                AlertDialog.Builder builder2 = new AlertDialog.Builder(ManageLinksActivity.this.getParentActivity());
                builder2.setTitle(LocaleController.getString("DeleteLink", C3632R.string.DeleteLink));
                builder2.setMessage(LocaleController.getString("DeleteLinkHelp", C3632R.string.DeleteLinkHelp));
                builder2.setPositiveButton(LocaleController.getString("Delete", C3632R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface2, int i2) {
                        ManageLinksActivity.LinkCell.this.lambda$new$1(tLRPC$TL_chatInviteExported2, dialogInterface2, i2);
                    }
                });
                builder2.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                ManageLinksActivity.this.showDialog(builder2.create());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, DialogInterface dialogInterface, int i) {
            ManageLinksActivity.this.revokeLink(tLRPC$TL_chatInviteExported);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, DialogInterface dialogInterface, int i) {
            ManageLinksActivity.this.deleteLink(tLRPC$TL_chatInviteExported);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(64), 1073741824));
            this.paint2.setStrokeWidth(AndroidUtilities.m104dp(2));
        }

        /* JADX WARN: Code restructure failed: missing block: B:61:0x00fe, code lost:
            if (r4.revoked == false) goto L49;
         */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01c1  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x01e6  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x020e  */
        /* JADX WARN: Removed duplicated region for block: B:88:? A[RETURN, SYNTHETIC] */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r16) {
            /*
                Method dump skipped, instructions count: 564
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ManageLinksActivity.LinkCell.onDraw(android.graphics.Canvas):void");
        }

        private int getColor(int i, float f) {
            if (i == 3) {
                return Theme.getColor(Theme.key_chat_attachAudioBackground);
            }
            if (i == 1) {
                if (f > 0.5f) {
                    return ColorUtils.blendARGB(Theme.getColor(Theme.key_chat_attachLocationBackground), Theme.getColor(Theme.key_chat_attachPollBackground), 1.0f - ((f - 0.5f) / 0.5f));
                }
                return ColorUtils.blendARGB(Theme.getColor(Theme.key_chat_attachPollBackground), Theme.getColor(Theme.key_chat_attachAudioBackground), 1.0f - (f / 0.5f));
            } else if (i == 2) {
                return Theme.getColor(Theme.key_chat_attachPollBackground);
            } else {
                if (i == 4) {
                    return Theme.getColor(Theme.key_chats_unreadCounterMuted);
                }
                return Theme.getColor(Theme.key_featuredStickers_addButton);
            }
        }

        public void setLink(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, int i) {
            String formatPluralString;
            int i2;
            String str;
            int i3;
            this.timerRunning = false;
            TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported2 = this.invite;
            if (tLRPC$TL_chatInviteExported2 == null || tLRPC$TL_chatInviteExported == null || !tLRPC$TL_chatInviteExported2.link.equals(tLRPC$TL_chatInviteExported.link)) {
                this.lastDrawingState = -1;
                this.animateToStateProgress = 1.0f;
            }
            this.invite = tLRPC$TL_chatInviteExported;
            this.position = i;
            if (tLRPC$TL_chatInviteExported == null) {
                return;
            }
            if (!TextUtils.isEmpty(tLRPC$TL_chatInviteExported.title)) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tLRPC$TL_chatInviteExported.title);
                Emoji.replaceEmoji((CharSequence) spannableStringBuilder, this.titleView.getPaint().getFontMetricsInt(), (int) this.titleView.getPaint().getTextSize(), false);
                this.titleView.setText(spannableStringBuilder);
            } else if (tLRPC$TL_chatInviteExported.link.startsWith("https://t.me/+")) {
                this.titleView.setText(tLRPC$TL_chatInviteExported.link.substring(14));
            } else if (tLRPC$TL_chatInviteExported.link.startsWith("https://t.me/joinchat/")) {
                this.titleView.setText(tLRPC$TL_chatInviteExported.link.substring(22));
            } else if (tLRPC$TL_chatInviteExported.link.startsWith("https://")) {
                this.titleView.setText(tLRPC$TL_chatInviteExported.link.substring(8));
            } else {
                this.titleView.setText(tLRPC$TL_chatInviteExported.link);
            }
            int i4 = tLRPC$TL_chatInviteExported.usage;
            if (i4 == 0 && tLRPC$TL_chatInviteExported.usage_limit == 0 && tLRPC$TL_chatInviteExported.requested == 0) {
                formatPluralString = LocaleController.getString("NoOneJoinedYet", C3632R.string.NoOneJoinedYet);
            } else {
                int i5 = tLRPC$TL_chatInviteExported.usage_limit;
                if (i5 > 0 && i4 == 0 && !tLRPC$TL_chatInviteExported.expired && !tLRPC$TL_chatInviteExported.revoked) {
                    formatPluralString = LocaleController.formatPluralString("CanJoin", i5, new Object[0]);
                } else if (i5 > 0 && tLRPC$TL_chatInviteExported.expired && tLRPC$TL_chatInviteExported.revoked) {
                    formatPluralString = LocaleController.formatPluralString("PeopleJoined", tLRPC$TL_chatInviteExported.usage, new Object[0]) + ", " + LocaleController.formatPluralString("PeopleJoinedRemaining", tLRPC$TL_chatInviteExported.usage_limit - tLRPC$TL_chatInviteExported.usage, new Object[0]);
                } else {
                    formatPluralString = i4 > 0 ? LocaleController.formatPluralString("PeopleJoined", i4, new Object[0]) : "";
                    if (tLRPC$TL_chatInviteExported.requested > 0) {
                        if (tLRPC$TL_chatInviteExported.usage > 0) {
                            formatPluralString = formatPluralString + ", ";
                        }
                        formatPluralString = formatPluralString + LocaleController.formatPluralString("JoinRequests", tLRPC$TL_chatInviteExported.requested, new Object[0]);
                    }
                }
            }
            if (tLRPC$TL_chatInviteExported.permanent && !tLRPC$TL_chatInviteExported.revoked) {
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(formatPluralString);
                DotDividerSpan dotDividerSpan = new DotDividerSpan();
                dotDividerSpan.setTopPadding(AndroidUtilities.m105dp(1.5f));
                spannableStringBuilder2.append((CharSequence) "  .  ").setSpan(dotDividerSpan, spannableStringBuilder2.length() - 3, spannableStringBuilder2.length() - 2, 0);
                spannableStringBuilder2.append((CharSequence) LocaleController.getString("Permanent", C3632R.string.Permanent));
                this.subtitleView.setText(spannableStringBuilder2);
            } else if (tLRPC$TL_chatInviteExported.expired || tLRPC$TL_chatInviteExported.revoked) {
                if (tLRPC$TL_chatInviteExported.revoked && tLRPC$TL_chatInviteExported.usage == 0) {
                    formatPluralString = LocaleController.getString("NoOneJoined", C3632R.string.NoOneJoined);
                }
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(formatPluralString);
                DotDividerSpan dotDividerSpan2 = new DotDividerSpan();
                dotDividerSpan2.setTopPadding(AndroidUtilities.m105dp(1.5f));
                spannableStringBuilder3.append((CharSequence) "  .  ").setSpan(dotDividerSpan2, spannableStringBuilder3.length() - 3, spannableStringBuilder3.length() - 2, 0);
                boolean z = tLRPC$TL_chatInviteExported.revoked;
                if (z || (i3 = tLRPC$TL_chatInviteExported.usage_limit) <= 0 || tLRPC$TL_chatInviteExported.usage < i3) {
                    if (z) {
                        i2 = C3632R.string.Revoked;
                        str = "Revoked";
                    } else {
                        i2 = C3632R.string.Expired;
                        str = "Expired";
                    }
                    spannableStringBuilder3.append((CharSequence) LocaleController.getString(str, i2));
                } else {
                    spannableStringBuilder3.append((CharSequence) LocaleController.getString("LinkLimitReached", C3632R.string.LinkLimitReached));
                }
                this.subtitleView.setText(spannableStringBuilder3);
            } else if (tLRPC$TL_chatInviteExported.expire_date > 0) {
                SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(formatPluralString);
                DotDividerSpan dotDividerSpan3 = new DotDividerSpan();
                dotDividerSpan3.setTopPadding(AndroidUtilities.m105dp(1.5f));
                spannableStringBuilder4.append((CharSequence) "  .  ").setSpan(dotDividerSpan3, spannableStringBuilder4.length() - 3, spannableStringBuilder4.length() - 2, 0);
                long currentTimeMillis = (tLRPC$TL_chatInviteExported.expire_date * 1000) - (System.currentTimeMillis() + (ManageLinksActivity.this.timeDif * 1000));
                if (currentTimeMillis < 0) {
                    currentTimeMillis = 0;
                }
                if (currentTimeMillis > 86400000) {
                    spannableStringBuilder4.append((CharSequence) LocaleController.formatPluralString("DaysLeft", (int) (currentTimeMillis / 86400000), new Object[0]));
                } else {
                    long j = currentTimeMillis / 1000;
                    long j2 = j / 60;
                    Locale locale = Locale.ENGLISH;
                    spannableStringBuilder4.append((CharSequence) String.format(locale, "%02d", Integer.valueOf((int) (j2 / 60)))).append((CharSequence) String.format(locale, ":%02d", Integer.valueOf((int) (j2 % 60)))).append((CharSequence) String.format(locale, ":%02d", Integer.valueOf((int) (j % 60))));
                    this.timerRunning = true;
                }
                this.subtitleView.setText(spannableStringBuilder4);
            } else {
                this.subtitleView.setText(formatPluralString);
            }
        }
    }

    public void deleteLink(final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
        TLRPC$TL_messages_deleteExportedChatInvite tLRPC$TL_messages_deleteExportedChatInvite = new TLRPC$TL_messages_deleteExportedChatInvite();
        tLRPC$TL_messages_deleteExportedChatInvite.link = tLRPC$TL_chatInviteExported.link;
        tLRPC$TL_messages_deleteExportedChatInvite.peer = getMessagesController().getInputPeer(-this.currentChatId);
        getConnectionsManager().sendRequest(tLRPC$TL_messages_deleteExportedChatInvite, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda24
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ManageLinksActivity.this.lambda$deleteLink$26(tLRPC$TL_chatInviteExported, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteLink$26(final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                ManageLinksActivity.this.lambda$deleteLink$25(tLRPC$TL_error, tLRPC$TL_chatInviteExported);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteLink$25(TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
        if (tLRPC$TL_error == null) {
            this.linkEditActivityCallback.onLinkRemoved(tLRPC$TL_chatInviteExported);
        }
    }

    public void editLink(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
        LinkEditActivity linkEditActivity = new LinkEditActivity(1, this.currentChatId);
        linkEditActivity.setCallback(this.linkEditActivityCallback);
        linkEditActivity.setInviteToEdit(tLRPC$TL_chatInviteExported);
        presentFragment(linkEditActivity);
    }

    public void revokeLink(final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
        TLRPC$TL_messages_editExportedChatInvite tLRPC$TL_messages_editExportedChatInvite = new TLRPC$TL_messages_editExportedChatInvite();
        tLRPC$TL_messages_editExportedChatInvite.link = tLRPC$TL_chatInviteExported.link;
        tLRPC$TL_messages_editExportedChatInvite.revoked = true;
        tLRPC$TL_messages_editExportedChatInvite.peer = getMessagesController().getInputPeer(-this.currentChatId);
        getConnectionsManager().sendRequest(tLRPC$TL_messages_editExportedChatInvite, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda23
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ManageLinksActivity.this.lambda$revokeLink$28(tLRPC$TL_chatInviteExported, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokeLink$28(final TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                ManageLinksActivity.this.lambda$revokeLink$27(tLRPC$TL_error, tLObject, tLRPC$TL_chatInviteExported);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokeLink$27(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
        if (tLRPC$TL_error == null) {
            if (tLObject instanceof TLRPC$TL_messages_exportedChatInviteReplaced) {
                TLRPC$TL_messages_exportedChatInviteReplaced tLRPC$TL_messages_exportedChatInviteReplaced = (TLRPC$TL_messages_exportedChatInviteReplaced) tLObject;
                if (!this.isPublic) {
                    this.invite = (TLRPC$TL_chatInviteExported) tLRPC$TL_messages_exportedChatInviteReplaced.new_invite;
                }
                tLRPC$TL_chatInviteExported.revoked = true;
                DiffCallback saveListState = saveListState();
                if (this.isPublic && this.adminId == getAccountInstance().getUserConfig().getClientUserId()) {
                    this.invites.remove(tLRPC$TL_chatInviteExported);
                    this.invites.add(0, (TLRPC$TL_chatInviteExported) tLRPC$TL_messages_exportedChatInviteReplaced.new_invite);
                } else if (this.invite != null) {
                    this.invite = (TLRPC$TL_chatInviteExported) tLRPC$TL_messages_exportedChatInviteReplaced.new_invite;
                }
                this.revokedInvites.add(0, tLRPC$TL_chatInviteExported);
                updateRecyclerViewAnimated(saveListState);
            } else {
                this.linkEditActivityCallback.onLinkEdited(tLRPC$TL_chatInviteExported, tLObject);
                TLRPC$ChatFull tLRPC$ChatFull = this.info;
                if (tLRPC$ChatFull != null) {
                    int i = tLRPC$ChatFull.invitesCount - 1;
                    tLRPC$ChatFull.invitesCount = i;
                    if (i < 0) {
                        tLRPC$ChatFull.invitesCount = 0;
                    }
                    getMessagesStorage().saveChatLinksCount(this.currentChatId, this.info.invitesCount);
                }
            }
            if (getParentActivity() != null) {
                BulletinFactory.m62of(this).createSimpleBulletin(C3632R.raw.linkbroken, LocaleController.getString("InviteRevokedHint", C3632R.string.InviteRevokedHint)).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ManageLinksActivity$9 */
    /* loaded from: classes5.dex */
    public class C64859 implements LinkEditActivity.Callback {
        C64859() {
        }

        @Override // org.telegram.p043ui.LinkEditActivity.Callback
        public void onLinkCreated(final TLObject tLObject) {
            if (tLObject instanceof TLRPC$TL_chatInviteExported) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$9$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ManageLinksActivity.C64859.this.lambda$onLinkCreated$0(tLObject);
                    }
                }, 200L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLinkCreated$0(TLObject tLObject) {
            DiffCallback saveListState = ManageLinksActivity.this.saveListState();
            ManageLinksActivity.this.invites.add(0, (TLRPC$TL_chatInviteExported) tLObject);
            if (ManageLinksActivity.this.info != null) {
                ManageLinksActivity.this.info.invitesCount++;
                ManageLinksActivity.this.getMessagesStorage().saveChatLinksCount(ManageLinksActivity.this.currentChatId, ManageLinksActivity.this.info.invitesCount);
            }
            ManageLinksActivity.this.updateRecyclerViewAnimated(saveListState);
        }

        @Override // org.telegram.p043ui.LinkEditActivity.Callback
        public void onLinkEdited(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported, TLObject tLObject) {
            if (tLObject instanceof TLRPC$TL_messages_exportedChatInvite) {
                TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported2 = (TLRPC$TL_chatInviteExported) ((TLRPC$TL_messages_exportedChatInvite) tLObject).invite;
                ManageLinksActivity.this.fixDate(tLRPC$TL_chatInviteExported2);
                for (int i = 0; i < ManageLinksActivity.this.invites.size(); i++) {
                    if (((TLRPC$TL_chatInviteExported) ManageLinksActivity.this.invites.get(i)).link.equals(tLRPC$TL_chatInviteExported.link)) {
                        if (tLRPC$TL_chatInviteExported2.revoked) {
                            DiffCallback saveListState = ManageLinksActivity.this.saveListState();
                            ManageLinksActivity.this.invites.remove(i);
                            ManageLinksActivity.this.revokedInvites.add(0, tLRPC$TL_chatInviteExported2);
                            ManageLinksActivity.this.updateRecyclerViewAnimated(saveListState);
                            return;
                        }
                        ManageLinksActivity.this.invites.set(i, tLRPC$TL_chatInviteExported2);
                        ManageLinksActivity.this.updateRows(true);
                        return;
                    }
                }
            }
        }

        @Override // org.telegram.p043ui.LinkEditActivity.Callback
        public void onLinkRemoved(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
            for (int i = 0; i < ManageLinksActivity.this.revokedInvites.size(); i++) {
                if (((TLRPC$TL_chatInviteExported) ManageLinksActivity.this.revokedInvites.get(i)).link.equals(tLRPC$TL_chatInviteExported.link)) {
                    DiffCallback saveListState = ManageLinksActivity.this.saveListState();
                    ManageLinksActivity.this.revokedInvites.remove(i);
                    ManageLinksActivity.this.updateRecyclerViewAnimated(saveListState);
                    return;
                }
            }
        }

        @Override // org.telegram.p043ui.LinkEditActivity.Callback
        public void revokeLink(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
            ManageLinksActivity.this.revokeLink(tLRPC$TL_chatInviteExported);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRecyclerViewAnimated(DiffCallback diffCallback) {
        if (this.isPaused || this.listViewAdapter == null || this.listView == null) {
            updateRows(true);
            return;
        }
        updateRows(false);
        diffCallback.fillPositions(diffCallback.newPositionToItem);
        DiffUtil.calculateDiff(diffCallback).dispatchUpdatesTo(this.listViewAdapter);
        AndroidUtilities.updateVisibleRows(this.listView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ManageLinksActivity$DiffCallback */
    /* loaded from: classes5.dex */
    public class DiffCallback extends DiffUtil.Callback {
        SparseIntArray newPositionToItem;
        int oldAdminsEndRow;
        int oldAdminsStartRow;
        int oldDonationTransactionsEndRow;
        int oldDonationTransactionsStartRow;
        ArrayList<TransactionItem> oldDonationsTransactions;
        ArrayList<TLRPC$TL_chatInviteExported> oldLinks;
        int oldLinksEndRow;
        int oldLinksStartRow;
        SparseIntArray oldPositionToItem;
        ArrayList<TLRPC$TL_chatInviteExported> oldRevokedLinks;
        int oldRevokedLinksEndRow;
        int oldRevokedLinksStartRow;
        int oldRowCount;

        private DiffCallback() {
            this.oldDonationsTransactions = new ArrayList<>();
            this.oldPositionToItem = new SparseIntArray();
            this.newPositionToItem = new SparseIntArray();
            this.oldLinks = new ArrayList<>();
            this.oldRevokedLinks = new ArrayList<>();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getOldListSize() {
            return this.oldRowCount;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getNewListSize() {
            return ManageLinksActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areItemsTheSame(int i, int i2) {
            TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported;
            if (i >= this.oldDonationTransactionsStartRow && i < this.oldDonationTransactionsEndRow && i2 >= ManageLinksActivity.this.donationTransactionsStartRow && i2 < ManageLinksActivity.this.donationTransactionsEndRow) {
                return this.oldDonationsTransactions.get(i - this.oldDonationTransactionsStartRow).getTransaction().getId().equals(((TransactionItem) ManageLinksActivity.this.donationsTransactions.get(i2 - ManageLinksActivity.this.donationTransactionsStartRow)).getTransaction().getId());
            }
            if (((i >= this.oldLinksStartRow && i < this.oldLinksEndRow) || (i >= this.oldRevokedLinksStartRow && i < this.oldRevokedLinksEndRow)) && ((i2 >= ManageLinksActivity.this.linksStartRow && i2 < ManageLinksActivity.this.linksEndRow) || (i2 >= ManageLinksActivity.this.revokedLinksStartRow && i2 < ManageLinksActivity.this.revokedLinksEndRow))) {
                TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported2 = (i2 < ManageLinksActivity.this.linksStartRow || i2 >= ManageLinksActivity.this.linksEndRow) ? (TLRPC$TL_chatInviteExported) ManageLinksActivity.this.revokedInvites.get(i2 - ManageLinksActivity.this.revokedLinksStartRow) : (TLRPC$TL_chatInviteExported) ManageLinksActivity.this.invites.get(i2 - ManageLinksActivity.this.linksStartRow);
                int i3 = this.oldLinksStartRow;
                if (i >= i3 && i < this.oldLinksEndRow) {
                    tLRPC$TL_chatInviteExported = this.oldLinks.get(i - i3);
                } else {
                    tLRPC$TL_chatInviteExported = this.oldRevokedLinks.get(i - this.oldRevokedLinksStartRow);
                }
                return tLRPC$TL_chatInviteExported.link.equals(tLRPC$TL_chatInviteExported2.link);
            } else if (i >= this.oldAdminsStartRow && i < this.oldAdminsEndRow && i2 >= ManageLinksActivity.this.adminsStartRow && i2 < ManageLinksActivity.this.adminsEndRow) {
                return i - this.oldAdminsStartRow == i2 - ManageLinksActivity.this.adminsStartRow;
            } else {
                int i4 = this.oldPositionToItem.get(i, -1);
                return i4 >= 0 && i4 == this.newPositionToItem.get(i2, -1);
            }
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areContentsTheSame(int i, int i2) {
            return areItemsTheSame(i, i2);
        }

        public void fillPositions(SparseIntArray sparseIntArray) {
            sparseIntArray.clear();
            put(1, ManageLinksActivity.this.chooseContactHeaderRow, sparseIntArray);
            put(2, ManageLinksActivity.this.chooseContactRow, sparseIntArray);
            put(3, ManageLinksActivity.this.selectTokenHeaderRow, sparseIntArray);
            put(4, ManageLinksActivity.this.selectTokenRow, sparseIntArray);
            put(5, ManageLinksActivity.this.commentHeaderRow, sparseIntArray);
            put(6, ManageLinksActivity.this.commentRow, sparseIntArray);
            put(7, ManageLinksActivity.this.inputHeaderRow, sparseIntArray);
            put(8, ManageLinksActivity.this.inputRow, sparseIntArray);
            put(9, ManageLinksActivity.this.feeRow, sparseIntArray);
            put(10, ManageLinksActivity.this.informationRow, sparseIntArray);
            put(11, ManageLinksActivity.this.donationTransactionsHeaderRow, sparseIntArray);
            put(12, ManageLinksActivity.this.donationTransactionsSeeMoreRow, sparseIntArray);
            put(13, ManageLinksActivity.this.donationBalanceHeaderRow, sparseIntArray);
            put(14, ManageLinksActivity.this.donationBalanceRow, sparseIntArray);
            put(15, ManageLinksActivity.this.donationsDividerRow, sparseIntArray);
            put(16, ManageLinksActivity.this.stakingInfoRow, sparseIntArray);
            put(17, ManageLinksActivity.this.stakingActionsRow, sparseIntArray);
            put(18, ManageLinksActivity.this.stakingSafeWithdrawalRow, sparseIntArray);
            put(19, ManageLinksActivity.this.stakingWithdrawalFeeRow, sparseIntArray);
            put(20, ManageLinksActivity.this.stakingSelectProgrammeHeaderRow, sparseIntArray);
            put(21, ManageLinksActivity.this.stakingPrognosisRow, sparseIntArray);
            put(22, ManageLinksActivity.this.chooseRecipientOptionsRow, sparseIntArray);
            put(23, ManageLinksActivity.this.helpRow, sparseIntArray);
            put(24, ManageLinksActivity.this.permanentLinkHeaderRow, sparseIntArray);
            put(25, ManageLinksActivity.this.permanentLinkRow, sparseIntArray);
            put(26, ManageLinksActivity.this.dividerRow, sparseIntArray);
            put(27, ManageLinksActivity.this.createNewLinkRow, sparseIntArray);
            put(28, ManageLinksActivity.this.revokedHeader, sparseIntArray);
            put(29, ManageLinksActivity.this.revokeAllRow, sparseIntArray);
            put(30, ManageLinksActivity.this.createLinkHelpRow, sparseIntArray);
            put(31, ManageLinksActivity.this.creatorRow, sparseIntArray);
            put(32, ManageLinksActivity.this.creatorDividerRow, sparseIntArray);
            put(33, ManageLinksActivity.this.adminsHeaderRow, sparseIntArray);
            put(34, ManageLinksActivity.this.linksHeaderRow, sparseIntArray);
            put(35, ManageLinksActivity.this.linksLoadingRow, sparseIntArray);
        }

        private void put(int i, int i2, SparseIntArray sparseIntArray) {
            if (i2 >= 0) {
                sparseIntArray.put(i2, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DiffCallback saveListState() {
        DiffCallback diffCallback = new DiffCallback();
        diffCallback.fillPositions(diffCallback.oldPositionToItem);
        diffCallback.oldDonationTransactionsStartRow = this.donationTransactionsStartRow;
        diffCallback.oldDonationTransactionsEndRow = this.donationTransactionsEndRow;
        diffCallback.oldDonationsTransactions.clear();
        diffCallback.oldDonationsTransactions.addAll(this.donationsTransactions);
        diffCallback.oldLinksStartRow = this.linksStartRow;
        diffCallback.oldLinksEndRow = this.linksEndRow;
        diffCallback.oldRevokedLinksStartRow = this.revokedLinksStartRow;
        diffCallback.oldRevokedLinksEndRow = this.revokedLinksEndRow;
        diffCallback.oldAdminsStartRow = this.adminsStartRow;
        diffCallback.oldAdminsEndRow = this.adminsEndRow;
        diffCallback.oldRowCount = this.rowCount;
        diffCallback.oldLinks.clear();
        diffCallback.oldLinks.addAll(this.invites);
        diffCallback.oldRevokedLinks.clear();
        diffCallback.oldRevokedLinks.addAll(this.revokedInvites);
        return diffCallback;
    }

    public void fixDate(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
        if (tLRPC$TL_chatInviteExported.expire_date > 0) {
            tLRPC$TL_chatInviteExported.expired = getConnectionsManager().getCurrentTime() >= tLRPC$TL_chatInviteExported.expire_date;
            return;
        }
        int i = tLRPC$TL_chatInviteExported.usage_limit;
        if (i > 0) {
            tLRPC$TL_chatInviteExported.expired = tLRPC$TL_chatInviteExported.usage >= i;
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        int i = Theme.key_chats_message;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        int i2 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{FeeView.class}, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{StakingPercentageView.class}, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TransactionActionButtonsView.class}, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{StakingSafeWithdrawalView.class}, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{StakingWithdrawalFeeView.class}, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{ChooseRecipientOptionsView.class}, null, null, null, i2));
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda26
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ManageLinksActivity.this.lambda$getThemeDescriptions$29();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, CreationTextCell.class, LinkActionView.class, LinkCell.class}, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, i2));
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i3 = ThemeDescription.FLAG_BACKGROUND;
        int i4 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3704ActionBar, i3, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        int i5 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        int i6 = Theme.key_windowBackgroundWhiteGrayText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, i6));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HintInnerCell.class}, new String[]{"messageTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_unreadCounterMuted));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueButton));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{CreationTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{CreationTextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{CreationTextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxCheck));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LinkCell.class}, new String[]{"titleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LinkCell.class}, new String[]{"subtitleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{LinkCell.class}, new String[]{"optionsView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_stickers_menu));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$29() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof ChooseRecipientOptionsView) {
                    ((ChooseRecipientOptionsView) childAt).setupColors();
                } else if (childAt instanceof StakingPrognosisView) {
                    ((StakingPrognosisView) childAt).setupColors();
                } else if (childAt instanceof StakingPercentageView) {
                    ((StakingPercentageView) childAt).setupColors();
                } else if (childAt instanceof TransactionActionButtonsView) {
                    ((TransactionActionButtonsView) childAt).setupColors();
                } else if (childAt instanceof StakingSafeWithdrawalView) {
                    ((StakingSafeWithdrawalView) childAt).setupColors();
                } else if (childAt instanceof StakingWithdrawalFeeView) {
                    ((StakingWithdrawalFeeView) childAt).setupColors();
                } else if (childAt instanceof FeeView) {
                    ((FeeView) childAt).setupColors();
                } else if (childAt instanceof HeaderCellWithNetwork) {
                    ((HeaderCellWithNetwork) childAt).setupColors();
                } else if (childAt instanceof HeaderCellWithImageViewButtonWrapper) {
                    ((HeaderCellWithImageViewButtonWrapper) childAt).setupColors();
                } else {
                    if (childAt instanceof LinkActionView) {
                        LinkActionView linkActionView = (LinkActionView) childAt;
                        if (!linkActionView.getOptionsItems().isEmpty()) {
                            linkActionView.setOptionsItems(getInputOptionsMenuItems(linkActionView));
                        }
                    }
                    if (childAt instanceof DonationBalanceView) {
                        ((DonationBalanceView) childAt).setupColors();
                    } else if (childAt instanceof DonationTransactionView) {
                        ((DonationTransactionView) childAt).setupColors();
                    } else if (childAt instanceof DonationSeeMoreButton) {
                        ((DonationSeeMoreButton) childAt).setupColors();
                    } else if (childAt instanceof ManageChatUserCell) {
                        ((ManageChatUserCell) childAt).update(0);
                    }
                }
                if (childAt instanceof LinkActionView) {
                    ((LinkActionView) childAt).updateColors();
                }
            }
        }
        InviteLinkBottomSheet inviteLinkBottomSheet = this.inviteLinkBottomSheet;
        if (inviteLinkBottomSheet != null) {
            inviteLinkBottomSheet.updateColors();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        InviteLinkBottomSheet inviteLinkBottomSheet;
        super.onTransitionAnimationEnd(z, z2);
        if (z) {
            this.isOpened = true;
            if (z2 && (inviteLinkBottomSheet = this.inviteLinkBottomSheet) != null && inviteLinkBottomSheet.isNeedReopen) {
                inviteLinkBottomSheet.show();
            }
        }
        this.notificationsLocker.unlock();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        super.onTransitionAnimationStart(z, z2);
        this.notificationsLocker.lock();
    }
}
