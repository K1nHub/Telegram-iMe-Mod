package com.iMe.p030ui.catalog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.fxn.BubbleTabBar;
import com.fxn.OnBubbleClickListener;
import com.fxn.parser.MenuItem;
import com.github.mmin18.widget.RealtimeBlurView;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.CollectionsUtilsKt;
import com.iMe.model.common.NavigationTab;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.p022di.module.NavigationModuleKt;
import com.iMe.p030ui.base.mvp.MvpFragment;
import com.iMe.p030ui.catalog.tabs.CatalogFragment;
import com.iMe.p030ui.wallet.common.BottomNavigationDelegate;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
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
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentCatalogGlobalBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.LanguageSelectActivity;
/* compiled from: CatalogRootFragment.kt */
/* renamed from: com.iMe.ui.catalog.CatalogRootFragment */
/* loaded from: classes.dex */
public final class CatalogRootFragment extends MvpFragment implements BottomNavigationDelegate, CatalogRootView, NavigationViewConfiguration {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CatalogRootFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/catalog/CatalogRootPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CatalogRootFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy bottomNavigationRouter$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy tabs$delegate;

    public static final CatalogRootFragment newInstance() {
        return Companion.newInstance();
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public BaseFragment getParentFragment() {
        return this;
    }

    public CatalogRootFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Function0<CatalogRootPresenter> function0 = new Function0<CatalogRootPresenter>() { // from class: com.iMe.ui.catalog.CatalogRootFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CatalogRootPresenter invoke() {
                Lazy lazy4;
                final CatalogRootFragment catalogRootFragment = CatalogRootFragment.this;
                lazy4 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CatalogRootPresenter>() { // from class: com.iMe.ui.catalog.CatalogRootFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.catalog.CatalogRootPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final CatalogRootPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(CatalogRootPresenter.class), qualifier, function02);
                    }
                });
                return (CatalogRootPresenter) lazy4.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CatalogRootPresenter.class.getName() + ".presenter", function0);
        final StringQualifier common_bottom_navigator = NavigationModuleKt.getCOMMON_BOTTOM_NAVIGATOR();
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<NavigationRouter<CatalogFragment>>() { // from class: com.iMe.ui.catalog.CatalogRootFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.navigation.common.router.base.NavigationRouter<com.iMe.ui.catalog.tabs.CatalogFragment>] */
            @Override // kotlin.jvm.functions.Function0
            public final NavigationRouter<CatalogFragment> invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = common_bottom_navigator;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(NavigationRouter.class), qualifier, function02);
            }
        });
        this.bottomNavigationRouter$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.catalog.CatalogRootFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function02);
            }
        });
        this.resourceManager$delegate = lazy2;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentCatalogGlobalBinding>() { // from class: com.iMe.ui.catalog.CatalogRootFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentCatalogGlobalBinding invoke() {
                return ForkFragmentCatalogGlobalBinding.inflate(BaseFragmentExtKt.getLayoutInflater(CatalogRootFragment.this));
            }
        }, 1, (Object) null);
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<List<NavigationTab<CatalogFragment>>>() { // from class: com.iMe.ui.catalog.CatalogRootFragment$tabs$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<NavigationTab<CatalogFragment>> invoke() {
                List<NavigationTab<CatalogFragment>> initTabs;
                initTabs = CatalogRootFragment.this.initTabs();
                return initTabs;
            }
        });
        this.tabs$delegate = lazy3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CatalogRootPresenter getPresenter() {
        return (CatalogRootPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final NavigationRouter<CatalogFragment> getBottomNavigationRouter() {
        return (NavigationRouter) this.bottomNavigationRouter$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkFragmentCatalogGlobalBinding getBinding() {
        return (ForkFragmentCatalogGlobalBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final List<NavigationTab<CatalogFragment>> getTabs() {
        return (List) this.tabs$delegate.getValue();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        CatalogFragment currentScreen = getBottomNavigationRouter().getCurrentScreen();
        if (currentScreen != null) {
            return currentScreen.isSwipeBackEnabled(motionEvent);
        }
        return true;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupBottomNavigationBar();
        ConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public void onViewReady() {
        setupNavigationRouter();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getBottomNavigationRouter().clean();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        for (CatalogFragment catalogFragment : getBottomNavigationRouter().getScreenStack()) {
            catalogFragment.onActivityResultFragment(i, i2, intent);
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onDestroyView() {
        super.onDestroyView();
        for (CatalogFragment catalogFragment : getBottomNavigationRouter().getScreenStack()) {
            catalogFragment.onDestroyView();
        }
    }

    @Override // com.iMe.p030ui.wallet.common.BottomNavigationDelegate
    public void getBottomNavigationPadding(final Function1<? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final CardView cardView = getBinding().cardBottomNavigationWrapper;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.cardBottomNavigationWrapper");
        cardView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.iMe.ui.catalog.CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (cardView.getMeasuredWidth() <= 0 || cardView.getMeasuredHeight() <= 0) {
                    return;
                }
                cardView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                View view = cardView;
                Function1 function1 = action;
                int height = view.getHeight();
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
                int i = height + (marginLayoutParams != null ? marginLayoutParams.bottomMargin : 0);
                ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
                function1.invoke(Integer.valueOf(i + (marginLayoutParams2 != null ? marginLayoutParams2.topMargin : 0)));
            }
        });
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        CatalogFragment currentScreen = getBottomNavigationRouter().getCurrentScreen();
        if (currentScreen != null) {
            currentScreen.onResume();
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        CatalogFragment currentScreen = getBottomNavigationRouter().getCurrentScreen();
        if (currentScreen != null) {
            currentScreen.onPause();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_AB_SELECTORCOLOR;
        int i2 = Theme.key_actionBarDefaultSelector;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(c3704ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, i2), new ThemeDescription(null, 0, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.catalog.CatalogRootFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogRootFragment.getThemeDescriptions$lambda$4(CatalogRootFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_chats_actionBackground));
        for (CatalogFragment catalogFragment : getBottomNavigationRouter().getScreenStack()) {
            arrayListOf.addAll(catalogFragment.getThemeDescriptions());
        }
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$4(CatalogRootFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ForkFragmentCatalogGlobalBinding binding = this$0.getBinding();
        binding.cardBottomNavigationWrapper.setRadius(AndroidUtilities.m108dp(30.0f));
        binding.realtimeBlur.setOverlayColor(ViewExtKt.withAlpha(Theme.getColor(Theme.key_chats_actionBackground), 55));
    }

    @Override // com.iMe.p030ui.catalog.CatalogRootView
    public void onTabSelected(int i) {
        getBinding().bottomNavigationCatalog.setSelectedById(i, false);
        getBottomNavigationRouter().show(i);
    }

    @Override // com.iMe.p030ui.catalog.CatalogRootView
    public void openSelectLanguageScreen(int i, List<? extends LocaleController.LocaleInfo> languages) {
        Intrinsics.checkNotNullParameter(languages, "languages");
        presentFragment(LanguageSelectActivity.newInstanceForCatalog(i, CollectionsUtilsKt.toArrayList(languages), new Callbacks$Callback1() { // from class: com.iMe.ui.catalog.CatalogRootFragment$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                CatalogRootFragment.openSelectLanguageScreen$lambda$7(CatalogRootFragment.this, (Integer) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openSelectLanguageScreen$lambda$7(CatalogRootFragment this$0, Integer id) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CatalogRootPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(id, "id");
        presenter.onSelectedLanguageChanged(id.intValue());
    }

    @Override // com.iMe.p030ui.catalog.CatalogRootView
    public void onSelectedLanguageChanged() {
        Iterator<T> it = getTabs().iterator();
        while (it.hasNext()) {
            ((CatalogFragment) ((NavigationTab) it.next()).getFragment()).onSelectedLanguageChanged();
        }
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        FrameLayout frameLayout = getBinding().frameFragmentContainer;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.frameFragmentContainer");
        return frameLayout;
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setCastShadows(false);
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setTitle(getResourceManager().getString(C3632R.string.catalog_title));
        c3704ActionBar.setAllowOverlayTitle(true);
        c3704ActionBar.createMenu().addItem(IdFabric$Menu.LANGUAGE, C3632R.C3634drawable.msg_language);
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.catalog.CatalogRootFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                CatalogRootPresenter presenter;
                if (i == -1) {
                    CatalogRootFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.LANGUAGE) {
                    presenter = CatalogRootFragment.this.getPresenter();
                    presenter.onSelectLanguageClick();
                }
            }
        });
    }

    private final void setupColors() {
        ForkFragmentCatalogGlobalBinding binding = getBinding();
        RealtimeBlurView realtimeBlurView = binding.realtimeBlur;
        int i = Theme.key_chats_actionBackground;
        realtimeBlurView.setOverlayColor(ViewExtKt.withAlpha(getThemedColor(i), 55));
        BubbleTabBar bubbleTabBar = binding.bottomNavigationCatalog;
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        bubbleTabBar.setDisableIconColor(parentActivity, getThemedColor(i));
        Activity parentActivity2 = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity2, "parentActivity");
        bubbleTabBar.setTabContainerBackground(parentActivity2, getThemedColor(i));
    }

    private final void setupNavigationRouter() {
        getBottomNavigationRouter().init(new NavigationConfiguration<>(this, getTabs()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<NavigationTab<CatalogFragment>> initTabs() {
        List<NavigationTab<CatalogFragment>> mutableListOf;
        int i = C3632R.C3635id.catalog_root_bottom_navigation_channels;
        CatalogFragment.Companion companion = CatalogFragment.Companion;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new NavigationTab(i, companion.newInstance(ChatType.CHANNEL)), new NavigationTab(C3632R.C3635id.catalog_root_bottom_navigation_groups, companion.newInstance(ChatType.GROUP)));
        Iterator<T> it = mutableListOf.iterator();
        while (it.hasNext()) {
            ((CatalogFragment) ((NavigationTab) it.next()).getFragment()).setBottomNavigationDelegate(this);
        }
        return mutableListOf;
    }

    private final void setupBottomNavigationBar() {
        List<MenuItem> mutableListOf;
        BubbleTabBar bubbleTabBar = getBinding().bottomNavigationCatalog;
        bubbleTabBar.addBubbleListener(new OnBubbleClickListener() { // from class: com.iMe.ui.catalog.CatalogRootFragment$setupBottomNavigationBar$1$1
            @Override // com.fxn.OnBubbleClickListener
            public boolean onBubbleClick(int i) {
                CatalogRootPresenter presenter;
                presenter = CatalogRootFragment.this.getPresenter();
                presenter.selectTab(i);
                return true;
            }
        });
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new MenuItem(C3632R.C3635id.catalog_root_bottom_navigation_channels, getResourceManager().getString(C3632R.string.catalog_navigation_channels), C3632R.C3634drawable.fork_filter_icon_channel, true, getResourceManager().getColor(17170443), false, 32, null), new MenuItem(C3632R.C3635id.catalog_root_bottom_navigation_groups, getResourceManager().getString(C3632R.string.catalog_navigation_groups), C3632R.C3634drawable.msg_groups, true, getResourceManager().getColor(17170443), false, 32, null));
        bubbleTabBar.setMenu(mutableListOf);
    }

    /* compiled from: CatalogRootFragment.kt */
    /* renamed from: com.iMe.ui.catalog.CatalogRootFragment$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CatalogRootFragment newInstance() {
            return new CatalogRootFragment();
        }
    }
}
