package com.smedialink.p031ui.catalog.tabs.categories;

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
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.p031ui.adapter.provider.GlobalStateProvider;
import com.smedialink.p031ui.catalog.details.ChannelDetailsBottomSheetDialog;
import com.smedialink.p031ui.catalog.tabs.CatalogTabFragment;
import com.smedialink.p031ui.catalog.tabs.categories.adapter.CatalogCampaignsByCategoriesRecycleAdapter;
import com.smedialink.p031ui.catalog.tabs.categories.adapter.diff.CampaignsByCategoriesDiffCallback;
import com.smedialink.storage.domain.model.catalog.ChatType;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
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
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.databinding.ForkFragmentCatalogCategoriesBinding;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CatalogCategoriesFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesFragment */
/* loaded from: classes3.dex */
public final class CatalogCategoriesFragment extends CatalogTabFragment implements CatalogCategoriesView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CatalogCategoriesFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CatalogCategoriesFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy campaignsRecycleAdapter$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    public CatalogCategoriesFragment(ChatType chatType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        CatalogCategoriesFragment$presenter$2 catalogCategoriesFragment$presenter$2 = new CatalogCategoriesFragment$presenter$2(this, chatType);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CatalogCategoriesPresenter.class.getName() + ".presenter", catalogCategoriesFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new CatalogCategoriesFragment$special$$inlined$inject$default$1(this, null, null));
        this.campaignsRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CatalogCategoriesFragment$binding$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CatalogCategoriesPresenter getPresenter() {
        return (CatalogCategoriesPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final CatalogCampaignsByCategoriesRecycleAdapter getCampaignsRecycleAdapter() {
        return (CatalogCampaignsByCategoriesRecycleAdapter) this.campaignsRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentCatalogCategoriesBinding getBinding() {
        return (ForkFragmentCatalogCategoriesBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
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

    @Override // com.smedialink.p031ui.catalog.tabs.categories.CatalogCategoriesView
    public void renderNodes(List<BaseNode> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        showRefreshing(false);
        BaseQuickAdapter.setDiffNewData$default(getCampaignsRecycleAdapter(), nodes, null, 2, null);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        CatalogCampaignsByCategoriesRecycleAdapter campaignsRecycleAdapter = getCampaignsRecycleAdapter();
        campaignsRecycleAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(campaignsRecycleAdapter, items, null, 2, null);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getCampaignsRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getCampaignsRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void resetLoadMore() {
        getCampaignsRecycleAdapter().getLoadMoreModule().reset$TMessagesProj_release();
    }

    @Override // com.smedialink.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.categories.CatalogCategoriesView
    public void openCampaignDetailsScreen(CampaignItem campaign, TLRPC$Chat chat, ChatType chatType) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Intrinsics.checkNotNullParameter(chat, "chat");
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        showDialog(ChannelDetailsBottomSheetDialog.Companion.newInstance(campaign, chat, chatType, this));
    }

    @Override // com.smedialink.p031ui.catalog.tabs.CatalogTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleCampaigns;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.CatalogTabFragment
    public void onSelectedLanguageChanged() {
        getPresenter().reloadAll(true);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        SwipeRefreshLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final CatalogCampaignsByCategoriesRecycleAdapter campaignsRecycleAdapter = getCampaignsRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogCampaignsByCategoriesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleCampaigns;
        CatalogCampaignsByCategoriesRecycleAdapter campaignsRecycleAdapter = getCampaignsRecycleAdapter();
        campaignsRecycleAdapter.setDiffCallback(new CampaignsByCategoriesDiffCallback());
        setupLoadMore(campaignsRecycleAdapter);
        recyclerView.setAdapter(campaignsRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupLoadMore(CatalogCampaignsByCategoriesRecycleAdapter catalogCampaignsByCategoriesRecycleAdapter) {
        BaseLoadMoreModule loadMoreModule = catalogCampaignsByCategoriesRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesFragment$$ExternalSyntheticLambda3
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                CatalogCategoriesFragment.setupLoadMore$lambda$5$lambda$4(CatalogCategoriesFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLoadMore$lambda$5$lambda$4(CatalogCategoriesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadChannels(true);
    }

    private final void setupColors() {
        getBinding().getRoot().setColorSchemeColors(getThemedColor("chats_actionBackground"));
    }

    private final void setupListeners() {
        final CatalogCampaignsByCategoriesRecycleAdapter campaignsRecycleAdapter = getCampaignsRecycleAdapter();
        GlobalStateProvider globalStateProvider = campaignsRecycleAdapter.getGlobalStateProvider();
        globalStateProvider.setMatchParentHeight(true);
        globalStateProvider.setOnRetryButtonClickAction(new CatalogCategoriesFragment$setupListeners$1$1$1(this));
        campaignsRecycleAdapter.getFilterProvider().setOnFilterClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CatalogCategoriesFragment.setupListeners$lambda$10$lambda$8(CatalogCategoriesFragment.this, campaignsRecycleAdapter, baseQuickAdapter, view, i);
            }
        });
        campaignsRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CatalogCategoriesFragment.setupListeners$lambda$10$lambda$9(CatalogCampaignsByCategoriesRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                CatalogCategoriesFragment.setupListeners$lambda$12$lambda$11(CatalogCategoriesFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$10$lambda$8(CatalogCategoriesFragment this$0, CatalogCampaignsByCategoriesRecycleAdapter this_with, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.getPresenter().onCategorySelected(this_with.getFilterProvider().getFiltersRecycleAdapter().getItem(i).getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$10$lambda$9(CatalogCampaignsByCategoriesRecycleAdapter this_with, CatalogCategoriesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof CampaignItem) {
            this$0.getPresenter().onChannelClick((CampaignItem) baseNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$12$lambda$11(CatalogCategoriesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CatalogCategoriesPresenter.reloadChannels$default(this$0.getPresenter(), false, false, 3, null);
    }

    /* compiled from: CatalogCategoriesFragment.kt */
    /* renamed from: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CatalogCategoriesFragment newInstance(ChatType chatType) {
            Intrinsics.checkNotNullParameter(chatType, "chatType");
            return new CatalogCategoriesFragment(chatType);
        }
    }
}
