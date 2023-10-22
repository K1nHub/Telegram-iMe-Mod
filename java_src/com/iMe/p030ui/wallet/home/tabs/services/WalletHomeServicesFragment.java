package com.iMe.p030ui.wallet.home.tabs.services;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.home.ServicesBasicItem;
import com.iMe.p030ui.catalog.CatalogRootFragment;
import com.iMe.p030ui.wallet.cryptobox.CryptoBoxesFragment;
import com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumFragment;
import com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesFragment;
import com.iMe.p030ui.wallet.home.adapter.BalancesRecycleAdapter;
import com.iMe.p030ui.wallet.home.adapter.diff.BalanceDiffCallback;
import com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment;
import com.iMe.p030ui.wallet.staking.StakingFragment;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
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
import org.telegram.messenger.databinding.ForkFragmentWalletHomeServicesBinding;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ActionBar.ThemeDescription;
import org.telegram.p042ui.ActionIntroActivity;
/* compiled from: WalletHomeServicesFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesFragment */
/* loaded from: classes4.dex */
public final class WalletHomeServicesFragment extends WalletHomeTabFragment implements WalletHomeServicesView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletHomeServicesFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletHomeServicesFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy balancesAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    public WalletHomeServicesFragment() {
        Lazy lazy;
        Function0<WalletHomeServicesPresenter> function0 = new Function0<WalletHomeServicesPresenter>() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletHomeServicesPresenter invoke() {
                Lazy lazy2;
                final WalletHomeServicesFragment walletHomeServicesFragment = WalletHomeServicesFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletHomeServicesPresenter>() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletHomeServicesPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletHomeServicesPresenter.class), qualifier, function02);
                    }
                });
                return (WalletHomeServicesPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletHomeServicesPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<BalancesRecycleAdapter>() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.home.adapter.BalancesRecycleAdapter] */
            @Override // kotlin.jvm.functions.Function0
            public final BalancesRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(BalancesRecycleAdapter.class), qualifier, function02);
            }
        });
        this.balancesAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletHomeServicesBinding>() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletHomeServicesBinding invoke() {
                return ForkFragmentWalletHomeServicesBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletHomeServicesFragment.this));
            }
        }, 1, (Object) null);
    }

    private final WalletHomeServicesPresenter getPresenter() {
        return (WalletHomeServicesPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final BalancesRecycleAdapter getBalancesAdapter() {
        return (BalancesRecycleAdapter) this.balancesAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletHomeServicesBinding getBinding() {
        return (ForkFragmentWalletHomeServicesBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupWalletRecycleView();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        FrameLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final BalancesRecycleAdapter balancesAdapter = getBalancesAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(root, i, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                BalancesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void firstScreenInitWithItems(List<BaseNode> dashboardUiItems) {
        Intrinsics.checkNotNullParameter(dashboardUiItems, "dashboardUiItems");
        getBalancesAdapter().setNewInstance(dashboardUiItems);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.WalletHomeTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleWalletHomeServicesDashboard;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.recycleWalletHomeServicesDashboard");
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void showRequiredWalletCreatedDialog(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        showDialog(DialogsFactoryKt.createWalletCreatedRequiredDialog(this, blockchainType, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeServicesFragment.showRequiredWalletCreatedDialog$lambda$0(WalletHomeServicesFragment.this);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRequiredWalletCreatedDialog$lambda$0(WalletHomeServicesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectTab(0);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openCryptoBoxesScreen() {
        presentFragment(CryptoBoxesFragment.Companion.newInstance$default(CryptoBoxesFragment.Companion, null, 1, null));
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openStakingScreen() {
        presentFragment(StakingFragment.Companion.newInstance());
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openChannelsCatalogScreen() {
        presentFragment(CatalogRootFragment.Companion.newInstance());
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openTelegramUsernamesScreen() {
        presentFragment(FragmentUsernamesFragment.Companion.newInstance());
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openTelegramPremiumScreen() {
        presentFragment(FragmentPremiumFragment.Companion.newInstance());
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openActionIntroScreen(int i) {
        presentFragment(new ActionIntroActivity(i));
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
    }

    private final void setupListeners() {
        getBalancesAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeServicesFragment.setupListeners$lambda$3$lambda$2(WalletHomeServicesFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$3$lambda$2(WalletHomeServicesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this$0.getBalancesAdapter().getItem(i);
        if (baseNode instanceof ServicesBasicItem) {
            this$0.getPresenter().onCategoryClick(((ServicesBasicItem) baseNode).getCategory());
        }
    }

    private final void setupWalletRecycleView() {
        RecyclerView setupWalletRecycleView$lambda$5 = getBinding().recycleWalletHomeServicesDashboard;
        BalancesRecycleAdapter balancesAdapter = getBalancesAdapter();
        balancesAdapter.setDiffCallback(new BalanceDiffCallback());
        setupWalletRecycleView$lambda$5.setAdapter(balancesAdapter);
        setupWalletRecycleView$lambda$5.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        Intrinsics.checkNotNullExpressionValue(setupWalletRecycleView$lambda$5, "setupWalletRecycleView$lambda$5");
        RecycleViewExtKt.disableDefaultAnimation(setupWalletRecycleView$lambda$5);
    }

    /* compiled from: WalletHomeServicesFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletHomeServicesFragment newInstance() {
            return new WalletHomeServicesFragment();
        }
    }
}
