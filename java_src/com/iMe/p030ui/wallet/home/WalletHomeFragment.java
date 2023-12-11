package com.iMe.p030ui.wallet.home;

import android.content.Context;
import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.iMe.fork.p023ui.view.TabbedViewPager;
import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.fork.utils.TabbedViewPagerDelegate;
import com.iMe.model.wallet.home.navigation.WalletHomeNavigationTab;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.p022di.module.NavigationModuleKt;
import com.iMe.p030ui.wallet.common.WalletTabFragment;
import com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment;
import com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment;
import com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment;
import com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesFragment;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
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
import org.telegram.messenger.C3632R;
import org.telegram.messenger.databinding.ForkFragmentWalletHomeBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.ViewPagerFixed;
/* compiled from: WalletHomeFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.WalletHomeFragment */
/* loaded from: classes4.dex */
public final class WalletHomeFragment extends WalletTabFragment implements NavigationViewConfiguration, WalletHomeView, TabbedViewPagerDelegate<TabbedFragmentPage<WalletHomeTabFragment>> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletHomeFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/WalletHomePresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletHomeFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy homeNavigationRouter$delegate;
    private final Lazy pageTabs$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public /* synthetic */ void bind(TabbedFragmentPage<WalletHomeTabFragment> tabbedFragmentPage, int i) {
        TabbedViewPagerDelegate.CC.$default$bind(this, tabbedFragmentPage, i);
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        return null;
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

    public WalletHomeFragment() {
        Lazy lazy;
        Lazy lazy2;
        Function0<WalletHomePresenter> function0 = new Function0<WalletHomePresenter>() { // from class: com.iMe.ui.wallet.home.WalletHomeFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletHomePresenter invoke() {
                Lazy lazy3;
                final WalletHomeFragment walletHomeFragment = WalletHomeFragment.this;
                lazy3 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletHomePresenter>() { // from class: com.iMe.ui.wallet.home.WalletHomeFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.home.WalletHomePresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletHomePresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletHomePresenter.class), qualifier, function02);
                    }
                });
                return (WalletHomePresenter) lazy3.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletHomePresenter.class.getName() + ".presenter", function0);
        final StringQualifier common_tabs_navigator = NavigationModuleKt.getCOMMON_TABS_NAVIGATOR();
        final WalletHomeFragment$homeNavigationRouter$2 walletHomeFragment$homeNavigationRouter$2 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.home.WalletHomeFragment$homeNavigationRouter$2
            @Override // kotlin.jvm.functions.Function0
            public final ParametersHolder invoke() {
                return ParametersHolderKt.parametersOf(Boolean.TRUE);
            }
        };
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<NavigationRouter<WalletHomeTabFragment>>() { // from class: com.iMe.ui.wallet.home.WalletHomeFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.navigation.common.router.base.NavigationRouter<com.iMe.ui.wallet.home.tabs.WalletHomeTabFragment>] */
            @Override // kotlin.jvm.functions.Function0
            public final NavigationRouter<WalletHomeTabFragment> invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = common_tabs_navigator;
                Function0<? extends ParametersHolder> function02 = walletHomeFragment$homeNavigationRouter$2;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(NavigationRouter.class), qualifier, function02);
            }
        });
        this.homeNavigationRouter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletHomeBinding>() { // from class: com.iMe.ui.wallet.home.WalletHomeFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletHomeBinding invoke() {
                return ForkFragmentWalletHomeBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletHomeFragment.this));
            }
        }, 1, (Object) null);
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<List<WalletHomeNavigationTab>>() { // from class: com.iMe.ui.wallet.home.WalletHomeFragment$pageTabs$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<WalletHomeNavigationTab> invoke() {
                List<WalletHomeNavigationTab> initPageTabs;
                initPageTabs = WalletHomeFragment.this.initPageTabs();
                return initPageTabs;
            }
        });
        this.pageTabs$delegate = lazy2;
    }

    private final WalletHomePresenter getPresenter() {
        return (WalletHomePresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final NavigationRouter<WalletHomeTabFragment> getHomeNavigationRouter() {
        return (NavigationRouter) this.homeNavigationRouter$delegate.getValue();
    }

    private final ForkFragmentWalletHomeBinding getBinding() {
        return (ForkFragmentWalletHomeBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final List<WalletHomeNavigationTab> getPageTabs() {
        return (List) this.pageTabs$delegate.getValue();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return getBinding().walletHomeViewPager.isSwipeBackEnabled();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        TabbedViewPager root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.common.BottomNavigationTabFragment, com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p030ui.base.mvp.MvpFragment
    public void onViewReady() {
        getPresenter().setupNavigationRouter();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayListOf.addAll(getBinding().walletHomeViewPager.getThemeDescription());
        for (WalletHomeTabFragment walletHomeTabFragment : getHomeNavigationRouter().getScreenStack()) {
            Collection<? extends ThemeDescription> themeDescriptions = walletHomeTabFragment.getThemeDescriptions();
            if (themeDescriptions == null) {
                themeDescriptions = CollectionsKt__CollectionsKt.emptyList();
            }
            arrayListOf.addAll(themeDescriptions);
        }
        return arrayListOf;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        for (WalletHomeTabFragment walletHomeTabFragment : getHomeNavigationRouter().getScreenStack()) {
            walletHomeTabFragment.onActivityResultFragment(i, i2, intent);
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getHomeNavigationRouter().clean();
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p030ui.wallet.common.BottomNavigationTabFragment, com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onDestroyView() {
        for (WalletHomeTabFragment walletHomeTabFragment : getHomeNavigationRouter().getScreenStack()) {
            walletHomeTabFragment.onDestroyView();
        }
        super.onDestroyView();
    }

    @Override // com.iMe.p030ui.wallet.common.BottomNavigationTabFragment, com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        for (WalletHomeTabFragment walletHomeTabFragment : getHomeNavigationRouter().getScreenStack()) {
            walletHomeTabFragment.onResume();
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        for (WalletHomeTabFragment walletHomeTabFragment : getHomeNavigationRouter().getScreenStack()) {
            walletHomeTabFragment.onPause();
        }
        super.onPause();
    }

    @Override // com.iMe.p030ui.wallet.home.WalletHomeView
    public void loadTabsInfo() {
        for (WalletHomeTabFragment walletHomeTabFragment : getHomeNavigationRouter().getScreenStack()) {
            walletHomeTabFragment.loadTabInfo();
        }
    }

    @Override // com.iMe.p030ui.wallet.home.WalletHomeView
    public void loadBalances() {
        for (WalletHomeTabFragment walletHomeTabFragment : getHomeNavigationRouter().getScreenStack()) {
            walletHomeTabFragment.loadBalances();
        }
    }

    @Override // com.iMe.p030ui.wallet.home.WalletHomeView
    public void onTabSelected(int i) {
        TabbedViewPager tabbedViewPager = getBinding().walletHomeViewPager;
        if (tabbedViewPager.getPager().currentPosition != i) {
            tabbedViewPager.getPager().setPosition(i);
            tabbedViewPager.getTabsView().selectTabWithId(i, 1.0f);
        }
    }

    @Override // com.iMe.p030ui.wallet.home.WalletHomeView
    public void onSetupNavigationRouter() {
        getHomeNavigationRouter().init(new NavigationConfiguration<>(this, getPageTabs()));
        TabbedViewPager tabbedViewPager = getBinding().walletHomeViewPager;
        tabbedViewPager.init(this);
        ViewPagerFixed.TabsView tabsView = tabbedViewPager.getTabsView();
        tabsView.setElevation(AndroidUtilities.m105dp(2.0f));
        tabsView.setColors(Theme.key_actionBarTabLine, Theme.key_actionBarTabActiveText, Theme.key_actionBarTabUnactiveText, Theme.key_actionBarTabSelector, Theme.key_actionBarDefault);
    }

    @Override // com.iMe.p030ui.wallet.common.BottomNavigationTabFragment
    public void handleBottomPadding(int i) {
        for (WalletHomeTabFragment walletHomeTabFragment : getHomeNavigationRouter().getScreenStack()) {
            walletHomeTabFragment.handleBottomPadding(i);
        }
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public List<TabbedFragmentPage<WalletHomeTabFragment>> getPages() {
        int collectionSizeOrDefault;
        List<WalletHomeNavigationTab> pageTabs = getPageTabs();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pageTabs, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WalletHomeNavigationTab walletHomeNavigationTab : pageTabs) {
            arrayList.add(walletHomeNavigationTab.getPage());
        }
        return arrayList;
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public void onPageChanged(TabbedFragmentPage<WalletHomeTabFragment> newPage, TabbedFragmentPage<WalletHomeTabFragment> oldPage, int i, int i2) {
        Intrinsics.checkNotNullParameter(newPage, "newPage");
        Intrinsics.checkNotNullParameter(oldPage, "oldPage");
        getPresenter().selectTab(i);
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<WalletHomeNavigationTab> initPageTabs() {
        List<WalletHomeNavigationTab> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new WalletHomeNavigationTab(C3632R.C3635id.wallet_home_crypto, new TabbedFragmentPage(getResourceManager().getString(C3632R.string.wallet_home_navigation_crypto), C3632R.C3634drawable.fork_ic_crypto_24, WalletHomeCryptoFragment.Companion.newInstance(), null, 8, null)), new WalletHomeNavigationTab(C3632R.C3635id.wallet_home_binance_pay, new TabbedFragmentPage(getResourceManager().getString(C3632R.string.wallet_home_navigation_binance_pay), C3632R.C3634drawable.fork_ic_binance_pay_24, WalletHomeBinancePayFragment.Companion.newInstance(), null, 8, null)), new WalletHomeNavigationTab(C3632R.C3635id.wallet_home_internal_points, new TabbedFragmentPage(getResourceManager().getString(C3632R.string.wallet_home_navigation_services), C3632R.C3634drawable.fork_ic_points_24, WalletHomeServicesFragment.Companion.newInstance(), null, 8, null)));
        for (WalletHomeNavigationTab walletHomeNavigationTab : mutableListOf) {
            walletHomeNavigationTab.getPage().getFragment().setParentView(this);
        }
        return mutableListOf;
    }

    /* compiled from: WalletHomeFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.WalletHomeFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletHomeFragment newInstance() {
            return new WalletHomeFragment();
        }
    }
}
