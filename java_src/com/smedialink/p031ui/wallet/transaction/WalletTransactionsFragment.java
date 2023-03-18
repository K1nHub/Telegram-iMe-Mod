package com.smedialink.p031ui.wallet.transaction;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.model.wallet.details.TransactionsGroup;
import com.smedialink.model.wallet.transaction.StakingOperationItem;
import com.smedialink.model.wallet.transaction.TransactionItem;
import com.smedialink.p031ui.custom.NetworkTypeView;
import com.smedialink.p031ui.wallet.common.WalletTabFragment;
import com.smedialink.p031ui.wallet.transaction.adapter.WalletTransactionsRecycleAdapter;
import com.smedialink.p031ui.wallet.transaction.adapter.diff.TransactionDiffCallback;
import com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.staking.StakingOperationType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.utils.dialogs.DialogsFactoryKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import com.smedialink.utils.hints.HintUtils;
import com.tbuonomo.viewpagerdotsindicator.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.databinding.ForkFragmentWalletTransactionsBinding;
import org.telegram.p048ui.ActionBar.ActionBarMenu;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: WalletTransactionsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment */
/* loaded from: classes3.dex */
public final class WalletTransactionsFragment extends WalletTabFragment implements WalletTransactionsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletTransactionsFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletTransactionsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private LinearLayoutManager linearLayoutManager;
    private NetworkTypeView networkTypeView;
    private final MoxyKtxDelegate presenter$delegate;
    private final ScreenType screenType;
    private final TokenCode tokenCode;
    private final Lazy transactionAdapter$delegate;

    public WalletTransactionsFragment(ScreenType screenType, TokenCode tokenCode) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        this.screenType = screenType;
        this.tokenCode = tokenCode;
        WalletTransactionsFragment$presenter$2 walletTransactionsFragment$presenter$2 = new WalletTransactionsFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletTransactionsPresenter.class.getName() + ".presenter", walletTransactionsFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletTransactionsFragment$special$$inlined$inject$default$1(this, null, null));
        this.transactionAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletTransactionsFragment$binding$2(this), 1, (Object) null);
    }

    public final WalletTransactionsPresenter getPresenter() {
        return (WalletTransactionsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletTransactionsRecycleAdapter getTransactionAdapter() {
        return (WalletTransactionsRecycleAdapter) this.transactionAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletTransactionsBinding getBinding() {
        return (ForkFragmentWalletTransactionsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.wallet.common.BottomNavigationTabFragment, com.smedialink.p031ui.base.WalletAuthFragment
    public boolean shouldAskPinCode() {
        return Intrinsics.areEqual(this.screenType, ScreenType.Fullscreen.INSTANCE);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (Intrinsics.areEqual(this.screenType, ScreenType.Fullscreen.INSTANCE)) {
            setupActionBar();
        }
        setupColors();
        setupListeners();
        setupRecycleView();
        setupRootView();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onViewCreated() {
        super.onViewCreated();
        setupColors();
    }

    @Override // com.smedialink.p031ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkType networkType, List<? extends NetworkType> availableNetworks, final Function1<? super NetworkType, Unit> action) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogsFactoryKt.createSelectNetworkTypeDialog(parentActivity, availableNetworks, networkType, new Callbacks$Callback1() { // from class: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$$ExternalSyntheticLambda3
            @Override // org.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletTransactionsFragment.showChooseNetworkDialog$lambda$0(Function1.this, (NetworkType) obj);
            }
        }));
    }

    public static final void showChooseNetworkDialog$lambda$0(Function1 action, NetworkType selectedNetworkType) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullExpressionValue(selectedNetworkType, "selectedNetworkType");
        action.invoke(selectedNetworkType);
    }

    @Override // com.smedialink.p031ui.base.mvp.SwitchNetworkView
    public void setupNetworkType(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        NetworkTypeView networkTypeView = this.networkTypeView;
        if (networkTypeView == null) {
            return;
        }
        networkTypeView.setNetworkType(networkType);
    }

    @Override // com.smedialink.p031ui.wallet.transaction.WalletTransactionsView
    public void showChangeNetworkHint() {
        HintUtils hintUtils = getHintUtils();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        hintUtils.showChangeNetworkHint(parentLayout);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z && !z2) {
            getPresenter().showChangeNetworkHintIfNeeded();
        }
        super.onTransitionAnimationEnd(z, z2);
    }

    @Override // com.smedialink.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.smedialink.p031ui.wallet.transaction.WalletTransactionsView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getTransactionAdapter(), items, null, 2, null);
        LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
        if (linearLayoutManager != null) {
            linearLayoutManager.scrollToPositionWithOffset(0, 0);
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        WalletTransactionsRecycleAdapter transactionAdapter = getTransactionAdapter();
        transactionAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(transactionAdapter, items, null, 2, null);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getTransactionAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getTransactionAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void resetLoadMore() {
        getTransactionAdapter().getLoadMoreModule().reset$TMessagesProj_release();
    }

    @Override // com.smedialink.p031ui.wallet.common.BottomNavigationTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleTransactions;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.recycleTransactions");
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.smedialink.p031ui.wallet.transaction.WalletTransactionsView
    public void openStakingOperationDetails(StakingOperationItem item, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        showDialog(WalletTransactionDetailsBottomSheetDialog.Companion.newInstance$default(WalletTransactionDetailsBottomSheetDialog.Companion, this, new WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails(item, networkType), null, 4, null));
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletTransactionsFragment.getThemeDescriptions$lambda$2(WalletTransactionsFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundWhite"));
        return arrayListOf;
    }

    public static final void getThemeDescriptions$lambda$2(WalletTransactionsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getTransactionAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3351ActionBar c3351ActionBar = this.actionBar;
        c3351ActionBar.setBackButtonImage(C3286R.C3288drawable.ic_ab_back);
        c3351ActionBar.setTitle(getResourceManager().getString(C3286R.string.wallet_transactions_toolbar_title));
        c3351ActionBar.setAllowOverlayTitle(true);
        c3351ActionBar.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                WalletTransactionsPresenter presenter;
                if (i == -1) {
                    WalletTransactionsFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.NETWORK_SWITCH) {
                    presenter = WalletTransactionsFragment.this.getPresenter();
                    presenter.startChooseNetworkDialog();
                }
            }
        });
        ActionBarMenu createMenu = c3351ActionBar.createMenu();
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        this.networkTypeView = new NetworkTypeView(parentActivity, null, 0, 6, null);
        ActionBarMenuItem setupActionBar$lambda$5$lambda$4$lambda$3 = createMenu.addItemWithWidth(IdFabric$Menu.NETWORK_SWITCH, 0, -2);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$5$lambda$4$lambda$3, "setupActionBar$lambda$5$lambda$4$lambda$3");
        ViewExtKt.setPaddingHorizontal(setupActionBar$lambda$5$lambda$4$lambda$3, AndroidUtilities.m50dp(14));
        setupActionBar$lambda$5$lambda$4$lambda$3.addView(this.networkTypeView, LayoutHelper.createFrame(-2, -2, 8388629));
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleTransactions;
        WalletTransactionsRecycleAdapter transactionAdapter = getTransactionAdapter();
        transactionAdapter.setDiffCallback(new TransactionDiffCallback());
        setupLoadMore(transactionAdapter);
        recyclerView.setAdapter(transactionAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getParentActivity());
        this.linearLayoutManager = linearLayoutManager;
        recyclerView.setLayoutManager(linearLayoutManager);
    }

    private final void setupRootView() {
        SwipeRefreshLayout root = getBinding().getRoot();
        ScreenType screenType = this.screenType;
        root.setEnabled((screenType instanceof ScreenType.Fullscreen) || (screenType instanceof ScreenType.StakingOperationsTab));
    }

    private final void setupLoadMore(final WalletTransactionsRecycleAdapter walletTransactionsRecycleAdapter) {
        final BaseLoadMoreModule loadMoreModule = walletTransactionsRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                WalletTransactionsFragment.setupLoadMore$lambda$10$lambda$9$lambda$8(WalletTransactionsRecycleAdapter.this, this, loadMoreModule);
            }
        });
    }

    public static final void setupLoadMore$lambda$10$lambda$9$lambda$8(WalletTransactionsRecycleAdapter this_with, WalletTransactionsFragment this$0, BaseLoadMoreModule this_with$1) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with$1, "$this_with$1");
        BaseNode baseNode = (BaseNode) CollectionsKt.lastOrNull(this_with.getData());
        if (baseNode == null) {
            return;
        }
        if (baseNode instanceof TransactionItem) {
            WalletTransactionsPresenter.load$default(this$0.getPresenter(), false, false, ((TransactionItem) baseNode).getTransaction().getId(), 3, null);
        } else if (baseNode instanceof StakingOperationItem) {
            WalletTransactionsPresenter.load$default(this$0.getPresenter(), false, false, null, 7, null);
        } else {
            this_with$1.loadMoreComplete();
        }
    }

    private final void setupColors() {
        SwipeRefreshLayout root = getBinding().getRoot();
        root.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
        root.setColorSchemeColors(getThemedColor("chats_actionBackground"));
    }

    private final void setupListeners() {
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletTransactionsFragment.setupListeners$lambda$13$lambda$12(WalletTransactionsFragment.this);
            }
        });
        WalletTransactionsRecycleAdapter transactionAdapter = getTransactionAdapter();
        transactionAdapter.getGlobalStateProvider().setOnRetryButtonClickAction(new WalletTransactionsFragment$setupListeners$2$1(this));
        transactionAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletTransactionsFragment.setupListeners$lambda$15$lambda$14(WalletTransactionsFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    public static final void setupListeners$lambda$13$lambda$12(WalletTransactionsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletTransactionsPresenter.load$default(this$0.getPresenter(), true, false, null, 6, null);
    }

    public static final void setupListeners$lambda$15$lambda$14(WalletTransactionsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this$0.getTransactionAdapter().getItem(i);
        if (baseNode instanceof TransactionItem) {
            TransactionItem transactionItem = (TransactionItem) baseNode;
            if (transactionItem.isUnsupported()) {
                return;
            }
            this$0.showDialog(WalletTransactionDetailsBottomSheetDialog.Companion.newInstance$default(WalletTransactionDetailsBottomSheetDialog.Companion, this$0, new WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails(transactionItem), null, 4, null));
        } else if (baseNode instanceof StakingOperationItem) {
            this$0.getPresenter().onStakingOperationClick((StakingOperationItem) baseNode);
        }
    }

    /* compiled from: WalletTransactionsFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$ScreenType */
    /* loaded from: classes3.dex */
    public static abstract class ScreenType {
        public /* synthetic */ ScreenType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private ScreenType() {
        }

        public final boolean isStaking() {
            return (this instanceof StakingOperationsTab) || (this instanceof StakingDetailsTab);
        }

        /* compiled from: WalletTransactionsFragment.kt */
        /* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$ScreenType$Fullscreen */
        /* loaded from: classes3.dex */
        public static final class Fullscreen extends ScreenType {
            public static final Fullscreen INSTANCE = new Fullscreen();

            private Fullscreen() {
                super(null);
            }
        }

        /* compiled from: WalletTransactionsFragment.kt */
        /* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$ScreenType$TokenDetailsTab */
        /* loaded from: classes3.dex */
        public static final class TokenDetailsTab extends ScreenType {
            private final TransactionsGroup transactionsGroup;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof TokenDetailsTab) && Intrinsics.areEqual(this.transactionsGroup, ((TokenDetailsTab) obj).transactionsGroup);
            }

            public int hashCode() {
                return this.transactionsGroup.hashCode();
            }

            public String toString() {
                return "TokenDetailsTab(transactionsGroup=" + this.transactionsGroup + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TokenDetailsTab(TransactionsGroup transactionsGroup) {
                super(null);
                Intrinsics.checkNotNullParameter(transactionsGroup, "transactionsGroup");
                this.transactionsGroup = transactionsGroup;
            }

            public final TransactionsGroup getTransactionsGroup() {
                return this.transactionsGroup;
            }
        }

        /* compiled from: WalletTransactionsFragment.kt */
        /* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$ScreenType$StakingDetailsTab */
        /* loaded from: classes3.dex */
        public static final class StakingDetailsTab extends ScreenType {
            private final StakingOperationType operationsType;
            private final StakingDetailsItem stakingDetails;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof StakingDetailsTab) {
                    StakingDetailsTab stakingDetailsTab = (StakingDetailsTab) obj;
                    return Intrinsics.areEqual(this.stakingDetails, stakingDetailsTab.stakingDetails) && this.operationsType == stakingDetailsTab.operationsType;
                }
                return false;
            }

            public int hashCode() {
                int hashCode = this.stakingDetails.hashCode() * 31;
                StakingOperationType stakingOperationType = this.operationsType;
                return hashCode + (stakingOperationType == null ? 0 : stakingOperationType.hashCode());
            }

            public String toString() {
                return "StakingDetailsTab(stakingDetails=" + this.stakingDetails + ", operationsType=" + this.operationsType + ')';
            }

            public final StakingDetailsItem getStakingDetails() {
                return this.stakingDetails;
            }

            public final StakingOperationType getOperationsType() {
                return this.operationsType;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public StakingDetailsTab(StakingDetailsItem stakingDetails, StakingOperationType stakingOperationType) {
                super(null);
                Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
                this.stakingDetails = stakingDetails;
                this.operationsType = stakingOperationType;
            }
        }

        /* compiled from: WalletTransactionsFragment.kt */
        /* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$ScreenType$StakingOperationsTab */
        /* loaded from: classes3.dex */
        public static final class StakingOperationsTab extends ScreenType {
            private final StakingOperationType operationsType;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof StakingOperationsTab) && this.operationsType == ((StakingOperationsTab) obj).operationsType;
            }

            public int hashCode() {
                StakingOperationType stakingOperationType = this.operationsType;
                if (stakingOperationType == null) {
                    return 0;
                }
                return stakingOperationType.hashCode();
            }

            public String toString() {
                return "StakingOperationsTab(operationsType=" + this.operationsType + ')';
            }

            public final StakingOperationType getOperationsType() {
                return this.operationsType;
            }

            public StakingOperationsTab(StakingOperationType stakingOperationType) {
                super(null);
                this.operationsType = stakingOperationType;
            }
        }
    }

    /* compiled from: WalletTransactionsFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ WalletTransactionsFragment newInstance$default(Companion companion, ScreenType screenType, TokenCode tokenCode, int i, Object obj) {
            if ((i & 2) != 0) {
                tokenCode = TokenCode.UNKNOWN;
            }
            return companion.newInstance(screenType, tokenCode);
        }

        public final WalletTransactionsFragment newInstance(ScreenType screenType, TokenCode tokenCode) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            return new WalletTransactionsFragment(screenType, tokenCode);
        }
    }
}
