package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import android.content.Context;
import android.text.InputFilter;
import android.view.View;
import android.widget.EditText;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.iMe.common.IdFabric$Menu;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.wallet.crypto.settings.custom_tokens.adapter.CustomTokensRecycleAdapter;
import com.iMe.p031ui.wallet.crypto.settings.custom_tokens.adapter.diff.CustomTokensDiffCallback;
import com.iMe.p031ui.wallet.crypto.token.TokenManagementFragment;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
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
import org.telegram.messenger.databinding.ForkFragmentCustomTokensBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.EditTextBoldCursor;
/* compiled from: CustomTokensFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment */
/* loaded from: classes4.dex */
public final class CustomTokensFragment extends WalletAuthBaseFragment implements CustomTokensView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CustomTokensFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CustomTokensFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy tokensRecycleAdapter$delegate;

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public CustomTokensFragment() {
        Lazy lazy;
        CustomTokensFragment$presenter$2 customTokensFragment$presenter$2 = new CustomTokensFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CustomTokensPresenter.class.getName() + ".presenter", customTokensFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new CustomTokensFragment$special$$inlined$inject$default$1(this, null, null));
        this.tokensRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CustomTokensFragment$binding$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CustomTokensPresenter getPresenter() {
        return (CustomTokensPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final CustomTokensRecycleAdapter getTokensRecycleAdapter() {
        return (CustomTokensRecycleAdapter) this.tokensRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentCustomTokensBinding getBinding() {
        return (ForkFragmentCustomTokensBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupRecycleViews();
        setupColors();
        setupListeners();
        RecyclerView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.custom_tokens.CustomTokensView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getTokensRecycleAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        CustomTokensRecycleAdapter tokensRecycleAdapter = getTokensRecycleAdapter();
        tokensRecycleAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(tokensRecycleAdapter, items, null, 2, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getTokensRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.custom_tokens.CustomTokensView
    public void openTokenManagementScreen(TokenManagementFragment.ScreenType screenType) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        presentFragment(TokenManagementFragment.Companion.newInstance(screenType));
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CustomTokensFragment.this.setupColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3484ActionBar c3484ActionBar = this.actionBar;
        c3484ActionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        c3484ActionBar.setTitle(LocaleController.getInternalString(C3417R.string.wallet_home_crypto_tokens_settings_toolbar_title));
        final ActionBarMenu createMenu = c3484ActionBar.createMenu();
        ActionBarMenuItem actionBarMenuItemSearchListener = createMenu.addItem(IdFabric$Menu.SEARCH, C3417R.C3419drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment$setupActionBar$1$1$1
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                CustomTokensPresenter presenter;
                ActionBarMenuItem item = ActionBarMenu.this.getItem(IdFabric$Menu.ADD_TOKEN);
                Intrinsics.checkNotNullExpressionValue(item, "getItem(IdFabric.Menu.ADD_TOKEN)");
                ViewExtKt.gone$default(item, false, 1, null);
                presenter = this.getPresenter();
                presenter.onQueryUpdate("");
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                CustomTokensPresenter presenter;
                ActionBarMenuItem item = ActionBarMenu.this.getItem(IdFabric$Menu.ADD_TOKEN);
                Intrinsics.checkNotNullExpressionValue(item, "getItem(IdFabric.Menu.ADD_TOKEN)");
                ViewExtKt.visible$default(item, false, 1, null);
                presenter = this.getPresenter();
                presenter.onQueryUpdate("");
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                CustomTokensPresenter presenter;
                Intrinsics.checkNotNullParameter(editText, "editText");
                presenter = this.getPresenter();
                presenter.onQueryUpdate(editText.getText().toString());
            }
        });
        EditTextBoldCursor searchField = actionBarMenuItemSearchListener.getSearchField();
        searchField.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(128)});
        searchField.setImeOptions(Integer.MIN_VALUE);
        actionBarMenuItemSearchListener.setSearchFieldHint(getResourceManager().getString(C3417R.string.token_search_hint));
        actionBarMenuItemSearchListener.setContentDescription(LocaleController.getString("Search", C3417R.string.Search));
        createMenu.addItem(IdFabric$Menu.ADD_TOKEN, C3417R.C3419drawable.msg_add);
        c3484ActionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment$setupActionBar$1$2
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                CustomTokensPresenter presenter;
                if (i == -1) {
                    CustomTokensFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.ADD_TOKEN) {
                    presenter = CustomTokensFragment.this.getPresenter();
                    presenter.onAddClicked();
                }
            }
        });
    }

    private final void setupRecycleViews() {
        RecyclerView recyclerView = getBinding().recyclerTokens;
        CustomTokensRecycleAdapter tokensRecycleAdapter = getTokensRecycleAdapter();
        tokensRecycleAdapter.getGlobalStateProvider().setMatchParentHeight(true);
        tokensRecycleAdapter.setDiffCallback(new CustomTokensDiffCallback());
        setupLoadMore(tokensRecycleAdapter);
        recyclerView.setAdapter(tokensRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupLoadMore(CustomTokensRecycleAdapter customTokensRecycleAdapter) {
        BaseLoadMoreModule loadMoreModule = customTokensRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                CustomTokensFragment.setupLoadMore$lambda$9$lambda$8$lambda$7(CustomTokensFragment.this);
            }
        });
        customTokensRecycleAdapter.setAnimationEnable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLoadMore$lambda$9$lambda$8$lambda$7(CustomTokensFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadCustomTokens(true);
    }

    private final void setupListeners() {
        final CustomTokensRecycleAdapter tokensRecycleAdapter = getTokensRecycleAdapter();
        GlobalStateProvider globalStateProvider = tokensRecycleAdapter.getGlobalStateProvider();
        globalStateProvider.setOnRetryButtonClickAction(new CustomTokensFragment$setupListeners$1$1$1(this));
        globalStateProvider.setOnEmptyButtonClickAction(new CustomTokensFragment$setupListeners$1$1$2(this));
        tokensRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CustomTokensFragment.setupListeners$lambda$12$lambda$11(CustomTokensRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$12$lambda$11(CustomTokensRecycleAdapter this_with, CustomTokensFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof TokenItem) {
            this$0.getPresenter().onTokenClicked((TokenItem) baseNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        getBinding().getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        getTokensRecycleAdapter().notifyDataSetChanged();
    }

    /* compiled from: CustomTokensFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CustomTokensFragment newInstance() {
            return new CustomTokensFragment();
        }
    }
}
