package com.iMe.p031ui.wallet.notifications;

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
import com.iMe.p031ui.base.WalletAuthFragment;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import com.iMe.p031ui.wallet.notifications.adapter.WalletNotificationsRecycleAdapter;
import com.iMe.p031ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentWalletNotificationsBinding;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
/* compiled from: WalletNotificationsFragment.kt */
/* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsFragment */
/* loaded from: classes4.dex */
public final class WalletNotificationsFragment extends WalletAuthFragment implements WalletNotificationsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletNotificationsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletNotificationsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy notificationAdapter$delegate;
    private ActionBarMenuItem optionsMenuItem;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public WalletNotificationsFragment() {
        Lazy lazy;
        WalletNotificationsFragment$presenter$2 walletNotificationsFragment$presenter$2 = new WalletNotificationsFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletNotificationsPresenter.class.getName() + ".presenter", walletNotificationsFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletNotificationsFragment$special$$inlined$inject$default$1(this, null, null));
        this.notificationAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletNotificationsFragment$binding$2(this), 1, (Object) null);
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

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
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

    @Override // com.iMe.p031ui.wallet.notifications.WalletNotificationsView
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

    @Override // com.iMe.p031ui.wallet.notifications.WalletNotificationsView
    public void updateNotificationAsRead(int i, NotificationItem notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        getNotificationAdapter().setData(i, notification);
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onNoInternetErrorState() {
        getBinding().globalStateLayout.showNoInternetError();
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onUnexpectedErrorState() {
        getBinding().globalStateLayout.showUnexpectedError();
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onEmptyState() {
        ActionBarMenuItem actionBarMenuItem = this.optionsMenuItem;
        if (actionBarMenuItem != null) {
            ViewExtKt.gone$default(actionBarMenuItem, false, 1, null);
        }
        GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
        Intrinsics.checkNotNullExpressionValue(globalStateLayout, "binding.globalStateLayout");
        GlobalStateLayout.showEmpty$default(globalStateLayout, null, 1, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<NotificationItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getNotificationAdapter().getLoadMoreModule().loadMoreComplete();
        getNotificationAdapter().addData(items);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        BaseLoadMoreModule.loadMoreEnd$default(getNotificationAdapter().getLoadMoreModule(), false, 1, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getNotificationAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void resetLoadMore() {
        getNotificationAdapter().getLoadMoreModule().reset$TMessagesProj_release();
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onLoadingState() {
        getBinding().globalStateLayout.showProgress();
    }

    @Override // com.iMe.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        SwipeRefreshLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_windowBackgroundWhite;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, Theme.key_actionBarDefaultSubmenuBackground), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, Theme.key_actionBarDefaultSubmenuItem), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_actionBarDefaultSubmenuItemIcon), new ThemeDescription(root, i, null, null, null, null, i2), new ThemeDescription(getBinding().globalStateLayout, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletNotificationsFragment.getThemeDescriptions$lambda$0(WalletNotificationsFragment.this);
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
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
        C3356ActionBar c3356ActionBar = this.actionBar;
        c3356ActionBar.setBackButtonImage(C3290R.C3292drawable.ic_ab_back);
        c3356ActionBar.setTitle(getResourceManager().getString(C3290R.string.wallet_notifications_toolbar_title));
        c3356ActionBar.setAllowOverlayTitle(true);
        ActionBarMenuItem setupActionBar$lambda$3$lambda$2$lambda$1 = c3356ActionBar.createMenu().addItem(0, C3290R.C3292drawable.ic_ab_other);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$3$lambda$2$lambda$1, "setupActionBar$lambda$3$lambda$2$lambda$1");
        ViewExtKt.gone$default(setupActionBar$lambda$3$lambda$2$lambda$1, false, 1, null);
        setupActionBar$lambda$3$lambda$2$lambda$1.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3290R.string.AccDescrMoreOptions));
        setupActionBar$lambda$3$lambda$2$lambda$1.addSubItem(1, C3290R.C3292drawable.fork_ic_folder_tab_read_all_24, getResourceManager().getString(C3290R.string.dialogs_tab_popup_read_all));
        this.optionsMenuItem = setupActionBar$lambda$3$lambda$2$lambda$1;
        c3356ActionBar.setActionBarMenuOnItemClick(new C3356ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsFragment$setupActionBar$1$2
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar.ActionBarMenuOnItemClick
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
        NotificationItem notificationItem = (NotificationItem) CollectionsKt.lastOrNull(this$0.getNotificationAdapter().getData());
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
        binding.globalStateLayout.setRetryButtonClickListener(new WalletNotificationsFragment$setupListeners$1$1(this));
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
