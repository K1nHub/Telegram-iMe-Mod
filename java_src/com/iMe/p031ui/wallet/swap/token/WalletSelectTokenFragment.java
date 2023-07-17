package com.iMe.p031ui.wallet.swap.token;

import android.content.Context;
import android.text.InputFilter;
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
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentWalletSelectTokenBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
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

    public WalletSelectTokenFragment(TokenDetailed tokenDetailed, String networkId, ScreenType screenType, boolean z, Callbacks$Callback1<TokenDetailed> onTokenSelectedAction) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(onTokenSelectedAction, "onTokenSelectedAction");
        this.screenType = screenType;
        this.onlyPositiveBalance = z;
        this.onTokenSelectedAction = onTokenSelectedAction;
        WalletSelectTokenFragment$presenter$2 walletSelectTokenFragment$presenter$2 = new WalletSelectTokenFragment$presenter$2(this, tokenDetailed, networkId);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletSelectTokenPresenter.class.getName() + ".presenter", walletSelectTokenFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletSelectTokenFragment$special$$inlined$inject$default$1(this, null, null));
        this.tokensAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletSelectTokenFragment$binding$2(this), 1, (Object) null);
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
        C3484ActionBar c3484ActionBar = this.actionBar;
        c3484ActionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        c3484ActionBar.setTitle(getResourceManager().getString(C3417R.string.wallet_swap_process_select_token_header));
        c3484ActionBar.setAllowOverlayTitle(true);
        if (this.screenType instanceof ScreenType.Swap) {
            ActionBarMenuItem actionBarMenuItemSearchListener = c3484ActionBar.createMenu().addItem(IdFabric$Menu.SEARCH, C3417R.C3419drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$setupActionBar$1$1
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
            actionBarMenuItemSearchListener.setSearchFieldHint(getResourceManager().getString(C3417R.string.token_search_hint));
            actionBarMenuItemSearchListener.setContentDescription(LocaleController.getString("Search", C3417R.string.Search));
        }
        c3484ActionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$setupActionBar$1$3
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
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
        getBinding().globalStateLayout.setRetryButtonClickListener(new WalletSelectTokenFragment$setupListeners$1(this));
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
