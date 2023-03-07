package com.smedialink.p031ui.catalog.tabs.all;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.p031ui.catalog.details.ChannelDetailsBottomSheetDialog;
import com.smedialink.p031ui.catalog.tabs.CatalogTabFragment;
import com.smedialink.p031ui.catalog.tabs.all.adapter.CatalogAllCategoriesRecycleAdapter;
import com.smedialink.p031ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter;
import com.smedialink.p031ui.catalog.tabs.all.adapter.diff.CategoriesPreviewsDiffCallback;
import com.smedialink.p031ui.custom.state.GlobalStateLayout;
import com.smedialink.storage.domain.model.catalog.ChatType;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.databinding.ForkFragmentCatalogAllBinding;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CatalogAllFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllFragment */
/* loaded from: classes3.dex */
public final class CatalogAllFragment extends CatalogTabFragment implements CatalogAllView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CatalogAllFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CatalogAllFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy categoriesRecycleAdapter$delegate;
    private final MoxyKtxDelegate presenter$delegate;

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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupRecycleView();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.catalog.tabs.all.CatalogAllView
    public void onCategoriesLoaded(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
        if (!globalStateLayout.isContentState()) {
            globalStateLayout.showContent();
        }
        getCategoriesRecycleAdapter().setNewInstance(items);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        CatalogAllCategoriesRecycleAdapter categoriesRecycleAdapter = getCategoriesRecycleAdapter();
        categoriesRecycleAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(categoriesRecycleAdapter, items, null, 2, null);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getCategoriesRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getCategoriesRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.smedialink.p031ui.catalog.tabs.all.CatalogAllView
    public void onNestedLoadMoreItems(long j, List<CampaignItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        CatalogAllChannelsRecycleAdapter nestedChannelsAdapter = getNestedChannelsAdapter(j);
        if (nestedChannelsAdapter == null) {
            return;
        }
        nestedChannelsAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(nestedChannelsAdapter, items, null, 2, null);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.all.CatalogAllView
    public void onNestedLoadMoreComplete(long j) {
        BaseLoadMoreModule loadMoreModule;
        CatalogAllChannelsRecycleAdapter nestedChannelsAdapter = getNestedChannelsAdapter(j);
        if (nestedChannelsAdapter == null || (loadMoreModule = nestedChannelsAdapter.getLoadMoreModule()) == null) {
            return;
        }
        loadMoreModule.loadMoreEnd(true);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.all.CatalogAllView
    public void onNestedLoadMoreError(long j) {
        BaseLoadMoreModule loadMoreModule;
        CatalogAllChannelsRecycleAdapter nestedChannelsAdapter = getNestedChannelsAdapter(j);
        if (nestedChannelsAdapter == null || (loadMoreModule = nestedChannelsAdapter.getLoadMoreModule()) == null) {
            return;
        }
        loadMoreModule.loadMoreFail();
    }

    @Override // com.smedialink.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onNoInternetErrorState() {
        showRefreshing(false);
        getBinding().globalStateLayout.showNoInternetError();
    }

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onUnexpectedErrorState() {
        showRefreshing(false);
        getBinding().globalStateLayout.showUnexpectedError();
    }

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onEmptyState() {
        GlobalStateLayout globalStateLayout = getBinding().globalStateLayout;
        Intrinsics.checkNotNullExpressionValue(globalStateLayout, "binding.globalStateLayout");
        GlobalStateLayout.showEmpty$default(globalStateLayout, null, 1, null);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.all.CatalogAllView
    public void openCampaignDetailsScreen(CampaignItem campaign, TLRPC$Chat chat, ChatType chatType) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Intrinsics.checkNotNullParameter(chat, "chat");
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        showDialog(ChannelDetailsBottomSheetDialog.Companion.newInstance(campaign, chat, chatType, this));
    }

    @Override // com.smedialink.p031ui.catalog.tabs.CatalogTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleCategories;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.recycleCategories");
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.CatalogTabFragment
    public void onSelectedLanguageChanged() {
        getPresenter().reloadCategories();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        SwipeRefreshLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final CatalogAllCategoriesRecycleAdapter categoriesRecycleAdapter = getCategoriesRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.catalog.tabs.all.CatalogAllFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogAllCategoriesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleCategories;
        CatalogAllCategoriesRecycleAdapter categoriesRecycleAdapter = getCategoriesRecycleAdapter();
        categoriesRecycleAdapter.setDiffCallback(new CategoriesPreviewsDiffCallback());
        setupLoadMore(categoriesRecycleAdapter);
        Unit unit = Unit.INSTANCE;
        recyclerView.setAdapter(categoriesRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupLoadMore(CatalogAllCategoriesRecycleAdapter catalogAllCategoriesRecycleAdapter) {
        catalogAllCategoriesRecycleAdapter.getCategoryWithCampaignsProvider().setOnLoadMoreChannels(new CatalogAllFragment$setupLoadMore$1$1(this));
        BaseLoadMoreModule loadMoreModule = catalogAllCategoriesRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.smedialink.ui.catalog.tabs.all.CatalogAllFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                CatalogAllFragment.m1421setupLoadMore$lambda7$lambda6$lambda5(CatalogAllFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupLoadMore$lambda-7$lambda-6$lambda-5  reason: not valid java name */
    public static final void m1421setupLoadMore$lambda7$lambda6$lambda5(CatalogAllFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadCategoriesPreviews();
    }

    private final void setupColors() {
        getBinding().getRoot().setColorSchemeColors(getThemedColor("chats_actionBackground"));
    }

    private final void setupListeners() {
        getCategoriesRecycleAdapter().getCategoryWithCampaignsProvider().setOnChannelItemClick(new CatalogAllFragment$setupListeners$1$1(this));
        ForkFragmentCatalogAllBinding binding = getBinding();
        binding.globalStateLayout.setRetryButtonClickListener(new CatalogAllFragment$setupListeners$2$1(this));
        binding.getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.smedialink.ui.catalog.tabs.all.CatalogAllFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                CatalogAllFragment.m1420setupListeners$lambda11$lambda10(CatalogAllFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupListeners$lambda-11$lambda-10  reason: not valid java name */
    public static final void m1420setupListeners$lambda11$lambda10(CatalogAllFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().reloadCategories();
    }

    private final CatalogAllChannelsRecycleAdapter getNestedChannelsAdapter(long j) {
        return getCategoriesRecycleAdapter().getCategoryWithCampaignsProvider().getChannelsAdapter(j);
    }

    /* compiled from: CatalogAllFragment.kt */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllFragment$Companion */
    /* loaded from: classes3.dex */
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
