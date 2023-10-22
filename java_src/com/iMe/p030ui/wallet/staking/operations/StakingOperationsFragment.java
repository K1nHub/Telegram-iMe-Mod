package com.iMe.p030ui.wallet.staking.operations;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p023ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.p023ui.view.TabbedViewPager;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.fork.utils.TabbedViewPagerDelegate;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.details.StakingOperationsGroup;
import com.iMe.model.wallet.details.WalletTokenDetailsNavigationTab;
import com.iMe.model.wallet.transaction.WalletTransactionsScreenType;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.navigation.common.router.base.BaseNavigationRouter;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.p022di.module.NavigationModuleKt;
import com.iMe.p030ui.base.mvp.MvpFragment;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.NetworkTypeView;
import com.iMe.p030ui.wallet.transaction.WalletTransactionsFragment;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.tbuonomo.viewpagerdotsindicator.ViewExtKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.databinding.ForkFragmentStakingOperationsBinding;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ActionBar.ThemeDescription;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.ViewPagerFixed;
/* compiled from: StakingOperationsFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment */
/* loaded from: classes4.dex */
public final class StakingOperationsFragment extends WalletAuthBaseFragment implements StakingOperationsView, NavigationViewConfiguration, TabbedViewPagerDelegate<TabbedFragmentPage<MvpFragment>> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(StakingOperationsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(StakingOperationsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy navigationRouter$delegate;
    private NetworkTypeView networkTypeView;
    private final Lazy pageTabs$delegate;
    private final MoxyKtxDelegate presenter$delegate;

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

    public StakingOperationsFragment() {
        Lazy lazy;
        Lazy lazy2;
        Function0<StakingOperationsPresenter> function0 = new Function0<StakingOperationsPresenter>() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final StakingOperationsPresenter invoke() {
                Lazy lazy3;
                final StakingOperationsFragment stakingOperationsFragment = StakingOperationsFragment.this;
                lazy3 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<StakingOperationsPresenter>() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.staking.operations.StakingOperationsPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final StakingOperationsPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(StakingOperationsPresenter.class), qualifier, function02);
                    }
                });
                return (StakingOperationsPresenter) lazy3.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, StakingOperationsPresenter.class.getName() + ".presenter", function0);
        final StringQualifier common_tabs_navigator = NavigationModuleKt.getCOMMON_TABS_NAVIGATOR();
        final StakingOperationsFragment$navigationRouter$2 stakingOperationsFragment$navigationRouter$2 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$navigationRouter$2
            @Override // kotlin.jvm.functions.Function0
            public final ParametersHolder invoke() {
                return ParametersHolderKt.parametersOf(Boolean.TRUE);
            }
        };
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<NavigationRouter<MvpFragment>>() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$special$$inlined$inject$default$1
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
                Function0<? extends ParametersHolder> function02 = stakingOperationsFragment$navigationRouter$2;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(NavigationRouter.class), qualifier, function02);
            }
        });
        this.navigationRouter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentStakingOperationsBinding>() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentStakingOperationsBinding invoke() {
                return ForkFragmentStakingOperationsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(StakingOperationsFragment.this));
            }
        }, 1, (Object) null);
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends WalletTokenDetailsNavigationTab>>() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$pageTabs$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends WalletTokenDetailsNavigationTab> invoke() {
                List<? extends WalletTokenDetailsNavigationTab> initPageTabs;
                initPageTabs = StakingOperationsFragment.this.initPageTabs();
                return initPageTabs;
            }
        });
        this.pageTabs$delegate = lazy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final StakingOperationsPresenter getPresenter() {
        return (StakingOperationsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NavigationRouter<MvpFragment> getNavigationRouter() {
        return (NavigationRouter) this.navigationRouter$delegate.getValue();
    }

    private final ForkFragmentStakingOperationsBinding getBinding() {
        return (ForkFragmentStakingOperationsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final List<WalletTokenDetailsNavigationTab> getPageTabs() {
        return (List) this.pageTabs$delegate.getValue();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        TabbedViewPager root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p030ui.base.mvp.MvpFragment
    public void onViewReady() {
        getPresenter().setupNavigationRouter();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onActivityResultFragment(i, i2, intent);
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNavigationRouter().clean();
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
    public void onDestroyView() {
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onDestroyView();
        }
        super.onDestroyView();
    }

    @Override // com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onResume();
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
    public void onPause() {
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onPause();
        }
        super.onPause();
    }

    @Override // com.iMe.p030ui.wallet.staking.operations.StakingOperationsView
    public void onTabSelected(int i) {
        TabbedViewPager tabbedViewPager = getBinding().operationsPager;
        if (tabbedViewPager.getPager().currentPosition != i) {
            tabbedViewPager.getPager().setPosition(i);
            tabbedViewPager.getTabsView().selectTabWithId(getPageTabs().get(i).getId(), 1.0f);
        }
    }

    @Override // com.iMe.p030ui.wallet.staking.operations.StakingOperationsView
    public void onSetupNavigationRouter() {
        List mutableList;
        NavigationRouter<MvpFragment> navigationRouter = getNavigationRouter();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getPageTabs());
        navigationRouter.init(new NavigationConfiguration<>(this, mutableList));
        TabbedViewPager tabbedViewPager = getBinding().operationsPager;
        tabbedViewPager.init(this, ViewPagerFixed.TabsView.TabType.TITLE);
        ViewPagerFixed.TabsView tabsView = tabbedViewPager.getTabsView();
        tabsView.setElevation(this.actionBar.getElevation());
        tabsView.setColors(Theme.key_actionBarTabLine, Theme.key_actionBarTabActiveText, Theme.key_actionBarTabUnactiveText, Theme.key_actionBarTabSelector, Theme.key_actionBarDefault);
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return getBinding().operationsPager.isSwipeBackEnabled();
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

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkItem network, List<? extends NetworkItem> availableNetworks) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = getParentActivity();
        Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1 = new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                StakingOperationsFragment.showChooseNetworkDialog$lambda$8(StakingOperationsFragment.this, (NetworkItem.Crypto) obj);
            }
        };
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(companion.newInstance(parentActivity, network, availableNetworks, callbacks$Callback1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$8(StakingOperationsFragment this$0, NetworkItem.Crypto crypto) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onNetworkSelected(crypto);
    }

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void setupNetwork(NetworkItem networkItem) {
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        NetworkTypeView networkTypeView = this.networkTypeView;
        if (networkTypeView == null) {
            return;
        }
        networkTypeView.setNetwork(networkItem);
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        TabbedViewPager root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarDefaultSelector));
        arrayListOf.addAll(getBinding().operationsPager.getThemeDescription());
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            arrayListOf.addAll(mvpFragment.getThemeDescriptions());
        }
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<WalletTokenDetailsNavigationTab> initPageTabs() {
        StakingOperationsGroup[] values = StakingOperationsGroup.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (final StakingOperationsGroup stakingOperationsGroup : values) {
            arrayList.add(new WalletTokenDetailsNavigationTab(stakingOperationsGroup.getId(), new TabbedFragmentPage(getResourceManager().getString(stakingOperationsGroup.getNameResId()), 0, WalletTransactionsFragment.Companion.newInstance$default(WalletTransactionsFragment.Companion, new WalletTransactionsScreenType.StakingOperationsTab(stakingOperationsGroup.getStakingOperationType()), null, 2, null), new Function0<View>() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$initPageTabs$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final View invoke() {
                    NavigationRouter navigationRouter;
                    navigationRouter = StakingOperationsFragment.this.getNavigationRouter();
                    Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.base.mvp.MvpFragment>");
                    return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(stakingOperationsGroup.getId());
                }
            }, 2, null)));
        }
        return arrayList;
    }

    private final void setupActionBar() {
        C3702ActionBar c3702ActionBar = this.actionBar;
        c3702ActionBar.setCastShadows(false);
        c3702ActionBar.setBackButtonImage(C3630R.C3632drawable.ic_ab_back);
        c3702ActionBar.setTitle(getResourceManager().getString(C3630R.string.wallet_transactions_toolbar_title));
        c3702ActionBar.setAllowOverlayTitle(true);
        c3702ActionBar.setActionBarMenuOnItemClick(new C3702ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$setupActionBar$1$1
            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                StakingOperationsPresenter presenter;
                if (i == -1) {
                    StakingOperationsFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.NETWORK_SWITCH) {
                    presenter = StakingOperationsFragment.this.getPresenter();
                    presenter.startChooseNetworkDialog();
                }
            }
        });
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        this.networkTypeView = new NetworkTypeView(parentActivity, null, 0, 6, null);
        ActionBarMenuItem setupActionBar$lambda$13$lambda$12 = c3702ActionBar.createMenu().addItemWithWidth(IdFabric$Menu.NETWORK_SWITCH, 0, -2);
        setupActionBar$lambda$13$lambda$12.disableRipple();
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$13$lambda$12, "setupActionBar$lambda$13$lambda$12");
        ViewExtKt.setPaddingHorizontal(setupActionBar$lambda$13$lambda$12, AndroidUtilities.m102dp(14));
        setupActionBar$lambda$13$lambda$12.addView(this.networkTypeView, LayoutHelper.createFrame(-2, -2, 8388629));
    }

    /* compiled from: StakingOperationsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingOperationsFragment newInstance() {
            return new StakingOperationsFragment();
        }
    }
}
