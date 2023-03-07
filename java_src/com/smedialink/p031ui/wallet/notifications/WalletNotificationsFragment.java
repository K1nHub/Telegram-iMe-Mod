package com.smedialink.p031ui.wallet.notifications;

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
import com.smedialink.model.wallet.notification.NotificationItem;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.custom.state.GlobalStateLayout;
import com.smedialink.p031ui.wallet.notifications.adapter.WalletNotificationsRecycleAdapter;
import com.smedialink.p031ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentWalletNotificationsBinding;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
/* compiled from: WalletNotificationsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.notifications.WalletNotificationsFragment */
/* loaded from: classes3.dex */
public final class WalletNotificationsFragment extends WalletAuthFragment implements WalletNotificationsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletNotificationsFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletNotificationsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy notificationAdapter$delegate;
    private ActionBarMenuItem optionsMenuItem;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
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

    @Override // com.smedialink.p031ui.wallet.notifications.WalletNotificationsView
    public void onLoadedNotifications(List<NotificationItem> notifications) {
        Intrinsics.checkNotNullParameter(notifications, "notifications");
        if (!getBinding().globalStateLayout.isContentState()) {
            getBinding().globalStateLayout.showContent();
        }
        ActionBarMenuItem actionBarMenuItem = this.optionsMenuItem;
        if (actionBarMenuItem != null) {
            ViewExtKt.visible(actionBarMenuItem);
        }
        getNotificationAdapter().setNewInstance(notifications);
    }

    @Override // com.smedialink.p031ui.wallet.notifications.WalletNotificationsView
    public void updateNotificationAsRead(int i, NotificationItem notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        getNotificationAdapter().setData(i, notification);
    }

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onNoInternetErrorState() {
        getBinding().globalStateLayout.showNoInternetError();
    }

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onUnexpectedErrorState() {
        getBinding().globalStateLayout.showUnexpectedError();
    }

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onEmptyState() {
        ActionBarMenuItem actionBarMenuItem = this.optionsMenuItem;
        if (actionBarMenuItem != null) {
            ViewExtKt.gone(actionBarMenuItem);
        }
        GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
        Intrinsics.checkNotNullExpressionValue(globalStateLayout, "binding.globalStateLayout");
        GlobalStateLayout.showEmpty$default(globalStateLayout, null, 1, null);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<NotificationItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getNotificationAdapter().getLoadMoreModule().loadMoreComplete();
        getNotificationAdapter().addData(items);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        BaseLoadMoreModule.loadMoreEnd$default(getNotificationAdapter().getLoadMoreModule(), false, 1, null);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getNotificationAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void resetLoadMore() {
        getNotificationAdapter().getLoadMoreModule().reset$TMessagesProj_release();
    }

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onLoadingState() {
        getBinding().globalStateLayout.showProgress();
    }

    @Override // com.smedialink.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, "actionBarDefaultSubmenuBackground"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, "actionBarDefaultSubmenuItem"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, "actionBarDefaultSubmenuItemIcon"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getBinding().globalStateLayout, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.notifications.WalletNotificationsFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletNotificationsFragment.m1710getThemeDescriptions$lambda0(WalletNotificationsFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundWhite"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getThemeDescriptions$lambda-0  reason: not valid java name */
    public static final void m1710getThemeDescriptions$lambda0(WalletNotificationsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3222ActionBar c3222ActionBar = this.actionBar;
        c3222ActionBar.setBackButtonImage(C3158R.C3160drawable.ic_ab_back);
        c3222ActionBar.setTitle(getResourceManager().getString(C3158R.string.wallet_notifications_toolbar_title));
        c3222ActionBar.setAllowOverlayTitle(true);
        ActionBarMenuItem addItem = c3222ActionBar.createMenu().addItem(0, C3158R.C3160drawable.ic_ab_other);
        Intrinsics.checkNotNullExpressionValue(addItem, "");
        ViewExtKt.gone(addItem);
        addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3158R.string.AccDescrMoreOptions));
        addItem.addSubItem(1, C3158R.C3160drawable.fork_ic_folder_tab_read_all_24, getResourceManager().getString(C3158R.string.dialogs_tab_popup_read_all));
        Unit unit = Unit.INSTANCE;
        this.optionsMenuItem = addItem;
        c3222ActionBar.setActionBarMenuOnItemClick(new C3222ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.notifications.WalletNotificationsFragment$setupActionBar$1$2
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
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
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.smedialink.ui.wallet.notifications.WalletNotificationsFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                WalletNotificationsFragment.m1712setupRecycleView$lambda9$lambda8$lambda6$lambda5(WalletNotificationsFragment.this);
            }
        });
        notificationAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.notifications.WalletNotificationsFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletNotificationsFragment.m1713setupRecycleView$lambda9$lambda8$lambda7(WalletNotificationsFragment.this, baseQuickAdapter, view, i);
            }
        });
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        recyclerView.setAdapter(getNotificationAdapter());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupRecycleView$lambda-9$lambda-8$lambda-6$lambda-5  reason: not valid java name */
    public static final void m1712setupRecycleView$lambda9$lambda8$lambda6$lambda5(WalletNotificationsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationItem notificationItem = (NotificationItem) CollectionsKt.lastOrNull(this$0.getNotificationAdapter().getData());
        if (notificationItem == null) {
            return;
        }
        this$0.getPresenter().loadMoreNotification(notificationItem.getNotification().getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupRecycleView$lambda-9$lambda-8$lambda-7  reason: not valid java name */
    public static final void m1713setupRecycleView$lambda9$lambda8$lambda7(WalletNotificationsFragment this$0, BaseQuickAdapter noName_0, View noName_1, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(noName_0, "$noName_0");
        Intrinsics.checkNotNullParameter(noName_1, "$noName_1");
        NotificationItem item = this$0.getNotificationAdapter().getItem(i);
        this$0.getPresenter().markNotificationAsRead(item, i);
        if (item.isUnsupported()) {
            return;
        }
        this$0.showDialog(WalletNotificationDetailsBottomSheetDialog.Companion.newInstance(this$0, item));
    }

    private final void setupColors() {
        ForkFragmentWalletNotificationsBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        binding.getRoot().setColorSchemeColors(Theme.getColor("chats_actionBackground"));
        binding.globalStateLayout.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
    }

    private final void setupListeners() {
        ForkFragmentWalletNotificationsBinding binding = getBinding();
        binding.globalStateLayout.setRetryButtonClickListener(new WalletNotificationsFragment$setupListeners$1$1(this));
        binding.getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.smedialink.ui.wallet.notifications.WalletNotificationsFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletNotificationsFragment.m1711setupListeners$lambda12$lambda11(WalletNotificationsFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupListeners$lambda-12$lambda-11  reason: not valid java name */
    public static final void m1711setupListeners$lambda12$lambda11(WalletNotificationsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadNotification(true);
    }

    /* compiled from: WalletNotificationsFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.notifications.WalletNotificationsFragment$Companion */
    /* loaded from: classes3.dex */
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
