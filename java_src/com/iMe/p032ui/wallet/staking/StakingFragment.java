package com.iMe.p032ui.wallet.staking;

import android.content.Context;
import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p025ui.view.CollapsableHeaderTabbedViewPager;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.fork.utils.TabbedViewPagerDelegate;
import com.iMe.model.staking.StakingDashboardItem;
import com.iMe.model.staking.StakingNavigationTab;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.p024di.module.NavigationModuleKt;
import com.iMe.p032ui.base.WalletAuthFragment;
import com.iMe.p032ui.base.mvp.MvpFragment;
import com.iMe.p032ui.custom.StakingDashboardView;
import com.iMe.p032ui.wallet.staking.operations.StakingOperationsFragment;
import com.iMe.p032ui.wallet.staking.programmes.StakingProgrammesFragment;
import com.iMe.storage.domain.model.staking.StakingTabType;
import com.iMe.utils.dialogs.DialogsFactoryKt;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentStakingBinding;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3381ActionBar;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Components.ViewPagerFixed;
import org.telegram.p048ui.ManageLinksActivity;
/* compiled from: StakingFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.StakingFragment */
/* loaded from: classes4.dex */
public final class StakingFragment extends WalletAuthFragment implements StakingView, NavigationViewConfiguration, TabbedViewPagerDelegate<TabbedFragmentPage<MvpFragment>> {
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
        StakingFragment$presenter$2 stakingFragment$presenter$2 = new StakingFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, StakingPresenter.class.getName() + ".presenter", stakingFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new StakingFragment$special$$inlined$inject$default$1(this, NavigationModuleKt.getCOMMON_TABS_NAVIGATOR(), StakingFragment$navigationRouter$2.INSTANCE));
        this.navigationRouter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new StakingFragment$binding$2(this), 1, (Object) null);
        lazy2 = LazyKt__LazyJVMKt.lazy(new StakingFragment$pageTabs$2(this));
        this.pageTabs$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new StakingFragment$dashboardView$2(this));
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

    @Override // com.iMe.p032ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupListeners();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p032ui.base.WalletAuthFragment, com.iMe.p032ui.base.mvp.MvpFragment
    public void onViewReady() {
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

    @Override // com.iMe.p032ui.wallet.staking.StakingView
    public void onTabSelected(int i) {
        CollapsableHeaderTabbedViewPager collapsableHeaderTabbedViewPager = getBinding().stakingPager;
        if (collapsableHeaderTabbedViewPager.getPager().getCurrentPosition() != i) {
            collapsableHeaderTabbedViewPager.getPager().setPosition(i);
            collapsableHeaderTabbedViewPager.getTabsView().selectTabWithId(getPageTabs().get(i).getId(), 1.0f);
        }
    }

    @Override // com.iMe.p032ui.wallet.staking.StakingView
    public void onSetupNavigationRouter() {
        List mutableList;
        NavigationRouter<MvpFragment> navigationRouter = getNavigationRouter();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getPageTabs());
        navigationRouter.init(new NavigationConfiguration<>(this, mutableList));
        CollapsableHeaderTabbedViewPager collapsableHeaderTabbedViewPager = getBinding().stakingPager;
        collapsableHeaderTabbedViewPager.init(this, ViewPagerFixed.TabsView.TabType.TITLE);
        ViewPagerFixed.TabsView tabsView = collapsableHeaderTabbedViewPager.getTabsView();
        tabsView.setElevation(this.actionBar.getElevation());
        tabsView.setColors("actionBarTabLine", "actionBarTabActiveText", "actionBarTabUnactiveText", "actionBarTabSelector", "actionBarDefault");
    }

    @Override // com.iMe.p032ui.wallet.staking.StakingView
    public void updateDashboardItem(StakingDashboardItem stakingDashboardItem) {
        Intrinsics.checkNotNullParameter(stakingDashboardItem, "stakingDashboardItem");
        getDashboardView().setupItem(stakingDashboardItem);
    }

    @Override // com.iMe.p032ui.wallet.staking.StakingView
    public void showStakingInfoHint() {
        HintUtils hintUtils = getHintUtils();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        hintUtils.showStakingInfoHint(parentLayout);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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

    @Override // com.iMe.p032ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z && !z2) {
            getPresenter().showStakingInfoHint();
        }
        super.onTransitionAnimationEnd(z, z2);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.staking.StakingFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                StakingFragment.this.setupColors();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
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
        for (StakingTabType stakingTabType : values) {
            arrayList.add(new StakingNavigationTab(stakingTabType.getFragmentId(), new TabbedFragmentPage(getResourceManager().getString(stakingTabType.getTitleResId()), 0, StakingProgrammesFragment.Companion.newInstance(stakingTabType), new StakingFragment$initPageTabs$1$1(this, stakingTabType), 2, null)));
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
        C3381ActionBar c3381ActionBar = this.actionBar;
        c3381ActionBar.setCastShadows(false);
        c3381ActionBar.setBackButtonImage(C3316R.C3318drawable.ic_ab_back);
        c3381ActionBar.setTitle(getResourceManager().getString(C3316R.string.staking_title));
        c3381ActionBar.setAllowOverlayTitle(true);
        c3381ActionBar.createMenu().addItem(IdFabric$Menu.STAKING_HELP, C3316R.C3318drawable.msg_help);
        c3381ActionBar.setActionBarMenuOnItemClick(new C3381ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.staking.StakingFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3381ActionBar.ActionBarMenuOnItemClick
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
        showDialog(DialogsFactoryKt.createInfoBottomSheetDialog$default(this, null, getResourceManager().getString(C3316R.string.staking_info_description), getResourceManager().getString(C3316R.string.staking_info_more), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.StakingFragment$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingFragment.showInfoDialog$lambda$12(StakingFragment.this);
            }
        }, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showInfoDialog$lambda$12(StakingFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Browser.openUrl(this$0.getParentActivity(), this$0.getResourceManager().getString(C3316R.string.staking_info_site_url));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        ForkFragmentStakingBinding binding = getBinding();
        binding.getRoot().setColorSchemeColors(getThemedColor("chats_actionBackground"));
        binding.stakingPager.setBackgroundColor(getThemedColor("windowBackgroundGray"));
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
