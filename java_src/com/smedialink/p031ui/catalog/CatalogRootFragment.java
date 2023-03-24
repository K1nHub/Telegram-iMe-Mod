package com.smedialink.p031ui.catalog;

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
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.model.common.NavigationTab;
import com.smedialink.navigation.common.configuration.NavigationConfiguration;
import com.smedialink.navigation.common.configuration.NavigationViewConfiguration;
import com.smedialink.navigation.common.router.base.NavigationRouter;
import com.smedialink.p025di.module.NavigationModuleKt;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import com.smedialink.p031ui.catalog.tabs.CatalogFragment;
import com.smedialink.p031ui.wallet.common.BottomNavigationDelegate;
import com.smedialink.storage.domain.model.catalog.ChatType;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.fork.utils.Callbacks$Callback1;
import org.fork.utils.CollectionsUtilsKt;
import org.koin.core.qualifier.StringQualifier;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentCatalogGlobalBinding;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.LanguageSelectActivity;
/* compiled from: CatalogRootFragment.kt */
/* renamed from: com.smedialink.ui.catalog.CatalogRootFragment */
/* loaded from: classes3.dex */
public final class CatalogRootFragment extends MvpFragment implements BottomNavigationDelegate, CatalogRootView, NavigationViewConfiguration {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CatalogRootFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/catalog/CatalogRootPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CatalogRootFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy bottomNavigationRouter$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy tabs$delegate;

    public static final CatalogRootFragment newInstance() {
        return Companion.newInstance();
    }

    @Override // com.smedialink.navigation.common.configuration.NavigationViewConfiguration
    public BaseFragment getParentFragment() {
        return this;
    }

