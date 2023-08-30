package com.iMe.p031ui.wallet.swap.process;

import android.app.Activity;
import android.content.Context;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.exoplayer2.C0479C;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.model.wallet.crypto.swap.SwapUiState;
import com.iMe.model.wallet.swap.SwapSide;
import com.iMe.model.wallet.swap.WalletSwapScreenType;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.custom.ActionButton;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.p031ui.custom.NetworkTypeView;
import com.iMe.p031ui.wallet.swap.fee.WalletSwapFeeFragment;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.binancepay.OutputConvertToken;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.hints.HintUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
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
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.databinding.ForkFragmentWalletSwapProcessBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3626ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: WalletSwapProcessFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment */
/* loaded from: classes4.dex */
public final class WalletSwapProcessFragment extends WalletAuthBaseFragment implements WalletSwapProcessView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSwapProcessFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSwapProcessFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSwapProcessFragment.class, "networkTypeView", "getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final ResettableLazy networkTypeView$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final WalletSwapScreenType screenType;
    private CountDownTimer timer;
    private final Lazy tokenBuyCoordinator$delegate;

    /* compiled from: WalletSwapProcessFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$NetworkSwitchType */
    /* loaded from: classes4.dex */
    public enum NetworkSwitchType {
        GLOBAL,
        CROSS_CHAIN
    }

    /* compiled from: WalletSwapProcessFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[SwapSide.values().length];
            try {
                iArr[SwapSide.INPUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SwapSide.OUTPUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[NetworkSwitchType.values().length];
            try {
                iArr2[NetworkSwitchType.GLOBAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[NetworkSwitchType.CROSS_CHAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final WalletSwapProcessFragment newInstance(WalletSwapScreenType walletSwapScreenType) {
        return Companion.newInstance(walletSwapScreenType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$20$lambda$17$lambda$16(View view) {
    }

    public final WalletSwapScreenType getScreenType() {
        return this.screenType;
    }

    public WalletSwapProcessFragment(WalletSwapScreenType screenType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.screenType = screenType;
        Function0<WalletSwapProcessPresenter> function0 = new Function0<WalletSwapProcessPresenter>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSwapProcessPresenter invoke() {
                Lazy lazy2;
                final WalletSwapProcessFragment walletSwapProcessFragment = WalletSwapProcessFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        return ParametersHolderKt.parametersOf(WalletSwapProcessFragment.this.getScreenType());
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSwapProcessPresenter>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletSwapProcessPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletSwapProcessPresenter.class), qualifier, function03);
                    }
                });
                return (WalletSwapProcessPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletSwapProcessPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TokenBuyCoordinator>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator] */
            @Override // kotlin.jvm.functions.Function0
            public final TokenBuyCoordinator invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TokenBuyCoordinator.class), qualifier, function02);
            }
        });
        this.tokenBuyCoordinator$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletSwapProcessBinding>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletSwapProcessBinding invoke() {
                return ForkFragmentWalletSwapProcessBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletSwapProcessFragment.this));
            }
        }, 1, (Object) null);
        this.networkTypeView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<NetworkTypeView>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$networkTypeView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final NetworkTypeView invoke() {
                NetworkTypeView initGlobalNetworkView;
                initGlobalNetworkView = WalletSwapProcessFragment.this.initGlobalNetworkView();
                return initGlobalNetworkView;
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletSwapProcessPresenter getPresenter() {
        return (WalletSwapProcessPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final TokenBuyCoordinator getTokenBuyCoordinator() {
        return (TokenBuyCoordinator) this.tokenBuyCoordinator$delegate.getValue();
    }

    private final ForkFragmentWalletSwapProcessBinding getBinding() {
        return (ForkFragmentWalletSwapProcessBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final NetworkTypeView getNetworkTypeView() {
        return (NetworkTypeView) this.networkTypeView$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupListeners();
        setupTexts();
        ConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda10
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletSwapProcessFragment.this.setupColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkItem network, List<? extends NetworkItem> availableNetworks) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = getParentActivity();
        Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1 = new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSwapProcessFragment.showChooseNetworkDialog$lambda$0(WalletSwapProcessFragment.this, (NetworkItem.Crypto) obj);
            }
        };
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(companion.newInstance(parentActivity, network, availableNetworks, callbacks$Callback1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$0(WalletSwapProcessFragment this$0, NetworkItem.Crypto crypto) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onNetworkSelected(crypto);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void setupNetwork(NetworkItem network, SwapSide side) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(side, "side");
        int i = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
        if (i == 1) {
            getNetworkTypeView().setNetwork(network);
            getBinding().networkTypeInputView.setNetwork(network);
        } else if (i != 2) {
        } else {
            getBinding().networkTypeOutputView.setNetwork(network);
        }
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void setupScreenForSwap(String title, String description, int i, boolean z, NetworkSwitchType networkSwitchType) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(networkSwitchType, "networkSwitchType");
        this.actionBar.setTitle(title);
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        binding.textSwapProtocolDescription.setText(description);
        binding.imageSwapProtocolIcon.setImageResource(i);
        int i2 = WhenMappings.$EnumSwitchMapping$1[networkSwitchType.ordinal()];
        if (i2 == 1) {
            getNetworkTypeView().setVisibility(z ? 0 : 8);
            ActionBarMenuItem item = this.actionBar.menu.getItem(IdFabric$Menu.NETWORK_SWITCH);
            if (item == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue(item, "getItem(IdFabric.Menu.NETWORK_SWITCH)");
            item.setVisibility(z ? 0 : 8);
        } else if (i2 != 2) {
        } else {
            NetworkTypeView networkTypeOutputView = binding.networkTypeOutputView;
            Intrinsics.checkNotNullExpressionValue(networkTypeOutputView, "networkTypeOutputView");
            networkTypeOutputView.setVisibility(z ? 0 : 8);
            NetworkTypeView networkTypeInputView = binding.networkTypeInputView;
            Intrinsics.checkNotNullExpressionValue(networkTypeInputView, "networkTypeInputView");
            networkTypeInputView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void onTokenSelected(SwapSide side, TokenDetailed token, int i) {
        Intrinsics.checkNotNullParameter(side, "side");
        Intrinsics.checkNotNullParameter(token, "token");
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        int i2 = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
        if (i2 == 1) {
            LinearLayout linearChooseFrom = binding.linearChooseFrom;
            Intrinsics.checkNotNullExpressionValue(linearChooseFrom, "linearChooseFrom");
            ViewExtKt.gone$default(linearChooseFrom, false, 1, null);
            AppCompatEditText onTokenSelected$lambda$4$lambda$2 = binding.editFromAmount;
            Intrinsics.checkNotNullExpressionValue(onTokenSelected$lambda$4$lambda$2, "onTokenSelected$lambda$4$lambda$2");
            ViewExtKt.limitInputLength$default(onTokenSelected$lambda$4$lambda$2, i, 0, 2, null);
            ViewExtKt.setAllowDecimals(onTokenSelected$lambda$4$lambda$2, true);
            onTokenSelected$lambda$4$lambda$2.setHint(getResourceManager().getString(C3558R.string.wallet_amount_input_hint, token.getTicker()));
            AppCompatImageView imageTokenFrom = binding.imageTokenFrom;
            Intrinsics.checkNotNullExpressionValue(imageTokenFrom, "imageTokenFrom");
            ViewExtKt.loadImage(imageTokenFrom, token);
            Group groupFromSelectedToken = binding.groupFromSelectedToken;
            Intrinsics.checkNotNullExpressionValue(groupFromSelectedToken, "groupFromSelectedToken");
            ViewExtKt.visible$default(groupFromSelectedToken, false, 1, null);
        } else if (i2 != 2) {
        } else {
            LinearLayout linearChooseTo = binding.linearChooseTo;
            Intrinsics.checkNotNullExpressionValue(linearChooseTo, "linearChooseTo");
            ViewExtKt.gone$default(linearChooseTo, false, 1, null);
            AppCompatEditText onTokenSelected$lambda$4$lambda$3 = binding.editToAmount;
            Intrinsics.checkNotNullExpressionValue(onTokenSelected$lambda$4$lambda$3, "onTokenSelected$lambda$4$lambda$3");
            ViewExtKt.limitInputLength$default(onTokenSelected$lambda$4$lambda$3, i, 0, 2, null);
            ViewExtKt.setAllowDecimals(onTokenSelected$lambda$4$lambda$3, true);
            onTokenSelected$lambda$4$lambda$3.setText(token.getTicker());
            AppCompatImageView imageTokenTo = binding.imageTokenTo;
            Intrinsics.checkNotNullExpressionValue(imageTokenTo, "imageTokenTo");
            ViewExtKt.loadImage(imageTokenTo, token);
            Group groupToSelectedToken = binding.groupToSelectedToken;
            Intrinsics.checkNotNullExpressionValue(groupToSelectedToken, "groupToSelectedToken");
            ViewExtKt.visible$default(groupToSelectedToken, false, 1, null);
        }
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showTokenBalance(String balance) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        getBinding().textFromDescription.setText(balance);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void renderState(SwapUiState state) {
        String string;
        Intrinsics.checkNotNullParameter(state, "state");
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        if (state instanceof SwapUiState.NeedApprove) {
            ActionButton actionButton = binding.buttonAction;
            actionButton.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_button_approve));
            actionButton.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WalletSwapProcessFragment.renderState$lambda$20$lambda$6$lambda$5(WalletSwapProcessFragment.this, view);
                }
            });
            SwapUiState.NeedApprove needApprove = (SwapUiState.NeedApprove) state;
            TokenDetailed token = needApprove.getToken();
            binding.editToAmount.setText(token != null ? token.getTicker() : null);
            binding.textToDescription.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_to_description));
            binding.feeView.init(this, needApprove.getFeeType());
            FeeView feeView = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView, "feeView");
            ViewExtKt.visible$default(feeView, false, 1, null);
            AppCompatTextView textWhatIsApprove = binding.textWhatIsApprove;
            Intrinsics.checkNotNullExpressionValue(textWhatIsApprove, "textWhatIsApprove");
            ViewExtKt.visible$default(textWhatIsApprove, false, 1, null);
        } else if (state instanceof SwapUiState.PrepareSwap) {
            ActionButton actionButton2 = binding.buttonAction;
            WalletSwapScreenType walletSwapScreenType = this.screenType;
            if (walletSwapScreenType instanceof WalletSwapScreenType.Binance) {
                string = getResourceManager().getString(C3558R.string.binance_convert_button_calculate);
            } else if (!(walletSwapScreenType instanceof WalletSwapScreenType.Crypto)) {
                throw new NoWhenBranchMatchedException();
            } else {
                string = getResourceManager().getString(C3558R.string.wallet_swap_process_button_calculate);
            }
            actionButton2.setText(string);
            actionButton2.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WalletSwapProcessFragment.renderState$lambda$20$lambda$9$lambda$8(WalletSwapProcessFragment.this, view);
                }
            });
            TokenDetailed token2 = ((SwapUiState.PrepareSwap) state).getToken();
            binding.editToAmount.setText(token2 != null ? token2.getTicker() : null);
            binding.textToDescription.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_to_description));
            FeeView feeView2 = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView2, "feeView");
            ViewExtKt.gone$default(feeView2, false, 1, null);
            AppCompatTextView textWhatIsApprove2 = binding.textWhatIsApprove;
            Intrinsics.checkNotNullExpressionValue(textWhatIsApprove2, "textWhatIsApprove");
            ViewExtKt.gone$default(textWhatIsApprove2, false, 1, null);
        } else if (state instanceof SwapUiState.Swap) {
            AppCompatTextView textWhatIsApprove3 = binding.textWhatIsApprove;
            Intrinsics.checkNotNullExpressionValue(textWhatIsApprove3, "textWhatIsApprove");
            ViewExtKt.gone$default(textWhatIsApprove3, false, 1, null);
            SwapUiState.Swap swap = (SwapUiState.Swap) state;
            if (swap instanceof SwapUiState.Swap.Binance) {
                SwapUiState.Swap.Binance binance = (SwapUiState.Swap.Binance) state;
                double outputAmount = binance.getQuote().getOutputAmount() / binance.getQuote().getInputAmount();
                AppCompatTextView appCompatTextView = binding.textToDescription;
                ResourceManager resourceManager = getResourceManager();
                int i = C3558R.string.wallet_swap_process_fee_price_value;
                Float valueOf = Float.valueOf(1.0f);
                TokenDetailed.Companion companion = TokenDetailed.Companion;
                appCompatTextView.setText(resourceManager.getString(i, BalanceFormatter.formatBalance(valueOf, Integer.valueOf(companion.getBNB().getDecimals())), binance.getQuote().getInputTokenShortName(), BalanceFormatter.formatBalance(Double.valueOf(outputAmount), Integer.valueOf(companion.getBNB().getDecimals())), binance.getQuote().getOutputTokenShortName()));
                AppCompatEditText appCompatEditText = binding.editToAmount;
                appCompatEditText.setText(BalanceFormatter.formatBalance(Double.valueOf(binance.getQuote().getOutputAmount()), Integer.valueOf(companion.getBNB().getDecimals())) + ' ' + binance.getQuote().getOutputToken());
                final ActionButton actionButton3 = binding.buttonAction;
                CountDownTimer countDownTimer = new CountDownTimer() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$renderState$1$5$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(C0479C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, 1000L);
                    }

                    @Override // android.os.CountDownTimer
                    public void onTick(long j) {
                        ResourceManager resourceManager2;
                        ActionButton actionButton4 = ActionButton.this;
                        StringBuilder sb = new StringBuilder();
                        resourceManager2 = this.getResourceManager();
                        sb.append(resourceManager2.getString(C3558R.string.wallet_swap_process_button_exchange));
                        sb.append(" (");
                        sb.append((j + 1000) / 1000);
                        sb.append(')');
                        actionButton4.setText(sb.toString());
                    }

                    @Override // android.os.CountDownTimer
                    public void onFinish() {
                        WalletSwapProcessPresenter presenter;
                        presenter = this.getPresenter();
                        presenter.resetStateIfNeed();
                    }
                };
                this.timer = countDownTimer;
                countDownTimer.start();
                actionButton3.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_button_exchange));
                actionButton3.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        WalletSwapProcessFragment.renderState$lambda$20$lambda$12$lambda$11(WalletSwapProcessFragment.this, view);
                    }
                });
            } else if (swap instanceof SwapUiState.Swap.Crypto) {
                ActionButton actionButton4 = binding.buttonAction;
                actionButton4.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_button_exchange));
                actionButton4.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        WalletSwapProcessFragment.renderState$lambda$20$lambda$14$lambda$13(WalletSwapProcessFragment.this, view);
                    }
                });
                FeeView renderState$lambda$20$lambda$15 = binding.feeView;
                SwapUiState.Swap.Crypto crypto = (SwapUiState.Swap.Crypto) state;
                renderState$lambda$20$lambda$15.init(this, crypto.getFeeType());
                Intrinsics.checkNotNullExpressionValue(renderState$lambda$20$lambda$15, "renderState$lambda$20$lambda$15");
                ViewExtKt.visible$default(renderState$lambda$20$lambda$15, false, 1, null);
                binding.textToDescription.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_fee_price_value, BalanceFormatter.formatBalance(Float.valueOf(1.0f), Integer.valueOf(crypto.getMetadata().getInputToken().getDecimals())), crypto.getMetadata().getInputToken().getTicker(), BalanceFormatter.formatBalance(crypto.getMetadata().getExecutionPrice(), Integer.valueOf(crypto.getMetadata().getOutputToken().getDecimals())), crypto.getMetadata().getOutputToken().getTicker()));
                AppCompatEditText appCompatEditText2 = binding.editToAmount;
                appCompatEditText2.setText(BalanceFormatter.formatBalance(crypto.getMetadata().getAmountOut(), Integer.valueOf(crypto.getMetadata().getOutputToken().getDecimals())) + ' ' + crypto.getMetadata().getOutputToken().getTicker());
            }
        } else if (state instanceof SwapUiState.ApproveInProgress) {
            ActionButton actionButton5 = binding.buttonAction;
            actionButton5.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_button_approving));
            actionButton5.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WalletSwapProcessFragment.renderState$lambda$20$lambda$17$lambda$16(view);
                }
            });
            FeeView feeView3 = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView3, "feeView");
            ViewExtKt.gone$default(feeView3, false, 1, null);
            AppCompatTextView textWhatIsApprove4 = binding.textWhatIsApprove;
            Intrinsics.checkNotNullExpressionValue(textWhatIsApprove4, "textWhatIsApprove");
            ViewExtKt.visible$default(textWhatIsApprove4, false, 1, null);
        } else if (state instanceof SwapUiState.Idle) {
            ActionButton actionButton6 = binding.buttonAction;
            actionButton6.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_button_calculate));
            actionButton6.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WalletSwapProcessFragment.renderState$lambda$20$lambda$19$lambda$18(WalletSwapProcessFragment.this, view);
                }
            });
            AppCompatEditText editFromAmount = binding.editFromAmount;
            Intrinsics.checkNotNullExpressionValue(editFromAmount, "editFromAmount");
            ViewExtKt.clearText(editFromAmount);
            AppCompatEditText editToAmount = binding.editToAmount;
            Intrinsics.checkNotNullExpressionValue(editToAmount, "editToAmount");
            ViewExtKt.clearText(editToAmount);
            binding.textFromDescription.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_from_description));
            binding.textToDescription.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_to_description));
            FeeView feeView4 = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView4, "feeView");
            ViewExtKt.gone$default(feeView4, false, 1, null);
            LinearLayout linearChooseTo = binding.linearChooseTo;
            Intrinsics.checkNotNullExpressionValue(linearChooseTo, "linearChooseTo");
            ViewExtKt.visible$default(linearChooseTo, false, 1, null);
            AppCompatTextView textWhatIsApprove5 = binding.textWhatIsApprove;
            Intrinsics.checkNotNullExpressionValue(textWhatIsApprove5, "textWhatIsApprove");
            ViewExtKt.gone$default(textWhatIsApprove5, false, 1, null);
            LinearLayout linearChooseFrom = binding.linearChooseFrom;
            Intrinsics.checkNotNullExpressionValue(linearChooseFrom, "linearChooseFrom");
            ViewExtKt.visible$default(linearChooseFrom, false, 1, null);
            Group groupFromSelectedToken = binding.groupFromSelectedToken;
            Intrinsics.checkNotNullExpressionValue(groupFromSelectedToken, "groupFromSelectedToken");
            ViewExtKt.gone$default(groupFromSelectedToken, false, 1, null);
            Group groupToSelectedToken = binding.groupToSelectedToken;
            Intrinsics.checkNotNullExpressionValue(groupToSelectedToken, "groupToSelectedToken");
            ViewExtKt.gone$default(groupToSelectedToken, false, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$20$lambda$6$lambda$5(WalletSwapProcessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showApproveConfirmationDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$20$lambda$9$lambda$8(WalletSwapProcessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().prepareForSwap(String.valueOf(this$0.getBinding().editFromAmount.getText()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$20$lambda$12$lambda$11(WalletSwapProcessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().startSwapFlow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$20$lambda$14$lambda$13(WalletSwapProcessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().startSwapFlow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$20$lambda$19$lambda$18(WalletSwapProcessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().prepareForSwap(String.valueOf(this$0.getBinding().editFromAmount.getText()));
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showNotEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        tokenBuyCoordinator.showNoEnoughMoneyDialog(parentLayout, args);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showNotEnoughMoneyBinanceErrorDialog() {
        DialogsFactoryKt.showErrorAlert$default(this, getResourceManager().getString(C3558R.string.wallet_common_error_not_enough_money_title), getResourceManager().getString(C3558R.string.binance_convert_not_enough_money_error_description), getResourceManager().getString(C3558R.string.common_ok), null, 8, null);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showSuccessSwapAlert() {
        DialogsFactoryKt.showSuccessAlert$default(this, getResourceManager().getString(C3558R.string.wallet_swap_process_swap_success_title), getResourceManager().getString(C3558R.string.wallet_swap_process_swap_success_description), null, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda9
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProcessFragment.showSuccessSwapAlert$lambda$21(WalletSwapProcessFragment.this);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSuccessSwapAlert$lambda$21(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showSuccessApproveAlert() {
        DialogsFactoryKt.showSuccessAlert$default(this, getResourceManager().getString(C3558R.string.wallet_swap_process_approve_success_title), getResourceManager().getString(C3558R.string.wallet_swap_process_approve_success_description), null, null, 12, null);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void openSwapFeeScreen(SwapFeeScreenArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        presentFragment(WalletSwapFeeFragment.Companion.newInstance(args, new Function1<SwapFeeScreenArgs, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$openSwapFeeScreen$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SwapFeeScreenArgs swapFeeScreenArgs) {
                invoke2(swapFeeScreenArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(SwapFeeScreenArgs args2) {
                WalletSwapProcessPresenter presenter;
                Intrinsics.checkNotNullParameter(args2, "args");
                presenter = WalletSwapProcessFragment.this.getPresenter();
                presenter.processSwapFee(args2);
            }
        }));
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showMinMaxInputValues(TokenDetailed token, OutputConvertToken information) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(information, "information");
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        AppCompatTextView textFromAdditionalDescription = binding.textFromAdditionalDescription;
        Intrinsics.checkNotNullExpressionValue(textFromAdditionalDescription, "textFromAdditionalDescription");
        ViewExtKt.visible$default(textFromAdditionalDescription, false, 1, null);
        AppCompatTextView appCompatTextView = binding.textFromAdditionalDescription;
        ResourceManager resourceManager = getResourceManager();
        int i = C3558R.string.binance_convert_min_max_convert_value;
        Double valueOf = Double.valueOf(information.getMinLimit());
        TokenDetailed.Companion companion = TokenDetailed.Companion;
        appCompatTextView.setText(resourceManager.getString(i, BalanceFormatter.formatBalance(valueOf, Integer.valueOf(companion.getBNB().getDecimals())), token.getTicker(), BalanceFormatter.formatBalance(Double.valueOf(information.getMaxLimit()), Integer.valueOf(companion.getBNB().getDecimals())), token.getTicker()));
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void openSelectTokenDialog(TokenDetailed tokenDetailed, WalletSelectTokenFragment.ScreenType selectTokensScreenType, String networkId, boolean z, final Function1<? super TokenDetailed, Unit> action) {
        Intrinsics.checkNotNullParameter(selectTokensScreenType, "selectTokensScreenType");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(action, "action");
        presentFragment(WalletSelectTokenFragment.Companion.newInstance(selectTokensScreenType, tokenDetailed, networkId, z, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda7
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSwapProcessFragment.openSelectTokenDialog$lambda$23(Function1.this, (TokenDetailed) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openSelectTokenDialog$lambda$23(Function1 action, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullExpressionValue(token, "token");
        action.invoke(token);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showSwapConfirmationDialog(DialogModel model, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, model, action, null, 8, null));
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showChangeNetworkHint() {
        HintUtils hintUtils = getHintUtils();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        hintUtils.showChangeNetworkHint(parentLayout);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z && !z2) {
            getPresenter().showChangeNetworkHintIfNeeded();
        }
        super.onTransitionAnimationEnd(z, z2);
    }

    private final void setupActionBar() {
        C3626ActionBar c3626ActionBar = this.actionBar;
        c3626ActionBar.setBackButtonImage(C3558R.C3560drawable.ic_ab_back);
        c3626ActionBar.setAllowOverlayTitle(true);
        c3626ActionBar.setActionBarMenuOnItemClick(new C3626ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3626ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                WalletSwapProcessPresenter presenter;
                if (i == -1) {
                    WalletSwapProcessFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.NETWORK_SWITCH) {
                    presenter = WalletSwapProcessFragment.this.getPresenter();
                    WalletSwapProcessPresenter.startChooseNetworkDialog$default(presenter, null, 1, null);
                }
            }
        });
        ActionBarMenuItem setupActionBar$lambda$25$lambda$24 = c3626ActionBar.createMenu().addItemWithWidth(IdFabric$Menu.NETWORK_SWITCH, 0, -2);
        setupActionBar$lambda$25$lambda$24.disableRipple();
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$25$lambda$24, "setupActionBar$lambda$25$lambda$24");
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(setupActionBar$lambda$25$lambda$24, AndroidUtilities.m72dp(14));
        setupActionBar$lambda$25$lambda$24.addView(getNetworkTypeView(), LayoutHelper.createFrame(-2, -2, 8388629));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        List<ConstraintLayout> listOf;
        List<AppCompatTextView> listOf2;
        List<AppCompatTextView> listOf3;
        List<ConstraintLayout> listOf4;
        List<AppCompatImageView> listOf5;
        List<AppCompatTextView> listOf6;
        List<AppCompatTextView> listOf7;
        List<AppCompatEditText> listOf8;
        List<LinearLayout> listOf9;
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        binding.feeView.setupColors();
        binding.buttonAction.applyColors();
        AppCompatImageView imageExchangeArrow = binding.imageExchangeArrow;
        Intrinsics.checkNotNullExpressionValue(imageExchangeArrow, "imageExchangeArrow");
        ImageViewExtKt.setImageColor(imageExchangeArrow, getThemedColor(Theme.key_windowBackgroundWhiteGrayText5));
        listOf = CollectionsKt__CollectionsJVMKt.listOf(binding.getRoot());
        for (ConstraintLayout constraintLayout : listOf) {
            constraintLayout.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        }
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textSwapProtocolDescription, binding.textToDescription, binding.textFromDescription, binding.textWhatIsApprove, binding.textFromAdditionalDescription});
        for (AppCompatTextView appCompatTextView : listOf2) {
            appCompatTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText4));
        }
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textToDescription, binding.textFromDescription});
        for (AppCompatTextView setupColors$lambda$35$lambda$28 : listOf3) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$35$lambda$28, "setupColors$lambda$35$lambda$28");
            ViewExtKt.setGreyShadowBackground$default(setupColors$lambda$35$lambda$28, false, 1, null);
        }
        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new ConstraintLayout[]{binding.constraintFromToken, binding.constraintToToken});
        for (ConstraintLayout constraintLayout2 : listOf4) {
            constraintLayout2.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        }
        listOf5 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatImageView[]{binding.imageFromIcon, binding.imageToIcon});
        for (AppCompatImageView setupColors$lambda$35$lambda$30 : listOf5) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$35$lambda$30, "setupColors$lambda$35$lambda$30");
            ImageViewExtKt.setImageColor(setupColors$lambda$35$lambda$30, getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader));
        }
        listOf6 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textSelectFromToken, binding.textSelectToToken, binding.textToToken, binding.textFromToken});
        for (AppCompatTextView appCompatTextView2 : listOf6) {
            appCompatTextView2.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader));
        }
        listOf7 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textToToken, binding.textFromToken});
        for (AppCompatTextView setupColors$lambda$35$lambda$32 : listOf7) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$35$lambda$32, "setupColors$lambda$35$lambda$32");
            ViewExtKt.withMediumTypeface(setupColors$lambda$35$lambda$32);
        }
        listOf8 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatEditText[]{binding.editFromAmount, binding.editToAmount});
        for (AppCompatEditText appCompatEditText : listOf8) {
            appCompatEditText.setHintTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2));
            appCompatEditText.setTextColor(getThemedColor(Theme.key_chat_messagePanelText));
        }
        listOf9 = CollectionsKt__CollectionsKt.listOf((Object[]) new LinearLayout[]{binding.linearChooseTo, binding.linearChooseFrom});
        for (LinearLayout setupColors$lambda$35$lambda$34 : listOf9) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$35$lambda$34, "setupColors$lambda$35$lambda$34");
            ViewExtKt.setRippleForeground$default(setupColors$lambda$35$lambda$34, false, 1, null);
        }
    }

    private final void setupTexts() {
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        binding.textToDescription.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_to_description));
        binding.textFromDescription.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_from_description));
        AppCompatTextView appCompatTextView = binding.textSelectFromToken;
        ResourceManager resourceManager = getResourceManager();
        int i = C3558R.string.wallet_swap_process_select_placeholder;
        appCompatTextView.setText(resourceManager.getString(i));
        binding.textSelectToToken.setText(getResourceManager().getString(i));
        binding.textToToken.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_to_title));
        binding.textFromToken.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_from_title));
        binding.buttonAction.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_button_calculate));
        binding.textWhatIsApprove.setText(getResourceManager().getString(C3558R.string.wallet_swap_process_what_is_approve));
    }

    private final void setupListeners() {
        List<View> listOf;
        List<View> listOf2;
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        AppCompatEditText editFromAmount = binding.editFromAmount;
        Intrinsics.checkNotNullExpressionValue(editFromAmount, "editFromAmount");
        editFromAmount.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$lambda$40$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WalletSwapProcessPresenter presenter;
                presenter = WalletSwapProcessFragment.this.getPresenter();
                presenter.resetStateIfNeed();
            }
        });
        LinearLayout linearChooseFrom = binding.linearChooseFrom;
        Intrinsics.checkNotNullExpressionValue(linearChooseFrom, "linearChooseFrom");
        AppCompatImageView imageTokenFrom = binding.imageTokenFrom;
        Intrinsics.checkNotNullExpressionValue(imageTokenFrom, "imageTokenFrom");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new View[]{linearChooseFrom, imageTokenFrom});
        for (View view : listOf) {
            ViewExtKt.safeThrottledClick$default(view, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view2) {
                    invoke2(view2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    WalletSwapProcessPresenter presenter;
                    Intrinsics.checkNotNullParameter(it, "it");
                    presenter = WalletSwapProcessFragment.this.getPresenter();
                    presenter.startSelectTokenDialog(SwapSide.INPUT);
                }
            }, 1, null);
        }
        LinearLayout linearChooseTo = binding.linearChooseTo;
        Intrinsics.checkNotNullExpressionValue(linearChooseTo, "linearChooseTo");
        AppCompatImageView imageTokenTo = binding.imageTokenTo;
        Intrinsics.checkNotNullExpressionValue(imageTokenTo, "imageTokenTo");
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new View[]{linearChooseTo, imageTokenTo});
        for (View view2 : listOf2) {
            ViewExtKt.safeThrottledClick$default(view2, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$3$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view3) {
                    invoke2(view3);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    WalletSwapProcessPresenter presenter;
                    Intrinsics.checkNotNullParameter(it, "it");
                    presenter = WalletSwapProcessFragment.this.getPresenter();
                    presenter.startSelectTokenDialog(SwapSide.OUTPUT);
                }
            }, 1, null);
        }
        NetworkTypeView networkTypeInputView = binding.networkTypeInputView;
        Intrinsics.checkNotNullExpressionValue(networkTypeInputView, "networkTypeInputView");
        ViewExtKt.safeThrottledClick$default(networkTypeInputView, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view3) {
                invoke2(view3);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                WalletSwapProcessPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletSwapProcessFragment.this.getPresenter();
                presenter.startChooseNetworkDialog(SwapSide.INPUT);
            }
        }, 1, null);
        NetworkTypeView networkTypeOutputView = binding.networkTypeOutputView;
        Intrinsics.checkNotNullExpressionValue(networkTypeOutputView, "networkTypeOutputView");
        ViewExtKt.safeThrottledClick$default(networkTypeOutputView, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$5
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view3) {
                invoke2(view3);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                WalletSwapProcessPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletSwapProcessFragment.this.getPresenter();
                presenter.startChooseNetworkDialog(SwapSide.OUTPUT);
            }
        }, 1, null);
        AppCompatTextView textWhatIsApprove = binding.textWhatIsApprove;
        Intrinsics.checkNotNullExpressionValue(textWhatIsApprove, "textWhatIsApprove");
        ViewExtKt.safeThrottledClick$default(textWhatIsApprove, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$6
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view3) {
                invoke2(view3);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                WalletSwapProcessFragment.this.openApproveDescriptionDialog();
            }
        }, 1, null);
    }

    private final void showApproveConfirmationDialog() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, getPresenter().getApproveConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda8
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProcessFragment.showApproveConfirmationDialog$lambda$41(WalletSwapProcessFragment.this);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showApproveConfirmationDialog$lambda$41(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().approve();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openApproveDescriptionDialog() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, getPresenter().getApproveTokenDescriptionModel(), null, null, 12, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NetworkTypeView initGlobalNetworkView() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        NetworkTypeView networkTypeView = new NetworkTypeView(parentActivity, null, 0, 6, null);
        networkTypeView.setVisibility(8);
        return networkTypeView;
    }

    /* compiled from: WalletSwapProcessFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletSwapProcessFragment newInstance(WalletSwapScreenType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new WalletSwapProcessFragment(type);
        }
    }
}
