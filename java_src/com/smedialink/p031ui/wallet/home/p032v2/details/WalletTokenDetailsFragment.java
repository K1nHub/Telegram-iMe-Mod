package com.smedialink.p031ui.wallet.home.p032v2.details;

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
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.model.common.ScreenType;
import com.smedialink.model.dialog.AnimatedSpannableDialogModel;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.model.staking.StakingProgrammeStatus;
import com.smedialink.model.statistic.StatisticDiagramModel;
import com.smedialink.model.wallet.crypto.tutorial.TutorialType;
import com.smedialink.model.wallet.details.StakingOperationsGroup;
import com.smedialink.model.wallet.details.TokenDetailsArgs;
import com.smedialink.model.wallet.details.TransactionsGroup;
import com.smedialink.model.wallet.details.WalletTokenDetailsNavigationTab;
import com.smedialink.model.wallet.home.HorizontalActionButtonItem;
import com.smedialink.model.wallet.home.pay.BinancePayScreenArgs;
import com.smedialink.model.wallet.home.pay.BinanceTransactionsGroup;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.transfer.TransferScreenArgs;
import com.smedialink.navigation.common.configuration.NavigationConfiguration;
import com.smedialink.navigation.common.configuration.NavigationViewConfiguration;
import com.smedialink.navigation.common.router.base.NavigationRouter;
import com.smedialink.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.p025di.module.NavigationModuleKt;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import com.smedialink.p031ui.custom.HorizontalActionButtonsView;
import com.smedialink.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.smedialink.p031ui.wallet.crypto.tutorial.CreateWalletTutorialFragment;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.smedialink.p031ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog;
import com.smedialink.p031ui.wallet.swap.WalletSwapProtocolsFragment;
import com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.smedialink.p031ui.wallet.transaction.WalletTransactionsFragment;
import com.smedialink.storage.common.AppConfiguration$Crypto;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.model.crypto.level.AccountLevelInformation;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.provider.crypto.SmartContractProvider;
import com.smedialink.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.smedialink.utils.dialogs.DialogExtKt;
import com.smedialink.utils.dialogs.DialogUtils;
import com.smedialink.utils.dialogs.DialogsFactoryKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import com.smedialink.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.smedialink.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.smedialink.utils.helper.binancepay.BinancePayHelper;
import com.smedialink.utils.helper.wallet.CryptoHelper;
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
import org.fork.p046ui.dialog.AccountLevelAlert;
import org.fork.p046ui.view.AccountLevelBadgeView;
import org.fork.p046ui.view.TabbedViewPager;
import org.fork.utils.Callbacks$Callback;
import org.fork.utils.TabbedFragmentPage;
import org.fork.utils.TabbedViewPagerDelegate;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
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
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment */
/* loaded from: classes3.dex */
public final class WalletTokenDetailsFragment extends WalletAuthFragment implements WalletTokenDetailsView, NavigationViewConfiguration, TabbedViewPagerDelegate<TabbedFragmentPage<MvpFragment>> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletTokenDetailsFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletTokenDetailsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;", 0))};
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

    @Override // org.fork.utils.TabbedViewPagerDelegate
    public /* synthetic */ void bind(TabbedFragmentPage<MvpFragment> tabbedFragmentPage, int i) {
        TabbedViewPagerDelegate.CC.$default$bind(this, tabbedFragmentPage, i);
    }

    @Override // com.smedialink.navigation.common.configuration.NavigationViewConfiguration
    public BaseFragment getParentFragment() {
        return this;
    }

    @Override // org.fork.utils.TabbedViewPagerDelegate
    public /* synthetic */ View getScrollableHeaderView() {
        return TabbedViewPagerDelegate.CC.$default$getScrollableHeaderView(this);
    }

    @Override // org.fork.utils.TabbedViewPagerDelegate
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
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

    @Override // com.smedialink.p031ui.base.WalletAuthFragment, com.smedialink.p031ui.base.mvp.MvpFragment
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNavigationRouter().clean();
        super.onFragmentDestroy();
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onDestroyView() {
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onDestroyView();
        }
        super.onDestroyView();
    }

    @Override // com.smedialink.p031ui.base.WalletAuthFragment, com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onResume();
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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
        binding.textStakingInfo.setText(getResourceManager().getString(C3158R.string.staking_details_info));
        binding.imageStakingInfo.setImageResource(C3158R.C3160drawable.msg_info);
        binding.viewAnnualPercentageCell.setTextAndValue(annualValueText, annualTitleText, true);
        TextDetailCell textDetailCell = binding.viewProfitCell;
        textDetailCell.setTextAndValue(profitText, getResourceManager().getString(C3158R.string.staking_details_profit), true);
        this.isProfitTextColored = z;
        textDetailCell.getTextView().setTextColor(getThemedColor(this.isProfitTextColored ? "chat_inDownCall" : "windowBackgroundWhiteBlackText"));
        this.statusTextColorKey = status.getColorKey();
        TextDetailCell textDetailCell2 = binding.viewFinishedCell;
        textDetailCell2.setTextAndValue(getResourceManager().getString(status.getTextResId()), getResourceManager().getString(C3158R.string.wallet_transaction_details_status_title), false);
        textDetailCell2.getTextView().setTextColor(getThemedColor(this.statusTextColorKey));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void setupHorizontalActionButtons(List<HorizontalActionButtonItem> actionsItems) {
        Intrinsics.checkNotNullParameter(actionsItems, "actionsItems");
        getBinding().horizontalActionButtons.initButtons(actionsItems);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void showStatisticDialog(StatisticDiagramModel distributionDiagramModel) {
        Intrinsics.checkNotNullParameter(distributionDiagramModel, "distributionDiagramModel");
        showDialog(DialogsFactoryKt.createDiagramDialog$default(this, distributionDiagramModel, null, null, 6, null));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openBuyScreen(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        TokenBuyCoordinator.start$default(tokenBuyCoordinator, parentLayout, args, false, 4, null);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openSendScreen(TokenCode code, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        presentFragment(ManageLinksActivity.newInstanceForWalletTransfer(new TransferScreenArgs(code, null, null, null, networkType, 14, null)));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openReceiveScreen(TokenCode code, String address, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        showQrReceiveDialog(code, address, networkType);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openStakingReplenishScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingReplenish(stakingDetails, null));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openStakingProfitScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingProfit(stakingDetails));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openStakingWithdrawScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingWithdraw(stakingDetails));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openStakingCalculatorScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingCalculator(stakingDetails));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openBinanceReplenishScreen(TokenCode token, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        presentFragment(ManageLinksActivity.newInstanceForBinanceReplenish(new TransferScreenArgs(token, null, null, null, networkType, 14, null)));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openBinanceSwapScreen(SelectableToken token) {
        Intrinsics.checkNotNullParameter(token, "token");
        presentFragment(WalletSwapProcessFragment.Companion.newInstance(new WalletSwapProcessFragment.ScreenType.Binance(token, null, 2, null)));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openBinanceReceiveScreen(SelectableToken token) {
        Intrinsics.checkNotNullParameter(token, "token");
        presentFragment(ManageLinksActivity.newInstanceForBinancePay(new BinancePayScreenArgs(token, null, 2, null)));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void showRequiredVerifyDialog() {
        showDialog(DialogsFactoryKt.createBinanceVerificationRequiredDialog(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showRequiredWalletCreatedDialog$lambda-9  reason: not valid java name */
    public static final void m1647showRequiredWalletCreatedDialog$lambda9(Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "$action");
        action.invoke();
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void showRequiredWalletCreatedDialog(final Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "action");
        showDialog(DialogsFactoryKt.createWalletCreatedRequiredDialog(this, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda8
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTokenDetailsFragment.m1647showRequiredWalletCreatedDialog$lambda9(Callbacks$Callback.this);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showAnimatedDialog$lambda-10  reason: not valid java name */
    public static final void m1645showAnimatedDialog$lambda10(Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "$action");
        action.invoke();
    }

    @Override // com.smedialink.manager.wallet.create.WalletCreateManagerView
    public void showAnimatedDialog(AnimatedSpannableDialogModel model, final Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        showDialog(DialogsFactoryKt.createDialogWithAnimation(this, model, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda7
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTokenDetailsFragment.m1645showAnimatedDialog$lambda10(Callbacks$Callback.this);
            }
        }));
    }

    @Override // com.smedialink.manager.wallet.create.WalletCreateManagerView
    public void showSelectOptionsDialog(String title, String[] items, DialogInterface.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(listener, "listener");
        showDialog(DialogsFactoryKt.createOptionsBottomSheetDialog(this, title, items, listener));
    }

    @Override // com.smedialink.manager.wallet.create.WalletCreateManagerView
    public void showAlreadyCreatedWalletWarningDialog(DialogModel dialogModel, String walletAddress, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, dialogModel, action, null, 8, null);
        DialogExtKt.makeClickableDescription$default(createDialog$default, null, walletAddress, new C2029xbd1ed966(walletAddress), 1, null);
        Unit unit = Unit.INSTANCE;
        showDialog(createDialog$default);
    }

    @Override // com.smedialink.manager.wallet.create.WalletCreateManagerView
    public void openImportWalletScreen(String password, String str) {
        Intrinsics.checkNotNullParameter(password, "password");
        CreateWalletFragment.Companion companion = CreateWalletFragment.Companion;
        if (str == null) {
            str = "";
        }
        presentFragment(companion.newInstance(new CreateWalletFragment.ScreenType.Import(str, password)));
    }

    @Override // com.smedialink.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletScreen(List<String> words, String password) {
        Intrinsics.checkNotNullParameter(words, "words");
        Intrinsics.checkNotNullParameter(password, "password");
        presentFragment(CreateWalletTutorialFragment.Companion.newInstance(new TutorialType.Backup(new WalletTokenDetailsFragment$openCreateWalletScreen$1(words, password))));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void setupRankBadge(boolean z, AccountLevel accountLevel) {
        Intrinsics.checkNotNullParameter(accountLevel, "accountLevel");
        AccountLevelBadgeView accountLevelBadgeView = getBinding().accountRankBadge;
        Intrinsics.checkNotNullExpressionValue(accountLevelBadgeView, "");
        accountLevelBadgeView.setVisibility(z ? 0 : 8);
        accountLevelBadgeView.setAccountLevel(accountLevel);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void showAccountLevelDialog(AccountLevelInformation level) {
        Intrinsics.checkNotNullParameter(level, "level");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(new AccountLevelAlert(parentActivity, level, new AccountLevelAlert.OnVisibilityChangedListener() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$showAccountLevelDialog$1
            @Override // org.fork.p046ui.dialog.AccountLevelAlert.OnVisibilityChangedListener
            public void onChanged(boolean z) {
                WalletTokenDetailsPresenter presenter;
                presenter = WalletTokenDetailsFragment.this.getPresenter();
                presenter.changeRankVisibility(z);
            }
        }).create());
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void showLevelRequiredDialog(AccountLevel minimalRank) {
        Intrinsics.checkNotNullParameter(minimalRank, "minimalRank");
        DialogsFactoryKt.showStakingLevelRequiredDialog(this, getResourceManager(), minimalRank, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda6
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTokenDetailsFragment.m1646showLevelRequiredDialog$lambda13(WalletTokenDetailsFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showLevelRequiredDialog$lambda-13  reason: not valid java name */
    public static final void m1646showLevelRequiredDialog$lambda13(WalletTokenDetailsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.presentFragment(WalletSwapProtocolsFragment.Companion.newInstance(ScreenType.FULLSCREEN, TokenCode.LIME));
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void showStakingConditionsDialog(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        showDialog(StakingConditionsBottomSheetDialog.Companion.newInstance(stakingDetails, this));
    }

    @Override // com.smedialink.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void onTabSelected(int i) {
        TabbedViewPager tabbedViewPager = getBinding().transactionsPager;
        if (tabbedViewPager.getPager().getCurrentPosition() != i) {
            tabbedViewPager.getPager().setPosition(i);
            tabbedViewPager.getTabsView().selectTabWithId(getPageTabs().get(i).getId(), 1.0f);
        }
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void onSetupNavigationRouter() {
        getNavigationRouter().init(new NavigationConfiguration<>(this, getPageTabs()));
        TabbedViewPager tabbedViewPager = getBinding().transactionsPager;
        tabbedViewPager.init(this, ViewPagerFixed.TabsView.TabType.TITLE);
        ViewPagerFixed.TabsView tabsView = tabbedViewPager.getTabsView();
        tabsView.setElevation(AndroidUtilities.m50dp(2));
        tabsView.setColors("profile_tabSelectedLine", "profile_tabSelectedText", "profile_tabText", "profile_tabSelector", "actionBarActionModeDefault");
    }

    @Override // org.fork.utils.TabbedViewPagerDelegate
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

    @Override // org.fork.utils.TabbedViewPagerDelegate
    public void onPageChanged(TabbedFragmentPage<MvpFragment> newPage, TabbedFragmentPage<MvpFragment> oldPage, int i, int i2) {
        Intrinsics.checkNotNullParameter(newPage, "newPage");
        Intrinsics.checkNotNullParameter(oldPage, "oldPage");
        oldPage.getFragment().onPause();
        newPage.getFragment().onResume();
        getPresenter().selectTab(i);
    }

    @Override // com.smedialink.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        TabbedViewPager tabbedViewPager = getBinding().transactionsPager;
        Intrinsics.checkNotNullExpressionValue(tabbedViewPager, "binding.transactionsPager");
        return tabbedViewPager;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(binding.getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda10
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
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            StakingOperationsGroup[] values = StakingOperationsGroup.values();
            arrayList = new ArrayList(values.length);
            for (StakingOperationsGroup stakingOperationsGroup : values) {
                arrayList.add(new WalletTokenDetailsNavigationTab(stakingOperationsGroup.getId(), new TabbedFragmentPage(getResourceManager().getString(stakingOperationsGroup.getNameResId()), 0, WalletTransactionsFragment.Companion.newInstance(new WalletTransactionsFragment.ScreenType.StakingDetailsTab(((TokenDetailsArgs.Staking) this.args).getStakingDetails(), stakingOperationsGroup.getStakingOperationType()), TokenCode.Companion.map(((TokenDetailsArgs.Staking) this.args).getStakingDetails().getTokenTicker())), new WalletTokenDetailsFragment$initPageTabs$3$1(this, stakingOperationsGroup), 2, null)));
            }
        } else {
            throw new NoWhenBranchMatchedException();
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
        AppCompatTextView appCompatTextView = binding.textStakingInfo;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
        ViewExtKt.withMediumTypeface(appCompatTextView);
        appCompatTextView.setTextColor(getThemedColor("profile_tabSelectedText"));
        AppCompatImageView appCompatImageView = binding.imageStakingInfo;
        Intrinsics.checkNotNullExpressionValue(appCompatImageView, "");
        ViewExtKt.setImageColor(appCompatImageView, getThemedColor("profile_tabSelectedText"));
        ViewExtKt.setCircleRippleBackground(appCompatImageView);
        TextView textView = binding.viewAnnualPercentageCell.getTextView();
        Intrinsics.checkNotNullExpressionValue(textView, "viewAnnualPercentageCell.textView");
        ViewExtKt.withMediumTypeface(textView);
        TextView textView2 = binding.viewProfitCell.getTextView();
        Intrinsics.checkNotNullExpressionValue(textView2, "");
        ViewExtKt.withMediumTypeface(textView2);
        textView2.setTextColor(getThemedColor(this.isProfitTextColored ? "chat_inDownCall" : "windowBackgroundWhiteBlackText"));
        TextView textView3 = binding.viewFinishedCell.getTextView();
        Intrinsics.checkNotNullExpressionValue(textView3, "");
        ViewExtKt.withMediumTypeface(textView3);
        textView3.setTextColor(getThemedColor(this.statusTextColorKey));
        binding.appbar.setBackgroundColor(getThemedColor("actionBarDefault"));
        binding.constraintLayoutHeader.setBackgroundColor(getThemedColor("actionBarDefault"));
        binding.dividerActionButtons.setBackgroundColor(getThemedColor("windowBackgroundGray"));
        binding.headerUnderlay.setBackgroundColor(getThemedColor("actionBarActionModeDefault"));
        binding.linearContent.setBackgroundColor(getThemedColor("actionBarActionModeDefault"));
        binding.linearHeader.setBackgroundColor(getThemedColor("actionBarDefault"));
        HorizontalActionButtonsView horizontalActionButtonsView = binding.horizontalActionButtons;
        horizontalActionButtonsView.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
        horizontalActionButtonsView.setupColors();
        ActionBarMenuItem actionBarMenuItem = binding.itemMoreOptions;
        actionBarMenuItem.redrawPopup(getThemedColor("actionBarDefaultSubmenuBackground"));
        actionBarMenuItem.setPopupItemsColor(getThemedColor("actionBarDefaultSubmenuItem"), false);
        actionBarMenuItem.setPopupItemsColor(getThemedColor("actionBarDefaultSubmenuItemIcon"), true);
        actionBarMenuItem.setupPopupRadialSelectors(getThemedColor("listSelectorSDK21"));
        Intrinsics.checkNotNullExpressionValue(actionBarMenuItem, "");
        ViewExtKt.setCircleRippleBackground(actionBarMenuItem);
        AppCompatTextView textAccountBalance = binding.textAccountBalance;
        Intrinsics.checkNotNullExpressionValue(textAccountBalance, "textAccountBalance");
        ViewExtKt.withMediumTypeface(textAccountBalance);
        AppCompatTextView appCompatTextView2 = binding.textTransactions;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView2, "");
        ViewExtKt.withMediumTypeface(appCompatTextView2);
        appCompatTextView2.setTextColor(getThemedColor("profile_tabSelectedText"));
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
        ActionBarMenuItem actionBarMenuItem = binding.itemBack;
        actionBarMenuItem.setLongClickEnabled(false);
        actionBarMenuItem.setIcon(C3158R.C3160drawable.ic_ab_back);
        Intrinsics.checkNotNullExpressionValue(actionBarMenuItem, "");
        ViewExtKt.setCircleRippleBackground(actionBarMenuItem);
        actionBarMenuItem.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletTokenDetailsFragment.m1638setupActionBar$lambda39$lambda35$lambda34(WalletTokenDetailsFragment.this, view);
            }
        });
        actionBarMenuItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3158R.string.AccDescrGoBack));
        final ActionBarMenuItem actionBarMenuItem2 = binding.itemMoreOptions;
        actionBarMenuItem2.setLongClickEnabled(false);
        actionBarMenuItem2.setSubMenuOpenSide(2);
        actionBarMenuItem2.setIcon(C3158R.C3160drawable.ic_ab_other);
        Intrinsics.checkNotNullExpressionValue(actionBarMenuItem2, "");
        ViewExtKt.setCircleRippleBackground(actionBarMenuItem2);
        setupMenuItems(actionBarMenuItem2);
        actionBarMenuItem2.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletTokenDetailsFragment.m1639setupActionBar$lambda39$lambda38$lambda36(ActionBarMenuItem.this, view);
            }
        });
        actionBarMenuItem2.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda9
            @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                WalletTokenDetailsFragment.m1640setupActionBar$lambda39$lambda38$lambda37(WalletTokenDetailsFragment.this, i);
            }
        });
        actionBarMenuItem2.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3158R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupActionBar$lambda-39$lambda-35$lambda-34  reason: not valid java name */
    public static final void m1638setupActionBar$lambda39$lambda35$lambda34(WalletTokenDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupActionBar$lambda-39$lambda-38$lambda-36  reason: not valid java name */
    public static final void m1639setupActionBar$lambda39$lambda38$lambda36(ActionBarMenuItem this_with, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupActionBar$lambda-39$lambda-38$lambda-37  reason: not valid java name */
    public static final void m1640setupActionBar$lambda39$lambda38$lambda37(WalletTokenDetailsFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSubItemClick(i);
    }

    private final void setupMenuItems(ActionBarMenuItem actionBarMenuItem) {
        TokenDetailsArgs tokenDetailsArgs = this.args;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Binance) {
            actionBarMenuItem.addSubItem(IdFabric$Menu.TOKEN_STATISTICS, C3158R.C3160drawable.fork_ic_token_statistic, getResourceManager().getString(C3158R.string.wallet_token_details_distribution_action));
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Crypto) {
            TokenBalance balance = ((TokenDetailsArgs.Crypto) tokenDetailsArgs).getToken().getBalance();
            if (TokenBalanceExtKt.isWithSmartContractAddress(balance)) {
                actionBarMenuItem.addSubItem(IdFabric$Menu.TOKEN_SMART_CONTRACT_ADDRESS, C3158R.C3160drawable.fork_ic_etherscan, getResourceManager().getString(C3158R.string.wallet_transaction_details_action_view_smart_contract));
            }
            if (TokenBalanceExtKt.isWithWebsite(balance)) {
                actionBarMenuItem.addSubItem(IdFabric$Menu.TOKEN_SITE, C3158R.C3160drawable.fork_ic_web_26, getResourceManager().getString(C3158R.string.wallet_token_details_site_action));
            }
            Unit unit = Unit.INSTANCE;
        } else if (!(tokenDetailsArgs instanceof TokenDetailsArgs.Staking)) {
            throw new NoWhenBranchMatchedException();
        } else {
            actionBarMenuItem.addSubItem(IdFabric$Menu.STAKING_CONTRACT, C3158R.C3160drawable.fork_ic_etherscan, getResourceManager().getString(C3158R.string.staking_details_contract_action));
            actionBarMenuItem.addSubItem(IdFabric$Menu.STAKING_WEBSITE, C3158R.C3160drawable.fork_ic_web_26, getResourceManager().getString(C3158R.string.wallet_token_details_site_action));
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
        binding.getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda2
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletTokenDetailsFragment.m1644setupListeners$lambda43$lambda42(WalletTokenDetailsFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupListeners$lambda-43$lambda-42  reason: not valid java name */
    public static final void m1644setupListeners$lambda43$lambda42(WalletTokenDetailsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().reload();
    }

    private final void setupTexts() {
        getBinding().textTransactions.setText(getResourceManager().getString(C3158R.string.wallet_token_details_transactions));
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
        ConstraintLayout constraintLayout = binding.constraintLayoutHeader;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "");
        constraintLayout.setPadding(constraintLayout.getPaddingLeft(), binding.constraintLayoutHeader.getPaddingTop() + AndroidUtilities.statusBarHeight, constraintLayout.getPaddingRight(), constraintLayout.getPaddingBottom());
        if (!ViewCompat.isLaidOut(constraintLayout) || constraintLayout.isLayoutRequested()) {
            constraintLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1
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
                    Intrinsics.checkNotNullExpressionValue(view2, "");
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
            Intrinsics.checkNotNullExpressionValue(view, "");
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
        binding.appbar.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda3
            @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
                WalletTokenDetailsFragment.m1641setupCollapsingToolbar$lambda61$lambda60(ForkFragmentWalletTokenDetailsBinding.this, ref$FloatRef2, this, ref$FloatRef, ref$BooleanRef, appBarLayout, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupCollapsingToolbar$lambda-61$lambda-60  reason: not valid java name */
    public static final void m1641setupCollapsingToolbar$lambda61$lambda60(ForkFragmentWalletTokenDetailsBinding this_with, Ref$FloatRef lastScrollPercent, WalletTokenDetailsFragment this$0, Ref$FloatRef collapsedTranslationX, final Ref$BooleanRef isHeaderUnderlayAnimating, AppBarLayout appBarLayout, int i) {
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
            view.animate().scaleY(BitmapDescriptorFactory.HUE_RED).setInterpolator(new AccelerateDecelerateInterpolator()).withStartAction(new Runnable() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    WalletTokenDetailsFragment.m1642setupCollapsingToolbar$lambda61$lambda60$lambda59$lambda56(Ref$BooleanRef.this);
                }
            }).withEndAction(new Runnable() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    WalletTokenDetailsFragment.m1643setupCollapsingToolbar$lambda61$lambda60$lambda59$lambda57(Ref$BooleanRef.this);
                }
            }).setDuration(100L);
        } else {
            view.setScaleY(BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupCollapsingToolbar$lambda-61$lambda-60$lambda-59$lambda-56  reason: not valid java name */
    public static final void m1642setupCollapsingToolbar$lambda61$lambda60$lambda59$lambda56(Ref$BooleanRef isHeaderUnderlayAnimating) {
        Intrinsics.checkNotNullParameter(isHeaderUnderlayAnimating, "$isHeaderUnderlayAnimating");
        isHeaderUnderlayAnimating.element = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupCollapsingToolbar$lambda-61$lambda-60$lambda-59$lambda-57  reason: not valid java name */
    public static final void m1643setupCollapsingToolbar$lambda61$lambda60$lambda59$lambda57(Ref$BooleanRef isHeaderUnderlayAnimating) {
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
        QRCodeBottomSheet qRCodeBottomSheet = new QRCodeBottomSheet(str, parentActivity, formatAddressQR) { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$showQrReceiveDialog$1

            /* compiled from: WalletTokenDetailsFragment.kt */
            /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$showQrReceiveDialog$1$WhenMappings */
            /* loaded from: classes3.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[NetworkType.values().length];
                    iArr[NetworkType.ETHEREUM.ordinal()] = 1;
                    iArr[NetworkType.BINANCE_SMART_CHAIN.ordinal()] = 2;
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // org.telegram.p048ui.Components.QRCodeBottomSheet
            public int getType() {
                return 1;
            }

            @Override // org.telegram.p048ui.Components.QRCodeBottomSheet
            public int getCustomQrCenterImageRes() {
                int i = WhenMappings.$EnumSwitchMapping$0[NetworkType.this.ordinal()];
                if (i != 1) {
                    if (i == 2) {
                        return TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getLogo();
                    }
                    return TokenInfoExtKt.getLogo(TokenInfo.Companion.map(tokenCode), NetworkType.this);
                }
                return TokenInfo.Crypto.Ethereum.ETH.INSTANCE.getLogo();
            }
        };
        qRCodeBottomSheet.setupWalletTypeReceive(getResourceManager().getString(C3158R.string.wallet_receive_dialog_title), getResourceManager().getString(C3158R.string.wallet_receive_dialog_btn_text), str, tokenCode, networkType.getBlockchainType());
        Unit unit = Unit.INSTANCE;
        showDialog(qRCodeBottomSheet);
    }

    /* compiled from: WalletTokenDetailsFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$Companion */
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
