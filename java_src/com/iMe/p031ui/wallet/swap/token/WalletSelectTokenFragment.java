package com.iMe.p031ui.wallet.swap.token;

import android.content.Context;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.p031ui.wallet.swap.token.adapter.WalletSelectTokenAdapter;
import com.iMe.p031ui.wallet.swap.token.adapter.diff.SelectTokenDiffCallback;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
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
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentWalletSelectTokenBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3626ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.EditTextBoldCursor;
/* compiled from: WalletSelectTokenFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment */
/* loaded from: classes4.dex */
public final class WalletSelectTokenFragment extends WalletAuthBaseFragment implements WalletSelectTokenView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSelectTokenFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSelectTokenFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Callbacks$Callback1<TokenDetailed> onTokenSelectedAction;
    private final boolean onlyPositiveBalance;
    private final MoxyKtxDelegate presenter$delegate;
    private final ScreenType screenType;
    private final Lazy tokensAdapter$delegate;

    public static final WalletSelectTokenFragment newInstance(ScreenType screenType, TokenDetailed tokenDetailed, String str, boolean z, Callbacks$Callback1<TokenDetailed> callbacks$Callback1) {
        return Companion.newInstance(screenType, tokenDetailed, str, z, callbacks$Callback1);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public WalletSelectTokenFragment(final TokenDetailed tokenDetailed, final String networkId, ScreenType screenType, boolean z, Callbacks$Callback1<TokenDetailed> onTokenSelectedAction) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(onTokenSelectedAction, "onTokenSelectedAction");
        this.screenType = screenType;
        this.onlyPositiveBalance = z;
        this.onTokenSelectedAction = onTokenSelectedAction;
        Function0<WalletSelectTokenPresenter> function0 = new Function0<WalletSelectTokenPresenter>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSelectTokenPresenter invoke() {
                Lazy lazy2;
                final WalletSelectTokenFragment walletSelectTokenFragment = WalletSelectTokenFragment.this;
                final TokenDetailed tokenDetailed2 = tokenDetailed;
                final String str = networkId;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$presenter$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        WalletSelectTokenFragment.ScreenType screenType2;
                        boolean z2;
                        screenType2 = WalletSelectTokenFragment.this.screenType;
                        z2 = WalletSelectTokenFragment.this.onlyPositiveBalance;
                        return ParametersHolderKt.parametersOf(screenType2, tokenDetailed2, str, Boolean.valueOf(z2));
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSelectTokenPresenter>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletSelectTokenPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletSelectTokenPresenter.class), qualifier, function03);
                    }
                });
                return (WalletSelectTokenPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletSelectTokenPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSelectTokenAdapter>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.swap.token.adapter.WalletSelectTokenAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSelectTokenAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(WalletSelectTokenAdapter.class), qualifier, function02);
            }
        });
        this.tokensAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletSelectTokenBinding>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletSelectTokenBinding invoke() {
                return ForkFragmentWalletSelectTokenBinding.inflate(LayoutInflater.from(WalletSelectTokenFragment.this.getParentActivity()));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletSelectTokenPresenter getPresenter() {
        return (WalletSelectTokenPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletSelectTokenAdapter getTokensAdapter() {
        return (WalletSelectTokenAdapter) this.tokensAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletSelectTokenBinding getBinding() {
        return (ForkFragmentWalletSelectTokenBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupRecycleView();
        setupListeners();
        GlobalStateLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletSelectTokenFragment.getThemeDescriptions$lambda$0(WalletSelectTokenFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundWhite));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletSelectTokenFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getTokensAdapter().notifyDataSetChanged();
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onEmptyState() {
        GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
        Intrinsics.checkNotNullExpressionValue(globalStateLayout, "binding.globalStateLayout");
        GlobalStateLayout.showEmpty$default(globalStateLayout, null, 1, null);
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onLoadingState() {
        getBinding().globalStateLayout.showProgress();
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onNoInternetErrorState() {
        getBinding().globalStateLayout.showNoInternetError();
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onUnexpectedErrorState() {
        getBinding().globalStateLayout.showUnexpectedError();
    }

    @Override // com.iMe.p031ui.wallet.swap.token.WalletSelectTokenView
    public void renderItems(List<SelectableTokenItem> tokens) {
        List mutableList;
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        if (tokens.isEmpty()) {
            GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
            Intrinsics.checkNotNullExpressionValue(globalStateLayout, "binding.globalStateLayout");
            GlobalStateLayout.showEmpty$default(globalStateLayout, null, 1, null);
            return;
        }
        getBinding().globalStateLayout.showContent();
        WalletSelectTokenAdapter tokensAdapter = getTokensAdapter();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) tokens);
        BaseQuickAdapter.setDiffNewData$default(tokensAdapter, mutableList, null, 2, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<SelectableTokenItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        WalletSelectTokenAdapter tokensAdapter = getTokensAdapter();
        tokensAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(tokensAdapter, items, null, 2, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getTokensAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getTokensAdapter().getLoadMoreModule().loadMoreFail();
    }

    private final void setupActionBar() {
        C3626ActionBar c3626ActionBar = this.actionBar;
        c3626ActionBar.setBackButtonImage(C3558R.C3560drawable.ic_ab_back);
        c3626ActionBar.setTitle(getResourceManager().getString(C3558R.string.wallet_swap_process_select_token_header));
        c3626ActionBar.setAllowOverlayTitle(true);
        if (this.screenType instanceof ScreenType.Swap) {
            ActionBarMenuItem actionBarMenuItemSearchListener = c3626ActionBar.createMenu().addItem(IdFabric$Menu.SEARCH, C3558R.C3560drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$setupActionBar$1$1
                @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchCollapse() {
                    WalletSelectTokenPresenter presenter;
                    presenter = WalletSelectTokenFragment.this.getPresenter();
                    presenter.onQueryUpdate("");
                }

                @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onTextChanged(EditText editText) {
                    WalletSelectTokenPresenter presenter;
                    Intrinsics.checkNotNullParameter(editText, "editText");
                    presenter = WalletSelectTokenFragment.this.getPresenter();
                    presenter.onQueryUpdate(editText.getText().toString());
                }
            });
            EditTextBoldCursor searchField = actionBarMenuItemSearchListener.getSearchField();
            searchField.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(128)});
            searchField.setImeOptions(Integer.MIN_VALUE);
            actionBarMenuItemSearchListener.setSearchFieldHint(getResourceManager().getString(C3558R.string.token_search_hint));
            actionBarMenuItemSearchListener.setContentDescription(LocaleController.getString("Search", C3558R.string.Search));
        }
        c3626ActionBar.setActionBarMenuOnItemClick(new C3626ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$setupActionBar$1$3
            @Override // org.telegram.p043ui.ActionBar.C3626ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletSelectTokenFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleTokens;
        WalletSelectTokenAdapter tokensAdapter = getTokensAdapter();
        tokensAdapter.setDiffCallback(new SelectTokenDiffCallback());
        tokensAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletSelectTokenFragment.setupRecycleView$lambda$7$lambda$6$lambda$5(WalletSelectTokenFragment.this, baseQuickAdapter, view, i);
            }
        });
        setupLoadMore(tokensAdapter);
        recyclerView.setAdapter(tokensAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupRecycleView$lambda$7$lambda$6$lambda$5(WalletSelectTokenFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.onTokenSelectedAction.invoke(this$0.getTokensAdapter().getItem(i).getToken());
        this$0.finishFragment();
    }

    private final void setupLoadMore(WalletSelectTokenAdapter walletSelectTokenAdapter) {
        BaseLoadMoreModule loadMoreModule = walletSelectTokenAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                WalletSelectTokenFragment.setupLoadMore$lambda$10$lambda$9$lambda$8(WalletSelectTokenFragment.this);
            }
        });
        walletSelectTokenAdapter.setAnimationEnable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLoadMore$lambda$10$lambda$9$lambda$8(WalletSelectTokenFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletSelectTokenPresenter.searchByQuery$default(this$0.getPresenter(), false, 1, null);
    }

    private final void setupListeners() {
        getBinding().globalStateLayout.setRetryButtonClickListener(new Function0<Unit>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$setupListeners$1
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
                WalletSelectTokenPresenter presenter;
                presenter = WalletSelectTokenFragment.this.getPresenter();
                presenter.reloadSearchResults();
            }
        });
    }

    /* compiled from: WalletSelectTokenFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$ScreenType */
    /* loaded from: classes4.dex */
    public static abstract class ScreenType {
        public /* synthetic */ ScreenType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private ScreenType() {
        }

        /* compiled from: WalletSelectTokenFragment.kt */
        /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$ScreenType$Binance */
        /* loaded from: classes4.dex */
        public static final class Binance extends ScreenType {
            private final List<TokenDetailed> tokens;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Binance(List<TokenDetailed> tokens) {
                super(null);
                Intrinsics.checkNotNullParameter(tokens, "tokens");
                this.tokens = tokens;
            }

            public final List<TokenDetailed> getTokens() {
                return this.tokens;
            }
        }

        /* compiled from: WalletSelectTokenFragment.kt */
        /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$ScreenType$Send */
        /* loaded from: classes4.dex */
        public static final class Send extends ScreenType {
            private final List<TokenDetailed> tokens;

            public Send(List<TokenDetailed> list) {
                super(null);
                this.tokens = list;
            }

            public /* synthetic */ Send(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : list);
            }
        }

        /* compiled from: WalletSelectTokenFragment.kt */
        /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$ScreenType$Swap */
        /* loaded from: classes4.dex */
        public static final class Swap extends ScreenType {
            private final TokenDetailed ignoredToken;
            private final TransactionDirection swapDirection;
            private final SwapProtocol swapProtocol;

            public final SwapProtocol getSwapProtocol() {
                return this.swapProtocol;
            }

            public final TransactionDirection getSwapDirection() {
                return this.swapDirection;
            }

            public final TokenDetailed getIgnoredToken() {
                return this.ignoredToken;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Swap(SwapProtocol swapProtocol, TransactionDirection swapDirection, TokenDetailed tokenDetailed) {
                super(null);
                Intrinsics.checkNotNullParameter(swapProtocol, "swapProtocol");
                Intrinsics.checkNotNullParameter(swapDirection, "swapDirection");
                this.swapProtocol = swapProtocol;
                this.swapDirection = swapDirection;
                this.ignoredToken = tokenDetailed;
            }
        }
    }

    /* compiled from: WalletSelectTokenFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletSelectTokenFragment newInstance(ScreenType screenType, TokenDetailed tokenDetailed, String networkId, boolean z, Callbacks$Callback1<TokenDetailed> onTokenSelectedAction) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            Intrinsics.checkNotNullParameter(onTokenSelectedAction, "onTokenSelectedAction");
            return new WalletSelectTokenFragment(tokenDetailed, networkId, screenType, z, onTokenSelectedAction);
        }
    }
}
