package com.iMe.p030ui.wallet.swap;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.common.ScreenType;
import com.iMe.model.wallet.home.BannerSlide;
import com.iMe.model.wallet.swap.CexProtocolItem;
import com.iMe.model.wallet.swap.DexProtocolItem;
import com.iMe.model.wallet.swap.WalletSwapScreenType;
import com.iMe.p030ui.wallet.common.WalletTabFragment;
import com.iMe.p030ui.wallet.swap.adapter.WalletSwapProtocolsRecycleAdapter;
import com.iMe.p030ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.wallet.swap.CentralizedExchange;
import com.iMe.storage.domain.model.wallet.swap.CentralizedExchangesInfo;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.helper.wallet.WalletHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
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
import org.telegram.messenger.databinding.ForkFragmentWalletSwapProtocolsBinding;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.ActionIntroActivity;
/* compiled from: WalletSwapProtocolsFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment */
/* loaded from: classes4.dex */
public final class WalletSwapProtocolsFragment extends WalletTabFragment implements WalletSwapProtocolsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSwapProtocolsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSwapProtocolsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final ScreenType screenType;
    private final Lazy swapProtocolsAdapter$delegate;
    private final TokenDetailed toToken;

    /* compiled from: WalletSwapProtocolsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CentralizedExchange.values().length];
            try {
                iArr[CentralizedExchange.GATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CentralizedExchange.ASCENDEEX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CentralizedExchange.BINANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CentralizedExchange.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final WalletSwapProtocolsFragment newInstance(ScreenType screenType, TokenDetailed tokenDetailed) {
        return Companion.newInstance(screenType, tokenDetailed);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return false;
    }

    public WalletSwapProtocolsFragment(ScreenType screenType, TokenDetailed tokenDetailed) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.screenType = screenType;
        this.toToken = tokenDetailed;
        Function0<WalletSwapProtocolsPresenter> function0 = new Function0<WalletSwapProtocolsPresenter>() { // from class: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSwapProtocolsPresenter invoke() {
                Lazy lazy2;
                final WalletSwapProtocolsFragment walletSwapProtocolsFragment = WalletSwapProtocolsFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSwapProtocolsPresenter>() { // from class: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.swap.WalletSwapProtocolsPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletSwapProtocolsPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletSwapProtocolsPresenter.class), qualifier, function02);
                    }
                });
                return (WalletSwapProtocolsPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletSwapProtocolsPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSwapProtocolsRecycleAdapter>() { // from class: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.swap.adapter.WalletSwapProtocolsRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSwapProtocolsRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(WalletSwapProtocolsRecycleAdapter.class), qualifier, function02);
            }
        });
        this.swapProtocolsAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletSwapProtocolsBinding>() { // from class: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletSwapProtocolsBinding invoke() {
                return ForkFragmentWalletSwapProtocolsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletSwapProtocolsFragment.this));
            }
        }, 1, (Object) null);
    }

    private final WalletSwapProtocolsPresenter getPresenter() {
        return (WalletSwapProtocolsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletSwapProtocolsRecycleAdapter getSwapProtocolsAdapter() {
        return (WalletSwapProtocolsRecycleAdapter) this.swapProtocolsAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletSwapProtocolsBinding getBinding() {
        return (ForkFragmentWalletSwapProtocolsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.wallet.common.BottomNavigationTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleSwapProtocols;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.screenType == ScreenType.FULLSCREEN) {
            setupActionBar();
        }
        setupColors();
        setupListeners();
        setupRecycleView();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        FrameLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final WalletSwapProtocolsRecycleAdapter swapProtocolsAdapter = getSwapProtocolsAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(root, i, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletSwapProtocolsRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    @Override // com.iMe.p030ui.wallet.swap.WalletSwapProtocolsView
    public void showExchangesProviders(List<? extends BaseNode> providers) {
        List mutableList;
        Intrinsics.checkNotNullParameter(providers, "providers");
        WalletSwapProtocolsRecycleAdapter swapProtocolsAdapter = getSwapProtocolsAdapter();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) providers);
        swapProtocolsAdapter.setNewInstance(mutableList);
    }

    @Override // com.iMe.p030ui.wallet.swap.WalletSwapProtocolsView
    public void showRequiredVerifyDialog() {
        showDialog(DialogsFactoryKt.createBinanceVerificationRequiredDialog(this));
    }

    @Override // com.iMe.p030ui.wallet.swap.WalletSwapProtocolsView
    public void openBinanceConvertScreen() {
        presentFragment(WalletSwapProcessFragment.Companion.newInstance(new WalletSwapScreenType.Binance(null, null, 3, null)));
    }

    @Override // com.iMe.p030ui.wallet.swap.WalletSwapProtocolsView
    public void openSwapScreen(final SwapProtocolInfo item, final String str) {
        Intrinsics.checkNotNullParameter(item, "item");
        WalletHelper.runWithCheckIsCryptoWalletCreated(this, null, BlockchainType.EVM, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProtocolsFragment.openSwapScreen$lambda$1(WalletSwapProtocolsFragment.this, item, str);
            }
        });
    }

    public static final void openSwapScreen$lambda$1(WalletSwapProtocolsFragment this$0, SwapProtocolInfo item, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.presentFragment(WalletSwapProcessFragment.Companion.newInstance(new WalletSwapScreenType.Crypto(item.getDefaultProtocol(), null, this$0.toToken, str, 2, null)));
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setTitle(getResourceManager().getString(C3632R.string.wallet_navigation_exchange));
        c3704ActionBar.setAllowOverlayTitle(true);
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletSwapProtocolsFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
    }

    private final void setupListeners() {
        getSwapProtocolsAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletSwapProtocolsFragment.setupListeners$lambda$4(WalletSwapProtocolsFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    public static final void setupListeners$lambda$4(WalletSwapProtocolsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this$0.getSwapProtocolsAdapter().getItem(i);
        if (!(baseNode instanceof DexProtocolItem)) {
            if (baseNode instanceof CexProtocolItem) {
                this$0.openExchangeScreen(((CexProtocolItem) baseNode).getInfo());
                return;
            }
            return;
        }
        DexProtocolItem dexProtocolItem = (DexProtocolItem) baseNode;
        if (dexProtocolItem.isEnabled()) {
            this$0.getPresenter().startSwapScreenFlow(dexProtocolItem.getInfo(), this$0.toToken);
        }
    }

    private final void openExchangeScreen(CentralizedExchangesInfo centralizedExchangesInfo) {
        int i = WhenMappings.$EnumSwitchMapping$0[centralizedExchangesInfo.getExchange().ordinal()];
        if (i == 1) {
            presentFragment(new ActionIntroActivity(108, null, null, null, BannerSlide.Crypto.Gate.INSTANCE, null));
        } else if (i == 2) {
            presentFragment(new ActionIntroActivity(108, null, null, null, BannerSlide.Crypto.AscendeEX.INSTANCE, null));
        } else if (i != 3) {
        } else {
            getPresenter().startBinanceExchangeFlow();
        }
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleSwapProtocols;
        recyclerView.setAdapter(getSwapProtocolsAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    /* compiled from: WalletSwapProtocolsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ WalletSwapProtocolsFragment newInstance$default(Companion companion, ScreenType screenType, TokenDetailed tokenDetailed, int i, Object obj) {
            if ((i & 2) != 0) {
                tokenDetailed = null;
            }
            return companion.newInstance(screenType, tokenDetailed);
        }

        public final WalletSwapProtocolsFragment newInstance(ScreenType screenType, TokenDetailed tokenDetailed) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            return new WalletSwapProtocolsFragment(screenType, tokenDetailed);
        }
    }
}
