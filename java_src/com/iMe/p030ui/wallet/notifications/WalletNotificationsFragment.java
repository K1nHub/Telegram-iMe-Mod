package com.iMe.p030ui.wallet.notifications;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.state.GlobalStateLayout;
import com.iMe.p030ui.wallet.notifications.adapter.WalletNotificationsRecycleAdapter;
import com.iMe.p030ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
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
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentWalletNotificationsBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
/* compiled from: WalletNotificationsFragment.kt */
/* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsFragment */
/* loaded from: classes4.dex */
public final class WalletNotificationsFragment extends WalletAuthBaseFragment implements WalletNotificationsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletNotificationsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletNotificationsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy notificationAdapter$delegate;
    private ActionBarMenuItem optionsMenuItem;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public WalletNotificationsFragment() {
        Lazy lazy;
        Function0<WalletNotificationsPresenter> function0 = new Function0<WalletNotificationsPresenter>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletNotificationsPresenter invoke() {
                Lazy lazy2;
                final WalletNotificationsFragment walletNotificationsFragment = WalletNotificationsFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletNotificationsPresenter>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.notifications.WalletNotificationsPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletNotificationsPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletNotificationsPresenter.class), qualifier, function02);
                    }
                });
                return (WalletNotificationsPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletNotificationsPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletNotificationsRecycleAdapter>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.notifications.adapter.WalletNotificationsRecycleAdapter] */
            @Override // kotlin.jvm.functions.Function0
            public final WalletNotificationsRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(WalletNotificationsRecycleAdapter.class), qualifier, function02);
            }
        });
        this.notificationAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletNotificationsBinding>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletNotificationsBinding invoke() {
                return ForkFragmentWalletNotificationsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletNotificationsFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletNotificationsPresenter getPresenter() {
        return (WalletNotificationsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletNotificationsRecycleAdapter getNotificationAdapter() {
        return (WalletNotificationsRecycleAdapter) this.notificationAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletNotificationsBinding getBinding() {
        return (ForkFragmentWalletNotificationsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupListeners();
        setupRecycleView();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.notifications.WalletNotificationsView
    public void onLoadedNotifications(List<NotificationItem> notifications) {
        Intrinsics.checkNotNullParameter(notifications, "notifications");
        if (!getBinding().globalStateLayout.isContentState()) {
            getBinding().globalStateLayout.showContent();
        }
        ActionBarMenuItem actionBarMenuItem = this.optionsMenuItem;
        if (actionBarMenuItem != null) {
            ViewExtKt.visible$default(actionBarMenuItem, false, 1, null);
        }
        getNotificationAdapter().setNewInstance(notifications);
    }

    @Override // com.iMe.p030ui.wallet.notifications.WalletNotificationsView
    public void updateNotificationAsRead(int i, NotificationItem notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        getNotificationAdapter().setData(i, notification);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onNoInternetErrorState() {
        getBinding().globalStateLayout.showNoInternetError();
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onUnexpectedErrorState() {
        getBinding().globalStateLayout.showUnexpectedError();
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onEmptyState() {
        ActionBarMenuItem actionBarMenuItem = this.optionsMenuItem;
        if (actionBarMenuItem != null) {
            ViewExtKt.gone$default(actionBarMenuItem, false, 1, null);
        }
        GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
        Intrinsics.checkNotNullExpressionValue(globalStateLayout, "binding.globalStateLayout");
        GlobalStateLayout.showEmpty$default(globalStateLayout, null, 1, null);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<NotificationItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getNotificationAdapter().getLoadMoreModule().loadMoreComplete();
        getNotificationAdapter().addData(items);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        BaseLoadMoreModule.loadMoreEnd$default(getNotificationAdapter().getLoadMoreModule(), false, 1, null);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getNotificationAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void resetLoadMore() {
        getNotificationAdapter().getLoadMoreModule().reset$TMessagesProj_HA_public();
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onLoadingState() {
        getBinding().globalStateLayout.showProgress();
    }

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        SwipeRefreshLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_windowBackgroundWhite;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, Theme.key_actionBarDefaultSubmenuBackground), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, Theme.key_actionBarDefaultSubmenuItem), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_actionBarDefaultSubmenuItemIcon), new ThemeDescription(root, i, null, null, null, null, i2), new ThemeDescription(getBinding().globalStateLayout, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletNotificationsFragment.getThemeDescriptions$lambda$0(WalletNotificationsFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, i2));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletNotificationsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setTitle(getResourceManager().getString(C3632R.string.wallet_notifications_toolbar_title));
        c3704ActionBar.setAllowOverlayTitle(true);
        ActionBarMenuItem setupActionBar$lambda$3$lambda$2$lambda$1 = c3704ActionBar.createMenu().addItem(0, C3632R.C3634drawable.ic_ab_other);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$3$lambda$2$lambda$1, "setupActionBar$lambda$3$lambda$2$lambda$1");
        ViewExtKt.gone$default(setupActionBar$lambda$3$lambda$2$lambda$1, false, 1, null);
        setupActionBar$lambda$3$lambda$2$lambda$1.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
        setupActionBar$lambda$3$lambda$2$lambda$1.addSubItem(1, C3632R.C3634drawable.fork_ic_folder_tab_read_all_24, getResourceManager().getString(C3632R.string.dialogs_tab_popup_read_all));
        this.optionsMenuItem = setupActionBar$lambda$3$lambda$2$lambda$1;
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$setupActionBar$1$2
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                WalletNotificationsPresenter presenter;
                WalletNotificationsRecycleAdapter notificationAdapter;
                if (i == -1) {
                    WalletNotificationsFragment.this.finishFragment();
                } else if (i != 1) {
                } else {
                    presenter = WalletNotificationsFragment.this.getPresenter();
                    notificationAdapter = WalletNotificationsFragment.this.getNotificationAdapter();
                    presenter.markAllNotificationAsRead(notificationAdapter.getData());
                }
            }
        });
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleNotifications;
        WalletNotificationsRecycleAdapter notificationAdapter = getNotificationAdapter();
        BaseLoadMoreModule loadMoreModule = notificationAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                WalletNotificationsFragment.setupRecycleView$lambda$9$lambda$8$lambda$6$lambda$5(WalletNotificationsFragment.this);
            }
        });
        notificationAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletNotificationsFragment.setupRecycleView$lambda$9$lambda$8$lambda$7(WalletNotificationsFragment.this, baseQuickAdapter, view, i);
            }
        });
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        recyclerView.setAdapter(getNotificationAdapter());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupRecycleView$lambda$9$lambda$8$lambda$6$lambda$5(WalletNotificationsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationItem notificationItem = (NotificationItem) CollectionsKt.lastOrNull((List<? extends Object>) this$0.getNotificationAdapter().getData());
        if (notificationItem != null) {
            this$0.getPresenter().loadMoreNotification(notificationItem.getNotification().getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupRecycleView$lambda$9$lambda$8$lambda$7(WalletNotificationsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        NotificationItem item = this$0.getNotificationAdapter().getItem(i);
        this$0.getPresenter().markNotificationAsRead(item, i);
        if (item.isUnsupported()) {
            return;
        }
        this$0.showDialog(WalletNotificationDetailsBottomSheetDialog.Companion.newInstance(this$0, item));
    }

    private final void setupColors() {
        ForkFragmentWalletNotificationsBinding binding = getBinding();
        SwipeRefreshLayout root = binding.getRoot();
        int i = Theme.key_windowBackgroundWhite;
        root.setBackgroundColor(Theme.getColor(i));
        binding.getRoot().setColorSchemeColors(Theme.getColor(Theme.key_chats_actionBackground));
        binding.globalStateLayout.setBackgroundColor(Theme.getColor(i));
    }

    private final void setupListeners() {
        ForkFragmentWalletNotificationsBinding binding = getBinding();
        binding.globalStateLayout.setRetryButtonClickListener(new Function0<Unit>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$setupListeners$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                WalletNotificationsPresenter presenter;
                presenter = WalletNotificationsFragment.this.getPresenter();
                presenter.loadNotification(true);
            }
        });
        binding.getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletNotificationsFragment.setupListeners$lambda$12$lambda$11(WalletNotificationsFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$12$lambda$11(WalletNotificationsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadNotification(true);
    }

    /* compiled from: WalletNotificationsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletNotificationsFragment newInstance() {
            return new WalletNotificationsFragment();
        }
    }
}
