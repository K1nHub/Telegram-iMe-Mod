package com.iMe.p030ui.catalog.tabs.categories;

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
import com.iMe.model.catalog.CampaignItem;
import com.iMe.p030ui.adapter.provider.GlobalStateProvider;
import com.iMe.p030ui.catalog.details.ChannelDetailsBottomSheetDialog;
import com.iMe.p030ui.catalog.tabs.CatalogTabFragment;
import com.iMe.p030ui.catalog.tabs.categories.adapter.CatalogCampaignsByCategoriesRecycleAdapter;
import com.iMe.p030ui.catalog.tabs.categories.adapter.diff.CampaignsByCategoriesDiffCallback;
import com.iMe.p030ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
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
import org.telegram.messenger.databinding.ForkFragmentCatalogCategoriesBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CatalogCategoriesFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment */
/* loaded from: classes3.dex */
public final class CatalogCategoriesFragment extends CatalogTabFragment implements CatalogCategoriesView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CatalogCategoriesFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CatalogCategoriesFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy campaignsRecycleAdapter$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onEmptyState() {
        GlobalStateView.CC.$default$onEmptyState(this);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onLoadingState() {
        GlobalStateView.CC.$default$onLoadingState(this);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onNoInternetErrorState() {
        GlobalStateView.CC.$default$onNoInternetErrorState(this);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onUnexpectedErrorState() {
        GlobalStateView.CC.$default$onUnexpectedErrorState(this);
    }

    public CatalogCategoriesFragment(final ChatType chatType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Function0<CatalogCategoriesPresenter> function0 = new Function0<CatalogCategoriesPresenter>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CatalogCategoriesPresenter invoke() {
                Lazy lazy2;
                final CatalogCategoriesFragment catalogCategoriesFragment = CatalogCategoriesFragment.this;
                final ChatType chatType2 = chatType;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        return ParametersHolderKt.parametersOf(ChatType.this);
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CatalogCategoriesPresenter>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final CatalogCategoriesPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(CatalogCategoriesPresenter.class), qualifier, function03);
                    }
                });
                return (CatalogCategoriesPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CatalogCategoriesPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CatalogCampaignsByCategoriesRecycleAdapter>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.catalog.tabs.categories.adapter.CatalogCampaignsByCategoriesRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final CatalogCampaignsByCategoriesRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(CatalogCampaignsByCategoriesRecycleAdapter.class), qualifier, function02);
            }
        });
        this.campaignsRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentCatalogCategoriesBinding>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentCatalogCategoriesBinding invoke() {
                return ForkFragmentCatalogCategoriesBinding.inflate(BaseFragmentExtKt.getLayoutInflater(CatalogCategoriesFragment.this));
            }
        }, 1, (Object) null);
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

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupRecycleView();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.catalog.tabs.categories.CatalogCategoriesView
    public void renderNodes(List<BaseNode> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        showRefreshing(false);
        BaseQuickAdapter.setDiffNewData$default(getCampaignsRecycleAdapter(), nodes, null, 2, null);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        CatalogCampaignsByCategoriesRecycleAdapter campaignsRecycleAdapter = getCampaignsRecycleAdapter();
        campaignsRecycleAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(campaignsRecycleAdapter, items, null, 2, null);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getCampaignsRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getCampaignsRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void resetLoadMore() {
        getCampaignsRecycleAdapter().getLoadMoreModule().reset$TMessagesProj_HA_public();
    }

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.p030ui.catalog.tabs.categories.CatalogCategoriesView
    public void openCampaignDetailsScreen(CampaignItem campaign, TLRPC$Chat chat, ChatType chatType) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Intrinsics.checkNotNullParameter(chat, "chat");
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        showDialog(ChannelDetailsBottomSheetDialog.Companion.newInstance(campaign, chat, chatType, this));
    }

    @Override // com.iMe.p030ui.catalog.tabs.CatalogTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleCampaigns;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.iMe.p030ui.catalog.tabs.CatalogTabFragment
    public void onSelectedLanguageChanged() {
        getPresenter().reloadAll(true);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        SwipeRefreshLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final CatalogCampaignsByCategoriesRecycleAdapter campaignsRecycleAdapter = getCampaignsRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogCampaignsByCategoriesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
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
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$$ExternalSyntheticLambda3
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
        getBinding().getRoot().setColorSchemeColors(getThemedColor(Theme.key_chats_actionBackground));
    }

    private final void setupListeners() {
        final CatalogCampaignsByCategoriesRecycleAdapter campaignsRecycleAdapter = getCampaignsRecycleAdapter();
        GlobalStateProvider globalStateProvider = campaignsRecycleAdapter.getGlobalStateProvider();
        globalStateProvider.setMatchParentHeight(true);
        globalStateProvider.setOnRetryButtonClickAction(new Function0<Unit>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$setupListeners$1$1$1
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
                CatalogCategoriesPresenter presenter;
                presenter = CatalogCategoriesFragment.this.getPresenter();
                CatalogCategoriesPresenter.reloadAll$default(presenter, false, 1, null);
            }
        });
        campaignsRecycleAdapter.getFilterProvider().setOnFilterClickListener(new OnItemClickListener() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CatalogCategoriesFragment.setupListeners$lambda$10$lambda$8(CatalogCategoriesFragment.this, campaignsRecycleAdapter, baseQuickAdapter, view, i);
            }
        });
        campaignsRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CatalogCategoriesFragment.setupListeners$lambda$10$lambda$9(CatalogCampaignsByCategoriesRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$$ExternalSyntheticLambda0
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
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$Companion */
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
