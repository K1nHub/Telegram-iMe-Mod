package com.iMe.p030ui.wallet.staking.programmes;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.common.ScreenType;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.staking.StakingScreenType;
import com.iMe.p030ui.base.mvp.LoadMoreView;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.wallet.home.details.WalletTokenDetailsFragment;
import com.iMe.p030ui.wallet.staking.programmes.adapter.StakingProgrammesRecycleAdapter;
import com.iMe.p030ui.wallet.staking.programmes.adapter.diff.StakingProgrammesDiffCallback;
import com.iMe.p030ui.wallet.staking.transaction.StakingTransactionFragment;
import com.iMe.p030ui.wallet.swap.WalletSwapProtocolsFragment;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.staking.StakingTabType;
import com.iMe.storage.domain.model.wallet.staking.StakingOrderType;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
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
import org.telegram.messenger.C3632R;
import org.telegram.messenger.databinding.ForkFragmentStakingProgrammesBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
/* compiled from: StakingProgrammesFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment */
/* loaded from: classes4.dex */
public final class StakingProgrammesFragment extends WalletAuthBaseFragment implements StakingProgrammesView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(StakingProgrammesFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(StakingProgrammesFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy stakingProgrammesRecycleAdapter$delegate;
    private final StakingTabType stakingTabType;

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public StakingProgrammesFragment(StakingTabType stakingTabType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(stakingTabType, "stakingTabType");
        this.stakingTabType = stakingTabType;
        Function0<StakingProgrammesPresenter> function0 = new Function0<StakingProgrammesPresenter>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final StakingProgrammesPresenter invoke() {
                Lazy lazy2;
                final StakingProgrammesFragment stakingProgrammesFragment = StakingProgrammesFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        StakingTabType stakingTabType2;
                        stakingTabType2 = StakingProgrammesFragment.this.stakingTabType;
                        return ParametersHolderKt.parametersOf(stakingTabType2);
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<StakingProgrammesPresenter>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final StakingProgrammesPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(StakingProgrammesPresenter.class), qualifier, function03);
                    }
                });
                return (StakingProgrammesPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, StakingProgrammesPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<StakingProgrammesRecycleAdapter>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.staking.programmes.adapter.StakingProgrammesRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final StakingProgrammesRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(StakingProgrammesRecycleAdapter.class), qualifier, function02);
            }
        });
        this.stakingProgrammesRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentStakingProgrammesBinding>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentStakingProgrammesBinding invoke() {
                return ForkFragmentStakingProgrammesBinding.inflate(BaseFragmentExtKt.getLayoutInflater(StakingProgrammesFragment.this));
            }
        }, 1, (Object) null);
    }

    private final StakingProgrammesPresenter getPresenter() {
        return (StakingProgrammesPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final StakingProgrammesRecycleAdapter getStakingProgrammesRecycleAdapter() {
        return (StakingProgrammesRecycleAdapter) this.stakingProgrammesRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentStakingProgrammesBinding getBinding() {
        return (ForkFragmentStakingProgrammesBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupListeners();
        setupRecycleView();
        RecyclerView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.staking.programmes.StakingProgrammesView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getStakingProgrammesRecycleAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getStakingProgrammesRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getStakingProgrammesRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.iMe.p030ui.wallet.staking.programmes.StakingProgrammesView
    public void openStakingDetailsScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(WalletTokenDetailsFragment.Companion.newInstance(new TokenDetailsArgs.Staking(stakingDetails)));
    }

    @Override // com.iMe.p030ui.wallet.staking.programmes.StakingProgrammesView
    public void openDepositScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(StakingTransactionFragment.Companion.newInstance(null, StakingScreenType.STAKING_REPLENISH_SCREEN_TYPE, stakingDetails));
    }

    @Override // com.iMe.p030ui.wallet.staking.programmes.StakingProgrammesView
    public void showSelectStakingOrderTypeDialog(StakingOrderType orderType) {
        Intrinsics.checkNotNullParameter(orderType, "orderType");
        DialogsFactoryKt.showSelectStakingOrderDialog(this, getResourceManager(), orderType, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$$ExternalSyntheticLambda4
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                StakingProgrammesFragment.showSelectStakingOrderTypeDialog$lambda$1(StakingProgrammesFragment.this, (StakingOrderType) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSelectStakingOrderTypeDialog$lambda$1(StakingProgrammesFragment this$0, StakingOrderType it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StakingProgrammesPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        presenter.onStakingOrderTypeSelected(it);
    }

    @Override // com.iMe.p030ui.wallet.staking.programmes.StakingProgrammesView
    public void showLevelRequiredDialog(AccountLevel minimalRank, final TokenDetailed token) {
        Intrinsics.checkNotNullParameter(minimalRank, "minimalRank");
        Intrinsics.checkNotNullParameter(token, "token");
        DialogsFactoryKt.showStakingLevelRequiredDialog(this, getResourceManager(), minimalRank, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$$ExternalSyntheticLambda5
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingProgrammesFragment.showLevelRequiredDialog$lambda$2(StakingProgrammesFragment.this, token);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLevelRequiredDialog$lambda$2(StakingProgrammesFragment this$0, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(token, "$token");
        this$0.presentFragment(WalletSwapProtocolsFragment.Companion.newInstance(ScreenType.FULLSCREEN, token));
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        RecyclerView root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final StakingProgrammesRecycleAdapter stakingProgrammesRecycleAdapter = getStakingProgrammesRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$$ExternalSyntheticLambda6
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                StakingProgrammesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleStakingProgrammes;
        final StakingProgrammesRecycleAdapter stakingProgrammesRecycleAdapter = getStakingProgrammesRecycleAdapter();
        stakingProgrammesRecycleAdapter.getFilterProvider().setOnFilterClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                StakingProgrammesFragment.setupRecycleView$lambda$5$lambda$4$lambda$3(StakingProgrammesFragment.this, stakingProgrammesRecycleAdapter, baseQuickAdapter, view, i);
            }
        });
        stakingProgrammesRecycleAdapter.getHeaderWithRightButtonProvider().setInfoButtonVisible(this.stakingTabType == StakingTabType.PARTICIPATED);
        stakingProgrammesRecycleAdapter.setDiffCallback(new StakingProgrammesDiffCallback());
        setupLoadMore(stakingProgrammesRecycleAdapter);
        recyclerView.setItemAnimator(null);
        recyclerView.setAdapter(stakingProgrammesRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupRecycleView$lambda$5$lambda$4$lambda$3(StakingProgrammesFragment this$0, StakingProgrammesRecycleAdapter this_apply, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.getPresenter().onFilterSelected(this_apply.getFilterProvider().getFiltersRecycleAdapter().getItem(i).getId());
    }

    private final void setupLoadMore(StakingProgrammesRecycleAdapter stakingProgrammesRecycleAdapter) {
        BaseLoadMoreModule loadMoreModule = stakingProgrammesRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$$ExternalSyntheticLambda3
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                StakingProgrammesFragment.setupLoadMore$lambda$8$lambda$7$lambda$6(StakingProgrammesFragment.this);
            }
        });
        stakingProgrammesRecycleAdapter.setAnimationEnable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLoadMore$lambda$8$lambda$7$lambda$6(StakingProgrammesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StakingProgrammesPresenter.loadStakingProgrammes$default(this$0.getPresenter(), false, false, 3, null);
    }

    private final void setupListeners() {
        final StakingProgrammesRecycleAdapter stakingProgrammesRecycleAdapter = getStakingProgrammesRecycleAdapter();
        stakingProgrammesRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                StakingProgrammesFragment.setupListeners$lambda$11$lambda$9(StakingProgrammesRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        stakingProgrammesRecycleAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                StakingProgrammesFragment.setupListeners$lambda$11$lambda$10(StakingProgrammesFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$11$lambda$9(StakingProgrammesRecycleAdapter this_with, StakingProgrammesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof StakingProgrammeItem) {
            this$0.getPresenter().onStakingProgrammeClick((StakingProgrammeItem) baseNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$11$lambda$10(StakingProgrammesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        int id = view.getId();
        if (id == C3632R.C3635id.image_header_right_button) {
            this$0.getPresenter().showSelectStakingOrderTypeDialog();
        } else if (id == C3632R.C3635id.image_info) {
            this$0.showStakingFiltersInfoDialog();
        }
    }

    private final void showStakingFiltersInfoDialog() {
        showDialog(DialogsFactoryKt.createDialogInfoWithAnimation$default(this, 0, getResourceManager().getString(C3632R.string.staking_programmes_filters_info_title), getResourceManager().getString(C3632R.string.staking_programmes_filters_info_description), 8388611, null, null, 49, null));
    }

    /* compiled from: StakingProgrammesFragment.kt */
    /* renamed from: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingProgrammesFragment newInstance(StakingTabType stakingTabType) {
            Intrinsics.checkNotNullParameter(stakingTabType, "stakingTabType");
            return new StakingProgrammesFragment(stakingTabType);
        }
    }
}
