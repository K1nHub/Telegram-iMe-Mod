package com.smedialink.p031ui.wallet.swap.token;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.select.SelectableTokenItem;
import com.smedialink.model.wallet.select.SelectableType;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.custom.state.GlobalStateLayout;
import com.smedialink.p031ui.wallet.swap.token.adapter.WalletSelectTokenAdapter;
import com.smedialink.p031ui.wallet.swap.token.adapter.diff.SelectTokenDiffCallback;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
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
import org.fork.utils.Callbacks$Callback1;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.databinding.ForkFragmentWalletSelectTokenBinding;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
/* compiled from: WalletSelectTokenFragment.kt */
/* renamed from: com.smedialink.ui.wallet.swap.token.WalletSelectTokenFragment */
/* loaded from: classes3.dex */
public final class WalletSelectTokenFragment extends WalletAuthFragment implements WalletSelectTokenView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSelectTokenFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSelectTokenFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final List<SelectableToken> allTokens;
    private final ResettableLazy binding$delegate;
    private final NetworkType networkType;
    private final Callbacks$Callback1<SelectableToken> onTokenSelectedAction;
    private final boolean onlyPositiveBalance;
    private final SelectableToken selectedToken;
    private final Lazy tokensAdapter$delegate;
    private final SelectableType type;

    public static final WalletSelectTokenFragment newInstance(SelectableType selectableType, SelectableToken selectableToken, List<? extends SelectableToken> list, NetworkType networkType, boolean z, Callbacks$Callback1<SelectableToken> callbacks$Callback1) {
        return Companion.newInstance(selectableType, selectableToken, list, networkType, z, callbacks$Callback1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WalletSelectTokenFragment(SelectableType type, SelectableToken selectableToken, List<? extends SelectableToken> allTokens, NetworkType networkType, boolean z, Callbacks$Callback1<SelectableToken> onTokenSelectedAction) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(allTokens, "allTokens");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(onTokenSelectedAction, "onTokenSelectedAction");
        this.type = type;
        this.selectedToken = selectableToken;
        this.allTokens = allTokens;
        this.networkType = networkType;
        this.onlyPositiveBalance = z;
        this.onTokenSelectedAction = onTokenSelectedAction;
        WalletSelectTokenFragment$presenter$2 walletSelectTokenFragment$presenter$2 = new WalletSelectTokenFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        new MoxyKtxDelegate(mvpDelegate, WalletSelectTokenPresenter.class.getName() + ".presenter", walletSelectTokenFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletSelectTokenFragment$special$$inlined$inject$default$1(this, null, null));
        this.tokensAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletSelectTokenFragment$binding$2(this), 1, (Object) null);
    }

    private final WalletSelectTokenAdapter getTokensAdapter() {
        return (WalletSelectTokenAdapter) this.tokensAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletSelectTokenBinding getBinding() {
        return (ForkFragmentWalletSelectTokenBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupRecycleView();
        GlobalStateLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.swap.token.WalletSelectTokenFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletSelectTokenFragment.getThemeDescriptions$lambda$0(WalletSelectTokenFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundWhite"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletSelectTokenFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getTokensAdapter().notifyDataSetChanged();
    }

    @Override // com.smedialink.p031ui.wallet.swap.token.WalletSelectTokenView
    public void onTokensLoaded(List<SelectableTokenItem> tokens) {
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

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onLoadingState() {
        getBinding().globalStateLayout.showProgress();
    }

    private final void setupActionBar() {
        C3351ActionBar c3351ActionBar = this.actionBar;
        c3351ActionBar.setBackButtonImage(C3286R.C3288drawable.ic_ab_back);
        c3351ActionBar.setTitle(getResourceManager().getString(C3286R.string.wallet_swap_process_select_token_header));
        c3351ActionBar.setAllowOverlayTitle(true);
        c3351ActionBar.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.swap.token.WalletSelectTokenFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletSelectTokenFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupColors() {
        getBinding().globalStateLayout.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleTokens;
        WalletSelectTokenAdapter tokensAdapter = getTokensAdapter();
        tokensAdapter.setDiffCallback(new SelectTokenDiffCallback());
        tokensAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.swap.token.WalletSelectTokenFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletSelectTokenFragment.setupRecycleView$lambda$5$lambda$4$lambda$3(WalletSelectTokenFragment.this, baseQuickAdapter, view, i);
            }
        });
        recyclerView.setAdapter(tokensAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupRecycleView$lambda$5$lambda$4$lambda$3(WalletSelectTokenFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.onTokenSelectedAction.invoke(this$0.getTokensAdapter().getItem(i).getToken());
        this$0.finishFragment();
    }

    /* compiled from: WalletSelectTokenFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.swap.token.WalletSelectTokenFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletSelectTokenFragment newInstance(SelectableType type, SelectableToken selectableToken, List<? extends SelectableToken> allTokens, NetworkType networkType, boolean z, Callbacks$Callback1<SelectableToken> onTokenSelectedAction) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(allTokens, "allTokens");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(onTokenSelectedAction, "onTokenSelectedAction");
            return new WalletSelectTokenFragment(type, selectableToken, allTokens, networkType, z, onTokenSelectedAction);
        }
    }
}
