package com.smedialink.p031ui.wallet.staking.calculator.programmes.adapter;

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
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.model.staking.StakingProgrammeItem;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter;
import com.smedialink.p031ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView;
import com.smedialink.p031ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog;
import com.smedialink.p031ui.wallet.staking.programmes.adapter.diff.StakingProgrammesDiffCallback;
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
import org.fork.utils.Callbacks$Callback1;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.databinding.ForkFragmentStakingCalculatorProgrammesBinding;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.ThemeDescription;
/* compiled from: StakingCalculatorProgrammesFragment.kt */
/* renamed from: com.smedialink.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment */
/* loaded from: classes3.dex */
public final class StakingCalculatorProgrammesFragment extends WalletAuthFragment implements StakingCalculatorProgrammesView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(StakingCalculatorProgrammesFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(StakingCalculatorProgrammesFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Callbacks$Callback1<StakingDetailsItem> onStakingSelectedAction;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy stakingProgrammesRecycleAdapter$delegate;

    public static final StakingCalculatorProgrammesFragment newInstance(Callbacks$Callback1<StakingDetailsItem> callbacks$Callback1) {
        return Companion.newInstance(callbacks$Callback1);
    }

    public StakingCalculatorProgrammesFragment(Callbacks$Callback1<StakingDetailsItem> onStakingSelectedAction) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(onStakingSelectedAction, "onStakingSelectedAction");
        this.onStakingSelectedAction = onStakingSelectedAction;
        StakingCalculatorProgrammesFragment$presenter$2 stakingCalculatorProgrammesFragment$presenter$2 = new StakingCalculatorProgrammesFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, StakingCalculatorProgrammesPresenter.class.getName() + ".presenter", stakingCalculatorProgrammesFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2242xe19eb649(this, null, null));
        this.stakingProgrammesRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new StakingCalculatorProgrammesFragment$binding$2(this), 1, (Object) null);
    }

    private final StakingCalculatorProgrammesPresenter getPresenter() {
        return (StakingCalculatorProgrammesPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final StakingCalculatorProgrammesRecycleAdapter getStakingProgrammesRecycleAdapter() {
        return (StakingCalculatorProgrammesRecycleAdapter) this.stakingProgrammesRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentStakingCalculatorProgrammesBinding getBinding() {
        return (ForkFragmentStakingCalculatorProgrammesBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupListeners();
        setupRecycleView();
        RecyclerView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getStakingProgrammesRecycleAdapter(), items, null, 2, null);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getStakingProgrammesRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getStakingProgrammesRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.smedialink.p031ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView
    public void onStakingSelected(StakingDetailsItem stakingDetailsItem) {
        Intrinsics.checkNotNullParameter(stakingDetailsItem, "stakingDetailsItem");
        this.onStakingSelectedAction.invoke(stakingDetailsItem);
        finishFragment();
    }

    @Override // com.smedialink.p031ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView
    public void showStakingConditionsDialog(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        showDialog(StakingConditionsBottomSheetDialog.Companion.newInstance(stakingDetails, this));
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        RecyclerView root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final StakingCalculatorProgrammesRecycleAdapter stakingProgrammesRecycleAdapter = getStakingProgrammesRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                StakingCalculatorProgrammesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3351ActionBar c3351ActionBar = this.actionBar;
        c3351ActionBar.setBackButtonImage(C3286R.C3288drawable.ic_ab_back);
        c3351ActionBar.setTitle(getResourceManager().getString(C3286R.string.staking_calculator_select_programme));
        c3351ActionBar.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    StakingCalculatorProgrammesFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleStakingProgrammes;
        StakingCalculatorProgrammesRecycleAdapter stakingProgrammesRecycleAdapter = getStakingProgrammesRecycleAdapter();
        stakingProgrammesRecycleAdapter.setDiffCallback(new StakingProgrammesDiffCallback());
        setupLoadMore(stakingProgrammesRecycleAdapter);
        recyclerView.setAdapter(stakingProgrammesRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupLoadMore(StakingCalculatorProgrammesRecycleAdapter stakingCalculatorProgrammesRecycleAdapter) {
        BaseLoadMoreModule loadMoreModule = stakingCalculatorProgrammesRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.smedialink.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                StakingCalculatorProgrammesFragment.setupLoadMore$lambda$6$lambda$5$lambda$4(StakingCalculatorProgrammesFragment.this);
            }
        });
        stakingCalculatorProgrammesRecycleAdapter.setAnimationEnable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLoadMore$lambda$6$lambda$5$lambda$4(StakingCalculatorProgrammesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StakingCalculatorProgrammesPresenter.loadStakingProgrammes$default(this$0.getPresenter(), false, false, 3, null);
    }

    private final void setupListeners() {
        final StakingCalculatorProgrammesRecycleAdapter stakingProgrammesRecycleAdapter = getStakingProgrammesRecycleAdapter();
        stakingProgrammesRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                StakingCalculatorProgrammesFragment.setupListeners$lambda$9$lambda$7(StakingCalculatorProgrammesRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        stakingProgrammesRecycleAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.smedialink.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                StakingCalculatorProgrammesFragment.setupListeners$lambda$9$lambda$8(StakingCalculatorProgrammesRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$9$lambda$7(StakingCalculatorProgrammesRecycleAdapter this_with, StakingCalculatorProgrammesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
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
    public static final void setupListeners$lambda$9$lambda$8(StakingCalculatorProgrammesRecycleAdapter this_with, StakingCalculatorProgrammesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        if (view.getId() == C3286R.C3289id.image_info) {
            BaseNode baseNode = (BaseNode) this_with.getItem(i);
            if (baseNode instanceof StakingProgrammeItem) {
                this$0.getPresenter().onStakingInfoClick((StakingProgrammeItem) baseNode);
            }
        }
    }

    /* compiled from: StakingCalculatorProgrammesFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingCalculatorProgrammesFragment newInstance(Callbacks$Callback1<StakingDetailsItem> onStakingSelectedAction) {
            Intrinsics.checkNotNullParameter(onStakingSelectedAction, "onStakingSelectedAction");
            return new StakingCalculatorProgrammesFragment(onStakingSelectedAction);
        }
    }
}
