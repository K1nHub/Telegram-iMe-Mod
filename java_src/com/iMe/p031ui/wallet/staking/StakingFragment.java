package com.iMe.p031ui.wallet.staking;

import android.content.Context;
import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p024ui.view.CollapsableHeaderTabbedViewPager;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.fork.utils.TabbedViewPagerDelegate;
import com.iMe.model.staking.StakingDashboardItem;
import com.iMe.model.staking.StakingNavigationTab;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.navigation.common.router.base.BaseNavigationRouter;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.p023di.module.NavigationModuleKt;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.custom.StakingDashboardView;
import com.iMe.p031ui.wallet.staking.operations.StakingOperationsFragment;
import com.iMe.p031ui.wallet.staking.programmes.StakingProgrammesFragment;
import com.iMe.storage.domain.model.staking.StakingTabType;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.hints.HintUtils;
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
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentStakingBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3485ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.ViewPagerFixed;
import org.telegram.p043ui.ManageLinksActivity;
/* compiled from: StakingFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.StakingFragment */
/* loaded from: classes4.dex */
public final class StakingFragment extends WalletAuthBaseFragment implements StakingView, NavigationViewConfiguration, TabbedViewPagerDelegate<TabbedFragmentPage<MvpFragment>> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(StakingFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(StakingFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy dashboardView$delegate;
    private final Lazy navigationRouter$delegate;
    private final Lazy pageTabs$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    public static final StakingFragment newInstance() {
        return Companion.newInstance();
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public /* synthetic */ void bind(TabbedFragmentPage<MvpFragment> tabbedFragmentPage, int i) {
        TabbedViewPagerDelegate.CC.$default$bind(this, tabbedFragmentPage, i);
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public BaseFragment getParentFragment() {
        return this;
    }

    public StakingFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Function0<StakingPresenter> function0 = new Function0<StakingPresenter>() { // from class: com.iMe.ui.wallet.staking.StakingFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final StakingPresenter invoke() {
                Lazy lazy4;
                final StakingFragment stakingFragment = StakingFragment.this;
                lazy4 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<StakingPresenter>() { // from class: com.iMe.ui.wallet.staking.StakingFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.staking.StakingPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final StakingPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(StakingPresenter.class), qualifier, function02);
                    }
                });
                return (StakingPresenter) lazy4.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, StakingPresenter.class.getName() + ".presenter", function0);
        final StringQualifier common_tabs_navigator = NavigationModuleKt.getCOMMON_TABS_NAVIGATOR();
        final StakingFragment$navigationRouter$2 stakingFragment$navigationRouter$2 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.staking.StakingFragment$navigationRouter$2
            @Override // kotlin.jvm.functions.Function0
            public final ParametersHolder invoke() {
                return ParametersHolderKt.parametersOf(Boolean.TRUE);
            }
        };
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<NavigationRouter<MvpFragment>>() { // from class: com.iMe.ui.wallet.staking.StakingFragment$special$$inlined$inject$default$1
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
                Function0<? extends ParametersHolder> function02 = stakingFragment$navigationRouter$2;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(NavigationRouter.class), qualifier, function02);
            }
        });
        this.navigationRouter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentStakingBinding>() { // from class: com.iMe.ui.wallet.staking.StakingFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentStakingBinding invoke() {
                return ForkFragmentStakingBinding.inflate(BaseFragmentExtKt.getLayoutInflater(StakingFragment.this));
            }
        }, 1, (Object) null);
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends StakingNavigationTab>>() { // from class: com.iMe.ui.wallet.staking.StakingFragment$pageTabs$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends StakingNavigationTab> invoke() {
                List<? extends StakingNavigationTab> initPageTabs;
                initPageTabs = StakingFragment.this.initPageTabs();
                return initPageTabs;
            }
        });
        this.pageTabs$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<StakingDashboardView>() { // from class: com.iMe.ui.wallet.staking.StakingFragment$dashboardView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final StakingDashboardView invoke() {
                StakingDashboardView initDashboardView;
                initDashboardView = StakingFragment.this.initDashboardView();
                return initDashboardView;
            }
        });
        this.dashboardView$delegate = lazy3;
    }

    private final StakingPresenter getPresenter() {
        return (StakingPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NavigationRouter<MvpFragment> getNavigationRouter() {
        return (NavigationRouter) this.navigationRouter$delegate.getValue();
    }

    private final ForkFragmentStakingBinding getBinding() {
        return (ForkFragmentStakingBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final List<StakingNavigationTab> getPageTabs() {
        return (List) this.pageTabs$delegate.getValue();
    }

    private final StakingDashboardView getDashboardView() {
        return (StakingDashboardView) this.dashboardView$delegate.getValue();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupListeners();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
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

    @Override // com.iMe.p031ui.wallet.staking.StakingView
    public void onTabSelected(int i) {
        CollapsableHeaderTabbedViewPager collapsableHeaderTabbedViewPager = getBinding().stakingPager;
        if (collapsableHeaderTabbedViewPager.getPager().getCurrentPosition() != i) {
            collapsableHeaderTabbedViewPager.getPager().setPosition(i);
            collapsableHeaderTabbedViewPager.getTabsView().selectTabWithId(getPageTabs().get(i).getId(), 1.0f);
        }
    }

    @Override // com.iMe.p031ui.wallet.staking.StakingView
    public void onSetupNavigationRouter() {
        List mutableList;
        NavigationRouter<MvpFragment> navigationRouter = getNavigationRouter();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getPageTabs());
        navigationRouter.init(new NavigationConfiguration<>(this, mutableList));
        CollapsableHeaderTabbedViewPager collapsableHeaderTabbedViewPager = getBinding().stakingPager;
        collapsableHeaderTabbedViewPager.init(this, ViewPagerFixed.TabsView.TabType.TITLE);
        ViewPagerFixed.TabsView tabsView = collapsableHeaderTabbedViewPager.getTabsView();
        tabsView.setElevation(this.actionBar.getElevation());
        tabsView.setColors(Theme.key_actionBarTabLine, Theme.key_actionBarTabActiveText, Theme.key_actionBarTabUnactiveText, Theme.key_actionBarTabSelector, Theme.key_actionBarDefault);
    }

    @Override // com.iMe.p031ui.wallet.staking.StakingView
    public void updateDashboardItem(StakingDashboardItem stakingDashboardItem) {
        Intrinsics.checkNotNullParameter(stakingDashboardItem, "stakingDashboardItem");
        getDashboardView().setupItem(stakingDashboardItem);
    }

    @Override // com.iMe.p031ui.wallet.staking.StakingView
    public void showStakingInfoHint() {
        HintUtils hintUtils = getHintUtils();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        hintUtils.showStakingInfoHint(parentLayout);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return getBinding().stakingPager.isSwipeBackEnabled();
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public View getScrollableHeaderView() {
        return getDashboardView();
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public SwipeRefreshLayout getSwipeRefreshLayout() {
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public List<TabbedFragmentPage<MvpFragment>> getPages() {
        int collectionSizeOrDefault;
        List<StakingNavigationTab> pageTabs = getPageTabs();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pageTabs, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (StakingNavigationTab stakingNavigationTab : pageTabs) {
            arrayList.add(stakingNavigationTab.getPage());
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

    @Override // com.iMe.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z && !z2) {
            getPresenter().showStakingInfoHint();
        }
        super.onTransitionAnimationEnd(z, z2);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3485ActionBar c3485ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_AB_SELECTORCOLOR;
        int i2 = Theme.key_actionBarDefaultSelector;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.staking.StakingFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                StakingFragment.this.setupColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(c3485ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, i2));
        arrayListOf.addAll(getBinding().stakingPager.getThemeDescription());
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            arrayListOf.addAll(mvpFragment.getThemeDescriptions());
        }
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<StakingNavigationTab> initPageTabs() {
        StakingTabType[] values = StakingTabType.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (final StakingTabType stakingTabType : values) {
            arrayList.add(new StakingNavigationTab(stakingTabType.getFragmentId(), new TabbedFragmentPage(getResourceManager().getString(stakingTabType.getTitleResId()), 0, StakingProgrammesFragment.Companion.newInstance(stakingTabType), new Function0<View>() { // from class: com.iMe.ui.wallet.staking.StakingFragment$initPageTabs$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final View invoke() {
                    NavigationRouter navigationRouter;
                    navigationRouter = StakingFragment.this.getNavigationRouter();
                    Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.base.mvp.MvpFragment>");
                    return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(stakingTabType.getFragmentId());
                }
            }, 2, null)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final StakingDashboardView initDashboardView() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return new StakingDashboardView(context, null, 0, 6, null);
    }

    private final void setupActionBar() {
        C3485ActionBar c3485ActionBar = this.actionBar;
        c3485ActionBar.setCastShadows(false);
        c3485ActionBar.setBackButtonImage(C3419R.C3421drawable.ic_ab_back);
        c3485ActionBar.setTitle(getResourceManager().getString(C3419R.string.staking_title));
        c3485ActionBar.setAllowOverlayTitle(true);
        c3485ActionBar.createMenu().addItem(IdFabric$Menu.STAKING_HELP, C3419R.C3421drawable.msg_help);
        c3485ActionBar.setActionBarMenuOnItemClick(new C3485ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.staking.StakingFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3485ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    StakingFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.STAKING_HELP) {
                    StakingFragment.this.showInfoDialog();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showInfoDialog() {
        showDialog(DialogsFactoryKt.createInfoBottomSheetDialog$default(this, null, getResourceManager().getString(C3419R.string.staking_info_description), getResourceManager().getString(C3419R.string.staking_info_more), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.StakingFragment$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingFragment.showInfoDialog$lambda$12(StakingFragment.this);
            }
        }, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showInfoDialog$lambda$12(StakingFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Browser.openUrl(this$0.getParentActivity(), this$0.getResourceManager().getString(C3419R.string.staking_info_site_url));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        ForkFragmentStakingBinding binding = getBinding();
        binding.getRoot().setColorSchemeColors(getThemedColor(Theme.key_chats_actionBackground));
        binding.stakingPager.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        getDashboardView().setupColors();
    }

    private final void setupListeners() {
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.staking.StakingFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                StakingFragment.setupListeners$lambda$14(StakingFragment.this);
            }
        });
        getDashboardView().setupListeners(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.StakingFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingFragment.setupListeners$lambda$15(StakingFragment.this);
            }
        }, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.StakingFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingFragment.setupListeners$lambda$16(StakingFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$14(StakingFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().reload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$15(StakingFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.presentFragment(ManageLinksActivity.newInstanceForStakingCalculator(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$16(StakingFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.presentFragment(StakingOperationsFragment.Companion.newInstance());
    }

    /* compiled from: StakingFragment.kt */
    /* renamed from: com.iMe.ui.wallet.staking.StakingFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingFragment newInstance() {
            return new StakingFragment();
        }
    }
}
