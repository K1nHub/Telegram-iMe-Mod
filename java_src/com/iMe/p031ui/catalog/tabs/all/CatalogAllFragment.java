package com.iMe.p031ui.catalog.tabs.all;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.catalog.details.ChannelDetailsBottomSheetDialog;
import com.iMe.p031ui.catalog.tabs.CatalogTabFragment;
import com.iMe.p031ui.catalog.tabs.all.adapter.CatalogAllCategoriesRecycleAdapter;
import com.iMe.p031ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter;
import com.iMe.p031ui.catalog.tabs.all.adapter.diff.CategoriesPreviewsDiffCallback;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import com.iMe.p031ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.catalog.ChatType;
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
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.databinding.ForkFragmentCatalogAllBinding;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CatalogAllFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllFragment */
/* loaded from: classes.dex */
public final class CatalogAllFragment extends CatalogTabFragment implements CatalogAllView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CatalogAllFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CatalogAllFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy categoriesRecycleAdapter$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public /* synthetic */ void onLoadingState() {
        GlobalStateView.CC.$default$onLoadingState(this);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public CatalogAllFragment(ChatType chatType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        CatalogAllFragment$presenter$2 catalogAllFragment$presenter$2 = new CatalogAllFragment$presenter$2(this, chatType);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CatalogAllPresenter.class.getName() + ".presenter", catalogAllFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new CatalogAllFragment$special$$inlined$inject$default$1(this, null, null));
        this.categoriesRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CatalogAllFragment$binding$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CatalogAllPresenter getPresenter() {
        return (CatalogAllPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final CatalogAllCategoriesRecycleAdapter getCategoriesRecycleAdapter() {
        return (CatalogAllCategoriesRecycleAdapter) this.categoriesRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentCatalogAllBinding getBinding() {
        return (ForkFragmentCatalogAllBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupRecycleView();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.catalog.tabs.all.CatalogAllView
    public void onCategoriesLoaded(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
        if (!globalStateLayout.isContentState()) {
            globalStateLayout.showContent();
        }
        getCategoriesRecycleAdapter().setNewInstance(items);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        CatalogAllCategoriesRecycleAdapter categoriesRecycleAdapter = getCategoriesRecycleAdapter();
        categoriesRecycleAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(categoriesRecycleAdapter, items, null, 2, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getCategoriesRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getCategoriesRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.iMe.p031ui.catalog.tabs.all.CatalogAllView
    public void onNestedLoadMoreItems(long j, List<CampaignItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        CatalogAllChannelsRecycleAdapter nestedChannelsAdapter = getNestedChannelsAdapter(j);
        if (nestedChannelsAdapter != null) {
            nestedChannelsAdapter.getLoadMoreModule().loadMoreComplete();
            BaseQuickAdapter.setDiffNewData$default(nestedChannelsAdapter, items, null, 2, null);
        }
    }

    @Override // com.iMe.p031ui.catalog.tabs.all.CatalogAllView
    public void onNestedLoadMoreComplete(long j) {
        BaseLoadMoreModule loadMoreModule;
        CatalogAllChannelsRecycleAdapter nestedChannelsAdapter = getNestedChannelsAdapter(j);
        if (nestedChannelsAdapter == null || (loadMoreModule = nestedChannelsAdapter.getLoadMoreModule()) == null) {
            return;
        }
        loadMoreModule.loadMoreEnd(true);
    }

    @Override // com.iMe.p031ui.catalog.tabs.all.CatalogAllView
    public void onNestedLoadMoreError(long j) {
        BaseLoadMoreModule loadMoreModule;
        CatalogAllChannelsRecycleAdapter nestedChannelsAdapter = getNestedChannelsAdapter(j);
        if (nestedChannelsAdapter == null || (loadMoreModule = nestedChannelsAdapter.getLoadMoreModule()) == null) {
            return;
        }
        loadMoreModule.loadMoreFail();
    }

    @Override // com.iMe.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onNoInternetErrorState() {
        showRefreshing(false);
        getBinding().globalStateLayout.showNoInternetError();
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onUnexpectedErrorState() {
        showRefreshing(false);
        getBinding().globalStateLayout.showUnexpectedError();
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public void onEmptyState() {
        GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
        Intrinsics.checkNotNullExpressionValue(globalStateLayout, "binding.globalStateLayout");
        GlobalStateLayout.showEmpty$default(globalStateLayout, null, 1, null);
    }

    @Override // com.iMe.p031ui.catalog.tabs.all.CatalogAllView
    public void openCampaignDetailsScreen(CampaignItem campaign, TLRPC$Chat chat, ChatType chatType) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Intrinsics.checkNotNullParameter(chat, "chat");
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        showDialog(ChannelDetailsBottomSheetDialog.Companion.newInstance(campaign, chat, chatType, this));
    }

    @Override // com.iMe.p031ui.catalog.tabs.CatalogTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleCategories;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.recycleCategories");
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.iMe.p031ui.catalog.tabs.CatalogTabFragment
    public void onSelectedLanguageChanged() {
        getPresenter().reloadCategories();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        SwipeRefreshLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final CatalogAllCategoriesRecycleAdapter categoriesRecycleAdapter = getCategoriesRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogAllCategoriesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleCategories;
        CatalogAllCategoriesRecycleAdapter categoriesRecycleAdapter = getCategoriesRecycleAdapter();
        categoriesRecycleAdapter.setDiffCallback(new CategoriesPreviewsDiffCallback());
        setupLoadMore(categoriesRecycleAdapter);
        recyclerView.setAdapter(categoriesRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupLoadMore(CatalogAllCategoriesRecycleAdapter catalogAllCategoriesRecycleAdapter) {
        catalogAllCategoriesRecycleAdapter.getCategoryWithCampaignsProvider().setOnLoadMoreChannels(new CatalogAllFragment$setupLoadMore$1$1(this));
        BaseLoadMoreModule loadMoreModule = catalogAllCategoriesRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                CatalogAllFragment.setupLoadMore$lambda$7$lambda$6$lambda$5(CatalogAllFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLoadMore$lambda$7$lambda$6$lambda$5(CatalogAllFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadCategoriesPreviews();
    }

    private final void setupColors() {
        getBinding().getRoot().setColorSchemeColors(getThemedColor(Theme.key_chats_actionBackground));
    }

    private final void setupListeners() {
        getCategoriesRecycleAdapter().getCategoryWithCampaignsProvider().setOnChannelItemClick(new CatalogAllFragment$setupListeners$1$1(this));
        ForkFragmentCatalogAllBinding binding = getBinding();
        binding.globalStateLayout.setRetryButtonClickListener(new CatalogAllFragment$setupListeners$2$1(this));
        binding.getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                CatalogAllFragment.setupListeners$lambda$11$lambda$10(CatalogAllFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$11$lambda$10(CatalogAllFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().reloadCategories();
    }

    private final CatalogAllChannelsRecycleAdapter getNestedChannelsAdapter(long j) {
        return getCategoriesRecycleAdapter().getCategoryWithCampaignsProvider().getChannelsAdapter(j);
    }

    /* compiled from: CatalogAllFragment.kt */
    /* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CatalogAllFragment newInstance(ChatType chatType) {
            Intrinsics.checkNotNullParameter(chatType, "chatType");
            return new CatalogAllFragment(chatType);
        }
    }
}
