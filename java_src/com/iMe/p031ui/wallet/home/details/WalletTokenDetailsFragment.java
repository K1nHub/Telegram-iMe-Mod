package com.iMe.p031ui.wallet.home.details;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p024ui.dialog.AccountLevelAlert;
import com.iMe.fork.p024ui.view.AccountLevelBadgeView;
import com.iMe.fork.p024ui.view.TabbedViewPager;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.fork.utils.TabbedViewPagerDelegate;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.common.ScreenType;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingProgrammeStatus;
import com.iMe.model.statistic.StatisticDiagramModel;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.details.StakingOperationsGroup;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.details.TransactionsGroup;
import com.iMe.model.wallet.details.WalletTokenDetailsNavigationTab;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.model.wallet.home.pay.BinancePayScreenArgs;
import com.iMe.model.wallet.home.pay.BinanceTransactionsGroup;
import com.iMe.model.wallet.swap.WalletSwapScreenType;
import com.iMe.model.wallet.transaction.WalletTransactionsScreenType;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.navigation.common.router.base.BaseNavigationRouter;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p023di.module.NavigationModuleKt;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.custom.HorizontalActionButtonsView;
import com.iMe.p031ui.wallet.crypto.create.intro.CreateWalletIntroFragment;
import com.iMe.p031ui.wallet.crypto.token.TokenManagementFragment;
import com.iMe.p031ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog;
import com.iMe.p031ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoBottomSheetDialog;
import com.iMe.p031ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog;
import com.iMe.p031ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.p031ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog;
import com.iMe.p031ui.wallet.swap.WalletSwapProtocolsFragment;
import com.iMe.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.p031ui.wallet.transaction.WalletTransactionsFragment;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxStatus;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.helper.binancepay.BinancePayHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentWalletTokenDetailsBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.TextDetailCell;
import org.telegram.p043ui.ChatRightsEditActivity;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.QRCodeBottomSheet;
import org.telegram.p043ui.Components.ViewPagerFixed;
import org.telegram.p043ui.ManageLinksActivity;
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment */
/* loaded from: classes6.dex */
public final class WalletTokenDetailsFragment extends WalletAuthBaseFragment implements WalletTokenDetailsView, NavigationViewConfiguration, TabbedViewPagerDelegate<TabbedFragmentPage<MvpFragment>> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletTokenDetailsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletTokenDetailsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final TokenDetailsArgs args;
    private final ResettableLazy binding$delegate;
    private ActionBarMenuSubItem contractItem;
    private float headerMaxTranslationY;
    private boolean isAppBarCollapsed;
    private boolean isProfitTextColored;
    private final Lazy navigationRouter$delegate;
    private final Lazy pageTabs$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private int statusTextColorKey;
    private int statusTextColorResId;
    private final Lazy titleTextTranslationY$delegate;
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
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        Function0<WalletTokenDetailsPresenter> function0 = new Function0<WalletTokenDetailsPresenter>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletTokenDetailsPresenter invoke() {
                Lazy lazy5;
                final WalletTokenDetailsFragment walletTokenDetailsFragment = WalletTokenDetailsFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        TokenDetailsArgs tokenDetailsArgs;
                        tokenDetailsArgs = WalletTokenDetailsFragment.this.args;
                        return ParametersHolderKt.parametersOf(tokenDetailsArgs);
                    }
                };
                lazy5 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletTokenDetailsPresenter>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletTokenDetailsPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletTokenDetailsPresenter.class), qualifier, function03);
                    }
                });
                return (WalletTokenDetailsPresenter) lazy5.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletTokenDetailsPresenter.class.getName() + ".presenter", function0);
        final StringQualifier common_tabs_navigator = NavigationModuleKt.getCOMMON_TABS_NAVIGATOR();
        final WalletTokenDetailsFragment$navigationRouter$2 walletTokenDetailsFragment$navigationRouter$2 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$navigationRouter$2
            @Override // kotlin.jvm.functions.Function0
            public final ParametersHolder invoke() {
                return ParametersHolderKt.parametersOf(Boolean.FALSE);
            }
        };
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<NavigationRouter<MvpFragment>>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.navigation.common.router.base.NavigationRouter<com.iMe.ui.base.mvp.MvpFragment>, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final NavigationRouter<MvpFragment> invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = common_tabs_navigator;
                Function0<? extends ParametersHolder> function02 = walletTokenDetailsFragment$navigationRouter$2;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(NavigationRouter.class), qualifier, function02);
            }
        });
        this.navigationRouter$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TokenBuyCoordinator>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator] */
            @Override // kotlin.jvm.functions.Function0
            public final TokenBuyCoordinator invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TokenBuyCoordinator.class), qualifier, function02);
            }
        });
        this.tokenBuyCoordinator$delegate = lazy2;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletTokenDetailsBinding>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletTokenDetailsBinding invoke() {
                return ForkFragmentWalletTokenDetailsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletTokenDetailsFragment.this));
            }
        }, 1, (Object) null);
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends WalletTokenDetailsNavigationTab>>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$pageTabs$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends WalletTokenDetailsNavigationTab> invoke() {
                List<? extends WalletTokenDetailsNavigationTab> initPageTabs;
                initPageTabs = WalletTokenDetailsFragment.this.initPageTabs();
                return initPageTabs;
            }
        });
        this.pageTabs$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$titleTextTranslationY$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                TokenDetailsArgs tokenDetailsArgs;
                tokenDetailsArgs = WalletTokenDetailsFragment.this.args;
                return Integer.valueOf(AndroidUtilities.m72dp(tokenDetailsArgs instanceof TokenDetailsArgs.CryptoBox ? 22 : 26));
            }
        });
        this.titleTextTranslationY$delegate = lazy4;
        this.statusTextColorKey = Theme.key_windowBackgroundWhiteBlueText;
        this.statusTextColorResId = C3473R.C3474color.cryptobox_status_active;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletTokenDetailsPresenter getPresenter() {
        return (WalletTokenDetailsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NavigationRouter<MvpFragment> getNavigationRouter() {
        return (NavigationRouter) this.navigationRouter$delegate.getValue();
    }

    private final TokenBuyCoordinator getTokenBuyCoordinator() {
        return (TokenBuyCoordinator) this.tokenBuyCoordinator$delegate.getValue();
    }

    private final ForkFragmentWalletTokenDetailsBinding getBinding() {
        return (ForkFragmentWalletTokenDetailsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final List<WalletTokenDetailsNavigationTab> getPageTabs() {
        return (List) this.pageTabs$delegate.getValue();
    }

    private final int getTitleTextTranslationY() {
        return ((Number) this.titleTextTranslationY$delegate.getValue()).intValue();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupCollapsingToolbar();
        setupColors();
        setupListeners();
        setupViews();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
        super.onViewReady();
        getPresenter().setupNavigationRouter();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onActivityResultFragment(i, i2, intent);
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNavigationRouter().clean();
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onDestroyView() {
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onDestroyView();
        }
        super.onDestroyView();
    }

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onResume();
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onPause();
        }
        super.onPause();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(getThemedColor(this.isAppBarCollapsed ? Theme.key_actionBarActionModeDefault : Theme.key_actionBarDefault)) > 0.699999988079071d;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return getBinding().transactionsPager.isSwipeBackEnabled();
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void actionCopyToClipboard(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        ContextExtKt.copyToClipboard$default(text, null, 2, null);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void setupTransactionsScreen(TokenDetailsArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        if (args instanceof TokenDetailsArgs.Binance) {
            AppCompatImageView imageLogo = binding.imageLogo;
            Intrinsics.checkNotNullExpressionValue(imageLogo, "imageLogo");
            TokenDetailsArgs.Binance binance = (TokenDetailsArgs.Binance) args;
            ViewExtKt.loadImage(imageLogo, binance.getToken().getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader());
            binding.textTitle.setText(binance.getToken().getAssetName());
            binding.textSubtitle.setText(BinanceTokenBalanceExtKt.getTotalBalanceShortText(binance.getToken()));
        } else if (args instanceof TokenDetailsArgs.Crypto) {
            AppCompatImageView imageLogo2 = binding.imageLogo;
            Intrinsics.checkNotNullExpressionValue(imageLogo2, "imageLogo");
            TokenDetailsArgs.Crypto crypto = (TokenDetailsArgs.Crypto) args;
            ImageViewExtKt.loadFrom$default(imageLogo2, crypto.getToken().getBalance().getToken().getAvatarUrl(), Integer.valueOf(C3473R.C3475drawable.fork_bg_white_circle), false, 4, null);
            binding.textTitle.setText(crypto.getToken().getBalance().getToken().getName());
            binding.textSubtitle.setText(TokenBalanceExtKt.getTotalBalanceShortText(crypto.getToken().getBalance()));
        }
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void setupStakingDetailsScreen(String explorerIconUrl, String logoImageUrl, String titleText, String balanceText, String annualTitleText, String annualValueText, String profitText, boolean z, StakingProgrammeStatus status) {
        Intrinsics.checkNotNullParameter(explorerIconUrl, "explorerIconUrl");
        Intrinsics.checkNotNullParameter(logoImageUrl, "logoImageUrl");
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(balanceText, "balanceText");
        Intrinsics.checkNotNullParameter(annualTitleText, "annualTitleText");
        Intrinsics.checkNotNullParameter(annualValueText, "annualValueText");
        Intrinsics.checkNotNullParameter(profitText, "profitText");
        Intrinsics.checkNotNullParameter(status, "status");
        ActionBarMenuSubItem actionBarMenuSubItem = this.contractItem;
        if (actionBarMenuSubItem != null) {
            actionBarMenuSubItem.setIcon(explorerIconUrl);
        }
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        AppCompatImageView imageLogo = binding.imageLogo;
        Intrinsics.checkNotNullExpressionValue(imageLogo, "imageLogo");
        ImageViewExtKt.loadFrom$default(imageLogo, logoImageUrl, Integer.valueOf(C3473R.C3475drawable.fork_bg_white_circle), false, 4, null);
        binding.textTitle.setText(titleText);
        binding.textSubtitle.setText(balanceText);
        LinearLayoutCompat linearStakingInfo = binding.linearStakingInfo;
        Intrinsics.checkNotNullExpressionValue(linearStakingInfo, "linearStakingInfo");
        ViewExtKt.visible$default(linearStakingInfo, false, 1, null);
        binding.textStakingInfo.setText(getResourceManager().getString(C3473R.string.staking_details_info));
        binding.viewAnnualPercentageCell.setTextAndValue(annualValueText, annualTitleText, true);
        TextDetailCell textDetailCell = binding.viewProfitCell;
        textDetailCell.setTextAndValue(profitText, getResourceManager().getString(C3473R.string.staking_details_profit), true);
        this.isProfitTextColored = z;
        textDetailCell.getTitleTextView().setTextColor(getThemedColor(this.isProfitTextColored ? Theme.key_chat_inGreenCall : Theme.key_windowBackgroundWhiteBlackText));
        this.statusTextColorKey = status.getColorKey();
        TextDetailCell textDetailCell2 = binding.viewFinishedCell;
        textDetailCell2.setTextAndValue(getResourceManager().getString(status.getTextResId()), getResourceManager().getString(C3473R.string.wallet_transaction_details_status_title), false);
        textDetailCell2.getTitleTextView().setTextColor(getThemedColor(this.statusTextColorKey));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v16 */
    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void setupCryptoBoxDetailsScreen(String explorerIconUrl, String logoImageUrl, long j, String chatName, String name, String description, String membersText, String balanceText, CryptoBoxStatus status) {
        Object obj;
        ?? r7;
        boolean isBlank;
        Intrinsics.checkNotNullParameter(explorerIconUrl, "explorerIconUrl");
        Intrinsics.checkNotNullParameter(logoImageUrl, "logoImageUrl");
        Intrinsics.checkNotNullParameter(chatName, "chatName");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(membersText, "membersText");
        Intrinsics.checkNotNullParameter(balanceText, "balanceText");
        Intrinsics.checkNotNullParameter(status, "status");
        ActionBarMenuSubItem actionBarMenuSubItem = this.contractItem;
        if (actionBarMenuSubItem != null) {
            actionBarMenuSubItem.setIcon(explorerIconUrl);
        }
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        AppCompatImageView setupCryptoBoxDetailsScreen$lambda$15$lambda$12 = binding.imageLogo;
        if (logoImageUrl.length() > 0) {
            Intrinsics.checkNotNullExpressionValue(setupCryptoBoxDetailsScreen$lambda$15$lambda$12, "setupCryptoBoxDetailsScreen$lambda$15$lambda$12");
            obj = null;
            r7 = 1;
            ImageViewExtKt.loadFrom$default(setupCryptoBoxDetailsScreen$lambda$15$lambda$12, logoImageUrl, null, false, 6, null);
        } else {
            obj = null;
            r7 = 1;
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(j, chatName, null);
            setupCryptoBoxDetailsScreen$lambda$15$lambda$12.setBackground(avatarDrawable);
        }
        binding.textTitle.setText(name);
        AppCompatTextView textSubtitle = binding.textSubtitle;
        Intrinsics.checkNotNullExpressionValue(textSubtitle, "textSubtitle");
        ViewExtKt.gone$default(textSubtitle, false, r7, obj);
        LinearLayoutCompat linearCryptoboxDescription = binding.linearCryptoboxDescription;
        Intrinsics.checkNotNullExpressionValue(linearCryptoboxDescription, "linearCryptoboxDescription");
        isBlank = StringsKt__StringsJVMKt.isBlank(description);
        linearCryptoboxDescription.setVisibility(((isBlank ? 1 : 0) ^ r7) != 0 ? 0 : 8);
        binding.textCryptoboxDescriptionTitle.setText(LocaleController.getString("DescriptionPlaceholder", C3473R.string.DescriptionPlaceholder));
        binding.textCryptoboxDescription.setText(description);
        LinearLayoutCompat linearCryptoboxInfo = binding.linearCryptoboxInfo;
        Intrinsics.checkNotNullExpressionValue(linearCryptoboxInfo, "linearCryptoboxInfo");
        ViewExtKt.visible$default(linearCryptoboxInfo, false, r7, obj);
        binding.textCryptoboxInfo.setText(getResourceManager().getString(C3473R.string.cryptobox_details_info));
        binding.viewChatCell.setTextAndValue(chatName, getResourceManager().getString(C3473R.string.cryptobox_details_chat), r7);
        binding.viewMembersCell.setTextAndValue(membersText, getResourceManager().getString(C3473R.string.cryptobox_details_members), r7);
        binding.viewBalanceCell.setTextAndValue(balanceText, getResourceManager().getString(C3473R.string.cryptobox_details_balance), r7);
        this.statusTextColorResId = status.getColorResId();
        TextDetailCell textDetailCell = binding.viewStatusCell;
        textDetailCell.setTextAndValue(getResourceManager().getString(status.getTitleResId()), getResourceManager().getString(C3473R.string.wallet_transaction_details_status_title), false);
        textDetailCell.getImageView().setImageResource(C3473R.C3475drawable.attach_arrow_right);
        textDetailCell.getTitleTextView().setTextColor(getResourceManager().getColor(this.statusTextColorResId));
        AppCompatImageView imageCryptoboxInfo = binding.imageCryptoboxInfo;
        Intrinsics.checkNotNullExpressionValue(imageCryptoboxInfo, "imageCryptoboxInfo");
        ViewExtKt.safeThrottledClick$default(imageCryptoboxInfo, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$setupCryptoBoxDetailsScreen$2$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                WalletTokenDetailsPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletTokenDetailsFragment.this.getPresenter();
                presenter.onCryptoBoxInfoClick();
            }
        }, 1, null);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void renderHorizontalActionButtons(List<HorizontalActionButtonItem> actionsItems) {
        Intrinsics.checkNotNullParameter(actionsItems, "actionsItems");
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        HorizontalActionButtonsView renderHorizontalActionButtons$lambda$17$lambda$16 = binding.horizontalActionButtons;
        renderHorizontalActionButtons$lambda$17$lambda$16.initButtons(actionsItems);
        Intrinsics.checkNotNullExpressionValue(renderHorizontalActionButtons$lambda$17$lambda$16, "renderHorizontalActionButtons$lambda$17$lambda$16");
        renderHorizontalActionButtons$lambda$17$lambda$16.setVisibility(actionsItems.isEmpty() ^ true ? 0 : 8);
        View dividerActionButtons = binding.dividerActionButtons;
        Intrinsics.checkNotNullExpressionValue(dividerActionButtons, "dividerActionButtons");
        dividerActionButtons.setVisibility(actionsItems.isEmpty() ^ true ? 0 : 8);
        updateHeaderMaxTranslation();
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showActionError(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        DialogsFactoryKt.showErrorAlert$default(this, getResourceManager().getString(C3473R.string.common_error), message, getResourceManager().getString(C3473R.string.common_ok), null, 8, null);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showCryptoBoxConditionsDialog(CryptoBoxInfo cryptoBoxInfo) {
        Intrinsics.checkNotNullParameter(cryptoBoxInfo, "cryptoBoxInfo");
        showDialog(CryptoBoxConditionsBottomSheetDialog.Companion.newInstance$default(CryptoBoxConditionsBottomSheetDialog.Companion, this, cryptoBoxInfo, null, 4, null));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showStatisticDialog(StatisticDiagramModel distributionDiagramModel) {
        Intrinsics.checkNotNullParameter(distributionDiagramModel, "distributionDiagramModel");
        showDialog(DialogsFactoryKt.createDiagramDialog$default(this, distributionDiagramModel, null, null, 6, null));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openBuyScreen(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        TokenBuyCoordinator.start$default(tokenBuyCoordinator, parentLayout, args, false, 4, null);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openSendScreen(TokenItem tokenItem, String networkId) {
        Intrinsics.checkNotNullParameter(tokenItem, "tokenItem");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        presentFragment(ManageLinksActivity.newInstanceForWalletTransfer(new TransferScreenArgs(tokenItem, null, null, null, networkId, 14, null)));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openReceiveScreen(String address, String qrFormattedAddress, String tokenLogoUrl) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(qrFormattedAddress, "qrFormattedAddress");
        Intrinsics.checkNotNullParameter(tokenLogoUrl, "tokenLogoUrl");
        showQrReceiveDialog(address, qrFormattedAddress, tokenLogoUrl);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openStakingReplenishScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingReplenish(stakingDetails, null));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openStakingProfitScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingProfit(stakingDetails));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openStakingWithdrawScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingWithdraw(stakingDetails));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openStakingCalculatorScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingCalculator(stakingDetails));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openBinanceReplenishScreen(TokenItem tokenItem, String networkId) {
        Intrinsics.checkNotNullParameter(tokenItem, "tokenItem");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        presentFragment(ManageLinksActivity.newInstanceForBinanceReplenish(new TransferScreenArgs(tokenItem, null, null, null, networkId, 14, null)));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openBinanceSwapScreen(TokenDetailed token) {
        Intrinsics.checkNotNullParameter(token, "token");
        presentFragment(WalletSwapProcessFragment.Companion.newInstance(new WalletSwapScreenType.Binance(token, null, 2, null)));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openBinanceReceiveScreen(TokenItem tokenItem) {
        Intrinsics.checkNotNullParameter(tokenItem, "tokenItem");
        presentFragment(ManageLinksActivity.newInstanceForBinancePay(new BinancePayScreenArgs(tokenItem, null, 2, null)));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showRequiredVerifyDialog() {
        showDialog(DialogsFactoryKt.createBinanceVerificationRequiredDialog(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRequiredWalletCreatedDialog$lambda$18(Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "$action");
        action.invoke();
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showRequiredWalletCreatedDialog(final Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "action");
        showDialog(DialogsFactoryKt.createWalletCreatedRequiredDialog(this, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda4
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTokenDetailsFragment.showRequiredWalletCreatedDialog$lambda$18(Callbacks$Callback.this);
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
    public void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        showConfirmationDialog(dialogModel, action);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showConfirmationDialog(DialogModel dialogModel, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createFormattedDialog$default(parentActivity, dialogModel, action, null, 8, null));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showCryptoBoxSuspensionDialog(CryptoBoxTransactionAction transactionAction) {
        Intrinsics.checkNotNullParameter(transactionAction, "transactionAction");
        showDialog(CryptoBoxSuspensionBottomSheetDialog.Companion.newInstance(transactionAction, this));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openAddAdminScreen(long j, long j2, String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(j, j2, null, null, null, null, 0, true, true, null);
        chatRightsEditActivity.setDelegate(new WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1(chatRightsEditActivity, j, this, boxId));
        presentFragment(chatRightsEditActivity);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showCryptoBoxRefreshSuccess() {
        DialogsFactoryKt.showSuccessAlert$default(this, getResourceManager().getString(C3473R.string.status_ok), getResourceManager().getString(C3473R.string.cryptobox_refresh_success), getResourceManager().getString(C3473R.string.common_ok), null, 8, null);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletIntroScreen(String linkedWalletAddress, WalletCreationType.Initial walletCreationType) {
        Intrinsics.checkNotNullParameter(linkedWalletAddress, "linkedWalletAddress");
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        presentFragment(CreateWalletIntroFragment.Companion.newInstance(walletCreationType, linkedWalletAddress));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openTokenInformationScreen(TokenDetailed token) {
        Intrinsics.checkNotNullParameter(token, "token");
        presentFragment(TokenManagementFragment.Companion.newInstance(new TokenManagementFragment.ScreenType.View(token, null, 2, null)));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void setupRankBadge(boolean z, AccountLevel accountLevel) {
        Intrinsics.checkNotNullParameter(accountLevel, "accountLevel");
        AccountLevelBadgeView setupRankBadge$lambda$20 = getBinding().accountRankBadge;
        Intrinsics.checkNotNullExpressionValue(setupRankBadge$lambda$20, "setupRankBadge$lambda$20");
        setupRankBadge$lambda$20.setVisibility(z ? 0 : 8);
        setupRankBadge$lambda$20.setAccountLevel(accountLevel);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showAccountLevelDialog(AccountLevelInformation level) {
        Intrinsics.checkNotNullParameter(level, "level");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(new AccountLevelAlert(parentActivity, level, new AccountLevelAlert.OnVisibilityChangedListener() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$showAccountLevelDialog$1
            @Override // com.iMe.fork.p024ui.dialog.AccountLevelAlert.OnVisibilityChangedListener
            public void onChanged(boolean z) {
                WalletTokenDetailsPresenter presenter;
                presenter = WalletTokenDetailsFragment.this.getPresenter();
                presenter.changeRankVisibility(z);
            }
        }).create());
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showLevelRequiredDialog(AccountLevel minimalRank, final TokenDetailed token) {
        Intrinsics.checkNotNullParameter(minimalRank, "minimalRank");
        Intrinsics.checkNotNullParameter(token, "token");
        DialogsFactoryKt.showStakingLevelRequiredDialog(this, getResourceManager(), minimalRank, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda5
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTokenDetailsFragment.showLevelRequiredDialog$lambda$21(WalletTokenDetailsFragment.this, token);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLevelRequiredDialog$lambda$21(WalletTokenDetailsFragment this$0, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(token, "$token");
        this$0.presentFragment(WalletSwapProtocolsFragment.Companion.newInstance(ScreenType.FULLSCREEN, token));
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showStakingConditionsDialog(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        showDialog(StakingConditionsBottomSheetDialog.Companion.newInstance(stakingDetails, this));
    }

    @Override // com.iMe.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void onTabSelected(int i) {
        TabbedViewPager tabbedViewPager = getBinding().transactionsPager;
        if (tabbedViewPager.getPager().currentPosition != i) {
            tabbedViewPager.getPager().setPosition(i);
            tabbedViewPager.getTabsView().selectTabWithId(getPageTabs().get(i).getId(), 1.0f);
        }
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void onSetupNavigationRouter() {
        getNavigationRouter().init(new NavigationConfiguration<>(this, getPageTabs()));
        TabbedViewPager tabbedViewPager = getBinding().transactionsPager;
        tabbedViewPager.init(this, ViewPagerFixed.TabsView.TabType.TITLE);
        ViewPagerFixed.TabsView tabsView = tabbedViewPager.getTabsView();
        tabsView.setElevation(AndroidUtilities.m72dp(2));
        tabsView.setColors(Theme.key_profile_tabSelectedLine, Theme.key_profile_tabSelectedText, Theme.key_profile_tabText, Theme.key_profile_tabSelector, Theme.key_actionBarActionModeDefault);
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(binding.getRoot(), ThemeDescription.FLAG_BACKGROUND, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda9
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletTokenDetailsFragment.this.setupColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        arrayListOf.addAll(binding.transactionsPager.getThemeDescription());
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            arrayListOf.addAll(mvpFragment.getThemeDescriptions());
        }
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<WalletTokenDetailsNavigationTab> initPageTabs() {
        List<WalletTokenDetailsNavigationTab> listOf;
        List<TransactionsGroup> listOfNotNull;
        int collectionSizeOrDefault;
        List<BinanceTransactionsGroup> listOf2;
        int collectionSizeOrDefault2;
        TokenDetailsArgs tokenDetailsArgs = this.args;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Binance) {
            listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new BinanceTransactionsGroup[]{BinanceTransactionsGroup.All.INSTANCE, BinanceTransactionsGroup.Incoming.INSTANCE, BinanceTransactionsGroup.Outgoing.INSTANCE});
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
            for (final BinanceTransactionsGroup binanceTransactionsGroup : listOf2) {
                arrayList.add(new WalletTokenDetailsNavigationTab(binanceTransactionsGroup.getId(), new TabbedFragmentPage(getResourceManager().getString(binanceTransactionsGroup.getNameResId()), 0, WalletBinancePayHistoryFragment.Companion.newInstance(new WalletBinancePayHistoryFragment.ScreenType.TokenDetailsTab(binanceTransactionsGroup), ((TokenDetailsArgs.Binance) this.args).getToken().getAsset()), new Function0<View>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$initPageTabs$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final View invoke() {
                        NavigationRouter navigationRouter;
                        navigationRouter = WalletTokenDetailsFragment.this.getNavigationRouter();
                        Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.base.mvp.MvpFragment>");
                        return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(binanceTransactionsGroup.getId());
                    }
                }, 2, null)));
            }
            return arrayList;
        }
        if (!(tokenDetailsArgs instanceof TokenDetailsArgs.Crypto)) {
            if (!(tokenDetailsArgs instanceof TokenDetailsArgs.Staking)) {
                if (tokenDetailsArgs instanceof TokenDetailsArgs.CryptoBox) {
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(new WalletTokenDetailsNavigationTab(C3473R.C3476id.wallet_token_details_transactions_all, new TabbedFragmentPage(getResourceManager().getString(C3473R.string.wallet_token_details_transactions_all), 0, WalletTransactionsFragment.Companion.newInstance$default(WalletTransactionsFragment.Companion, new WalletTransactionsScreenType.CryptoBoxDetailsTab(((TokenDetailsArgs.CryptoBox) this.args).getCryptoBoxInfo()), null, 2, null), new Function0<View>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$initPageTabs$4
                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final View invoke() {
                            NavigationRouter navigationRouter;
                            navigationRouter = WalletTokenDetailsFragment.this.getNavigationRouter();
                            Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.base.mvp.MvpFragment>");
                            return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(C3473R.C3476id.wallet_token_details_transactions_all);
                        }
                    }, 2, null)));
                    return listOf;
                }
                throw new NoWhenBranchMatchedException();
            } else {
                StakingOperationsGroup[] values = StakingOperationsGroup.values();
                ArrayList arrayList2 = new ArrayList(values.length);
                for (final StakingOperationsGroup stakingOperationsGroup : values) {
                    arrayList2.add(new WalletTokenDetailsNavigationTab(stakingOperationsGroup.getId(), new TabbedFragmentPage(getResourceManager().getString(stakingOperationsGroup.getNameResId()), 0, WalletTransactionsFragment.Companion.newInstance(new WalletTransactionsScreenType.StakingDetailsTab(((TokenDetailsArgs.Staking) this.args).getStakingDetails(), stakingOperationsGroup.getStakingOperationType()), TokenExtKt.toIndexedToken(TokenUiMappingKt.mapToDomain(((TokenDetailsArgs.Staking) this.args).getStakingDetails().getTokenItem()))), new Function0<View>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$initPageTabs$3$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final View invoke() {
                            NavigationRouter navigationRouter;
                            navigationRouter = WalletTokenDetailsFragment.this.getNavigationRouter();
                            Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.base.mvp.MvpFragment>");
                            return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(stakingOperationsGroup.getId());
                        }
                    }, 2, null)));
                }
                return arrayList2;
            }
        }
        TransactionsGroup[] transactionsGroupArr = new TransactionsGroup[4];
        transactionsGroupArr[0] = TransactionsGroup.All.INSTANCE;
        transactionsGroupArr[1] = TransactionsGroup.Incoming.INSTANCE;
        transactionsGroupArr[2] = TransactionsGroup.Outgoing.INSTANCE;
        transactionsGroupArr[3] = getCryptoPreferenceHelper().getCurrentBlockchainType() == BlockchainType.EVM ? TransactionsGroup.Swap.INSTANCE : null;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) transactionsGroupArr);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(listOfNotNull, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        for (final TransactionsGroup transactionsGroup : listOfNotNull) {
            arrayList3.add(new WalletTokenDetailsNavigationTab(transactionsGroup.getId(), new TabbedFragmentPage(getResourceManager().getString(transactionsGroup.getNameResId()), 0, WalletTransactionsFragment.Companion.newInstance(new WalletTransactionsScreenType.TokenDetailsTab(transactionsGroup), TokenExtKt.toIndexedToken(((TokenDetailsArgs.Crypto) this.args).getToken().getBalance().getToken())), new Function0<View>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$initPageTabs$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final View invoke() {
                    NavigationRouter navigationRouter;
                    navigationRouter = WalletTokenDetailsFragment.this.getNavigationRouter();
                    Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.base.mvp.MvpFragment>");
                    return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(transactionsGroup.getId());
                }
            }, 2, null)));
        }
        return arrayList3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        SwipeRefreshLayout root = getBinding().getRoot();
        int i = Theme.key_windowBackgroundWhite;
        root.setBackgroundColor(getThemedColor(i));
        root.setColorSchemeColors(getThemedColor(Theme.key_chats_actionBackground));
        AppBarLayout appBarLayout = binding.appbar;
        int i2 = Theme.key_actionBarDefault;
        appBarLayout.setBackgroundColor(getThemedColor(i2));
        binding.constraintLayoutHeader.setBackgroundColor(getThemedColor(i2));
        binding.dividerActionButtons.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        View view = binding.headerUnderlay;
        int i3 = Theme.key_actionBarActionModeDefault;
        view.setBackgroundColor(getThemedColor(i3));
        binding.linearContent.setBackgroundColor(getThemedColor(i3));
        binding.linearHeader.setBackgroundColor(getThemedColor(i2));
        HorizontalActionButtonsView horizontalActionButtonsView = binding.horizontalActionButtons;
        horizontalActionButtonsView.setBackgroundColor(getThemedColor(i));
        horizontalActionButtonsView.setupColors();
        ActionBarMenuItem setupColors$lambda$36$lambda$34 = binding.itemMoreOptions;
        setupColors$lambda$36$lambda$34.redrawPopup(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
        setupColors$lambda$36$lambda$34.setPopupItemsColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItem), false);
        setupColors$lambda$36$lambda$34.setPopupItemsColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon), true);
        setupColors$lambda$36$lambda$34.setupPopupRadialSelectors(getThemedColor(Theme.key_listSelector));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$36$lambda$34, "setupColors$lambda$36$lambda$34");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$36$lambda$34);
        AppCompatTextView textSubtitle = binding.textSubtitle;
        Intrinsics.checkNotNullExpressionValue(textSubtitle, "textSubtitle");
        ViewExtKt.withMediumTypeface(textSubtitle);
        AppCompatTextView setupColors$lambda$36$lambda$35 = binding.textTransactions;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$36$lambda$35, "setupColors$lambda$36$lambda$35");
        ViewExtKt.withMediumTypeface(setupColors$lambda$36$lambda$35);
        setupColors$lambda$36$lambda$35.setTextColor(getThemedColor(Theme.key_profile_tabSelectedText));
        setupCollapsingToolbarColors();
        TokenDetailsArgs tokenDetailsArgs = this.args;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            setupStakingScreenColors();
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.CryptoBox) {
            setupCryptoBoxScreenColors();
        }
    }

    private final void setupStakingScreenColors() {
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        binding.dividerStaking.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        binding.linearStakingInfo.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        AppCompatTextView setupStakingScreenColors$lambda$39$lambda$37 = binding.textStakingInfo;
        Intrinsics.checkNotNullExpressionValue(setupStakingScreenColors$lambda$39$lambda$37, "setupStakingScreenColors$lambda$39$lambda$37");
        ViewExtKt.withMediumTypeface(setupStakingScreenColors$lambda$39$lambda$37);
        int i = Theme.key_profile_tabSelectedText;
        setupStakingScreenColors$lambda$39$lambda$37.setTextColor(getThemedColor(i));
        AppCompatImageView setupStakingScreenColors$lambda$39$lambda$38 = binding.imageStakingInfo;
        Intrinsics.checkNotNullExpressionValue(setupStakingScreenColors$lambda$39$lambda$38, "setupStakingScreenColors$lambda$39$lambda$38");
        ImageViewExtKt.setImageColor(setupStakingScreenColors$lambda$39$lambda$38, getThemedColor(i));
        ViewExtKt.setCircleRippleBackground(setupStakingScreenColors$lambda$39$lambda$38);
        TextDetailCell textDetailCell = binding.viewAnnualPercentageCell;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        int themedColor = getThemedColor(i2);
        int i3 = Theme.key_windowBackgroundWhiteGrayText;
        textDetailCell.setupColors(themedColor, true, getThemedColor(i3));
        TextDetailCell textDetailCell2 = binding.viewProfitCell;
        if (this.isProfitTextColored) {
            i2 = Theme.key_chat_inGreenCall;
        }
        textDetailCell2.setupColors(getThemedColor(i2), true, getThemedColor(i3));
        binding.viewFinishedCell.setupColors(getThemedColor(this.statusTextColorKey), true, getThemedColor(i3));
    }

    private final void setupCryptoBoxScreenColors() {
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        AppCompatTextView textTitle = binding.textTitle;
        Intrinsics.checkNotNullExpressionValue(textTitle, "textTitle");
        ViewExtKt.withMediumTypeface(textTitle);
        binding.textSubtitle.setTypeface(Typeface.DEFAULT);
        View view = binding.dividerCryptoboxDescription;
        int i = Theme.key_windowBackgroundGray;
        view.setBackgroundColor(getThemedColor(i));
        LinearLayoutCompat linearLayoutCompat = binding.linearCryptoboxDescription;
        int i2 = Theme.key_windowBackgroundWhite;
        linearLayoutCompat.setBackgroundColor(getThemedColor(i2));
        AppCompatTextView setupCryptoBoxScreenColors$lambda$44$lambda$40 = binding.textCryptoboxDescriptionTitle;
        Intrinsics.checkNotNullExpressionValue(setupCryptoBoxScreenColors$lambda$44$lambda$40, "setupCryptoBoxScreenColors$lambda$44$lambda$40");
        ViewExtKt.withMediumTypeface(setupCryptoBoxScreenColors$lambda$44$lambda$40);
        int i3 = Theme.key_profile_tabSelectedText;
        setupCryptoBoxScreenColors$lambda$44$lambda$40.setTextColor(getThemedColor(i3));
        AppCompatTextView appCompatTextView = binding.textCryptoboxDescription;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        appCompatTextView.setTextColor(getThemedColor(i4));
        binding.dividerCryptoboxInfo.setBackgroundColor(getThemedColor(i));
        binding.linearCryptoboxInfo.setBackgroundColor(getThemedColor(i2));
        AppCompatTextView setupCryptoBoxScreenColors$lambda$44$lambda$41 = binding.textCryptoboxInfo;
        Intrinsics.checkNotNullExpressionValue(setupCryptoBoxScreenColors$lambda$44$lambda$41, "setupCryptoBoxScreenColors$lambda$44$lambda$41");
        ViewExtKt.withMediumTypeface(setupCryptoBoxScreenColors$lambda$44$lambda$41);
        setupCryptoBoxScreenColors$lambda$44$lambda$41.setTextColor(getThemedColor(i3));
        AppCompatImageView setupCryptoBoxScreenColors$lambda$44$lambda$42 = binding.imageCryptoboxInfo;
        Intrinsics.checkNotNullExpressionValue(setupCryptoBoxScreenColors$lambda$44$lambda$42, "setupCryptoBoxScreenColors$lambda$44$lambda$42");
        ImageViewExtKt.setImageColor(setupCryptoBoxScreenColors$lambda$44$lambda$42, getThemedColor(i3));
        ViewExtKt.setCircleRippleBackground(setupCryptoBoxScreenColors$lambda$44$lambda$42);
        TextDetailCell textDetailCell = binding.viewChatCell;
        int themedColor = getThemedColor(i4);
        int i5 = Theme.key_windowBackgroundWhiteGrayText;
        textDetailCell.setupColors(themedColor, true, getThemedColor(i5));
        binding.viewMembersCell.setupColors(getThemedColor(i4), true, getThemedColor(i5));
        binding.viewBalanceCell.setupColors(getThemedColor(i4), true, getThemedColor(i5));
        TextDetailCell setupCryptoBoxScreenColors$lambda$44$lambda$43 = binding.viewStatusCell;
        setupCryptoBoxScreenColors$lambda$44$lambda$43.setupColors(getResourceManager().getColor(this.statusTextColorResId), true, getThemedColor(i5), Integer.valueOf(getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon)));
        Intrinsics.checkNotNullExpressionValue(setupCryptoBoxScreenColors$lambda$44$lambda$43, "setupCryptoBoxScreenColors$lambda$44$lambda$43");
        ViewExtKt.setRippleBackground$default(setupCryptoBoxScreenColors$lambda$44$lambda$43, false, 1, null);
    }

    private final void setupCollapsingToolbarColors() {
        AndroidUtilities.setLightStatusBar(getParentActivity().getWindow(), isLightStatusBar(), isLightStatusBar());
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        if (this.isAppBarCollapsed) {
            ActionBarMenuItem actionBarMenuItem = binding.itemBack;
            int i = Theme.key_actionBarActionModeDefaultIcon;
            actionBarMenuItem.setIconColor(getThemedColor(i));
            binding.itemMoreOptions.setIconColor(getThemedColor(i));
            binding.textTitle.setTextColor(getThemedColor(i));
            binding.textSubtitle.setTextColor(getThemedColor(i));
            return;
        }
        ActionBarMenuItem actionBarMenuItem2 = binding.itemBack;
        int i2 = Theme.key_actionBarDefaultIcon;
        actionBarMenuItem2.setIconColor(getThemedColor(i2));
        binding.itemMoreOptions.setIconColor(getThemedColor(i2));
        AppCompatTextView appCompatTextView = binding.textTitle;
        int i3 = Theme.key_actionBarDefaultTitle;
        appCompatTextView.setTextColor(getThemedColor(i3));
        binding.textSubtitle.setTextColor(getThemedColor(i3));
    }

    private final void setupActionBar() {
        this.actionBar.setAddToContainer(false);
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        ActionBarMenuItem setupActionBar$lambda$51$lambda$47 = binding.itemBack;
        setupActionBar$lambda$51$lambda$47.setLongClickEnabled(false);
        setupActionBar$lambda$51$lambda$47.setIcon(C3473R.C3475drawable.ic_ab_back);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$51$lambda$47, "setupActionBar$lambda$51$lambda$47");
        ViewExtKt.setCircleRippleBackground(setupActionBar$lambda$51$lambda$47);
        setupActionBar$lambda$51$lambda$47.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletTokenDetailsFragment.setupActionBar$lambda$51$lambda$47$lambda$46(WalletTokenDetailsFragment.this, view);
            }
        });
        setupActionBar$lambda$51$lambda$47.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3473R.string.AccDescrGoBack));
        final ActionBarMenuItem setupActionBar$lambda$51$lambda$50 = binding.itemMoreOptions;
        setupActionBar$lambda$51$lambda$50.setLongClickEnabled(false);
        setupActionBar$lambda$51$lambda$50.setSubMenuOpenSide(2);
        setupActionBar$lambda$51$lambda$50.setIcon(C3473R.C3475drawable.ic_ab_other);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$51$lambda$50, "setupActionBar$lambda$51$lambda$50");
        ViewExtKt.setCircleRippleBackground(setupActionBar$lambda$51$lambda$50);
        setupMenuItems(setupActionBar$lambda$51$lambda$50);
        setupActionBar$lambda$51$lambda$50.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletTokenDetailsFragment.setupActionBar$lambda$51$lambda$50$lambda$48(ActionBarMenuItem.this, view);
            }
        });
        setupActionBar$lambda$51$lambda$50.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda8
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                WalletTokenDetailsFragment.setupActionBar$lambda$51$lambda$50$lambda$49(WalletTokenDetailsFragment.this, i);
            }
        });
        setupActionBar$lambda$51$lambda$50.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3473R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupActionBar$lambda$51$lambda$47$lambda$46(WalletTokenDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupActionBar$lambda$51$lambda$50$lambda$48(ActionBarMenuItem this_with, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupActionBar$lambda$51$lambda$50$lambda$49(WalletTokenDetailsFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSubItemClick(i);
    }

    private final void setupMenuItems(ActionBarMenuItem actionBarMenuItem) {
        TokenDetailsArgs tokenDetailsArgs = this.args;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Binance) {
            actionBarMenuItem.addSubItem(IdFabric$Menu.TOKEN_STATISTICS, C3473R.C3475drawable.fork_ic_token_statistic, getResourceManager().getString(C3473R.string.wallet_token_details_distribution_action));
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Crypto) {
            TokenDetailed token = ((TokenDetailsArgs.Crypto) tokenDetailsArgs).getToken().getBalance().getToken();
            if (!token.isCoin()) {
                actionBarMenuItem.addSubItem(IdFabric$Menu.TOKEN_INFORMATION, C3473R.C3475drawable.msg_info, getResourceManager().getString(C3473R.string.wallet_token_details_token_information));
            }
            if (token.getWebsite().length() > 0) {
                actionBarMenuItem.addSubItem(IdFabric$Menu.TOKEN_SITE, C3473R.C3475drawable.fork_ic_web_26, getResourceManager().getString(C3473R.string.wallet_token_details_site_action));
            }
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            this.contractItem = actionBarMenuItem.addSubItem(IdFabric$Menu.SMART_CONTRACT, -1, getResourceManager().getString(C3473R.string.staking_details_contract_action));
            actionBarMenuItem.addSubItem(IdFabric$Menu.STAKING_WEBSITE, C3473R.C3475drawable.fork_ic_web_26, getResourceManager().getString(C3473R.string.wallet_token_details_site_action));
        } else if (!(tokenDetailsArgs instanceof TokenDetailsArgs.CryptoBox)) {
            throw new NoWhenBranchMatchedException();
        } else {
            actionBarMenuItem.addSubItem(IdFabric$Menu.COPY, C3473R.C3475drawable.msg_copy, getResourceManager().getString(C3473R.string.cryptobox_copy_name));
            this.contractItem = actionBarMenuItem.addSubItem(IdFabric$Menu.SMART_CONTRACT, -1, getResourceManager().getString(C3473R.string.wallet_transaction_details_action_view_smart_contract));
        }
    }

    private final void setupListeners() {
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        binding.getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda2
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletTokenDetailsFragment.setupListeners$lambda$55$lambda$54(WalletTokenDetailsFragment.this);
            }
        });
        AccountLevelBadgeView accountRankBadge = binding.accountRankBadge;
        Intrinsics.checkNotNullExpressionValue(accountRankBadge, "accountRankBadge");
        ViewExtKt.safeThrottledClick$default(accountRankBadge, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$setupListeners$1$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                WalletTokenDetailsPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletTokenDetailsFragment.this.getPresenter();
                presenter.startAccountLevelDialog();
            }
        }, 1, null);
        AppCompatImageView imageStakingInfo = binding.imageStakingInfo;
        Intrinsics.checkNotNullExpressionValue(imageStakingInfo, "imageStakingInfo");
        ViewExtKt.safeThrottledClick$default(imageStakingInfo, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$setupListeners$1$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                WalletTokenDetailsPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletTokenDetailsFragment.this.getPresenter();
                presenter.startStakingConditionsDialog();
            }
        }, 1, null);
        TextDetailCell viewStatusCell = binding.viewStatusCell;
        Intrinsics.checkNotNullExpressionValue(viewStatusCell, "viewStatusCell");
        ViewExtKt.safeThrottledClick$default(viewStatusCell, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$setupListeners$1$4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                WalletTokenDetailsFragment walletTokenDetailsFragment = WalletTokenDetailsFragment.this;
                CryptoBoxStatusInfoBottomSheetDialog.Companion companion = CryptoBoxStatusInfoBottomSheetDialog.Companion;
                Activity parentActivity = walletTokenDetailsFragment.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                walletTokenDetailsFragment.showDialog(companion.newInstance(parentActivity));
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$55$lambda$54(WalletTokenDetailsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().reload();
    }

    private final void setupViews() {
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        SwipeRefreshLayout root = getBinding().getRoot();
        root.setEnabled(!(this.args instanceof TokenDetailsArgs.Binance));
        int i = AndroidUtilities.statusBarHeight;
        root.setProgressViewOffset(false, i, i * 2);
        binding.textTransactions.setText(getResourceManager().getString(C3473R.string.wallet_token_details_transactions));
        if (this.args instanceof TokenDetailsArgs.CryptoBox) {
            AppCompatTextView setupViews$lambda$58$lambda$57 = binding.textTitle;
            setupViews$lambda$58$lambda$57.setTextSize(1, 18.0f);
            Intrinsics.checkNotNullExpressionValue(setupViews$lambda$58$lambda$57, "setupViews$lambda$58$lambda$57");
            ViewExtKt.singleLine(setupViews$lambda$58$lambda$57);
            setupViews$lambda$58$lambda$57.setEllipsize(TextUtils.TruncateAt.END);
            setupViews$lambda$58$lambda$57.setPadding(setupViews$lambda$58$lambda$57.getPaddingLeft(), setupViews$lambda$58$lambda$57.getPaddingTop(), AndroidUtilities.m72dp(170), setupViews$lambda$58$lambda$57.getPaddingBottom());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateHeaderMaxTranslation() {
        ForkFragmentWalletTokenDetailsBinding binding = getBinding();
        HorizontalActionButtonsView horizontalActionButtons = binding.horizontalActionButtons;
        Intrinsics.checkNotNullExpressionValue(horizontalActionButtons, "horizontalActionButtons");
        this.headerMaxTranslationY = (horizontalActionButtons.getVisibility() == 0 ? binding.horizontalActionButtons.getMeasuredHeight() + binding.dividerActionButtons.getMeasuredHeight() : 0) + binding.linearStakingInfo.getMeasuredHeight() + binding.linearCryptoboxInfo.getMeasuredHeight() + binding.linearCryptoboxDescription.getMeasuredHeight();
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
        ConstraintLayout setupCollapsingToolbar$lambda$76$lambda$65 = binding.constraintLayoutHeader;
        Intrinsics.checkNotNullExpressionValue(setupCollapsingToolbar$lambda$76$lambda$65, "setupCollapsingToolbar$lambda$76$lambda$65");
        setupCollapsingToolbar$lambda$76$lambda$65.setPadding(setupCollapsingToolbar$lambda$76$lambda$65.getPaddingLeft(), binding.constraintLayoutHeader.getPaddingTop() + AndroidUtilities.statusBarHeight, setupCollapsingToolbar$lambda$76$lambda$65.getPaddingRight(), setupCollapsingToolbar$lambda$76$lambda$65.getPaddingBottom());
        if (!ViewCompat.isLaidOut(setupCollapsingToolbar$lambda$76$lambda$65) || setupCollapsingToolbar$lambda$76$lambda$65.isLayoutRequested()) {
            setupCollapsingToolbar$lambda$76$lambda$65.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$76$lambda$65$$inlined$doOnLayout$1
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
                    AppCompatImageView appCompatImageView = ForkFragmentWalletTokenDetailsBinding.this.imageLogo;
                    appCompatImageView.setPivotX(appCompatImageView.getMeasuredHeight());
                    appCompatImageView.setPivotY(appCompatImageView.getPivotX() / 2);
                    ForkFragmentWalletTokenDetailsBinding forkFragmentWalletTokenDetailsBinding = ForkFragmentWalletTokenDetailsBinding.this;
                    View view2 = forkFragmentWalletTokenDetailsBinding.headerUnderlay;
                    int measuredHeight = forkFragmentWalletTokenDetailsBinding.toolbar.getMeasuredHeight() + AndroidUtilities.statusBarHeight + AndroidUtilities.m72dp(10);
                    Intrinsics.checkNotNullExpressionValue(view2, "setupCollapsingToolbar$l…da$65$lambda$64$lambda$63");
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
                    this.updateHeaderMaxTranslation();
                }
            });
        } else {
            MaterialToolbar toolbar2 = binding.toolbar;
            Intrinsics.checkNotNullExpressionValue(toolbar2, "toolbar");
            ViewGroup.LayoutParams layoutParams2 = toolbar2.getLayoutParams();
            Objects.requireNonNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            layoutParams2.height += AndroidUtilities.statusBarHeight;
            toolbar2.setLayoutParams(layoutParams2);
            AppCompatImageView appCompatImageView = binding.imageLogo;
            appCompatImageView.setPivotX(appCompatImageView.getMeasuredHeight());
            appCompatImageView.setPivotY(appCompatImageView.getPivotX() / 2);
            View view = binding.headerUnderlay;
            int measuredHeight = binding.toolbar.getMeasuredHeight() + AndroidUtilities.statusBarHeight + AndroidUtilities.m72dp(10);
            Intrinsics.checkNotNullExpressionValue(view, "setupCollapsingToolbar$l…da$65$lambda$64$lambda$63");
            ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
            Objects.requireNonNull(layoutParams3, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            layoutParams3.height = measuredHeight;
            view.setLayoutParams(layoutParams3);
            view.setPivotY(measuredHeight);
            view.setScaleY(BitmapDescriptorFactory.HUE_RED);
            ActionBarMenuItem itemBack = binding.itemBack;
            Intrinsics.checkNotNullExpressionValue(itemBack, "itemBack");
            ref$FloatRef.element = ((itemBack.getLayoutParams() instanceof ViewGroup.MarginLayoutParams ? MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) layoutParams) : 0) * 3) + binding.itemBack.getWidth();
            updateHeaderMaxTranslation();
        }
        AppCompatTextView appCompatTextView = binding.textSubtitle;
        appCompatTextView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        appCompatTextView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        binding.appbar.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda3
            @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
                WalletTokenDetailsFragment.setupCollapsingToolbar$lambda$76$lambda$75(ForkFragmentWalletTokenDetailsBinding.this, ref$FloatRef2, this, ref$FloatRef, ref$BooleanRef, appBarLayout, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCollapsingToolbar$lambda$76$lambda$75(ForkFragmentWalletTokenDetailsBinding this_with, Ref$FloatRef lastScrollPercent, WalletTokenDetailsFragment this$0, Ref$FloatRef collapsedTranslationX, final Ref$BooleanRef isHeaderUnderlayAnimating, AppBarLayout appBarLayout, int i) {
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
        AppCompatTextView appCompatTextView = this_with.textTitle;
        appCompatTextView.setTranslationX(f);
        appCompatTextView.setTranslationY(this$0.getTitleTextTranslationY() * abs);
        AppCompatTextView appCompatTextView2 = this_with.textSubtitle;
        appCompatTextView2.setScaleX(f3);
        appCompatTextView2.setScaleY(f3);
        appCompatTextView2.setTranslationX(f);
        appCompatTextView2.setTranslationY(AndroidUtilities.m72dp(24) * abs);
        AppCompatImageView appCompatImageView = this_with.imageLogo;
        appCompatImageView.setScaleX(f3);
        appCompatImageView.setScaleY(f3);
        appCompatImageView.setTranslationX(f);
        appCompatImageView.setTranslationY(AndroidUtilities.m72dp(22) * abs);
        this_with.constraintLayoutHeader.setTranslationY(this$0.headerMaxTranslationY * abs);
        this$0.setupCollapsingToolbarColors();
        View view = this_with.headerUnderlay;
        if (this$0.isAppBarCollapsed) {
            view.animate().scaleY(1.0f).setInterpolator(new AccelerateDecelerateInterpolator()).setDuration(100L);
            return;
        }
        if ((view.getScaleY() == 1.0f) && !isHeaderUnderlayAnimating.element) {
            view.animate().scaleY(BitmapDescriptorFactory.HUE_RED).setInterpolator(new AccelerateDecelerateInterpolator()).withStartAction(new Runnable() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    WalletTokenDetailsFragment.setupCollapsingToolbar$lambda$76$lambda$75$lambda$74$lambda$71(Ref$BooleanRef.this);
                }
            }).withEndAction(new Runnable() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    WalletTokenDetailsFragment.setupCollapsingToolbar$lambda$76$lambda$75$lambda$74$lambda$72(Ref$BooleanRef.this);
                }
            }).setDuration(100L);
        } else {
            view.setScaleY(BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCollapsingToolbar$lambda$76$lambda$75$lambda$74$lambda$71(Ref$BooleanRef isHeaderUnderlayAnimating) {
        Intrinsics.checkNotNullParameter(isHeaderUnderlayAnimating, "$isHeaderUnderlayAnimating");
        isHeaderUnderlayAnimating.element = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCollapsingToolbar$lambda$76$lambda$75$lambda$74$lambda$72(Ref$BooleanRef isHeaderUnderlayAnimating) {
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
            TokenDetailed token = ((TokenDetailsArgs.Crypto) tokenDetailsArgs).getToken().getBalance().getToken();
            if (i == IdFabric$Menu.TOKEN_INFORMATION) {
                getPresenter().openTokenInformationScreen();
            } else if (i == IdFabric$Menu.TOKEN_SITE) {
                openUrl(token.getWebsite());
            }
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            StakingDetailsItem stakingDetails = ((TokenDetailsArgs.Staking) tokenDetailsArgs).getStakingDetails();
            if (i == IdFabric$Menu.SMART_CONTRACT) {
                openUrl(stakingDetails.getContractUrl());
            } else if (i == IdFabric$Menu.STAKING_WEBSITE) {
                openUrl(stakingDetails.getWebsite());
            }
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.CryptoBox) {
            if (i == IdFabric$Menu.COPY) {
                getPresenter().onCopyCryptoBoxNameClick();
            } else if (i == IdFabric$Menu.SMART_CONTRACT) {
                openUrl(((TokenDetailsArgs.CryptoBox) tokenDetailsArgs).getCryptoBoxInfo().getContractUrl());
            }
        }
    }

    private final void openUrl(String str) {
        Browser.openUrl(getParentActivity(), str);
    }

    private final void showQrReceiveDialog(final String str, final String str2, final String str3) {
        final Activity parentActivity = getParentActivity();
        QRCodeBottomSheet qRCodeBottomSheet = new QRCodeBottomSheet(str2, str, parentActivity) { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$showQrReceiveDialog$1
            @Override // org.telegram.p043ui.Components.QRCodeBottomSheet
            public String getCustomQrCenterImageUrl() {
                return str3;
            }

            @Override // org.telegram.p043ui.Components.QRCodeBottomSheet
            public int getType() {
                return IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_RECEIVE;
            }
        };
        qRCodeBottomSheet.setupWalletTypeReceive(getResourceManager().getString(C3473R.string.wallet_receive_dialog_title), getResourceManager().getString(C3473R.string.wallet_receive_dialog_btn_text), str);
        showDialog(qRCodeBottomSheet);
    }

    /* compiled from: WalletTokenDetailsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$Companion */
    /* loaded from: classes6.dex */
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
