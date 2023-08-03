package com.iMe.p031ui.wallet.common;

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
import com.iMe.model.common.ScreenType;
import com.iMe.model.wallet.navigation.WalletBottomNavigationTab;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.p023di.module.NavigationModuleKt;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.wallet.airdrop.WalletAirdropPresenter;
import com.iMe.p031ui.wallet.airdrop.WalletAirdropView;
import com.iMe.p031ui.wallet.airdrop.dialog.WalletAirdropDialog;
import com.iMe.p031ui.wallet.crypto.wallet_connect.WalletConnectFragment;
import com.iMe.p031ui.wallet.home.WalletHomeFragment;
import com.iMe.p031ui.wallet.notifications.WalletNotificationsFragment;
import com.iMe.p031ui.wallet.settings.WalletSettingsFragment;
import com.iMe.p031ui.wallet.swap.WalletSwapProtocolsFragment;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.databinding.ForkFragmentWalletGlobalBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3485ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
/* compiled from: WalletRootFragment.kt */
/* renamed from: com.iMe.ui.wallet.common.WalletRootFragment */
/* loaded from: classes3.dex */
public final class WalletRootFragment extends WalletAuthBaseFragment implements BottomNavigationDelegate, WalletRootView, NavigationViewConfiguration, WalletAirdropView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletRootFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/common/WalletRootPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletRootFragment.class, "airdropPresenter", "getAirdropPresenter()Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletRootFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy bottomNavigationRouter$delegate;
    private ActionBarMenuItem notificationMenuItem;
    private final MoxyKtxDelegate presenter$delegate;
    private ActionBarMenuItem walletConnectMenuItem;

    public static final WalletRootFragment newInstance() {
        return Companion.newInstance();
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public BaseFragment getParentFragment() {
        return this;
    }

    public WalletRootFragment() {
        Lazy lazy;
        Function0<WalletRootPresenter> function0 = new Function0<WalletRootPresenter>() { // from class: com.iMe.ui.wallet.common.WalletRootFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletRootPresenter invoke() {
                Lazy lazy2;
                final WalletRootFragment walletRootFragment = WalletRootFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletRootPresenter>() { // from class: com.iMe.ui.wallet.common.WalletRootFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.common.WalletRootPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletRootPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletRootPresenter.class), qualifier, function02);
                    }
                });
                return (WalletRootPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletRootPresenter.class.getName() + ".presenter", function0);
        Function0<WalletAirdropPresenter> function02 = new Function0<WalletAirdropPresenter>() { // from class: com.iMe.ui.wallet.common.WalletRootFragment$airdropPresenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletAirdropPresenter invoke() {
                Lazy lazy2;
                final WalletRootFragment walletRootFragment = WalletRootFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletAirdropPresenter>() { // from class: com.iMe.ui.wallet.common.WalletRootFragment$airdropPresenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.airdrop.WalletAirdropPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletAirdropPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletAirdropPresenter.class), qualifier, function03);
                    }
                });
                return (WalletAirdropPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate2 = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate2, "mvpDelegate");
        new MoxyKtxDelegate(mvpDelegate2, WalletAirdropPresenter.class.getName() + ".presenter", function02);
        final StringQualifier wallet_root_navigator = NavigationModuleKt.getWALLET_ROOT_NAVIGATOR();
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<NavigationRouter<WalletTabFragment>>() { // from class: com.iMe.ui.wallet.common.WalletRootFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.navigation.common.router.base.NavigationRouter<com.iMe.ui.wallet.common.WalletTabFragment>] */
            @Override // kotlin.jvm.functions.Function0
            public final NavigationRouter<WalletTabFragment> invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = wallet_root_navigator;
                Function0<? extends ParametersHolder> function03 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(NavigationRouter.class), qualifier, function03);
            }
        });
        this.bottomNavigationRouter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletGlobalBinding>() { // from class: com.iMe.ui.wallet.common.WalletRootFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletGlobalBinding invoke() {
                return ForkFragmentWalletGlobalBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletRootFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletRootPresenter getPresenter() {
        return (WalletRootPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final NavigationRouter<WalletTabFragment> getBottomNavigationRouter() {
        return (NavigationRouter) this.bottomNavigationRouter$delegate.getValue();
    }

    private final ForkFragmentWalletGlobalBinding getBinding() {
        return (ForkFragmentWalletGlobalBinding) this.binding$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        WalletTabFragment currentScreen = getBottomNavigationRouter().getCurrentScreen();
        if (currentScreen != null) {
            return currentScreen.isSwipeBackEnabled(motionEvent);
        }
        return true;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupBottomNavigationBar();
        ConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
        super.onViewReady();
        setupNavigationRouter();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getBottomNavigationRouter().clean();
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        for (WalletTabFragment walletTabFragment : getBottomNavigationRouter().getScreenStack()) {
            walletTabFragment.onActivityResultFragment(i, i2, intent);
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onDestroyView() {
        for (WalletTabFragment walletTabFragment : getBottomNavigationRouter().getScreenStack()) {
            walletTabFragment.onDestroyView();
        }
        super.onDestroyView();
    }

    @Override // com.iMe.p031ui.wallet.common.BottomNavigationDelegate
    public void getBottomNavigationPadding(final Function1<? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final CardView cardView = getBinding().cardBottomNavigationWrapper;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.cardBottomNavigationWrapper");
        cardView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.iMe.ui.wallet.common.WalletRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1
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

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        WalletTabFragment currentScreen = getBottomNavigationRouter().getCurrentScreen();
        if (currentScreen != null) {
            currentScreen.onResume();
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        WalletTabFragment currentScreen = getBottomNavigationRouter().getCurrentScreen();
        if (currentScreen != null) {
            currentScreen.onPause();
        }
        super.onPause();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        backAction();
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3485ActionBar c3485ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_AB_SELECTORCOLOR;
        int i2 = Theme.key_actionBarDefaultSelector;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(c3485ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, i2), new ThemeDescription(null, 0, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.common.WalletRootFragment$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletRootFragment.getThemeDescriptions$lambda$4(WalletRootFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_chats_actionBackground));
        for (WalletTabFragment walletTabFragment : getBottomNavigationRouter().getScreenStack()) {
            Collection<? extends ThemeDescription> themeDescriptions = walletTabFragment.getThemeDescriptions();
            if (themeDescriptions == null) {
                themeDescriptions = CollectionsKt__CollectionsKt.emptyList();
            }
            arrayListOf.addAll(themeDescriptions);
        }
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$4(WalletRootFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ForkFragmentWalletGlobalBinding binding = this$0.getBinding();
        binding.cardBottomNavigationWrapper.setRadius(AndroidUtilities.m73dp(30.0f));
        binding.realtimeBlur.setOverlayColor(ViewExtKt.withAlpha(Theme.getColor(Theme.key_chats_actionBackground), 55));
    }

    @Override // com.iMe.p031ui.wallet.common.WalletRootView
    public void onTabSelected(int i) {
        getBinding().bottomNavigationWallet.setSelectedById(i, false);
        getBottomNavigationRouter().show(i);
    }

    @Override // com.iMe.p031ui.wallet.common.WalletRootView
    public void setupNavigationTabsEnabled(HashMap<Integer, Boolean> availableTabs) {
        Intrinsics.checkNotNullParameter(availableTabs, "availableTabs");
        BubbleTabBar bubbleTabBar = getBinding().bottomNavigationWallet;
        for (Map.Entry<Integer, Boolean> entry : availableTabs.entrySet()) {
            bubbleTabBar.setTabVisible(entry.getKey().intValue(), entry.getValue().booleanValue());
        }
    }

    @Override // com.iMe.p031ui.wallet.common.WalletRootView
    public void showNotificationItem(boolean z) {
        ActionBarMenuItem actionBarMenuItem = this.notificationMenuItem;
        if (actionBarMenuItem == null) {
            return;
        }
        actionBarMenuItem.setVisibility(z ? 0 : 8);
    }

    @Override // com.iMe.p031ui.wallet.common.WalletRootView
    public void showWalletConnectItem(boolean z) {
        ActionBarMenuItem actionBarMenuItem = this.walletConnectMenuItem;
        if (actionBarMenuItem == null) {
            return;
        }
        actionBarMenuItem.setVisibility(z ? 0 : 8);
    }

    @Override // com.iMe.p031ui.wallet.airdrop.WalletAirdropView
    public void showAirdropDialog() {
        showDialog(WalletAirdropDialog.Companion.newInstance(this));
    }

    @Override // com.iMe.p031ui.wallet.airdrop.WalletAirdropView
    public void checkNeedToShowAirdropDialog() {
        showAirdropDialog();
    }

    @Override // com.iMe.navigation.common.configuration.NavigationViewConfiguration
    public ViewGroup getFragmentContainer() {
        FrameLayout frameLayout = getBinding().frameFragmentContainer;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.frameFragmentContainer");
        return frameLayout;
    }

    private final void setupActionBar() {
        C3485ActionBar c3485ActionBar = this.actionBar;
        c3485ActionBar.setBackButtonImage(C3419R.C3421drawable.ic_ab_back);
        c3485ActionBar.setTitle(getResourceManager().getString(C3419R.string.drawer_wallet_item_title));
        c3485ActionBar.setAllowOverlayTitle(true);
        ActionBarMenu createMenu = c3485ActionBar.createMenu();
        this.notificationMenuItem = createMenu.addItem(IdFabric$Menu.NOTIFICATIONS, C3419R.C3421drawable.msg_notifications);
        this.walletConnectMenuItem = createMenu.addItem(IdFabric$Menu.WALLET_CONNECT, C3419R.C3421drawable.fork_ic_wallet_connect);
        c3485ActionBar.setActionBarMenuOnItemClick(new C3485ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.common.WalletRootFragment$setupActionBar$1$2
            @Override // org.telegram.p043ui.ActionBar.C3485ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletRootFragment.this.backAction();
                } else if (i == IdFabric$Menu.NOTIFICATIONS) {
                    WalletRootFragment.this.presentFragment(WalletNotificationsFragment.Companion.newInstance());
                } else if (i == IdFabric$Menu.WALLET_CONNECT) {
                    WalletRootFragment.this.presentFragment(WalletConnectFragment.Companion.newInstance());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void backAction() {
        if (getBottomNavigationRouter().getCurrentScreen() instanceof WalletHomeFragment) {
            finishFragment();
        } else {
            getPresenter().selectTab(C3419R.C3422id.wallet_root_bottom_navigation_home);
        }
    }

    private final void setupColors() {
        ForkFragmentWalletGlobalBinding binding = getBinding();
        RealtimeBlurView realtimeBlurView = binding.realtimeBlur;
        int i = Theme.key_chats_actionBackground;
        realtimeBlurView.setOverlayColor(ViewExtKt.withAlpha(Theme.getColor(i), 55));
        BubbleTabBar bubbleTabBar = binding.bottomNavigationWallet;
        Context applicationContext = ApplicationLoader.applicationContext;
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        bubbleTabBar.setDisableIconColor(applicationContext, Theme.getColor(i));
        BubbleTabBar bubbleTabBar2 = binding.bottomNavigationWallet;
        Context applicationContext2 = ApplicationLoader.applicationContext;
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "applicationContext");
        bubbleTabBar2.setTabContainerBackground(applicationContext2, Theme.getColor(i));
    }

    private final void setupNavigationRouter() {
        getBottomNavigationRouter().init(new NavigationConfiguration<>(this, getTabs()));
    }

    private final List<WalletBottomNavigationTab> getTabs() {
        List<WalletBottomNavigationTab> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new WalletBottomNavigationTab(C3419R.C3422id.wallet_root_bottom_navigation_home, WalletHomeFragment.Companion.newInstance(), getResourceManager().getString(C3419R.string.drawer_wallet_item_title)), new WalletBottomNavigationTab(C3419R.C3422id.wallet_root_bottom_navigation_exchange, WalletSwapProtocolsFragment.Companion.newInstance$default(WalletSwapProtocolsFragment.Companion, ScreenType.TAB, null, 2, null), getResourceManager().getString(C3419R.string.wallet_navigation_exchange)), new WalletBottomNavigationTab(C3419R.C3422id.wallet_root_bottom_navigation_settings, WalletSettingsFragment.Companion.newInstance(), getResourceManager().getString(C3419R.string.wallet_settings_toolbar_title)));
        for (WalletBottomNavigationTab walletBottomNavigationTab : mutableListOf) {
            walletBottomNavigationTab.getFragment().setBottomNavigationDelegate(this);
        }
        return mutableListOf;
    }

    private final void setupBottomNavigationBar() {
        List<MenuItem> mutableListOf;
        BubbleTabBar bubbleTabBar = getBinding().bottomNavigationWallet;
        bubbleTabBar.addBubbleListener(new OnBubbleClickListener() { // from class: com.iMe.ui.wallet.common.WalletRootFragment$setupBottomNavigationBar$1$1
            @Override // com.fxn.OnBubbleClickListener
            public boolean onBubbleClick(int i) {
                WalletRootPresenter presenter;
                presenter = WalletRootFragment.this.getPresenter();
                presenter.selectTab(i);
                return true;
            }
        });
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new MenuItem(C3419R.C3422id.wallet_root_bottom_navigation_home, getResourceManager().getString(C3419R.string.wallet_navigation_wallet), C3419R.C3421drawable.fork_ic_nav_wallet_24, true, getResourceManager().getColor(17170443), false, 32, null), new MenuItem(C3419R.C3422id.wallet_root_bottom_navigation_exchange, getResourceManager().getString(C3419R.string.wallet_navigation_exchange), C3419R.C3421drawable.fork_ic_exchange_24, true, getResourceManager().getColor(17170443), false, 32, null), new MenuItem(C3419R.C3422id.wallet_root_bottom_navigation_settings, getResourceManager().getString(C3419R.string.wallet_navigation_settings), C3419R.C3421drawable.msg_settings, true, getResourceManager().getColor(17170443), false, 32, null));
        bubbleTabBar.setMenu(mutableListOf);
    }

    /* compiled from: WalletRootFragment.kt */
    /* renamed from: com.iMe.ui.wallet.common.WalletRootFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletRootFragment newInstance() {
            return new WalletRootFragment();
        }
    }
}
