package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history;

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
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.home.pay.BinanceTransactionItem;
import com.smedialink.model.wallet.home.pay.BinanceTransactionsGroup;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.custom.state.GlobalStateLayout;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history.adapter.BinancePayHistoryRecycleAdapter;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history.adapter.diff.BinancePayHistoryDiffCallback;
import com.smedialink.storage.data.utils.system.AndroidActivityHolder;
import com.smedialink.storage.domain.model.binancepay.BinanceTransaction;
import com.smedialink.utils.dialogs.DialogUtils;
import com.smedialink.utils.dialogs.DialogsFactoryKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
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
import org.fork.utils.Callbacks$Callback;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.databinding.ForkFragmentWalletBinancePayHistoryBinding;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
/* compiled from: WalletBinancePayHistoryFragment.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment */
/* loaded from: classes3.dex */
public final class WalletBinancePayHistoryFragment extends WalletAuthFragment implements WalletBinancePayHistoryView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletBinancePayHistoryFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletBinancePayHistoryFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy binancePayHistoryAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final ScreenType screenType;
    private final String tokenCode;

    public WalletBinancePayHistoryFragment(ScreenType screenType, String tokenCode) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        this.screenType = screenType;
        this.tokenCode = tokenCode;
        WalletBinancePayHistoryFragment$presenter$2 walletBinancePayHistoryFragment$presenter$2 = new WalletBinancePayHistoryFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletBinancePayHistoryPresenter.class.getName() + ".presenter", walletBinancePayHistoryFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2174xc9259482(this, null, null));
        this.binancePayHistoryAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletBinancePayHistoryFragment$binding$2(this), 1, (Object) null);
    }

    public final WalletBinancePayHistoryPresenter getPresenter() {
        return (WalletBinancePayHistoryPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final BinancePayHistoryRecycleAdapter getBinancePayHistoryAdapter() {
        return (BinancePayHistoryRecycleAdapter) this.binancePayHistoryAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletBinancePayHistoryBinding getBinding() {
        return (ForkFragmentWalletBinancePayHistoryBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
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
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.smedialink.manager.crypto.pay.BinancePayProcessView
    public void showConfirmPaymentDialog(DialogModel model, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, model, action, null, 8, null));
    }

    @Override // com.smedialink.manager.crypto.pay.BinancePayProcessView
    public void showSuccessPaymentProcessedDialog(String title, String message, String btnText) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(btnText, "btnText");
        DialogsFactoryKt.showSuccessAlert$default(this, title, message, btnText, null, 8, null);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history.WalletBinancePayHistoryView
    public void onLoadedTransactions(List<BaseNode> transactions) {
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        if (!getBinding().globalStateLayout.isContentState()) {
            getBinding().globalStateLayout.showContent();
        }
        BaseQuickAdapter.setDiffNewData$default(getBinancePayHistoryAdapter(), transactions, null, 2, null);
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
        GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
        Intrinsics.checkNotNullExpressionValue(globalStateLayout, "binding.globalStateLayout");
        GlobalStateLayout.showEmpty$default(globalStateLayout, null, 1, null);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getBinancePayHistoryAdapter().getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(getBinancePayHistoryAdapter(), items, null, 2, null);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        BaseLoadMoreModule.loadMoreEnd$default(getBinancePayHistoryAdapter().getLoadMoreModule(), false, 1, null);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getBinancePayHistoryAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void resetLoadMore() {
        getBinancePayHistoryAdapter().getLoadMoreModule().reset$TMessagesProj_release();
    }

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onLoadingState() {
        getBinding().globalStateLayout.showProgress();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletBinancePayHistoryFragment.getThemeDescriptions$lambda$0(WalletBinancePayHistoryFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundWhite"));
        return arrayListOf;
    }

    public static final void getThemeDescriptions$lambda$0(WalletBinancePayHistoryFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinancePayHistoryAdapter().notifyDataSetChanged();
        this$0.setupColors();
    }

    private final void setupActionBar() {
        C3351ActionBar c3351ActionBar = this.actionBar;
        c3351ActionBar.setBackButtonImage(C3286R.C3288drawable.ic_ab_back);
        c3351ActionBar.setTitle(getResourceManager().getString(C3286R.string.wallet_binance_pay_action_history));
        c3351ActionBar.setAllowOverlayTitle(true);
        c3351ActionBar.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletBinancePayHistoryFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleHistory;
        BinancePayHistoryRecycleAdapter binancePayHistoryAdapter = getBinancePayHistoryAdapter();
        binancePayHistoryAdapter.setDiffCallback(new BinancePayHistoryDiffCallback());
        setupLoadMore(binancePayHistoryAdapter);
        recyclerView.setAdapter(binancePayHistoryAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupLoadMore(final BinancePayHistoryRecycleAdapter binancePayHistoryRecycleAdapter) {
        BaseLoadMoreModule loadMoreModule = binancePayHistoryRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                WalletBinancePayHistoryFragment.setupLoadMore$lambda$6$lambda$5$lambda$4(BinancePayHistoryRecycleAdapter.this, this);
            }
        });
    }

    public static final void setupLoadMore$lambda$6$lambda$5$lambda$4(BinancePayHistoryRecycleAdapter this_with, WalletBinancePayHistoryFragment this$0) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseNode baseNode = (BaseNode) CollectionsKt.lastOrNull(this_with.getData());
        if (baseNode != null && (baseNode instanceof BinanceTransactionItem)) {
            this$0.getPresenter().loadMoreTransactions(((BinanceTransactionItem) baseNode).getTransaction().getTransactionId());
        }
    }

    private final void setupColors() {
        ForkFragmentWalletBinancePayHistoryBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        binding.getRoot().setColorSchemeColors(Theme.getColor("chats_actionBackground"));
    }

    private final void setupListeners() {
        ForkFragmentWalletBinancePayHistoryBinding binding = getBinding();
        binding.globalStateLayout.setRetryButtonClickListener(new WalletBinancePayHistoryFragment$setupListeners$1$1(this));
        binding.getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletBinancePayHistoryFragment.setupListeners$lambda$9$lambda$8(WalletBinancePayHistoryFragment.this);
            }
        });
        getBinancePayHistoryAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletBinancePayHistoryFragment.setupListeners$lambda$10(WalletBinancePayHistoryFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    public static final void setupListeners$lambda$9$lambda$8(WalletBinancePayHistoryFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletBinancePayHistoryPresenter.loadTransactions$default(this$0.getPresenter(), true, null, 2, null);
    }

    public static final void setupListeners$lambda$10(WalletBinancePayHistoryFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this$0.getBinancePayHistoryAdapter().getItem(i);
        if (baseNode instanceof BinanceTransactionItem) {
            BinanceTransactionItem binanceTransactionItem = (BinanceTransactionItem) baseNode;
            if ((binanceTransactionItem.getTransaction() instanceof BinanceTransaction.Pay) && binanceTransactionItem.isIncomingPending()) {
                WalletBinancePayHistoryPresenter presenter = this$0.getPresenter();
                Activity parentActivity = this$0.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                presenter.startBinancePayFlow(new AndroidActivityHolder(parentActivity), binanceTransactionItem.getTransaction());
            }
        }
    }

    /* compiled from: WalletBinancePayHistoryFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$ScreenType */
    /* loaded from: classes3.dex */
    public static abstract class ScreenType {
        public /* synthetic */ ScreenType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private ScreenType() {
        }

        /* compiled from: WalletBinancePayHistoryFragment.kt */
        /* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$ScreenType$Fullscreen */
        /* loaded from: classes3.dex */
        public static final class Fullscreen extends ScreenType {
            public static final Fullscreen INSTANCE = new Fullscreen();

            private Fullscreen() {
                super(null);
            }
        }

        /* compiled from: WalletBinancePayHistoryFragment.kt */
        /* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab */
        /* loaded from: classes3.dex */
        public static final class TokenDetailsTab extends ScreenType {
            private final BinanceTransactionsGroup transactionsGroup;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TokenDetailsTab(BinanceTransactionsGroup transactionsGroup) {
                super(null);
                Intrinsics.checkNotNullParameter(transactionsGroup, "transactionsGroup");
                this.transactionsGroup = transactionsGroup;
            }

            public final BinanceTransactionsGroup getTransactionsGroup() {
                return this.transactionsGroup;
            }
        }
    }

    /* compiled from: WalletBinancePayHistoryFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ WalletBinancePayHistoryFragment newInstance$default(Companion companion, ScreenType screenType, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = "";
            }
            return companion.newInstance(screenType, str);
        }

        public final WalletBinancePayHistoryFragment newInstance(ScreenType type, String tokenCode) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            return new WalletBinancePayHistoryFragment(type, tokenCode);
        }
    }
}