    public CatalogRootFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        CatalogRootFragment$presenter$2 catalogRootFragment$presenter$2 = new CatalogRootFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CatalogRootPresenter.class.getName() + ".presenter", catalogRootFragment$presenter$2);
        StringQualifier common_bottom_navigator = NavigationModuleKt.getCOMMON_BOTTOM_NAVIGATOR();
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new CatalogRootFragment$special$$inlined$inject$default$1(this, common_bottom_navigator, null));
        this.bottomNavigationRouter$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new CatalogRootFragment$special$$inlined$inject$default$2(this, null, null));
        this.resourceManager$delegate = lazy2;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CatalogRootFragment$binding$2(this), 1, (Object) null);
        lazy3 = LazyKt__LazyJVMKt.lazy(new CatalogRootFragment$tabs$2(this));
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        CatalogFragment currentScreen = getBottomNavigationRouter().getCurrentScreen();
        if (currentScreen != null) {
            return currentScreen.isSwipeBackEnabled(motionEvent);
        }
        return true;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupBottomNavigationBar();
        ConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
        setupNavigationRouter();
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getBottomNavigationRouter().clean();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        for (CatalogFragment catalogFragment : getBottomNavigationRouter().getScreenStack()) {
            catalogFragment.onActivityResultFragment(i, i2, intent);
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onDestroyView() {
        super.onDestroyView();
        for (CatalogFragment catalogFragment : getBottomNavigationRouter().getScreenStack()) {
            catalogFragment.onDestroyView();
        }
    }

    @Override // com.smedialink.p031ui.wallet.common.BottomNavigationDelegate
    public void getBottomNavigationPadding(final Function1<? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final CardView cardView = getBinding().cardBottomNavigationWrapper;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.cardBottomNavigationWrapper");
        cardView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.smedialink.ui.catalog.CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        CatalogFragment currentScreen = getBottomNavigationRouter().getCurrentScreen();
        if (currentScreen != null) {
            currentScreen.onResume();
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        CatalogFragment currentScreen = getBottomNavigationRouter().getCurrentScreen();
        if (currentScreen != null) {
            currentScreen.onPause();
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(null, 0, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.catalog.CatalogRootFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogRootFragment.getThemeDescriptions$lambda$4(CatalogRootFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "chats_actionBackground"));
        for (CatalogFragment catalogFragment : getBottomNavigationRouter().getScreenStack()) {
            arrayListOf.addAll(catalogFragment.getThemeDescriptions());
        }
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$4(CatalogRootFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ForkFragmentCatalogGlobalBinding binding = this$0.getBinding();
        binding.cardBottomNavigationWrapper.setRadius(AndroidUtilities.m51dp(30.0f));
        binding.realtimeBlur.setOverlayColor(ViewExtKt.withAlpha(Theme.getColor("chats_actionBackground"), 55));
    }

    @Override // com.smedialink.p031ui.catalog.CatalogRootView
    public void onTabSelected(int i) {
        getBinding().bottomNavigationCatalog.setSelectedById(i, false);
        getBottomNavigationRouter().show(i);
    }

    @Override // com.smedialink.p031ui.catalog.CatalogRootView
    public void openSelectLanguageScreen(int i, List<? extends LocaleController.LocaleInfo> languages) {
        Intrinsics.checkNotNullParameter(languages, "languages");
        presentFragment(LanguageSelectActivity.newInstanceForCatalog(i, CollectionsUtilsKt.toArrayList(languages), new Callbacks$Callback1() { // from class: com.smedialink.ui.catalog.CatalogRootFragment$$ExternalSyntheticLambda0
            @Override // org.fork.utils.Callbacks$Callback1
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

    @Override // com.smedialink.p031ui.catalog.CatalogRootView
    public void onSelectedLanguageChanged() {
        Iterator<T> it = getTabs().iterator();
        while (it.hasNext()) {
            ((CatalogFragment) ((NavigationTab) it.next()).getFragment()).onSelectedLanguageChanged();
        }
    }

    @Override // com.smedialink.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        FrameLayout frameLayout = getBinding().frameFragmentContainer;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.frameFragmentContainer");
        return frameLayout;
    }

    private final void setupActionBar() {
        C3366ActionBar c3366ActionBar = this.actionBar;
        c3366ActionBar.setCastShadows(false);
        c3366ActionBar.setBackButtonImage(C3301R.C3303drawable.ic_ab_back);
        c3366ActionBar.setTitle(getResourceManager().getString(C3301R.string.catalog_title));
        c3366ActionBar.setAllowOverlayTitle(true);
        c3366ActionBar.createMenu().addItem(IdFabric$Menu.LANGUAGE, C3301R.C3303drawable.msg_language);
        c3366ActionBar.setActionBarMenuOnItemClick(new C3366ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.catalog.CatalogRootFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3366ActionBar.ActionBarMenuOnItemClick
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
        binding.realtimeBlur.setOverlayColor(ViewExtKt.withAlpha(getThemedColor("chats_actionBackground"), 55));
        BubbleTabBar bubbleTabBar = binding.bottomNavigationCatalog;
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        bubbleTabBar.setDisableIconColor(parentActivity, getThemedColor("chats_actionBackground"));
        Activity parentActivity2 = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity2, "parentActivity");
        bubbleTabBar.setTabContainerBackground(parentActivity2, getThemedColor("chats_actionBackground"));
    }

    private final void setupNavigationRouter() {
        getBottomNavigationRouter().init(new NavigationConfiguration<>(this, getTabs()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<NavigationTab<CatalogFragment>> initTabs() {
        List<NavigationTab<CatalogFragment>> mutableListOf;
        int i = C3301R.C3304id.catalog_root_bottom_navigation_channels;
        CatalogFragment.Companion companion = CatalogFragment.Companion;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new NavigationTab(i, companion.newInstance(ChatType.CHANNEL)), new NavigationTab(C3301R.C3304id.catalog_root_bottom_navigation_groups, companion.newInstance(ChatType.GROUP)));
        Iterator<T> it = mutableListOf.iterator();
        while (it.hasNext()) {
            ((CatalogFragment) ((NavigationTab) it.next()).getFragment()).setBottomNavigationDelegate(this);
        }
        return mutableListOf;
    }

    private final void setupBottomNavigationBar() {
        List<MenuItem> mutableListOf;
        BubbleTabBar bubbleTabBar = getBinding().bottomNavigationCatalog;
        bubbleTabBar.addBubbleListener(new OnBubbleClickListener() { // from class: com.smedialink.ui.catalog.CatalogRootFragment$setupBottomNavigationBar$1$1
            @Override // com.fxn.OnBubbleClickListener
            public boolean onBubbleClick(int i) {
                CatalogRootPresenter presenter;
                presenter = CatalogRootFragment.this.getPresenter();
                presenter.selectTab(i);
                return true;
            }
        });
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new MenuItem(C3301R.C3304id.catalog_root_bottom_navigation_channels, getResourceManager().getString(C3301R.string.catalog_navigation_channels), C3301R.C3303drawable.fork_filter_icon_channel, true, getResourceManager().getColor(17170443), false, 32, null), new MenuItem(C3301R.C3304id.catalog_root_bottom_navigation_groups, getResourceManager().getString(C3301R.string.catalog_navigation_groups), C3301R.C3303drawable.msg_groups, true, getResourceManager().getColor(17170443), false, 32, null));
        bubbleTabBar.setMenu(mutableListOf);
    }

    /* compiled from: CatalogRootFragment.kt */
    /* renamed from: com.smedialink.ui.catalog.CatalogRootFragment$Companion */
    /* loaded from: classes3.dex */
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
