package com.smedialink.p031ui.wallet.swap;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.smedialink.model.common.ScreenType;
import com.smedialink.model.wallet.home.BannerSlide;
import com.smedialink.model.wallet.swap.CexProtocolItem;
import com.smedialink.model.wallet.swap.DexProtocolItem;
import com.smedialink.p031ui.wallet.common.WalletTabFragment;
import com.smedialink.p031ui.wallet.swap.adapter.WalletSwapProtocolsRecycleAdapter;
import com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.swap.CentralizedExchange;
import com.smedialink.storage.domain.model.wallet.swap.CentralizedExchangesInfo;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocolInfo;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.utils.dialogs.DialogsFactoryKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import com.smedialink.utils.helper.wallet.WalletHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.fork.utils.Callbacks$Callback;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.databinding.ForkFragmentWalletSwapProtocolsBinding;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.ActionIntroActivity;
/* compiled from: WalletSwapProtocolsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.swap.WalletSwapProtocolsFragment */
/* loaded from: classes3.dex */
public final class WalletSwapProtocolsFragment extends WalletTabFragment implements WalletSwapProtocolsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSwapProtocolsFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSwapProtocolsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final ScreenType screenType;
    private final Lazy swapProtocolsAdapter$delegate;
    private final TokenCode toToken;

    /* compiled from: WalletSwapProtocolsFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.swap.WalletSwapProtocolsFragment$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CentralizedExchange.values().length];
            iArr[CentralizedExchange.GATE.ordinal()] = 1;
            iArr[CentralizedExchange.ASCENDEEX.ordinal()] = 2;
            iArr[CentralizedExchange.BINANCE.ordinal()] = 3;
            iArr[CentralizedExchange.UNKNOWN.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final WalletSwapProtocolsFragment newInstance(ScreenType screenType, TokenCode tokenCode) {
        return Companion.newInstance(screenType, tokenCode);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return false;
    }

    public WalletSwapProtocolsFragment(ScreenType screenType, TokenCode tokenCode) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.screenType = screenType;
        this.toToken = tokenCode;
        WalletSwapProtocolsFragment$presenter$2 walletSwapProtocolsFragment$presenter$2 = new WalletSwapProtocolsFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletSwapProtocolsPresenter.class.getName() + ".presenter", walletSwapProtocolsFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletSwapProtocolsFragment$special$$inlined$inject$default$1(this, null, null));
        this.swapProtocolsAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletSwapProtocolsFragment$binding$2(this), 1, (Object) null);
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

    @Override // com.smedialink.p031ui.wallet.common.BottomNavigationTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleSwapProtocols;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.swap.WalletSwapProtocolsFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletSwapProtocolsFragment.m1749getThemeDescriptions$lambda1(WalletSwapProtocolsFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    /* renamed from: getThemeDescriptions$lambda-1 */
    public static final void m1749getThemeDescriptions$lambda1(WalletSwapProtocolsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSwapProtocolsAdapter().notifyDataSetChanged();
    }

    @Override // com.smedialink.p031ui.wallet.swap.WalletSwapProtocolsView
    public void showExchangesProviders(List<? extends BaseNode> providers) {
        List mutableList;
        Intrinsics.checkNotNullParameter(providers, "providers");
        WalletSwapProtocolsRecycleAdapter swapProtocolsAdapter = getSwapProtocolsAdapter();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) providers);
        swapProtocolsAdapter.setNewInstance(mutableList);
    }

    @Override // com.smedialink.p031ui.wallet.swap.WalletSwapProtocolsView
    public void showRequiredVerifyDialog() {
        showDialog(DialogsFactoryKt.createBinanceVerificationRequiredDialog(this));
    }

    @Override // com.smedialink.p031ui.wallet.swap.WalletSwapProtocolsView
    public void openBinanceConvertScreen() {
        presentFragment(WalletSwapProcessFragment.Companion.newInstance(new WalletSwapProcessFragment.ScreenType.Binance(null, null, 3, null)));
    }

    @Override // com.smedialink.p031ui.wallet.swap.WalletSwapProtocolsView
    public void openSwapScreen(final SwapProtocolInfo item, final NetworkType networkType) {
        Intrinsics.checkNotNullParameter(item, "item");
        WalletHelper.runWithCheckIsCryptoWalletCreated(this, null, BlockchainType.EVM, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.swap.WalletSwapProtocolsFragment$$ExternalSyntheticLambda1
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProtocolsFragment.m1750openSwapScreen$lambda2(WalletSwapProtocolsFragment.this, item, networkType);
            }
        });
    }

    /* renamed from: openSwapScreen$lambda-2 */
    public static final void m1750openSwapScreen$lambda2(WalletSwapProtocolsFragment this$0, SwapProtocolInfo item, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.presentFragment(WalletSwapProcessFragment.Companion.newInstance(new WalletSwapProcessFragment.ScreenType.Crypto(item.getCode(), null, this$0.toToken, networkType, 2, null)));
    }

    private final void setupActionBar() {
        C3222ActionBar c3222ActionBar = this.actionBar;
        c3222ActionBar.setBackButtonImage(C3158R.C3160drawable.ic_ab_back);
        c3222ActionBar.setTitle(getResourceManager().getString(C3158R.string.wallet_navigation_exchange));
        c3222ActionBar.setAllowOverlayTitle(true);
        c3222ActionBar.setActionBarMenuOnItemClick(new C3222ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.swap.WalletSwapProtocolsFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletSwapProtocolsFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(Theme.getColor("windowBackgroundGray"));
    }

    private final void setupListeners() {
        getSwapProtocolsAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.swap.WalletSwapProtocolsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletSwapProtocolsFragment.m1751setupListeners$lambda5(WalletSwapProtocolsFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: setupListeners$lambda-5 */
    public static final void m1751setupListeners$lambda5(WalletSwapProtocolsFragment this$0, BaseQuickAdapter noName_0, View noName_1, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(noName_0, "$noName_0");
        Intrinsics.checkNotNullParameter(noName_1, "$noName_1");
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
            presentFragment(new ActionIntroActivity(108, null, null, null, BannerSlide.GATE, null));
        } else if (i == 2) {
            presentFragment(new ActionIntroActivity(108, null, null, null, BannerSlide.ASCENDEEX, null));
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
    /* renamed from: com.smedialink.ui.wallet.swap.WalletSwapProtocolsFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ WalletSwapProtocolsFragment newInstance$default(Companion companion, ScreenType screenType, TokenCode tokenCode, int i, Object obj) {
            if ((i & 2) != 0) {
                tokenCode = null;
            }
            return companion.newInstance(screenType, tokenCode);
        }

        public final WalletSwapProtocolsFragment newInstance(ScreenType screenType, TokenCode tokenCode) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            return new WalletSwapProtocolsFragment(screenType, tokenCode);
        }
    }
}
