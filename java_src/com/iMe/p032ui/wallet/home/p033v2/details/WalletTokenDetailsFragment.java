package com.iMe.p032ui.wallet.home.p033v2.details;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p025ui.dialog.AccountLevelAlert;
import com.iMe.fork.p025ui.view.AccountLevelBadgeView;
import com.iMe.fork.p025ui.view.TabbedViewPager;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.fork.utils.TabbedViewPagerDelegate;
import com.iMe.model.common.ScreenType;
import com.iMe.model.dialog.AnimatedSpannableDialogModel;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingProgrammeStatus;
import com.iMe.model.statistic.StatisticDiagramModel;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.model.wallet.details.StakingOperationsGroup;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.details.TransactionsGroup;
import com.iMe.model.wallet.details.WalletTokenDetailsNavigationTab;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.model.wallet.home.pay.BinancePayScreenArgs;
import com.iMe.model.wallet.home.pay.BinanceTransactionsGroup;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p024di.module.NavigationModuleKt;
import com.iMe.p032ui.base.WalletAuthFragment;
import com.iMe.p032ui.base.mvp.MvpFragment;
import com.iMe.p032ui.custom.HorizontalActionButtonsView;
import com.iMe.p032ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.p032ui.wallet.crypto.tutorial.CreateWalletTutorialFragment;
import com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.p032ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog;
import com.iMe.p032ui.wallet.swap.WalletSwapProtocolsFragment;
import com.iMe.p032ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.p032ui.wallet.transaction.WalletTransactionsFragment;
import com.iMe.storage.common.AppConfiguration$Crypto;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.provider.crypto.SmartContractProvider;
import com.iMe.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.helper.binancepay.BinancePayHelper;
import com.iMe.utils.helper.wallet.CryptoHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentWalletTokenDetailsBinding;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.TextDetailCell;
import org.telegram.p048ui.Components.QRCodeBottomSheet;
import org.telegram.p048ui.Components.ViewPagerFixed;
import org.telegram.p048ui.ManageLinksActivity;
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment */
/* loaded from: classes3.dex */
public final class WalletTokenDetailsFragment extends WalletAuthFragment implements WalletTokenDetailsView, NavigationViewConfiguration, TabbedViewPagerDelegate<TabbedFragmentPage<MvpFragment>> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletTokenDetailsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletTokenDetailsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final TokenDetailsArgs args;
    private final ResettableLazy binding$delegate;
    private float headerMaxTranslationY;
    private boolean isAppBarCollapsed;
    private boolean isProfitTextColored;
    private final Lazy navigationRouter$delegate;
    private final Lazy pageTabs$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private String statusTextColorKey;
    private final Lazy tokenBuyCoordinator$delegate;

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public /* synthetic */ void bind(TabbedFragmentPage<MvpFragment> tabbedFragmentPage, int i) {
        TabbedViewPagerDelegate.CC.$default$bind(this, tabbedFragmentPage, i);
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public BaseFragment getParentFragment() {
        return this;
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public /* synthetic */ View getScrollableHeaderView() {
        return TabbedViewPagerDelegate.CC.$default$getScrollableHeaderView(this);
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public /* synthetic */ SwipeRefreshLayout getSwipeRefreshLayout() {
        return TabbedViewPagerDelegate.CC.$default$getSwipeRefreshLayout(this);
    }

    public WalletTokenDetailsFragment(TokenDetailsArgs args) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        WalletTokenDetailsFragment$presenter$2 walletTokenDetailsFragment$presenter$2 = new WalletTokenDetailsFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletTokenDetailsPresenter.class.getName() + ".presenter", walletTokenDetailsFragment$presenter$2);
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new WalletTokenDetailsFragment$special$$inlined$inject$default$1(this, null, null));
        this.tokenBuyCoordinator$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new WalletTokenDetailsFragment$special$$inlined$inject$default$2(this, NavigationModuleKt.getCOMMON_TABS_NAVIGATOR(), WalletTokenDetailsFragment$navigationRouter$2.INSTANCE));
        this.navigationRouter$delegate = lazy2;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletTokenDetailsFragment$binding$2(this), 1, (Object) null);
        lazy3 = LazyKt__LazyJVMKt.lazy(new WalletTokenDetailsFragment$pageTabs$2(this));
        this.pageTabs$delegate = lazy3;
        this.statusTextColorKey = "windowBackgroundWhiteBlueText";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletTokenDetailsPresenter getPresenter() {
        return (WalletTokenDetailsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final TokenBuyCoordinator getTokenBuyCoordinator() {
        return (TokenBuyCoordinator) this.tokenBuyCoordinator$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NavigationRouter<MvpFragment> getNavigationRouter() {
        return (NavigationRouter) this.navigationRouter$delegate.getValue();
    }

    private final ForkFragmentWalletTokenDetailsBinding getBinding() {
        return (ForkFragmentWalletTokenDetailsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final List<WalletTokenDetailsNavigationTab> getPageTabs() {
        return (List) this.pageTabs$delegate.getValue();
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupCollapsingToolbar();
        setupColors();
        setupListeners();
        setupRootView();
        setupTexts();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p032ui.base.WalletAuthFragment, com.iMe.p032ui.base.mvp.MvpFragment
    public void onViewReady() {
        super.onViewReady();
        getPresenter().setupNavigationRouter();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onActivityResultFragment(i, i2, intent);
        }
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNavigationRouter().clean();
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onDestroyView() {
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onDestroyView();
        }
        super.onDestroyView();
    }

    @Override // com.iMe.p032ui.base.WalletAuthFragment, com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onResume();
        }
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onPause() {
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onPause();
        }
        super.onPause();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return getBinding().transactionsPager.isSwipeBackEnabled();
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void setupTransactionsScreen(TokenDetailsArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        if (args instanceof TokenDetailsArgs.Binance) {
            AppCompatImageView imageCoinIcon = binding.imageCoinIcon;
            Intrinsics.checkNotNullExpressionValue(imageCoinIcon, "imageCoinIcon");
            TokenDetailsArgs.Binance binance = (TokenDetailsArgs.Binance) args;
            ViewExtKt.loadImage(imageCoinIcon, binance.getToken().getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader());
            binding.textAccountTitle.setText(binance.getToken().getAssetName());
            binding.textAccountBalance.setText(BinanceTokenBalanceExtKt.getTotalBalanceShortText(binance.getToken()));
        } else if (args instanceof TokenDetailsArgs.Crypto) {
            TokenDetailsArgs.Crypto crypto = (TokenDetailsArgs.Crypto) args;
            binding.imageCoinIcon.setImageResource(TokenInfoExtKt.getLogo(crypto.getToken().getBalance().getInfo(), crypto.getToken().getBalance().getNetworkType()));
            binding.textAccountTitle.setText(getResourceManager().getString(crypto.getToken().getBalance().getInfo().getFullName()));
            binding.textAccountBalance.setText(TokenBalanceExtKt.getTotalBalanceShortText(crypto.getToken().getBalance(), getResourceManager()));
        }
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void setupStakingDetailsScreen(int i, String titleText, String balanceText, String annualTitleText, String annualValueText, String profitText, boolean z, StakingProgrammeStatus status) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(balanceText, "balanceText");
        Intrinsics.checkNotNullParameter(annualTitleText, "annualTitleText");
        Intrinsics.checkNotNullParameter(annualValueText, "annualValueText");
        Intrinsics.checkNotNullParameter(profitText, "profitText");
        Intrinsics.checkNotNullParameter(status, "status");
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        binding.imageCoinIcon.setImageResource(i);
        binding.textAccountTitle.setText(titleText);
        binding.textAccountBalance.setText(balanceText);
        LinearLayoutCompat linearStakingInfo = binding.linearStakingInfo;
        Intrinsics.checkNotNullExpressionValue(linearStakingInfo, "linearStakingInfo");
        ViewExtKt.visible(linearStakingInfo);
        binding.textStakingInfo.setText(getResourceManager().getString(C3316R.string.staking_details_info));
        binding.imageStakingInfo.setImageResource(C3316R.C3318drawable.msg_info);
        binding.viewAnnualPercentageCell.setTextAndValue(annualValueText, annualTitleText, true);
        TextDetailCell textDetailCell = binding.viewProfitCell;
        textDetailCell.setTextAndValue(profitText, getResourceManager().getString(C3316R.string.staking_details_profit), true);
        this.isProfitTextColored = z;
        textDetailCell.getTextView().setTextColor(getThemedColor(this.isProfitTextColored ? "chat_inDownCall" : "windowBackgroundWhiteBlackText"));
        this.statusTextColorKey = status.getColorKey();
        TextDetailCell textDetailCell2 = binding.viewFinishedCell;
        textDetailCell2.setTextAndValue(getResourceManager().getString(status.getTextResId()), getResourceManager().getString(C3316R.string.wallet_transaction_details_status_title), false);
        textDetailCell2.getTextView().setTextColor(getThemedColor(this.statusTextColorKey));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void setupHorizontalActionButtons(List<HorizontalActionButtonItem> actionsItems) {
        Intrinsics.checkNotNullParameter(actionsItems, "actionsItems");
        getBinding().horizontalActionButtons.initButtons(actionsItems);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void showStatisticDialog(StatisticDiagramModel distributionDiagramModel) {
        Intrinsics.checkNotNullParameter(distributionDiagramModel, "distributionDiagramModel");
        showDialog(DialogsFactoryKt.createDiagramDialog$default(this, distributionDiagramModel, null, null, 6, null));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void openBuyScreen(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        TokenBuyCoordinator.start$default(tokenBuyCoordinator, parentLayout, args, false, 4, null);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void openSendScreen(TokenCode code, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        presentFragment(ManageLinksActivity.newInstanceForWalletTransfer(new TransferScreenArgs(code, null, null, null, networkType, 14, null)));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void openReceiveScreen(TokenCode code, String address, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        showQrReceiveDialog(code, address, networkType);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void openStakingReplenishScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingReplenish(stakingDetails, null));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void openStakingProfitScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingProfit(stakingDetails));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void openStakingWithdrawScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingWithdraw(stakingDetails));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void openStakingCalculatorScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingCalculator(stakingDetails));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void openBinanceReplenishScreen(TokenCode token, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        presentFragment(ManageLinksActivity.newInstanceForBinanceReplenish(new TransferScreenArgs(token, null, null, null, networkType, 14, null)));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void openBinanceSwapScreen(SelectableToken token) {
        Intrinsics.checkNotNullParameter(token, "token");
        presentFragment(WalletSwapProcessFragment.Companion.newInstance(new WalletSwapProcessFragment.ScreenType.Binance(token, null, 2, null)));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void openBinanceReceiveScreen(SelectableToken token) {
        Intrinsics.checkNotNullParameter(token, "token");
        presentFragment(ManageLinksActivity.newInstanceForBinancePay(new BinancePayScreenArgs(token, null, 2, null)));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void showRequiredVerifyDialog() {
        showDialog(DialogsFactoryKt.createBinanceVerificationRequiredDialog(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRequiredWalletCreatedDialog$lambda$9(Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "$action");
        action.invoke();
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void showRequiredWalletCreatedDialog(final Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "action");
        showDialog(DialogsFactoryKt.createWalletCreatedRequiredDialog(this, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda5
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTokenDetailsFragment.showRequiredWalletCreatedDialog$lambda$9(Callbacks$Callback.this);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAnimatedDialog$lambda$10(Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "$action");
        action.invoke();
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showAnimatedDialog(AnimatedSpannableDialogModel model, final Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        showDialog(DialogsFactoryKt.createDialogWithAnimation(this, model, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda4
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTokenDetailsFragment.showAnimatedDialog$lambda$10(Callbacks$Callback.this);
            }
        }));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showSelectOptionsDialog(String title, String[] items, DialogInterface.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(listener, "listener");
        showDialog(DialogsFactoryKt.createOptionsBottomSheetDialog(this, title, items, listener));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showAlreadyCreatedWalletWarningDialog(DialogModel dialogModel, String walletAddress, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, dialogModel, action, null, 8, null);
        DialogExtKt.makeClickableDescription$default(createDialog$default, null, walletAddress, new C2222xbd1ed966(walletAddress), 1, null);
        showDialog(createDialog$default);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, dialogModel, action, null, 8, null));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openImportWalletScreen(String password, String str) {
        Intrinsics.checkNotNullParameter(password, "password");
        CreateWalletFragment.Companion companion = CreateWalletFragment.Companion;
        if (str == null) {
            str = "";
        }
        presentFragment(companion.newInstance(new CreateWalletScreenType.Import(str, password)));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletScreen(List<String> words, String password) {
        Intrinsics.checkNotNullParameter(words, "words");
        Intrinsics.checkNotNullParameter(password, "password");
        presentFragment(CreateWalletTutorialFragment.Companion.newInstance(new TutorialType.Backup(new WalletTokenDetailsFragment$openCreateWalletScreen$1(words, password))));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void setupRankBadge(boolean z, AccountLevel accountLevel) {
        Intrinsics.checkNotNullParameter(accountLevel, "accountLevel");
        AccountLevelBadgeView setupRankBadge$lambda$12 = getBinding().accountRankBadge;
        Intrinsics.checkNotNullExpressionValue(setupRankBadge$lambda$12, "setupRankBadge$lambda$12");
        setupRankBadge$lambda$12.setVisibility(z ? 0 : 8);
        setupRankBadge$lambda$12.setAccountLevel(accountLevel);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void showAccountLevelDialog(AccountLevelInformation level) {
        Intrinsics.checkNotNullParameter(level, "level");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(new AccountLevelAlert(parentActivity, level, new AccountLevelAlert.OnVisibilityChangedListener() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$showAccountLevelDialog$1
            @Override // com.iMe.fork.p025ui.dialog.AccountLevelAlert.OnVisibilityChangedListener
            public void onChanged(boolean z) {
                WalletTokenDetailsPresenter presenter;
                presenter = WalletTokenDetailsFragment.this.getPresenter();
                presenter.changeRankVisibility(z);
            }
        }).create());
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void showLevelRequiredDialog(AccountLevel minimalRank) {
        Intrinsics.checkNotNullParameter(minimalRank, "minimalRank");
        DialogsFactoryKt.showStakingLevelRequiredDialog(this, getResourceManager(), minimalRank, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTokenDetailsFragment.showLevelRequiredDialog$lambda$13(WalletTokenDetailsFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLevelRequiredDialog$lambda$13(WalletTokenDetailsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.presentFragment(WalletSwapProtocolsFragment.Companion.newInstance(ScreenType.FULLSCREEN, TokenCode.LIME));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void showStakingConditionsDialog(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        showDialog(StakingConditionsBottomSheetDialog.Companion.newInstance(stakingDetails, this));
    }

    @Override // com.iMe.p032ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void onTabSelected(int i) {
        TabbedViewPager tabbedViewPager = getBinding().transactionsPager;
        if (tabbedViewPager.getPager().getCurrentPosition() != i) {
            tabbedViewPager.getPager().setPosition(i);
            tabbedViewPager.getTabsView().selectTabWithId(getPageTabs().get(i).getId(), 1.0f);
        }
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsView
    public void onSetupNavigationRouter() {
        getNavigationRouter().init(new NavigationConfiguration<>(this, getPageTabs()));
        TabbedViewPager tabbedViewPager = getBinding().transactionsPager;
        tabbedViewPager.init(this, ViewPagerFixed.TabsView.TabType.TITLE);
        ViewPagerFixed.TabsView tabsView = tabbedViewPager.getTabsView();
        tabsView.setElevation(AndroidUtilities.m50dp(2));
        tabsView.setColors("profile_tabSelectedLine", "profile_tabSelectedText", "profile_tabText", "profile_tabSelector", "actionBarActionModeDefault");
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public List<TabbedFragmentPage<MvpFragment>> getPages() {
        int collectionSizeOrDefault;
        List<WalletTokenDetailsNavigationTab> pageTabs = getPageTabs();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pageTabs, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WalletTokenDetailsNavigationTab walletTokenDetailsNavigationTab : pageTabs) {
            arrayList.add(walletTokenDetailsNavigationTab.getPage());
        }
        return arrayList;
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public void onPageChanged(TabbedFragmentPage<MvpFragment> newPage, TabbedFragmentPage<MvpFragment> oldPage, int i, int i2) {
        Intrinsics.checkNotNullParameter(newPage, "newPage");
        Intrinsics.checkNotNullParameter(oldPage, "oldPage");
        oldPage.getFragment().onPause();
        newPage.getFragment().onResume();
        getPresenter().selectTab(i);
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        TabbedViewPager tabbedViewPager = getBinding().transactionsPager;
        Intrinsics.checkNotNullExpressionValue(tabbedViewPager, "binding.transactionsPager");
        return tabbedViewPager;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(binding.getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda10
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletTokenDetailsFragment.this.setupColors();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"), new ThemeDescription(binding.viewAnnualPercentageCell, 0, new Class[]{TextDetailCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(binding.viewAnnualPercentageCell, 0, new Class[]{TextDetailCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"), new ThemeDescription(binding.viewProfitCell, 0, new Class[]{TextDetailCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(binding.viewProfitCell, 0, new Class[]{TextDetailCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"), new ThemeDescription(binding.viewFinishedCell, 0, new Class[]{TextDetailCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(binding.viewFinishedCell, 0, new Class[]{TextDetailCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, this.statusTextColorKey));
        arrayListOf.addAll(binding.transactionsPager.getThemeDescription());
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            arrayListOf.addAll(mvpFragment.getThemeDescriptions());
        }
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<WalletTokenDetailsNavigationTab> initPageTabs() {
        ArrayList arrayList;
        List<TransactionsGroup> listOfNotNull;
        int collectionSizeOrDefault;
        List<BinanceTransactionsGroup> listOf;
        int collectionSizeOrDefault2;
        TokenDetailsArgs tokenDetailsArgs = this.args;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Binance) {
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new BinanceTransactionsGroup[]{BinanceTransactionsGroup.All.INSTANCE, BinanceTransactionsGroup.Incoming.INSTANCE, BinanceTransactionsGroup.Outgoing.INSTANCE});
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10);
            arrayList = new ArrayList(collectionSizeOrDefault2);
            for (BinanceTransactionsGroup binanceTransactionsGroup : listOf) {
                arrayList.add(new WalletTokenDetailsNavigationTab(binanceTransactionsGroup.getId(), new TabbedFragmentPage(getResourceManager().getString(binanceTransactionsGroup.getNameResId()), 0, WalletBinancePayHistoryFragment.Companion.newInstance(new WalletBinancePayHistoryFragment.ScreenType.TokenDetailsTab(binanceTransactionsGroup), ((TokenDetailsArgs.Binance) this.args).getToken().getAsset()), new WalletTokenDetailsFragment$initPageTabs$1$1(this, binanceTransactionsGroup), 2, null)));
            }
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Crypto) {
            TransactionsGroup[] transactionsGroupArr = new TransactionsGroup[4];
            transactionsGroupArr[0] = TransactionsGroup.All.INSTANCE;
            transactionsGroupArr[1] = TransactionsGroup.Incoming.INSTANCE;
            transactionsGroupArr[2] = TransactionsGroup.Outgoing.INSTANCE;
            transactionsGroupArr[3] = getCryptoPreferenceHelper().getCurrentBlockchainType() == BlockchainType.EVM ? TransactionsGroup.Swap.INSTANCE : null;
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(transactionsGroupArr);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(listOfNotNull, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (TransactionsGroup transactionsGroup : listOfNotNull) {
                arrayList.add(new WalletTokenDetailsNavigationTab(transactionsGroup.getId(), new TabbedFragmentPage(getResourceManager().getString(transactionsGroup.getNameResId()), 0, WalletTransactionsFragment.Companion.newInstance(new WalletTransactionsFragment.ScreenType.TokenDetailsTab(transactionsGroup), ((TokenDetailsArgs.Crypto) this.args).getToken().getBalance().getCode()), new WalletTokenDetailsFragment$initPageTabs$2$1(this, transactionsGroup), 2, null)));
            }
        } else if (!(tokenDetailsArgs instanceof TokenDetailsArgs.Staking)) {
            throw new NoWhenBranchMatchedException();
        } else {
            StakingOperationsGroup[] values = StakingOperationsGroup.values();
            arrayList = new ArrayList(values.length);
            for (StakingOperationsGroup stakingOperationsGroup : values) {
                arrayList.add(new WalletTokenDetailsNavigationTab(stakingOperationsGroup.getId(), new TabbedFragmentPage(getResourceManager().getString(stakingOperationsGroup.getNameResId()), 0, WalletTransactionsFragment.Companion.newInstance(new WalletTransactionsFragment.ScreenType.StakingDetailsTab(((TokenDetailsArgs.Staking) this.args).getStakingDetails(), stakingOperationsGroup.getStakingOperationType()), TokenCode.Companion.map(((TokenDetailsArgs.Staking) this.args).getStakingDetails().getTokenTicker())), new WalletTokenDetailsFragment$initPageTabs$3$1(this, stakingOperationsGroup), 2, null)));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        SwipeRefreshLayout root = getBinding().getRoot();
        root.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
        root.setColorSchemeColors(getThemedColor("chats_actionBackground"));
        binding.dividerStaking.setBackgroundColor(getThemedColor("windowBackgroundGray"));
        binding.linearStakingInfo.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
        AppCompatTextView setupColors$lambda$32$lambda$25 = binding.textStakingInfo;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$32$lambda$25, "setupColors$lambda$32$lambda$25");
        ViewExtKt.withMediumTypeface(setupColors$lambda$32$lambda$25);
        setupColors$lambda$32$lambda$25.setTextColor(getThemedColor("profile_tabSelectedText"));
        AppCompatImageView setupColors$lambda$32$lambda$26 = binding.imageStakingInfo;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$32$lambda$26, "setupColors$lambda$32$lambda$26");
        ViewExtKt.setImageColor(setupColors$lambda$32$lambda$26, getThemedColor("profile_tabSelectedText"));
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$32$lambda$26);
        TextView textView = binding.viewAnnualPercentageCell.getTextView();
        Intrinsics.checkNotNullExpressionValue(textView, "viewAnnualPercentageCell.textView");
        ViewExtKt.withMediumTypeface(textView);
        TextView setupColors$lambda$32$lambda$27 = binding.viewProfitCell.getTextView();
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$32$lambda$27, "setupColors$lambda$32$lambda$27");
        ViewExtKt.withMediumTypeface(setupColors$lambda$32$lambda$27);
        setupColors$lambda$32$lambda$27.setTextColor(getThemedColor(this.isProfitTextColored ? "chat_inDownCall" : "windowBackgroundWhiteBlackText"));
        TextView setupColors$lambda$32$lambda$28 = binding.viewFinishedCell.getTextView();
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$32$lambda$28, "setupColors$lambda$32$lambda$28");
        ViewExtKt.withMediumTypeface(setupColors$lambda$32$lambda$28);
        setupColors$lambda$32$lambda$28.setTextColor(getThemedColor(this.statusTextColorKey));
        binding.appbar.setBackgroundColor(getThemedColor("actionBarDefault"));
        binding.constraintLayoutHeader.setBackgroundColor(getThemedColor("actionBarDefault"));
        binding.dividerActionButtons.setBackgroundColor(getThemedColor("windowBackgroundGray"));
        binding.headerUnderlay.setBackgroundColor(getThemedColor("actionBarActionModeDefault"));
        binding.linearContent.setBackgroundColor(getThemedColor("actionBarActionModeDefault"));
        binding.linearHeader.setBackgroundColor(getThemedColor("actionBarDefault"));
        HorizontalActionButtonsView horizontalActionButtonsView = binding.horizontalActionButtons;
        horizontalActionButtonsView.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
        horizontalActionButtonsView.setupColors();
        ActionBarMenuItem setupColors$lambda$32$lambda$30 = binding.itemMoreOptions;
        setupColors$lambda$32$lambda$30.redrawPopup(getThemedColor("actionBarDefaultSubmenuBackground"));
        setupColors$lambda$32$lambda$30.setPopupItemsColor(getThemedColor("actionBarDefaultSubmenuItem"), false);
        setupColors$lambda$32$lambda$30.setPopupItemsColor(getThemedColor("actionBarDefaultSubmenuItemIcon"), true);
        setupColors$lambda$32$lambda$30.setupPopupRadialSelectors(getThemedColor("listSelectorSDK21"));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$32$lambda$30, "setupColors$lambda$32$lambda$30");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$32$lambda$30);
        AppCompatTextView textAccountBalance = binding.textAccountBalance;
        Intrinsics.checkNotNullExpressionValue(textAccountBalance, "textAccountBalance");
        ViewExtKt.withMediumTypeface(textAccountBalance);
        AppCompatTextView setupColors$lambda$32$lambda$31 = binding.textTransactions;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$32$lambda$31, "setupColors$lambda$32$lambda$31");
        ViewExtKt.withMediumTypeface(setupColors$lambda$32$lambda$31);
        setupColors$lambda$32$lambda$31.setTextColor(getThemedColor("profile_tabSelectedText"));
        setupCollapsingToolbarColors();
    }

    private final void setupCollapsingToolbarColors() {
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        if (this.isAppBarCollapsed) {
            binding.itemBack.setIconColor(getThemedColor("actionBarActionModeDefaultIcon"));
            binding.itemMoreOptions.setIconColor(getThemedColor("actionBarActionModeDefaultIcon"));
            binding.textAccountTitle.setTextColor(getThemedColor("actionBarActionModeDefaultIcon"));
            binding.textAccountBalance.setTextColor(getThemedColor("actionBarActionModeDefaultIcon"));
            return;
        }
        binding.itemBack.setIconColor(getThemedColor("actionBarDefaultIcon"));
        binding.itemMoreOptions.setIconColor(getThemedColor("actionBarDefaultIcon"));
        binding.textAccountTitle.setTextColor(getThemedColor("actionBarDefaultTitle"));
        binding.textAccountBalance.setTextColor(getThemedColor("actionBarDefaultTitle"));
    }

    private final void setupActionBar() {
        this.actionBar.setAddToContainer(false);
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        ActionBarMenuItem setupActionBar$lambda$39$lambda$35 = binding.itemBack;
        setupActionBar$lambda$39$lambda$35.setLongClickEnabled(false);
        setupActionBar$lambda$39$lambda$35.setIcon(C3316R.C3318drawable.ic_ab_back);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$39$lambda$35, "setupActionBar$lambda$39$lambda$35");
        ViewExtKt.setCircleRippleBackground(setupActionBar$lambda$39$lambda$35);
        setupActionBar$lambda$39$lambda$35.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletTokenDetailsFragment.setupActionBar$lambda$39$lambda$35$lambda$34(WalletTokenDetailsFragment.this, view);
            }
        });
        setupActionBar$lambda$39$lambda$35.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3316R.string.AccDescrGoBack));
        final ActionBarMenuItem setupActionBar$lambda$39$lambda$38 = binding.itemMoreOptions;
        setupActionBar$lambda$39$lambda$38.setLongClickEnabled(false);
        setupActionBar$lambda$39$lambda$38.setSubMenuOpenSide(2);
        setupActionBar$lambda$39$lambda$38.setIcon(C3316R.C3318drawable.ic_ab_other);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$39$lambda$38, "setupActionBar$lambda$39$lambda$38");
        ViewExtKt.setCircleRippleBackground(setupActionBar$lambda$39$lambda$38);
        setupMenuItems(setupActionBar$lambda$39$lambda$38);
        setupActionBar$lambda$39$lambda$38.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletTokenDetailsFragment.setupActionBar$lambda$39$lambda$38$lambda$36(ActionBarMenuItem.this, view);
            }
        });
        setupActionBar$lambda$39$lambda$38.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda9
            @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                WalletTokenDetailsFragment.setupActionBar$lambda$39$lambda$38$lambda$37(WalletTokenDetailsFragment.this, i);
            }
        });
        setupActionBar$lambda$39$lambda$38.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3316R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupActionBar$lambda$39$lambda$35$lambda$34(WalletTokenDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupActionBar$lambda$39$lambda$38$lambda$36(ActionBarMenuItem this_with, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupActionBar$lambda$39$lambda$38$lambda$37(WalletTokenDetailsFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSubItemClick(i);
    }

    private final void setupMenuItems(ActionBarMenuItem actionBarMenuItem) {
        TokenDetailsArgs tokenDetailsArgs = this.args;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Binance) {
            actionBarMenuItem.addSubItem(IdFabric$Menu.TOKEN_STATISTICS, C3316R.C3318drawable.fork_ic_token_statistic, getResourceManager().getString(C3316R.string.wallet_token_details_distribution_action));
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Crypto) {
            TokenBalance balance = ((TokenDetailsArgs.Crypto) tokenDetailsArgs).getToken().getBalance();
            if (TokenBalanceExtKt.isWithSmartContractAddress(balance)) {
                actionBarMenuItem.addSubItem(IdFabric$Menu.TOKEN_SMART_CONTRACT_ADDRESS, C3316R.C3318drawable.fork_ic_etherscan, getResourceManager().getString(C3316R.string.wallet_transaction_details_action_view_smart_contract));
            }
            if (TokenBalanceExtKt.isWithWebsite(balance)) {
                actionBarMenuItem.addSubItem(IdFabric$Menu.TOKEN_SITE, C3316R.C3318drawable.fork_ic_web_26, getResourceManager().getString(C3316R.string.wallet_token_details_site_action));
            }
            Unit unit = Unit.INSTANCE;
        } else if (!(tokenDetailsArgs instanceof TokenDetailsArgs.Staking)) {
            throw new NoWhenBranchMatchedException();
        } else {
            actionBarMenuItem.addSubItem(IdFabric$Menu.STAKING_CONTRACT, C3316R.C3318drawable.fork_ic_etherscan, getResourceManager().getString(C3316R.string.staking_details_contract_action));
            actionBarMenuItem.addSubItem(IdFabric$Menu.STAKING_WEBSITE, C3316R.C3318drawable.fork_ic_web_26, getResourceManager().getString(C3316R.string.wallet_token_details_site_action));
        }
    }

    private final void setupListeners() {
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        AccountLevelBadgeView accountRankBadge = binding.accountRankBadge;
        Intrinsics.checkNotNullExpressionValue(accountRankBadge, "accountRankBadge");
        ViewExtKt.safeThrottledClick$default(accountRankBadge, 0L, new WalletTokenDetailsFragment$setupListeners$1$1(this), 1, null);
        AppCompatImageView imageStakingInfo = binding.imageStakingInfo;
        Intrinsics.checkNotNullExpressionValue(imageStakingInfo, "imageStakingInfo");
        ViewExtKt.safeThrottledClick$default(imageStakingInfo, 0L, new WalletTokenDetailsFragment$setupListeners$1$2(this), 1, null);
        binding.getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda2
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletTokenDetailsFragment.setupListeners$lambda$43$lambda$42(WalletTokenDetailsFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$43$lambda$42(WalletTokenDetailsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().reload();
    }

    private final void setupTexts() {
        getBinding().textTransactions.setText(getResourceManager().getString(C3316R.string.wallet_token_details_transactions));
    }

    private final void setupRootView() {
        SwipeRefreshLayout root = getBinding().getRoot();
        root.setEnabled(!(this.args instanceof TokenDetailsArgs.Binance));
        int i = AndroidUtilities.statusBarHeight;
        root.setProgressViewOffset(false, i, i * 2);
    }

    private final void setupCollapsingToolbar() {
        ViewGroup.LayoutParams layoutParams;
        final Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
        final Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        final ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        MaterialToolbar toolbar = binding.toolbar;
        Intrinsics.checkNotNullExpressionValue(toolbar, "toolbar");
        toolbar.setPadding(toolbar.getPaddingLeft(), AndroidUtilities.statusBarHeight, toolbar.getPaddingRight(), toolbar.getPaddingBottom());
        ConstraintLayout setupCollapsingToolbar$lambda$61$lambda$50 = binding.constraintLayoutHeader;
        Intrinsics.checkNotNullExpressionValue(setupCollapsingToolbar$lambda$61$lambda$50, "setupCollapsingToolbar$lambda$61$lambda$50");
        setupCollapsingToolbar$lambda$61$lambda$50.setPadding(setupCollapsingToolbar$lambda$61$lambda$50.getPaddingLeft(), binding.constraintLayoutHeader.getPaddingTop() + AndroidUtilities.statusBarHeight, setupCollapsingToolbar$lambda$61$lambda$50.getPaddingRight(), setupCollapsingToolbar$lambda$61$lambda$50.getPaddingBottom());
        if (!ViewCompat.isLaidOut(setupCollapsingToolbar$lambda$61$lambda$50) || setupCollapsingToolbar$lambda$61$lambda$50.isLayoutRequested()) {
            setupCollapsingToolbar$lambda$61$lambda$50.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    ViewGroup.LayoutParams layoutParams2;
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.removeOnLayoutChangeListener(this);
                    MaterialToolbar toolbar2 = ForkFragmentWalletTokenDetailsBinding.this.toolbar;
                    Intrinsics.checkNotNullExpressionValue(toolbar2, "toolbar");
                    ViewGroup.LayoutParams layoutParams3 = toolbar2.getLayoutParams();
                    Objects.requireNonNull(layoutParams3, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                    layoutParams3.height += AndroidUtilities.statusBarHeight;
                    toolbar2.setLayoutParams(layoutParams3);
                    AppCompatImageView appCompatImageView = ForkFragmentWalletTokenDetailsBinding.this.imageCoinIcon;
                    appCompatImageView.setPivotX(appCompatImageView.getMeasuredHeight());
                    appCompatImageView.setPivotY(appCompatImageView.getPivotX() / 2);
                    ForkFragmentWalletTokenDetailsBinding forkFragmentWalletTokenDetailsBinding = ForkFragmentWalletTokenDetailsBinding.this;
                    View view2 = forkFragmentWalletTokenDetailsBinding.headerUnderlay;
                    int measuredHeight = forkFragmentWalletTokenDetailsBinding.toolbar.getMeasuredHeight() + AndroidUtilities.statusBarHeight + AndroidUtilities.m50dp(10);
                    Intrinsics.checkNotNullExpressionValue(view2, "setupCollapsingToolbar$l…da$50$lambda$49$lambda$48");
                    ViewGroup.LayoutParams layoutParams4 = view2.getLayoutParams();
                    Objects.requireNonNull(layoutParams4, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                    layoutParams4.height = measuredHeight;
                    view2.setLayoutParams(layoutParams4);
                    view2.setPivotY(measuredHeight);
                    view2.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    Ref$FloatRef ref$FloatRef3 = ref$FloatRef;
                    ActionBarMenuItem itemBack = ForkFragmentWalletTokenDetailsBinding.this.itemBack;
                    Intrinsics.checkNotNullExpressionValue(itemBack, "itemBack");
                    ref$FloatRef3.element = ((itemBack.getLayoutParams() instanceof ViewGroup.MarginLayoutParams ? MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) layoutParams2) : 0) * 3) + ForkFragmentWalletTokenDetailsBinding.this.itemBack.getWidth();
                    this.headerMaxTranslationY = ForkFragmentWalletTokenDetailsBinding.this.dividerActionButtons.getMeasuredHeight() + ForkFragmentWalletTokenDetailsBinding.this.horizontalActionButtons.getMeasuredHeight() + ForkFragmentWalletTokenDetailsBinding.this.linearStakingInfo.getMeasuredHeight();
                }
            });
        } else {
            MaterialToolbar toolbar2 = binding.toolbar;
            Intrinsics.checkNotNullExpressionValue(toolbar2, "toolbar");
            ViewGroup.LayoutParams layoutParams2 = toolbar2.getLayoutParams();
            Objects.requireNonNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            layoutParams2.height += AndroidUtilities.statusBarHeight;
            toolbar2.setLayoutParams(layoutParams2);
            AppCompatImageView appCompatImageView = binding.imageCoinIcon;
            appCompatImageView.setPivotX(appCompatImageView.getMeasuredHeight());
            appCompatImageView.setPivotY(appCompatImageView.getPivotX() / 2);
            View view = binding.headerUnderlay;
            int measuredHeight = binding.toolbar.getMeasuredHeight() + AndroidUtilities.statusBarHeight + AndroidUtilities.m50dp(10);
            Intrinsics.checkNotNullExpressionValue(view, "setupCollapsingToolbar$l…da$50$lambda$49$lambda$48");
            ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
            Objects.requireNonNull(layoutParams3, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            layoutParams3.height = measuredHeight;
            view.setLayoutParams(layoutParams3);
            view.setPivotY(measuredHeight);
            view.setScaleY(BitmapDescriptorFactory.HUE_RED);
            ActionBarMenuItem itemBack = binding.itemBack;
            Intrinsics.checkNotNullExpressionValue(itemBack, "itemBack");
            ref$FloatRef.element = ((itemBack.getLayoutParams() instanceof ViewGroup.MarginLayoutParams ? MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) layoutParams) : 0) * 3) + binding.itemBack.getWidth();
            this.headerMaxTranslationY = binding.dividerActionButtons.getMeasuredHeight() + binding.horizontalActionButtons.getMeasuredHeight() + binding.linearStakingInfo.getMeasuredHeight();
        }
        AppCompatTextView appCompatTextView = binding.textAccountBalance;
        appCompatTextView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        appCompatTextView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        binding.appbar.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda3
            @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
                WalletTokenDetailsFragment.setupCollapsingToolbar$lambda$61$lambda$60(ForkFragmentWalletTokenDetailsBinding.this, ref$FloatRef2, this, ref$FloatRef, ref$BooleanRef, appBarLayout, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCollapsingToolbar$lambda$61$lambda$60(ForkFragmentWalletTokenDetailsBinding this_with, Ref$FloatRef lastScrollPercent, WalletTokenDetailsFragment this$0, Ref$FloatRef collapsedTranslationX, final Ref$BooleanRef isHeaderUnderlayAnimating, AppBarLayout appBarLayout, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(lastScrollPercent, "$lastScrollPercent");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(collapsedTranslationX, "$collapsedTranslationX");
        Intrinsics.checkNotNullParameter(isHeaderUnderlayAnimating, "$isHeaderUnderlayAnimating");
        float abs = Math.abs(i) / this_with.appbar.getTotalScrollRange();
        if (abs == lastScrollPercent.element) {
            return;
        }
        if (NumberExtKt.isZero(Float.valueOf(abs))) {
            this_with.horizontalActionButtons.setElevation(BitmapDescriptorFactory.HUE_RED);
            this_with.dividerActionButtons.setElevation(BitmapDescriptorFactory.HUE_RED);
        } else {
            this_with.horizontalActionButtons.setElevation(-1.0f);
            this_with.dividerActionButtons.setElevation(-1.0f);
        }
        this_with.getRoot().setEnabled(NumberExtKt.isZero(Float.valueOf(abs)) && !(this$0.args instanceof TokenDetailsArgs.Binance));
        this$0.isAppBarCollapsed = abs == 1.0f;
        lastScrollPercent.element = abs;
        float f = collapsedTranslationX.element * abs;
        float f2 = 1;
        float f3 = f2 - (abs / 3);
        AccountLevelBadgeView accountRankBadge = this_with.accountRankBadge;
        Intrinsics.checkNotNullExpressionValue(accountRankBadge, "accountRankBadge");
        if (accountRankBadge.getVisibility() == 0) {
            this_with.accountRankBadge.setAlpha(f2 - abs);
        }
        AppCompatTextView appCompatTextView = this_with.textAccountTitle;
        appCompatTextView.setTranslationX(f);
        appCompatTextView.setTranslationY(AndroidUtilities.m50dp(32) * abs);
        AppCompatTextView appCompatTextView2 = this_with.textAccountBalance;
        appCompatTextView2.setScaleX(f3);
        appCompatTextView2.setScaleY(f3);
        appCompatTextView2.setTranslationX(f);
        appCompatTextView2.setTranslationY(AndroidUtilities.m50dp(30) * abs);
        AppCompatImageView appCompatImageView = this_with.imageCoinIcon;
        appCompatImageView.setScaleX(f3);
        appCompatImageView.setScaleY(f3);
        appCompatImageView.setTranslationX(f);
        appCompatImageView.setTranslationY(AndroidUtilities.m50dp(28) * abs);
        this_with.constraintLayoutHeader.setTranslationY(this$0.headerMaxTranslationY * abs);
        this$0.setupCollapsingToolbarColors();
        View view = this_with.headerUnderlay;
        if (this$0.isAppBarCollapsed) {
            view.animate().scaleY(1.0f).setInterpolator(new AccelerateDecelerateInterpolator()).setDuration(100L);
            return;
        }
        if ((view.getScaleY() == 1.0f) && !isHeaderUnderlayAnimating.element) {
            view.animate().scaleY(BitmapDescriptorFactory.HUE_RED).setInterpolator(new AccelerateDecelerateInterpolator()).withStartAction(new Runnable() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    WalletTokenDetailsFragment.setupCollapsingToolbar$lambda$61$lambda$60$lambda$59$lambda$56(Ref$BooleanRef.this);
                }
            }).withEndAction(new Runnable() { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    WalletTokenDetailsFragment.setupCollapsingToolbar$lambda$61$lambda$60$lambda$59$lambda$57(Ref$BooleanRef.this);
                }
            }).setDuration(100L);
        } else {
            view.setScaleY(BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCollapsingToolbar$lambda$61$lambda$60$lambda$59$lambda$56(Ref$BooleanRef isHeaderUnderlayAnimating) {
        Intrinsics.checkNotNullParameter(isHeaderUnderlayAnimating, "$isHeaderUnderlayAnimating");
        isHeaderUnderlayAnimating.element = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCollapsingToolbar$lambda$61$lambda$60$lambda$59$lambda$57(Ref$BooleanRef isHeaderUnderlayAnimating) {
        Intrinsics.checkNotNullParameter(isHeaderUnderlayAnimating, "$isHeaderUnderlayAnimating");
        isHeaderUnderlayAnimating.element = false;
    }

    private final void onSubItemClick(int i) {
        TokenDetailsArgs tokenDetailsArgs = this.args;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Binance) {
            if (i == IdFabric$Menu.TOKEN_STATISTICS) {
                getPresenter().startTokenDistributionDialog(((TokenDetailsArgs.Binance) this.args).getToken());
            }
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Crypto) {
            if (i == IdFabric$Menu.TOKEN_SMART_CONTRACT_ADDRESS) {
                TokenBalance balance = ((TokenDetailsArgs.Crypto) tokenDetailsArgs).getToken().getBalance();
                NetworkType networkType = balance.getNetworkType();
                String contract = SmartContractProvider.INSTANCE.getContract(balance.getCode(), balance.getNetworkType());
                if (contract == null) {
                    contract = "";
                }
                openUrl(AppConfiguration$Crypto.formatScanTokenUrl(networkType, contract));
            } else if (i == IdFabric$Menu.TOKEN_SITE) {
                openUrl(getResourceManager().getString(((TokenDetailsArgs.Crypto) this.args).getToken().getBalance().getInfo().getSite()));
            }
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            if (i == IdFabric$Menu.STAKING_CONTRACT) {
                StakingDetailsItem stakingDetails = ((TokenDetailsArgs.Staking) tokenDetailsArgs).getStakingDetails();
                openUrl(AppConfiguration$Crypto.INSTANCE.formatScanAddressUrl(stakingDetails.getNetworkType(), stakingDetails.getContract()));
            } else if (i == IdFabric$Menu.STAKING_WEBSITE) {
                openUrl(((TokenDetailsArgs.Staking) tokenDetailsArgs).getStakingDetails().getWebsite());
            }
        }
    }

    private final void openUrl(String str) {
        Browser.openUrl(getParentActivity(), str);
    }

    private final void showQrReceiveDialog(final TokenCode tokenCode, final String str, final NetworkType networkType) {
        final Activity parentActivity = getParentActivity();
        final String formatAddressQR = CryptoHelper.formatAddressQR(str, networkType.getBlockchainType());
        QRCodeBottomSheet qRCodeBottomSheet = new QRCodeBottomSheet(str, parentActivity, formatAddressQR) { // from class: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$showQrReceiveDialog$1

            /* compiled from: WalletTokenDetailsFragment.kt */
            /* renamed from: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$showQrReceiveDialog$1$WhenMappings */
            /* loaded from: classes3.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[NetworkType.values().length];
                    try {
                        iArr[NetworkType.ETHEREUM.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[NetworkType.BINANCE_SMART_CHAIN.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // org.telegram.p048ui.Components.QRCodeBottomSheet
            public int getType() {
                return 1;
            }

            @Override // org.telegram.p048ui.Components.QRCodeBottomSheet
            public int getCustomQrCenterImageRes() {
                int i = WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()];
                if (i != 1) {
                    if (i == 2) {
                        return TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getLogo();
                    }
                    return TokenInfoExtKt.getLogo(TokenInfo.Companion.map(tokenCode), networkType);
                }
                return TokenInfo.Crypto.Ethereum.ETH.INSTANCE.getLogo();
            }
        };
        qRCodeBottomSheet.setupWalletTypeReceive(getResourceManager().getString(C3316R.string.wallet_receive_dialog_title), getResourceManager().getString(C3316R.string.wallet_receive_dialog_btn_text), str, tokenCode, networkType.getBlockchainType());
        showDialog(qRCodeBottomSheet);
    }

    /* compiled from: WalletTokenDetailsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletTokenDetailsFragment newInstance(TokenDetailsArgs args) {
            Intrinsics.checkNotNullParameter(args, "args");
            return new WalletTokenDetailsFragment(args);
        }
    }
}
