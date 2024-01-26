package com.iMe.p030ui.wallet.staking.calculator.programmes.adapter;

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
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.p030ui.base.mvp.LoadMoreView;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter;
import com.iMe.p030ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView;
import com.iMe.p030ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog;
import com.iMe.p030ui.wallet.staking.programmes.adapter.diff.StakingProgrammesDiffCallback;
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
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.databinding.ForkFragmentStakingCalculatorProgrammesBinding;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
/* compiled from: StakingCalculatorProgrammesFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment */
/* loaded from: classes4.dex */
public final class StakingCalculatorProgrammesFragment extends WalletAuthBaseFragment implements StakingCalculatorProgrammesView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(StakingCalculatorProgrammesFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(StakingCalculatorProgrammesFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Callbacks$Callback1<StakingDetailsItem> onStakingSelectedAction;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy stakingProgrammesRecycleAdapter$delegate;

    public static final StakingCalculatorProgrammesFragment newInstance(Callbacks$Callback1<StakingDetailsItem> callbacks$Callback1) {
        return Companion.newInstance(callbacks$Callback1);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public StakingCalculatorProgrammesFragment(Callbacks$Callback1<StakingDetailsItem> onStakingSelectedAction) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(onStakingSelectedAction, "onStakingSelectedAction");
        this.onStakingSelectedAction = onStakingSelectedAction;
        Function0<StakingCalculatorProgrammesPresenter> function0 = new Function0<StakingCalculatorProgrammesPresenter>() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final StakingCalculatorProgrammesPresenter invoke() {
                Lazy lazy2;
                final StakingCalculatorProgrammesFragment stakingCalculatorProgrammesFragment = StakingCalculatorProgrammesFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<StakingCalculatorProgrammesPresenter>() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final StakingCalculatorProgrammesPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesPresenter.class), qualifier, function02);
                    }
                });
                return (StakingCalculatorProgrammesPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, StakingCalculatorProgrammesPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<StakingCalculatorProgrammesRecycleAdapter>() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final StakingCalculatorProgrammesRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesRecycleAdapter.class), qualifier, function02);
            }
        });
        this.stakingProgrammesRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentStakingCalculatorProgrammesBinding>() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentStakingCalculatorProgrammesBinding invoke() {
                return ForkFragmentStakingCalculatorProgrammesBinding.inflate(BaseFragmentExtKt.getLayoutInflater(StakingCalculatorProgrammesFragment.this));
            }
        }, 1, (Object) null);
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

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupListeners();
        setupRecycleView();
        RecyclerView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView
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

    @Override // com.iMe.p030ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView
    public void onStakingSelected(StakingDetailsItem stakingDetailsItem) {
        Intrinsics.checkNotNullParameter(stakingDetailsItem, "stakingDetailsItem");
        this.onStakingSelectedAction.invoke(stakingDetailsItem);
        finishFragment();
    }

    @Override // com.iMe.p030ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView
    public void showStakingConditionsDialog(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        showDialog(StakingConditionsBottomSheetDialog.Companion.newInstance(stakingDetails, this));
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        RecyclerView root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final StakingCalculatorProgrammesRecycleAdapter stakingProgrammesRecycleAdapter = getStakingProgrammesRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                StakingCalculatorProgrammesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setTitle(getResourceManager().getString(C3632R.string.staking_calculator_select_programme));
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
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
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda2
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
        stakingProgrammesRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                StakingCalculatorProgrammesFragment.setupListeners$lambda$9$lambda$7(StakingCalculatorProgrammesRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        stakingProgrammesRecycleAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda0
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
        if (view.getId() == C3632R.C3635id.image_info) {
            BaseNode baseNode = (BaseNode) this_with.getItem(i);
            if (baseNode instanceof StakingProgrammeItem) {
                this$0.getPresenter().onStakingInfoClick((StakingProgrammeItem) baseNode);
            }
        }
    }

    /* compiled from: StakingCalculatorProgrammesFragment.kt */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$Companion */
    /* loaded from: classes4.dex */
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
