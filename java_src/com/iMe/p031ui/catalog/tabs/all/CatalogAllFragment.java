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
import kotlin.jvm.functions.Function1;
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
import org.telegram.messenger.databinding.ForkFragmentCatalogAllBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CatalogAllFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllFragment */
/* loaded from: classes3.dex */
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

    public CatalogAllFragment(final ChatType chatType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Function0<CatalogAllPresenter> function0 = new Function0<CatalogAllPresenter>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CatalogAllPresenter invoke() {
                Lazy lazy2;
                final CatalogAllFragment catalogAllFragment = CatalogAllFragment.this;
                final ChatType chatType2 = chatType;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        return ParametersHolderKt.parametersOf(ChatType.this);
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CatalogAllPresenter>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.catalog.tabs.all.CatalogAllPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final CatalogAllPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(CatalogAllPresenter.class), qualifier, function03);
                    }
                });
                return (CatalogAllPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CatalogAllPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CatalogAllCategoriesRecycleAdapter>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.catalog.tabs.all.adapter.CatalogAllCategoriesRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final CatalogAllCategoriesRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(CatalogAllCategoriesRecycleAdapter.class), qualifier, function02);
            }
        });
        this.categoriesRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentCatalogAllBinding>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentCatalogAllBinding invoke() {
                return ForkFragmentCatalogAllBinding.inflate(BaseFragmentExtKt.getLayoutInflater(CatalogAllFragment.this));
            }
        }, 1, (Object) null);
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        SwipeRefreshLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final CatalogAllCategoriesRecycleAdapter categoriesRecycleAdapter = getCategoriesRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogAllCategoriesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
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
        catalogAllCategoriesRecycleAdapter.getCategoryWithCampaignsProvider().setOnLoadMoreChannels(new Function1<Long, Unit>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$setupLoadMore$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                CatalogAllPresenter presenter;
                presenter = CatalogAllFragment.this.getPresenter();
                presenter.onChannelLoadMore(j);
            }
        });
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
        getCategoriesRecycleAdapter().getCategoryWithCampaignsProvider().setOnChannelItemClick(new Function1<CampaignItem, Unit>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$setupListeners$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CampaignItem campaignItem) {
                invoke2(campaignItem);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(CampaignItem it) {
                CatalogAllPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = CatalogAllFragment.this.getPresenter();
                presenter.onChannelClick(it);
            }
        });
        ForkFragmentCatalogAllBinding binding = getBinding();
        binding.globalStateLayout.setRetryButtonClickListener(new Function0<Unit>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$setupListeners$2$1
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
                CatalogAllPresenter presenter;
                presenter = CatalogAllFragment.this.getPresenter();
                presenter.loadCategoriesPreviews();
            }
        });
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
