package com.iMe.p031ui.catalog.tabs;

import android.content.Context;
import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.iMe.fork.p024ui.view.TabbedViewPager;
import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.fork.utils.TabbedViewPagerDelegate;
import com.iMe.model.catalog.CatalogNavigationTab;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.p023di.module.NavigationModuleKt;
import com.iMe.p031ui.catalog.tabs.all.CatalogAllFragment;
import com.iMe.p031ui.catalog.tabs.categories.CatalogCategoriesFragment;
import com.iMe.p031ui.catalog.tabs.user_channels.CatalogUserChannelsFragment;
import com.iMe.p031ui.wallet.common.BottomNavigationTabFragment;
import com.iMe.storage.domain.model.catalog.ChatType;
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
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.databinding.ForkFragmentCatalogTabsBinding;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Components.ViewPagerFixed;
/* compiled from: CatalogFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.CatalogFragment */
/* loaded from: classes.dex */
public final class CatalogFragment extends BottomNavigationTabFragment implements CatalogView, NavigationViewConfiguration, TabbedViewPagerDelegate<TabbedFragmentPage<CatalogTabFragment>> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CatalogFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/catalog/tabs/CatalogPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CatalogFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final ChatType chatType;
    private final Lazy navigationRouter$delegate;
    private final Lazy pageTabs$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public /* synthetic */ void bind(TabbedFragmentPage<CatalogTabFragment> tabbedFragmentPage, int i) {
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

    public CatalogFragment(ChatType chatType) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        this.chatType = chatType;
        CatalogFragment$presenter$2 catalogFragment$presenter$2 = new CatalogFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CatalogPresenter.class.getName() + ".presenter", catalogFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new CatalogFragment$special$$inlined$inject$default$1(this, NavigationModuleKt.getCOMMON_TABS_NAVIGATOR(), CatalogFragment$navigationRouter$2.INSTANCE));
        this.navigationRouter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CatalogFragment$binding$2(this), 1, (Object) null);
        lazy2 = LazyKt__LazyJVMKt.lazy(new CatalogFragment$pageTabs$2(this));
        this.pageTabs$delegate = lazy2;
    }

    private final CatalogPresenter getPresenter() {
        return (CatalogPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NavigationRouter<CatalogTabFragment> getNavigationRouter() {
        return (NavigationRouter) this.navigationRouter$delegate.getValue();
    }

    private final ForkFragmentCatalogTabsBinding getBinding() {
        return (ForkFragmentCatalogTabsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final List<CatalogNavigationTab> getPageTabs() {
        return (List) this.pageTabs$delegate.getValue();
    }

    public final void onSelectedLanguageChanged() {
        for (CatalogNavigationTab catalogNavigationTab : getPageTabs()) {
            CatalogTabFragment fragment = catalogNavigationTab.getPage().getFragment();
            if (fragment.isCreated()) {
                fragment.onSelectedLanguageChanged();
            }
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.common.BottomNavigationTabFragment, com.iMe.p031ui.base.WalletAuthFragment, com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
        getPresenter().setupNavigationRouter();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        for (CatalogTabFragment catalogTabFragment : getNavigationRouter().getScreenStack()) {
            catalogTabFragment.onActivityResultFragment(i, i2, intent);
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNavigationRouter().clean();
    }

    @Override // com.iMe.p031ui.wallet.common.BottomNavigationTabFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onDestroyView() {
        super.onDestroyView();
        for (CatalogTabFragment catalogTabFragment : getNavigationRouter().getScreenStack()) {
            catalogTabFragment.onDestroyView();
        }
    }

    @Override // com.iMe.p031ui.wallet.common.BottomNavigationTabFragment, com.iMe.p031ui.base.WalletAuthFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        for (CatalogTabFragment catalogTabFragment : getNavigationRouter().getScreenStack()) {
            catalogTabFragment.onResume();
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        for (CatalogTabFragment catalogTabFragment : getNavigationRouter().getScreenStack()) {
            catalogTabFragment.onPause();
        }
    }

    @Override // com.iMe.p031ui.catalog.tabs.CatalogView
    public void onTabSelected(int i) {
        TabbedViewPager tabbedViewPager = getBinding().catalogPager;
        if (tabbedViewPager.getPager().getCurrentPosition() != i) {
            tabbedViewPager.getPager().setPosition(i);
            tabbedViewPager.getTabsView().selectTabWithId(i, 1.0f);
        }
    }

    @Override // com.iMe.p031ui.catalog.tabs.CatalogView
    public void onSetupNavigationRouter() {
        List mutableList;
        NavigationRouter<CatalogTabFragment> navigationRouter = getNavigationRouter();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getPageTabs());
        navigationRouter.init(new NavigationConfiguration<>(this, mutableList));
        TabbedViewPager tabbedViewPager = getBinding().catalogPager;
        tabbedViewPager.init(this, ViewPagerFixed.TabsView.TabType.TITLE);
        ViewPagerFixed.TabsView tabsView = tabbedViewPager.getTabsView();
        tabsView.setElevation(AndroidUtilities.m54dp(2));
        tabsView.setColors(Theme.key_actionBarTabLine, Theme.key_actionBarTabActiveText, Theme.key_actionBarTabUnactiveText, Theme.key_actionBarTabSelector, Theme.key_actionBarDefault);
    }

    @Override // com.iMe.p031ui.wallet.common.BottomNavigationTabFragment
    public void handleBottomPadding(int i) {
        for (CatalogTabFragment catalogTabFragment : getNavigationRouter().getScreenStack()) {
            catalogTabFragment.handleBottomPadding(i);
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return getBinding().catalogPager.isSwipeBackEnabled();
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public List<TabbedFragmentPage<CatalogTabFragment>> getPages() {
        int collectionSizeOrDefault;
        List<CatalogNavigationTab> pageTabs = getPageTabs();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pageTabs, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CatalogNavigationTab catalogNavigationTab : pageTabs) {
            arrayList.add(catalogNavigationTab.getPage());
        }
        return arrayList;
    }

    @Override // com.iMe.fork.utils.TabbedViewPagerDelegate
    public void onPageChanged(TabbedFragmentPage<CatalogTabFragment> newPage, TabbedFragmentPage<CatalogTabFragment> oldPage, int i, int i2) {
        Intrinsics.checkNotNullParameter(newPage, "newPage");
        Intrinsics.checkNotNullParameter(oldPage, "oldPage");
        oldPage.getFragment().onPause();
        newPage.getFragment().onResume();
        getPresenter().selectTab(i);
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.catalog.tabs.CatalogFragment$$ExternalSyntheticLambda0
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogFragment.this.setupColors();
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        arrayListOf.addAll(getBinding().catalogPager.getThemeDescription());
        for (CatalogTabFragment catalogTabFragment : getNavigationRouter().getScreenStack()) {
            arrayListOf.addAll(catalogTabFragment.getThemeDescriptions());
        }
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<CatalogNavigationTab> initPageTabs() {
        List<CatalogNavigationTab> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new CatalogNavigationTab[]{new CatalogNavigationTab(C3295R.C3298id.catalog_all, new TabbedFragmentPage(getResourceManager().getString(C3295R.string.catalog_all), 0, CatalogAllFragment.Companion.newInstance(this.chatType), new CatalogFragment$initPageTabs$1(this), 2, null)), new CatalogNavigationTab(C3295R.C3298id.catalog_categories, new TabbedFragmentPage(getResourceManager().getString(C3295R.string.catalog_categories), 0, CatalogCategoriesFragment.Companion.newInstance(this.chatType), new CatalogFragment$initPageTabs$2(this), 2, null)), new CatalogNavigationTab(C3295R.C3298id.catalog_user_channels, new TabbedFragmentPage(getResourceManager().getString(C3295R.string.catalog_user_channels), 0, CatalogUserChannelsFragment.Companion.newInstance(this.chatType), new CatalogFragment$initPageTabs$3(this), 2, null))});
        for (CatalogNavigationTab catalogNavigationTab : listOf) {
            catalogNavigationTab.getPage().getFragment().setBottomNavigationDelegate(getBottomNavigationDelegate());
        }
        return listOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        getBinding().getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
    }

    /* compiled from: CatalogFragment.kt */
    /* renamed from: com.iMe.ui.catalog.tabs.CatalogFragment$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CatalogFragment newInstance(ChatType chatType) {
            Intrinsics.checkNotNullParameter(chatType, "chatType");
            return new CatalogFragment(chatType);
        }
    }
}
