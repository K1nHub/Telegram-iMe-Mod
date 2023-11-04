package com.iMe.p030ui.wallet.home.tabs.binancepay.history;

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
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.home.pay.BinanceTransactionItem;
import com.iMe.model.wallet.home.pay.BinanceTransactionsGroup;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.state.GlobalStateLayout;
import com.iMe.p030ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.p030ui.wallet.home.tabs.binancepay.history.adapter.BinancePayHistoryRecycleAdapter;
import com.iMe.p030ui.wallet.home.tabs.binancepay.history.adapter.diff.BinancePayHistoryDiffCallback;
import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
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
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.databinding.ForkFragmentWalletBinancePayHistoryBinding;
import org.telegram.p043ui.ActionBar.C3706ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
/* compiled from: WalletBinancePayHistoryFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment */
/* loaded from: classes4.dex */
public final class WalletBinancePayHistoryFragment extends WalletAuthBaseFragment implements WalletBinancePayHistoryView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletBinancePayHistoryFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletBinancePayHistoryFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;", 0))};
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
        Function0<WalletBinancePayHistoryPresenter> function0 = new Function0<WalletBinancePayHistoryPresenter>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletBinancePayHistoryPresenter invoke() {
                Lazy lazy2;
                final WalletBinancePayHistoryFragment walletBinancePayHistoryFragment = WalletBinancePayHistoryFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        WalletBinancePayHistoryFragment.ScreenType screenType2;
                        String str;
                        screenType2 = WalletBinancePayHistoryFragment.this.screenType;
                        str = WalletBinancePayHistoryFragment.this.tokenCode;
                        return ParametersHolderKt.parametersOf(screenType2, str);
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletBinancePayHistoryPresenter>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletBinancePayHistoryPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletBinancePayHistoryPresenter.class), qualifier, function03);
                    }
                });
                return (WalletBinancePayHistoryPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletBinancePayHistoryPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<BinancePayHistoryRecycleAdapter>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.home.tabs.binancepay.history.adapter.BinancePayHistoryRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final BinancePayHistoryRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(BinancePayHistoryRecycleAdapter.class), qualifier, function02);
            }
        });
        this.binancePayHistoryAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletBinancePayHistoryBinding>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletBinancePayHistoryBinding invoke() {
                return ForkFragmentWalletBinancePayHistoryBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletBinancePayHistoryFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletBinancePayHistoryPresenter getPresenter() {
        return (WalletBinancePayHistoryPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final BinancePayHistoryRecycleAdapter getBinancePayHistoryAdapter() {
        return (BinancePayHistoryRecycleAdapter) this.binancePayHistoryAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletBinancePayHistoryBinding getBinding() {
        return (ForkFragmentWalletBinancePayHistoryBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
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

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.manager.crypto.pay.BinancePayProcessView
    public void showConfirmPaymentDialog(DialogModel model, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, model, action, null, 8, null));
    }

    @Override // com.iMe.manager.crypto.pay.BinancePayProcessView
    public void showSuccessPaymentProcessedDialog(String title, String message, String btnText) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(btnText, "btnText");
        DialogsFactoryKt.showSuccessAlert$default(this, title, message, btnText, null, 8, null);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView
    public void onLoadedTransactions(List<BaseNode> transactions) {
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        if (!getBinding().globalStateLayout.isContentState()) {
            getBinding().globalStateLayout.showContent();
        }
        BaseQuickAdapter.setDiffNewData$default(getBinancePayHistoryAdapter(), transactions, null, 2, null);
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
        GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
        Intrinsics.checkNotNullExpressionValue(globalStateLayout, "binding.globalStateLayout");
        GlobalStateLayout.showEmpty$default(globalStateLayout, null, 1, null);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getBinancePayHistoryAdapter().getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(getBinancePayHistoryAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        BaseLoadMoreModule.loadMoreEnd$default(getBinancePayHistoryAdapter().getLoadMoreModule(), false, 1, null);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getBinancePayHistoryAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void resetLoadMore() {
        getBinancePayHistoryAdapter().getLoadMoreModule().reset$TMessagesProj_HA_public();
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onLoadingState() {
        getBinding().globalStateLayout.showProgress();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletBinancePayHistoryFragment.getThemeDescriptions$lambda$0(WalletBinancePayHistoryFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundWhite));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletBinancePayHistoryFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinancePayHistoryAdapter().notifyDataSetChanged();
        this$0.setupColors();
    }

    private final void setupActionBar() {
        C3706ActionBar c3706ActionBar = this.actionBar;
        c3706ActionBar.setBackButtonImage(C3634R.C3636drawable.ic_ab_back);
        c3706ActionBar.setTitle(getResourceManager().getString(C3634R.string.wallet_binance_pay_action_history));
        c3706ActionBar.setAllowOverlayTitle(true);
        c3706ActionBar.setActionBarMenuOnItemClick(new C3706ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3706ActionBar.ActionBarMenuOnItemClick
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
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                WalletBinancePayHistoryFragment.setupLoadMore$lambda$6$lambda$5$lambda$4(BinancePayHistoryRecycleAdapter.this, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLoadMore$lambda$6$lambda$5$lambda$4(BinancePayHistoryRecycleAdapter this_with, WalletBinancePayHistoryFragment this$0) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseNode baseNode = (BaseNode) CollectionsKt.lastOrNull((List<? extends Object>) this_with.getData());
        if (baseNode != null && (baseNode instanceof BinanceTransactionItem)) {
            this$0.getPresenter().loadMoreTransactions(((BinanceTransactionItem) baseNode).getTransaction().getTransactionId());
        }
    }

    private final void setupColors() {
        ForkFragmentWalletBinancePayHistoryBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        binding.getRoot().setColorSchemeColors(Theme.getColor(Theme.key_chats_actionBackground));
    }

    private final void setupListeners() {
        ForkFragmentWalletBinancePayHistoryBinding binding = getBinding();
        binding.globalStateLayout.setRetryButtonClickListener(new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$setupListeners$1$1
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
                WalletBinancePayHistoryPresenter presenter;
                presenter = WalletBinancePayHistoryFragment.this.getPresenter();
                WalletBinancePayHistoryPresenter.loadTransactions$default(presenter, false, null, 2, null);
            }
        });
        binding.getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletBinancePayHistoryFragment.setupListeners$lambda$9$lambda$8(WalletBinancePayHistoryFragment.this);
            }
        });
        getBinancePayHistoryAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletBinancePayHistoryFragment.setupListeners$lambda$10(WalletBinancePayHistoryFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$9$lambda$8(WalletBinancePayHistoryFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletBinancePayHistoryPresenter.loadTransactions$default(this$0.getPresenter(), true, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
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
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$ScreenType */
    /* loaded from: classes4.dex */
    public static abstract class ScreenType {
        public /* synthetic */ ScreenType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private ScreenType() {
        }

        /* compiled from: WalletBinancePayHistoryFragment.kt */
        /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$ScreenType$Fullscreen */
        /* loaded from: classes4.dex */
        public static final class Fullscreen extends ScreenType {
            public static final Fullscreen INSTANCE = new Fullscreen();

            private Fullscreen() {
                super(null);
            }
        }

        /* compiled from: WalletBinancePayHistoryFragment.kt */
        /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab */
        /* loaded from: classes4.dex */
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
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$Companion */
    /* loaded from: classes4.dex */
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
