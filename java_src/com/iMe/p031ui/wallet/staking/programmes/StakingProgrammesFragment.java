package com.iMe.p031ui.wallet.staking.programmes;

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
import com.iMe.p031ui.base.WalletAuthFragment;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.wallet.home.p032v2.details.WalletTokenDetailsFragment;
import com.iMe.p031ui.wallet.staking.programmes.adapter.StakingProgrammesRecycleAdapter;
import com.iMe.p031ui.wallet.staking.programmes.adapter.diff.StakingProgrammesDiffCallback;
import com.iMe.p031ui.wallet.swap.WalletSwapProtocolsFragment;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.staking.StakingTabType;
import com.iMe.storage.domain.model.wallet.staking.StakingOrderType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.utils.dialogs.DialogsFactoryKt;
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
import org.telegram.messenger.C3295R;
import org.telegram.messenger.databinding.ForkFragmentStakingProgrammesBinding;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.ManageLinksActivity;
/* compiled from: StakingProgrammesFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment */
/* loaded from: classes4.dex */
public final class StakingProgrammesFragment extends WalletAuthFragment implements StakingProgrammesView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(StakingProgrammesFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(StakingProgrammesFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy stakingProgrammesRecycleAdapter$delegate;
    private final StakingTabType stakingTabType;

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public StakingProgrammesFragment(StakingTabType stakingTabType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(stakingTabType, "stakingTabType");
        this.stakingTabType = stakingTabType;
        StakingProgrammesFragment$presenter$2 stakingProgrammesFragment$presenter$2 = new StakingProgrammesFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, StakingProgrammesPresenter.class.getName() + ".presenter", stakingProgrammesFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new StakingProgrammesFragment$special$$inlined$inject$default$1(this, null, null));
        this.stakingProgrammesRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new StakingProgrammesFragment$binding$2(this), 1, (Object) null);
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

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupListeners();
        setupRecycleView();
        RecyclerView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.staking.programmes.StakingProgrammesView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getStakingProgrammesRecycleAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getStakingProgrammesRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getStakingProgrammesRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.iMe.p031ui.wallet.staking.programmes.StakingProgrammesView
    public void openStakingDetailsScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(WalletTokenDetailsFragment.Companion.newInstance(new TokenDetailsArgs.Staking(stakingDetails)));
    }

    @Override // com.iMe.p031ui.wallet.staking.programmes.StakingProgrammesView
    public void openDepositScreen(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        presentFragment(ManageLinksActivity.newInstanceForStakingReplenish(stakingDetails, null));
    }

    @Override // com.iMe.p031ui.wallet.staking.programmes.StakingProgrammesView
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

    @Override // com.iMe.p031ui.wallet.staking.programmes.StakingProgrammesView
    public void showLevelRequiredDialog(AccountLevel minimalRank) {
        Intrinsics.checkNotNullParameter(minimalRank, "minimalRank");
        DialogsFactoryKt.showStakingLevelRequiredDialog(this, getResourceManager(), minimalRank, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$$ExternalSyntheticLambda5
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingProgrammesFragment.showLevelRequiredDialog$lambda$2(StakingProgrammesFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLevelRequiredDialog$lambda$2(StakingProgrammesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.presentFragment(WalletSwapProtocolsFragment.Companion.newInstance(ScreenType.FULLSCREEN, TokenCode.LIME));
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        RecyclerView root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final StakingProgrammesRecycleAdapter stakingProgrammesRecycleAdapter = getStakingProgrammesRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$$ExternalSyntheticLambda6
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                StakingProgrammesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
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
        if (id == C3295R.C3298id.image_header_right_button) {
            this$0.getPresenter().showSelectStakingOrderTypeDialog();
        } else if (id == C3295R.C3298id.image_info) {
            this$0.showStakingFiltersInfoDialog();
        }
    }

    private final void showStakingFiltersInfoDialog() {
        showDialog(DialogsFactoryKt.createInfoBottomSheetDialog$default(this, getResourceManager().getString(C3295R.string.staking_programmes_filters_info_title), getResourceManager().getString(C3295R.string.staking_programmes_filters_info_description), getResourceManager().getString(C3295R.string.common_ok), null, 8, null));
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
