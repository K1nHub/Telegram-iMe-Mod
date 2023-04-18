package com.iMe.p031ui.wallet.staking.operations;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p024ui.view.TabbedViewPager;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.fork.utils.TabbedViewPagerDelegate;
import com.iMe.model.wallet.details.StakingOperationsGroup;
import com.iMe.model.wallet.details.WalletTokenDetailsNavigationTab;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.p023di.module.NavigationModuleKt;
import com.iMe.p031ui.base.WalletAuthFragment;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.custom.NetworkTypeView;
import com.iMe.p031ui.wallet.transaction.WalletTransactionsFragment;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.tbuonomo.viewpagerdotsindicator.ViewExtKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.databinding.ForkFragmentStakingOperationsBinding;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.C3306ActionBar;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.ViewPagerFixed;
/* compiled from: StakingOperationsFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment */
/* loaded from: classes4.dex */
public final class StakingOperationsFragment extends WalletAuthFragment implements StakingOperationsView, NavigationViewConfiguration, TabbedViewPagerDelegate<TabbedFragmentPage<MvpFragment>> {
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
        StakingOperationsFragment$presenter$2 stakingOperationsFragment$presenter$2 = new StakingOperationsFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, StakingOperationsPresenter.class.getName() + ".presenter", stakingOperationsFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new StakingOperationsFragment$special$$inlined$inject$default$1(this, NavigationModuleKt.getCOMMON_TABS_NAVIGATOR(), StakingOperationsFragment$navigationRouter$2.INSTANCE));
        this.navigationRouter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new StakingOperationsFragment$binding$2(this), 1, (Object) null);
        lazy2 = LazyKt__LazyJVMKt.lazy(new StakingOperationsFragment$pageTabs$2(this));
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

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        TabbedViewPager root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.base.WalletAuthFragment, com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
        getPresenter().setupNavigationRouter();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onActivityResultFragment(i, i2, intent);
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNavigationRouter().clean();
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onDestroyView() {
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onDestroyView();
        }
        super.onDestroyView();
    }

    @Override // com.iMe.p031ui.base.WalletAuthFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onResume();
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onPause() {
        for (MvpFragment mvpFragment : getNavigationRouter().getScreenStack()) {
            mvpFragment.onPause();
        }
        super.onPause();
    }

    @Override // com.iMe.p031ui.wallet.staking.operations.StakingOperationsView
    public void onTabSelected(int i) {
        TabbedViewPager tabbedViewPager = getBinding().operationsPager;
        if (tabbedViewPager.getPager().getCurrentPosition() != i) {
            tabbedViewPager.getPager().setPosition(i);
            tabbedViewPager.getTabsView().selectTabWithId(getPageTabs().get(i).getId(), 1.0f);
        }
    }

    @Override // com.iMe.p031ui.wallet.staking.operations.StakingOperationsView
    public void onSetupNavigationRouter() {
        List mutableList;
        NavigationRouter<MvpFragment> navigationRouter = getNavigationRouter();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getPageTabs());
        navigationRouter.init(new NavigationConfiguration<>(this, mutableList));
        TabbedViewPager tabbedViewPager = getBinding().operationsPager;
        tabbedViewPager.init(this, ViewPagerFixed.TabsView.TabType.TITLE);
        ViewPagerFixed.TabsView tabsView = tabbedViewPager.getTabsView();
        tabsView.setElevation(this.actionBar.getElevation());
        tabsView.setColors("actionBarTabLine", "actionBarTabActiveText", "actionBarTabUnactiveText", "actionBarTabSelector", "actionBarDefault");
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
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

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkType networkType, List<? extends NetworkType> availableNetworks, final Function1<? super NetworkType, Unit> action) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogsFactoryKt.createSelectNetworkTypeDialog(parentActivity, availableNetworks, networkType, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                StakingOperationsFragment.showChooseNetworkDialog$lambda$8(Function1.this, (NetworkType) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$8(Function1 action, NetworkType selectedNetworkType) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullExpressionValue(selectedNetworkType, "selectedNetworkType");
        action.invoke(selectedNetworkType);
    }

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void setupNetworkType(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        NetworkTypeView networkTypeView = this.networkTypeView;
        if (networkTypeView == null) {
            return;
        }
        networkTypeView.setNetworkType(networkType);
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        TabbedViewPager root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
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
        for (StakingOperationsGroup stakingOperationsGroup : values) {
            arrayList.add(new WalletTokenDetailsNavigationTab(stakingOperationsGroup.getId(), new TabbedFragmentPage(getResourceManager().getString(stakingOperationsGroup.getNameResId()), 0, WalletTransactionsFragment.Companion.newInstance$default(WalletTransactionsFragment.Companion, new WalletTransactionsFragment.ScreenType.StakingOperationsTab(stakingOperationsGroup.getStakingOperationType()), null, 2, null), new StakingOperationsFragment$initPageTabs$1$1(this, stakingOperationsGroup), 2, null)));
        }
        return arrayList;
    }

    private final void setupActionBar() {
        C3306ActionBar c3306ActionBar = this.actionBar;
        c3306ActionBar.setCastShadows(false);
        c3306ActionBar.setBackButtonImage(C3242R.C3244drawable.ic_ab_back);
        c3306ActionBar.setTitle(getResourceManager().getString(C3242R.string.wallet_transactions_toolbar_title));
        c3306ActionBar.setAllowOverlayTitle(true);
        c3306ActionBar.setActionBarMenuOnItemClick(new C3306ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$setupActionBar$1$1
            @Override // org.telegram.p044ui.ActionBar.C3306ActionBar.ActionBarMenuOnItemClick
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
        ActionBarMenuItem setupActionBar$lambda$13$lambda$12 = c3306ActionBar.createMenu().addItemWithWidth(IdFabric$Menu.NETWORK_SWITCH, 0, -2);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$13$lambda$12, "setupActionBar$lambda$13$lambda$12");
        ViewExtKt.setPaddingHorizontal(setupActionBar$lambda$13$lambda$12, AndroidUtilities.m50dp(14));
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
