package com.iMe.p031ui.wallet.home.p032v2.tabs.services;

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
import com.iMe.model.wallet.home.ServicesCategory;
import com.iMe.p031ui.catalog.CatalogRootFragment;
import com.iMe.p031ui.wallet.home.p032v2.adapter.BalancesRecycleAdapter;
import com.iMe.p031ui.wallet.home.p032v2.adapter.diff.BalanceDiffCallback;
import com.iMe.p031ui.wallet.home.p032v2.tabs.WalletHomeTabFragment;
import com.iMe.p031ui.wallet.staking.StakingFragment;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
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
import org.telegram.messenger.databinding.ForkFragmentWalletHomeServicesBinding;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.ActionIntroActivity;
/* compiled from: WalletHomeServicesFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.services.WalletHomeServicesFragment */
/* loaded from: classes4.dex */
public final class WalletHomeServicesFragment extends WalletHomeTabFragment implements WalletHomeServicesView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletHomeServicesFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletHomeServicesFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy balancesRecycleAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    /* compiled from: WalletHomeServicesFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.services.WalletHomeServicesFragment$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ServicesCategory.values().length];
            try {
                iArr[ServicesCategory.CHANNELS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ServicesCategory.STAKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ServicesCategory.ADS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ServicesCategory.NEUROBOTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ServicesCategory.PREMIUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.WalletHomeTabFragment
    public void loadBalances() {
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.WalletHomeTabFragment
    public void loadTabInfo() {
    }

    public WalletHomeServicesFragment() {
        Lazy lazy;
        WalletHomeServicesFragment$presenter$2 walletHomeServicesFragment$presenter$2 = new WalletHomeServicesFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletHomeServicesPresenter.class.getName() + ".presenter", walletHomeServicesFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletHomeServicesFragment$special$$inlined$inject$default$1(this, null, null));
        this.balancesRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletHomeServicesFragment$binding$2(this), 1, (Object) null);
    }

    private final WalletHomeServicesPresenter getPresenter() {
        return (WalletHomeServicesPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final BalancesRecycleAdapter getBalancesRecycleAdapter() {
        return (BalancesRecycleAdapter) this.balancesRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletHomeServicesBinding getBinding() {
        return (ForkFragmentWalletHomeServicesBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupWalletRecycleView();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.v2.tabs.services.WalletHomeServicesFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletHomeServicesFragment.getThemeDescriptions$lambda$0(WalletHomeServicesFragment.this);
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletHomeServicesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBalancesRecycleAdapter().notifyDataSetChanged();
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.services.WalletHomeServicesView
    public void firstScreenInitWithItems(List<BaseNode> dashboardUiItems) {
        Intrinsics.checkNotNullParameter(dashboardUiItems, "dashboardUiItems");
        getBalancesRecycleAdapter().setNewInstance(dashboardUiItems);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.WalletHomeTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleWalletHomeServicesDashboard;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.services.WalletHomeServicesView
    public void showRequiredWalletCreatedDialog() {
        showDialog(DialogsFactoryKt.createWalletCreatedRequiredDialog(this, BlockchainType.EVM, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.v2.tabs.services.WalletHomeServicesFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeServicesFragment.showRequiredWalletCreatedDialog$lambda$2(WalletHomeServicesFragment.this);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRequiredWalletCreatedDialog$lambda$2(WalletHomeServicesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectTab(0);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.services.WalletHomeServicesView
    public void openStakingScreen() {
        presentFragment(StakingFragment.Companion.newInstance());
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
    }

    private final void setupListeners() {
        getBalancesRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.services.WalletHomeServicesFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeServicesFragment.setupListeners$lambda$5$lambda$4(WalletHomeServicesFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$5$lambda$4(WalletHomeServicesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this$0.getBalancesRecycleAdapter().getItem(i);
        if (baseNode instanceof ServicesBasicItem) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[((ServicesBasicItem) baseNode).getCategory().ordinal()];
            if (i2 == 1) {
                this$0.presentFragment(CatalogRootFragment.Companion.newInstance());
            } else if (i2 == 2) {
                this$0.getPresenter().onStakingClick();
            } else if (i2 == 3) {
                this$0.presentFragment(new ActionIntroActivity(106));
            } else if (i2 == 4) {
                this$0.presentFragment(new ActionIntroActivity(105));
            } else if (i2 != 5) {
            } else {
                this$0.presentFragment(new ActionIntroActivity(107));
            }
        }
    }

    private final void setupWalletRecycleView() {
        RecyclerView setupWalletRecycleView$lambda$7 = getBinding().recycleWalletHomeServicesDashboard;
        BalancesRecycleAdapter balancesRecycleAdapter = getBalancesRecycleAdapter();
        balancesRecycleAdapter.setDiffCallback(new BalanceDiffCallback());
        setupWalletRecycleView$lambda$7.setAdapter(balancesRecycleAdapter);
        setupWalletRecycleView$lambda$7.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        Intrinsics.checkNotNullExpressionValue(setupWalletRecycleView$lambda$7, "setupWalletRecycleView$lambda$7");
        RecycleViewExtKt.disableDefaultAnimation(setupWalletRecycleView$lambda$7);
    }

    /* compiled from: WalletHomeServicesFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.services.WalletHomeServicesFragment$Companion */
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
