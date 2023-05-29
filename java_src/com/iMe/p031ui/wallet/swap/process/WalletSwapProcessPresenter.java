package com.iMe.p031ui.wallet.swap.process;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.model.wallet.crypto.swap.SwapUiState;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableType;
import com.iMe.model.wallet.swap.SwapSide;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceConvertQuote;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.binancepay.OutputConvertToken;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.crypto.swap.ApproveArgs;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.model.wallet.swap.SwapDeadline;
import com.iMe.storage.domain.model.wallet.swap.SwapMethod;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import com.iMe.storage.domain.model.wallet.swap.SwapSlippage;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.helper.wallet.SwapHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Function;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3295R;
/* compiled from: WalletSwapProcessPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter */
/* loaded from: classes4.dex */
public final class WalletSwapProcessPresenter extends BasePresenter<WalletSwapProcessView> {
    private final CryptoAccessManager accessManager;
    private CryptoTokenApproveMetadata.NeedApprove approveMetadata;
    private HashMap<NetworkType, List<CryptoTokenApproveMetadata>> approveTokensMetadata;
    private List<? extends NetworkType> availableNetworks;
    private Pair<String, ? extends List<OutputConvertToken>> binanceAvailableOppositeSelectableSwapTokens;
    private BinanceConvertQuote binanceConvertQuote;
    private final BinanceInternalInteractor binanceInternalInteractor;
    private BinanceTokenBalanceInfo binanceTokenBalance;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final HintsPreferenceHelper hintsPreferenceHelper;
    private SelectableToken inputToken;
    private Disposable loadApproveMetadataDisposable;
    private SelectableToken outputToken;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final WalletSwapProcessFragment.ScreenType screenType;
    private HashMap<NetworkType, List<SelectableToken>> selectableSupportedSwapTokens;
    private GasPriceItem selectedApproveFee;
    private SwapDeadline selectedDeadline;
    private NetworkType selectedInputNetworkType;
    private NetworkType selectedOutputNetworkType;
    private SwapSlippage selectedSlippage;
    private GasPriceItem selectedSwapFee;
    private SwapUiState state;
    private final SwapInteractor swapInteractor;
    private CryptoSwapMetadata swapMetadata;
    private SwapProtocol swapProtocol;
    private SwapProtocolInfo swapProtocolInfo;
    private TokenBalance tokenBalance;
    private final WalletInteractor walletInteractor;

    /* compiled from: WalletSwapProcessPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$WhenMappings */
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
            int[] iArr2 = new int[SwapProtocol.values().length];
            try {
                iArr2[SwapProtocol.SYMBIOSIS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[SwapProtocol.UNISWAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[SwapProtocol.UNISWAP_V3.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[SwapProtocol.ONEINCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAvailableOppositeSwapTokensBinance$lambda$24() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAvailableSwapTokensBinance$lambda$20() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAvailableSwapTokensCrypto$lambda$17() {
    }

    public WalletSwapProcessPresenter(WalletSwapProcessFragment.ScreenType screenType, WalletInteractor walletInteractor, BinanceInternalInteractor binanceInternalInteractor, SwapInteractor swapInteractor, SchedulersProvider schedulersProvider, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoAccessManager accessManager, ResourceManager resourceManager, HintsPreferenceHelper hintsPreferenceHelper) {
        List<? extends NetworkType> emptyList;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(swapInteractor, "swapInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(accessManager, "accessManager");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(hintsPreferenceHelper, "hintsPreferenceHelper");
        this.screenType = screenType;
        this.walletInteractor = walletInteractor;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.swapInteractor = swapInteractor;
        this.schedulersProvider = schedulersProvider;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.accessManager = accessManager;
        this.resourceManager = resourceManager;
        this.hintsPreferenceHelper = hintsPreferenceHelper;
        this.selectedSlippage = SwapSlippage.Companion.getDefaultValue();
        this.selectedDeadline = SwapDeadline.Companion.getDefaultValue();
        this.state = SwapUiState.Idle.INSTANCE;
        this.selectableSupportedSwapTokens = new HashMap<>();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.availableNetworks = emptyList;
        NetworkType networkType = NetworkType.ETHEREUM;
        this.selectedInputNetworkType = networkType;
        this.selectedOutputNetworkType = networkType;
        SwapProtocol swapProtocol = SwapProtocol.UNKNOWN;
        this.swapProtocol = swapProtocol;
        this.swapProtocolInfo = SwapProtocolInfo.Companion.map(swapProtocol);
        this.approveTokensMetadata = new HashMap<>();
    }

    public static /* synthetic */ void startChooseNetworkDialog$default(WalletSwapProcessPresenter walletSwapProcessPresenter, SwapSide swapSide, int i, Object obj) {
        if ((i & 1) != 0) {
            swapSide = SwapSide.INPUT;
        }
        walletSwapProcessPresenter.startChooseNetworkDialog(swapSide);
    }

    public final void startChooseNetworkDialog(SwapSide side) {
        Intrinsics.checkNotNullParameter(side, "side");
        ((WalletSwapProcessView) getViewState()).showChooseNetworkDialog(getSelectedNetworkTypeBySwapSide(side), this.availableNetworks, new WalletSwapProcessPresenter$startChooseNetworkDialog$1(side, this));
    }

    public final void processSwapFee(SwapFeeScreenArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.swapMetadata = args.getMetadata();
        this.selectedSwapFee = args.getSelectedFee();
        this.selectedDeadline = args.getSelectedDeadline();
        this.selectedSlippage = args.getSelectedSlippage();
        FeeView.ChooseFeeType swapFeeType = getSwapFeeType();
        CryptoSwapMetadata cryptoSwapMetadata = this.swapMetadata;
        Intrinsics.checkNotNull(cryptoSwapMetadata);
        renderState(new SwapUiState.Swap.Crypto(swapFeeType, cryptoSwapMetadata));
    }

    public final void selectToken(SwapSide side, SelectableToken token) {
        Intrinsics.checkNotNullParameter(side, "side");
        Intrinsics.checkNotNullParameter(token, "token");
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            int i = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
            if (i == 1) {
                this.inputToken = token;
                WalletSwapProcessView walletSwapProcessView = (WalletSwapProcessView) getViewState();
                TokenInfo.Crypto.Ethereum.BNB bnb = TokenInfo.Crypto.Ethereum.BNB.INSTANCE;
                walletSwapProcessView.onTokenSelected(side, token, bnb.getMaxInputDigits(), bnb.getDecimals(), getSelectedNetworkTypeBySwapSide(side));
                loadAvailableOppositeSwapTokensBinance$default(this, token.getId(), false, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda1
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSwapProcessPresenter.selectToken$lambda$0(WalletSwapProcessPresenter.this);
                    }
                }, 2, null);
                loadBalance(token);
            } else if (i != 2) {
            } else {
                this.outputToken = token;
                if (this.inputToken != null) {
                    WalletSwapProcessView walletSwapProcessView2 = (WalletSwapProcessView) getViewState();
                    TokenInfo.Crypto.Ethereum.BNB bnb2 = TokenInfo.Crypto.Ethereum.BNB.INSTANCE;
                    walletSwapProcessView2.onTokenSelected(side, token, bnb2.getMaxInputDigits(), bnb2.getDecimals(), getSelectedNetworkTypeBySwapSide(side));
                    checkMinMaxInputValues();
                }
            }
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
            if (i2 == 1) {
                this.inputToken = token;
                TokenInfo map = TokenInfo.Companion.map(token.getId());
                ((WalletSwapProcessView) getViewState()).onTokenSelected(side, token, map.getMaxInputDigits(), map.getDecimals(), getSelectedNetworkTypeBySwapSide(side));
                loadBalance(token);
                checkSelectedTokenApprove();
            } else if (i2 == 2) {
                this.outputToken = token;
                TokenInfo map2 = TokenInfo.Companion.map(token.getId());
                ((WalletSwapProcessView) getViewState()).onTokenSelected(side, token, map2.getMaxInputDigits(), map2.getDecimals(), getSelectedNetworkTypeBySwapSide(side));
            }
            resetStateIfNeed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void selectToken$lambda$0(WalletSwapProcessPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkMinMaxInputValues();
    }

    public final void approve() {
        ApproveArgs resolveApproveArgs;
        if (isValidForApprove() && (resolveApproveArgs = resolveApproveArgs()) != null) {
            Observable<Result<String>> observeOn = this.swapInteractor.approveToken(resolveApproveArgs).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "swapInteractor\n         …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2376x8810b3d1(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2377x8810b3d2((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    public final void prepareForSwap(String amount) {
        String id;
        Intrinsics.checkNotNullParameter(amount, "amount");
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            SelectableToken selectableToken = this.inputToken;
            String id2 = selectableToken != null ? selectableToken.getId() : null;
            if (id2 == null) {
                id2 = "";
            }
            SelectableToken selectableToken2 = this.outputToken;
            id = selectableToken2 != null ? selectableToken2.getId() : null;
            prepareForSwapBinance(amount, id2, id != null ? id : "");
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            SelectableToken selectableToken3 = this.inputToken;
            String id3 = selectableToken3 != null ? selectableToken3.getId() : null;
            if (id3 == null) {
                id3 = "";
            }
            SelectableToken selectableToken4 = this.outputToken;
            id = selectableToken4 != null ? selectableToken4.getId() : null;
            prepareForSwapCrypto(amount, id3, id != null ? id : "", this.swapProtocol);
        }
    }

    public final void resetStateIfNeed() {
        if (this.state instanceof SwapUiState.Swap) {
            this.binanceConvertQuote = null;
            this.swapMetadata = null;
            this.selectedSwapFee = null;
            renderState(new SwapUiState.PrepareSwap(this.outputToken));
        }
    }

    public final DialogModel getApproveTokenDescriptionModel() {
        return new DialogModel(this.resourceManager.getString(C3295R.string.wallet_swap_process_what_is_approve), this.resourceManager.getString(C3295R.string.wallet_swap_process_what_is_approve_dialog_description), null, this.resourceManager.getString(C3295R.string.common_ok), 4, null);
    }

    public final DialogModel getApproveConfirmationDialogModel() {
        String string = this.resourceManager.getString(C3295R.string.wallet_swap_process_confirm_approve_alert_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3295R.string.wallet_swap_process_confirm_approve_alert_description;
        Object[] objArr = new Object[1];
        SelectableToken selectableToken = this.inputToken;
        String ticker = selectableToken != null ? selectableToken.getTicker() : null;
        if (ticker == null) {
            ticker = "";
        }
        objArr[0] = ticker;
        return new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3295R.string.common_cancel), this.resourceManager.getString(C3295R.string.wallet_swap_process_confirm_approve_alert_action));
    }

    public final void startSelectTokenDialog(final SwapSide side) {
        SelectableToken selectableToken;
        ArrayList arrayList;
        List<? extends SelectableToken> emptyList;
        List<OutputConvertToken> second;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(side, "side");
        SwapSide swapSide = SwapSide.INPUT;
        SelectableToken selectableToken2 = side == swapSide ? this.inputToken : this.outputToken;
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        r3 = null;
        ArrayList arrayList2 = null;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            int i = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
            if (i == 1) {
                NetworkType networkType = NetworkType.BINANCE_SMART_CHAIN;
                if (getAvailableTokensByNetwork(networkType).isEmpty()) {
                    loadAvailableSwapTokensBinance(true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda2
                        @Override // com.iMe.fork.utils.Callbacks$Callback
                        public final void invoke() {
                            WalletSwapProcessPresenter.startSelectTokenDialog$lambda$2(WalletSwapProcessPresenter.this, side);
                        }
                    });
                } else {
                    ((WalletSwapProcessView) getViewState()).openSelectTokenDialog(side, selectableToken2, getAvailableTokensByNetwork(networkType), networkType, SelectableType.BINANCE, true, new WalletSwapProcessPresenter$startSelectTokenDialog$2(this, side));
                }
            } else if (i == 2) {
                if (this.inputToken == null) {
                    ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.wallet_swap_process_give_token_validation));
                    return;
                }
                Pair<String, ? extends List<OutputConvertToken>> pair = this.binanceAvailableOppositeSelectableSwapTokens;
                String first = pair != null ? pair.getFirst() : null;
                SelectableToken selectableToken3 = this.inputToken;
                if (Intrinsics.areEqual(first, selectableToken3 != null ? selectableToken3.getId() : null)) {
                    WalletSwapProcessView walletSwapProcessView = (WalletSwapProcessView) getViewState();
                    Pair<String, ? extends List<OutputConvertToken>> pair2 = this.binanceAvailableOppositeSelectableSwapTokens;
                    if (pair2 != null && (second = pair2.getSecond()) != null) {
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(second, 10);
                        arrayList2 = new ArrayList(collectionSizeOrDefault);
                        for (OutputConvertToken outputConvertToken : second) {
                            arrayList2.add(SelectableMappingKt.mapToSelectable(outputConvertToken.getTokenInfo()));
                        }
                    }
                    if (arrayList2 == null) {
                        emptyList = CollectionsKt__CollectionsKt.emptyList();
                        arrayList = emptyList;
                    } else {
                        arrayList = arrayList2;
                    }
                    walletSwapProcessView.openSelectTokenDialog(side, selectableToken2, arrayList, NetworkType.BINANCE_SMART_CHAIN, SelectableType.BINANCE, false, new WalletSwapProcessPresenter$startSelectTokenDialog$4(this, side));
                    return;
                }
                SelectableToken selectableToken4 = this.inputToken;
                String id = selectableToken4 != null ? selectableToken4.getId() : null;
                if (id == null) {
                    id = "";
                }
                loadAvailableOppositeSwapTokensBinance(id, true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda4
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSwapProcessPresenter.startSelectTokenDialog$lambda$4(WalletSwapProcessPresenter.this, side);
                    }
                });
            }
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            if (getAvailableTokensByNetwork(getSelectedNetworkTypeBySwapSide(side)).isEmpty()) {
                loadAvailableSwapTokensCrypto(side, true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda3
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSwapProcessPresenter.startSelectTokenDialog$lambda$5(WalletSwapProcessPresenter.this, side);
                    }
                });
                return;
            }
            NetworkType selectedNetworkTypeBySwapSide = getSelectedNetworkTypeBySwapSide(side);
            if (WhenMappings.$EnumSwitchMapping$1[this.swapProtocol.ordinal()] == 1) {
                selectableToken = null;
            } else {
                selectableToken = side == swapSide ? this.outputToken : this.inputToken;
            }
            List<SelectableToken> availableTokensByNetwork = getAvailableTokensByNetwork(selectedNetworkTypeBySwapSide);
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : availableTokensByNetwork) {
                if (!Intrinsics.areEqual(((SelectableToken) obj).getId(), selectableToken != null ? selectableToken.getId() : null)) {
                    arrayList3.add(obj);
                }
            }
            ((WalletSwapProcessView) getViewState()).openSelectTokenDialog(side, selectableToken2, arrayList3, selectedNetworkTypeBySwapSide, SelectableType.INTERNAL, side == SwapSide.INPUT, new WalletSwapProcessPresenter$startSelectTokenDialog$7(this, side));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenDialog$lambda$2(WalletSwapProcessPresenter this$0, SwapSide side) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(side, "$side");
        this$0.startSelectTokenDialog(side);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenDialog$lambda$4(WalletSwapProcessPresenter this$0, SwapSide side) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(side, "$side");
        this$0.startSelectTokenDialog(side);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenDialog$lambda$5(WalletSwapProcessPresenter this$0, SwapSide side) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(side, "$side");
        this$0.startSelectTokenDialog(side);
    }

    public final void startSwapFlow() {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            swapBinance();
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            ((WalletSwapProcessView) getViewState()).showSwapConfirmationDialog(getSwapConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSwapProcessPresenter.startSwapFlow$lambda$7(WalletSwapProcessPresenter.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSwapFlow$lambda$7(WalletSwapProcessPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.swapCrypto();
    }

    public final void showChangeNetworkHintIfNeeded() {
        boolean booleanValue = getNetworkSwitchState().component2().booleanValue();
        HintsPreferenceHelper hintsPreferenceHelper = this.hintsPreferenceHelper;
        Hint.ChangeNetwork.SwapScreen swapScreen = Hint.ChangeNetwork.SwapScreen.INSTANCE;
        if (hintsPreferenceHelper.shouldShowHint(swapScreen) && booleanValue) {
            ((WalletSwapProcessView) getViewState()).showChangeNetworkHint();
            this.hintsPreferenceHelper.onHintShowed(swapScreen);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        resolveArgs();
        resolveAvailableNetworks();
        resolveSelectedNetworkType();
        resolveSwapProtocol();
        setupSwapInformation();
        SwapSide swapSide = SwapSide.INPUT;
        ((WalletSwapProcessView) getViewState()).setupNetworkType(getSelectedNetworkTypeBySwapSide(swapSide), swapSide);
        SwapSide swapSide2 = SwapSide.OUTPUT;
        ((WalletSwapProcessView) getViewState()).setupNetworkType(getSelectedNetworkTypeBySwapSide(swapSide2), swapSide2);
        renderState(new SwapUiState.PrepareSwap(this.outputToken));
        SelectableToken selectableToken = this.inputToken;
        if (selectableToken != null) {
            Intrinsics.checkNotNull(selectableToken);
            selectToken(swapSide, selectableToken);
        }
        SelectableToken selectableToken2 = this.outputToken;
        if (selectableToken2 != null) {
            Intrinsics.checkNotNull(selectableToken2);
            selectToken(swapSide2, selectableToken2);
        }
        loadAvailableSwapTokens(swapSide);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NetworkType getSelectedNetworkTypeBySwapSide(SwapSide swapSide) {
        int i = WhenMappings.$EnumSwitchMapping$0[swapSide.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return this.swapProtocol.isCrossChain() ? this.selectedOutputNetworkType : this.selectedInputNetworkType;
            }
            throw new NoWhenBranchMatchedException();
        }
        return this.selectedInputNetworkType;
    }

    static /* synthetic */ NetworkType getSelectedNetworkTypeBySwapSide$default(WalletSwapProcessPresenter walletSwapProcessPresenter, SwapSide swapSide, int i, Object obj) {
        if ((i & 1) != 0) {
            swapSide = SwapSide.INPUT;
        }
        return walletSwapProcessPresenter.getSelectedNetworkTypeBySwapSide(swapSide);
    }

    private final List<SelectableToken> getAvailableTokensByNetwork(NetworkType networkType) {
        List<SelectableToken> emptyList;
        List<SelectableToken> list = this.selectableSupportedSwapTokens.get(networkType);
        if (list == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetLoadedInformation() {
        this.selectableSupportedSwapTokens = new HashMap<>();
        this.approveTokensMetadata = new HashMap<>();
        this.approveMetadata = null;
    }

    private final void resolveAvailableNetworks() {
        this.availableNetworks = SwapProtocolInfo.Companion.map(this.swapProtocol).getSupportedNetworks();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resolveSwapProtocol() {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if ((screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) && ((WalletSwapProcessFragment.ScreenType.Crypto) screenType).getSwapProtocol().isUniswap()) {
            this.swapProtocol = SwapHelper.INSTANCE.resolveSwapProtocolByNetwork(getSelectedNetworkTypeBySwapSide$default(this, null, 1, null));
        }
    }

    private final void resolveSelectedNetworkType() {
        Object obj;
        Object obj2;
        boolean z;
        boolean z2;
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (!(screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) || ((WalletSwapProcessFragment.ScreenType.Crypto) screenType).getForcedNetworkType() == null) {
            Iterator<T> it = this.availableNetworks.iterator();
            while (true) {
                obj = null;
                if (!it.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it.next();
                if (((NetworkType) obj2) == this.cryptoPreferenceHelper.getNetworkType()) {
                    z2 = true;
                    continue;
                } else {
                    z2 = false;
                    continue;
                }
                if (z2) {
                    break;
                }
            }
            NetworkType networkType = (NetworkType) obj2;
            if (networkType == null) {
                networkType = (NetworkType) CollectionsKt.first((List<? extends Object>) this.availableNetworks);
            }
            this.selectedInputNetworkType = networkType;
            Iterator<T> it2 = this.availableNetworks.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (((NetworkType) next) != this.selectedInputNetworkType) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    obj = next;
                    break;
                }
            }
            NetworkType networkType2 = (NetworkType) obj;
            if (networkType2 == null) {
                networkType2 = (NetworkType) CollectionsKt.first((List<? extends Object>) this.availableNetworks);
            }
            this.selectedOutputNetworkType = networkType2;
            return;
        }
        this.selectedInputNetworkType = ((WalletSwapProcessFragment.ScreenType.Crypto) this.screenType).getForcedNetworkType();
        this.selectedOutputNetworkType = ((WalletSwapProcessFragment.ScreenType.Crypto) this.screenType).getForcedNetworkType();
    }

    private final void resolveArgs() {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            this.inputToken = ((WalletSwapProcessFragment.ScreenType.Binance) screenType).getFromToken();
            this.outputToken = ((WalletSwapProcessFragment.ScreenType.Binance) this.screenType).getToToken();
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            this.swapProtocol = ((WalletSwapProcessFragment.ScreenType.Crypto) screenType).getSwapProtocol();
            this.swapProtocolInfo = ((WalletSwapProcessFragment.ScreenType.Crypto) this.screenType).getSwapProtocolInfo();
            this.inputToken = resolveToken(((WalletSwapProcessFragment.ScreenType.Crypto) this.screenType).getFromToken());
            this.outputToken = resolveToken(((WalletSwapProcessFragment.ScreenType.Crypto) this.screenType).getToToken());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupSwapInformation() {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            ((WalletSwapProcessView) getViewState()).setupScreenForSwap(this.resourceManager.getString(C3295R.string.binance_convert_toolbar_title), this.resourceManager.getString(C3295R.string.binance_convert_description), C3295R.C3297drawable.fork_ic_bnb_logo, false, WalletSwapProcessFragment.NetworkSwitchType.GLOBAL);
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            Pair<WalletSwapProcessFragment.NetworkSwitchType, Boolean> networkSwitchState = getNetworkSwitchState();
            WalletSwapProcessFragment.NetworkSwitchType component1 = networkSwitchState.component1();
            ((WalletSwapProcessView) getViewState()).setupScreenForSwap(this.resourceManager.getString(this.swapProtocolInfo.getName()), this.resourceManager.getString(this.swapProtocolInfo.getLongDescription()), this.swapProtocolInfo.getLogo(), networkSwitchState.component2().booleanValue(), component1);
        }
    }

    private final Pair<WalletSwapProcessFragment.NetworkSwitchType, Boolean> getNetworkSwitchState() {
        int i = WhenMappings.$EnumSwitchMapping$1[this.swapProtocol.ordinal()];
        boolean z = true;
        if (i != 1) {
            if (i == 2 || i == 3 || i == 4) {
                WalletSwapProcessFragment.NetworkSwitchType networkSwitchType = WalletSwapProcessFragment.NetworkSwitchType.GLOBAL;
                WalletSwapProcessFragment.ScreenType screenType = this.screenType;
                return TuplesKt.m85to(networkSwitchType, Boolean.valueOf(((screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) && ((WalletSwapProcessFragment.ScreenType.Crypto) screenType).getForcedNetworkType() == null) ? false : false));
            }
            return TuplesKt.m85to(WalletSwapProcessFragment.NetworkSwitchType.GLOBAL, Boolean.FALSE);
        }
        return TuplesKt.m85to(WalletSwapProcessFragment.NetworkSwitchType.CROSS_CHAIN, Boolean.TRUE);
    }

    private final void swapCrypto() {
        SwapArgs resolveSwapArgs;
        if (isValidForCryptoSwap() && (resolveSwapArgs = resolveSwapArgs()) != null) {
            Observable<Result<String>> observeOn = this.swapInteractor.swap(resolveSwapArgs).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "swapInteractor\n         …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2396x471dfc16(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2397x471dfc17((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void swapBinance() {
        if (isValidForBinanceSwap()) {
            BinanceInternalInteractor binanceInternalInteractor = this.binanceInternalInteractor;
            BinanceConvertQuote binanceConvertQuote = this.binanceConvertQuote;
            String quoteId = binanceConvertQuote != null ? binanceConvertQuote.getQuoteId() : null;
            if (quoteId == null) {
                quoteId = "";
            }
            Observable<Result<Boolean>> observeOn = binanceInternalInteractor.confirmConvertQuote(quoteId).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2394x71745cc7(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2395x71745cc8((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void prepareForSwapBinance(String str, String str2, String str3) {
        if (isValidForPrepareSwap(str)) {
            Observable<Result<BinanceConvertQuote>> observeOn = this.binanceInternalInteractor.getConvertQuote(str2, str3, str).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2390x90737ee5(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2391x90737ee6((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void prepareForSwapCrypto(String str, String str2, String str3, SwapProtocol swapProtocol) {
        if (isValidForPrepareSwap(str)) {
            SwapInteractor swapInteractor = this.swapInteractor;
            TokenCode.Companion companion = TokenCode.Companion;
            Observable<Result<CryptoSwapMetadata>> observeOn = swapInteractor.getQuoteToSwap(companion.map(str2), companion.map(str3), str, TradeType.EXACT_INPUT, SwapSlippage.PERCENT_5.getPercent(), getSelectedNetworkTypeBySwapSide(SwapSide.INPUT), getSelectedNetworkTypeBySwapSide(SwapSide.OUTPUT), swapProtocol).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "swapInteractor\n         …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2392xdcc31e38(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2393xdcc31e39((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void loadBalance(SelectableToken selectableToken) {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            loadBalanceBinance(selectableToken);
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            loadBalanceCrypto(TokenCode.Companion.map(selectableToken.getId()));
        }
    }

    private final void loadBalanceBinance(SelectableToken selectableToken) {
        Observable<Result<List<BinanceTokenBalanceInfo>>> observeOn = this.binanceInternalInteractor.getUserBalance().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2386x263949c2(this, selectableToken)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2387x263949c3((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadBalanceCrypto(TokenCode tokenCode) {
        Observable observeOn = WalletInteractor.getTokenBalance$default(this.walletInteractor, tokenCode, false, getSelectedNetworkTypeBySwapSide$default(this, null, 1, null), 2, null).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2388xe9da03bb(this, tokenCode)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2389xe9da03bc((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    static /* synthetic */ void loadAvailableSwapTokensCrypto$default(WalletSwapProcessPresenter walletSwapProcessPresenter, SwapSide swapSide, boolean z, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 1) != 0) {
            swapSide = SwapSide.INPUT;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            callbacks$Callback = WalletSwapProcessPresenter$$ExternalSyntheticLambda5.INSTANCE;
        }
        walletSwapProcessPresenter.loadAvailableSwapTokensCrypto(swapSide, z, callbacks$Callback);
    }

    private final void loadAvailableSwapTokensCrypto(SwapSide swapSide, boolean z, Callbacks$Callback callbacks$Callback) {
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            NetworkType selectedNetworkTypeBySwapSide = getSelectedNetworkTypeBySwapSide(swapSide);
            Observable<Result<List<TokenInfo>>> observeOn = this.swapInteractor.getAvailableTokensToSwap(selectedNetworkTypeBySwapSide, this.swapProtocol).observeOn(this.schedulersProvider.mo698ui());
            final WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$2 walletSwapProcessPresenter$loadAvailableSwapTokensCrypto$2 = new WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$2(z, this);
            Observable<R> compose = observeOn.compose(new ObservableTransformer() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda8
                @Override // io.reactivex.ObservableTransformer
                public final ObservableSource apply(Observable observable) {
                    ObservableSource loadAvailableSwapTokensCrypto$lambda$18;
                    loadAvailableSwapTokensCrypto$lambda$18 = WalletSwapProcessPresenter.loadAvailableSwapTokensCrypto$lambda$18(Function1.this, observable);
                    return loadAvailableSwapTokensCrypto$lambda$18;
                }
            });
            Intrinsics.checkNotNullExpressionValue(compose, "private fun loadAvailabl…     .autoDispose()\n    }");
            Disposable subscribe = compose.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2384x5065f295(this, selectedNetworkTypeBySwapSide, callbacks$Callback)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2385x5065f296((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadAvailableSwapTokensCrypto$lambda$18(Function1 tmp0, Observable p0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        Intrinsics.checkNotNullParameter(p0, "p0");
        return (ObservableSource) tmp0.invoke(p0);
    }

    static /* synthetic */ void loadAvailableSwapTokensBinance$default(WalletSwapProcessPresenter walletSwapProcessPresenter, boolean z, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            callbacks$Callback = WalletSwapProcessPresenter$$ExternalSyntheticLambda6.INSTANCE;
        }
        walletSwapProcessPresenter.loadAvailableSwapTokensBinance(z, callbacks$Callback);
    }

    private final void loadAvailableSwapTokensBinance(boolean z, Callbacks$Callback callbacks$Callback) {
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            Observable<Result<List<BinanceTokenInfo>>> observeOn = this.binanceInternalInteractor.getTokensForConvert().observeOn(this.schedulersProvider.mo698ui());
            final WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2 walletSwapProcessPresenter$loadAvailableSwapTokensBinance$2 = new WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2(z, this);
            Observable<R> compose = observeOn.compose(new ObservableTransformer() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda10
                @Override // io.reactivex.ObservableTransformer
                public final ObservableSource apply(Observable observable) {
                    ObservableSource loadAvailableSwapTokensBinance$lambda$21;
                    loadAvailableSwapTokensBinance$lambda$21 = WalletSwapProcessPresenter.loadAvailableSwapTokensBinance$lambda$21(Function1.this, observable);
                    return loadAvailableSwapTokensBinance$lambda$21;
                }
            });
            Intrinsics.checkNotNullExpressionValue(compose, "private fun loadAvailabl…     .autoDispose()\n    }");
            Disposable subscribe = compose.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2382x912b3628(this, callbacks$Callback)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2383x912b3629((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadAvailableSwapTokensBinance$lambda$21(Function1 tmp0, Observable p0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        Intrinsics.checkNotNullParameter(p0, "p0");
        return (ObservableSource) tmp0.invoke(p0);
    }

    static /* synthetic */ void loadAvailableOppositeSwapTokensBinance$default(WalletSwapProcessPresenter walletSwapProcessPresenter, String str, boolean z, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            callbacks$Callback = WalletSwapProcessPresenter$$ExternalSyntheticLambda7.INSTANCE;
        }
        walletSwapProcessPresenter.loadAvailableOppositeSwapTokensBinance(str, z, callbacks$Callback);
    }

    private final void loadAvailableOppositeSwapTokensBinance(String str, boolean z, Callbacks$Callback callbacks$Callback) {
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            Observable<Result<List<OutputConvertToken>>> observeOn = this.binanceInternalInteractor.getOppositeTokensForConvertByToken(str).observeOn(this.schedulersProvider.mo698ui());
            final C2398xa8fd99cc c2398xa8fd99cc = new C2398xa8fd99cc(z, this);
            Observable<R> compose = observeOn.compose(new ObservableTransformer() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda9
                @Override // io.reactivex.ObservableTransformer
                public final ObservableSource apply(Observable observable) {
                    ObservableSource loadAvailableOppositeSwapTokensBinance$lambda$25;
                    loadAvailableOppositeSwapTokensBinance$lambda$25 = WalletSwapProcessPresenter.loadAvailableOppositeSwapTokensBinance$lambda$25(Function1.this, observable);
                    return loadAvailableOppositeSwapTokensBinance$lambda$25;
                }
            });
            Intrinsics.checkNotNullExpressionValue(compose, "private fun loadAvailabl…     .autoDispose()\n    }");
            Disposable subscribe = compose.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2380x9b0acc81(this, str, callbacks$Callback)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2381x9b0acc82((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadAvailableOppositeSwapTokensBinance$lambda$25(Function1 tmp0, Observable p0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        Intrinsics.checkNotNullParameter(p0, "p0");
        return (ObservableSource) tmp0.invoke(p0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadAvailableSwapTokens(SwapSide swapSide) {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            loadAvailableSwapTokensBinance$default(this, false, null, 3, null);
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            loadAvailableSwapTokensCrypto$default(this, swapSide, false, null, 6, null);
            loadApproveTokensInfo$default(this, false, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void loadApproveTokensInfo$default(WalletSwapProcessPresenter walletSwapProcessPresenter, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        walletSwapProcessPresenter.loadApproveTokensInfo(z, z2);
    }

    private final void loadApproveTokensInfo(boolean z, final boolean z2) {
        Observable<Long> just;
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            if (z) {
                just = Observable.interval(30L, TimeUnit.SECONDS);
            } else {
                just = Observable.just(Boolean.TRUE);
            }
            NetworkType selectedNetworkTypeBySwapSide$default = getSelectedNetworkTypeBySwapSide$default(this, null, 1, null);
            final WalletSwapProcessPresenter$loadApproveTokensInfo$1 walletSwapProcessPresenter$loadApproveTokensInfo$1 = new WalletSwapProcessPresenter$loadApproveTokensInfo$1(this, selectedNetworkTypeBySwapSide$default);
            Observable doFinally = just.flatMap(new Function() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda12
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource loadApproveTokensInfo$lambda$27;
                    loadApproveTokensInfo$lambda$27 = WalletSwapProcessPresenter.loadApproveTokensInfo$lambda$27(Function1.this, obj);
                    return loadApproveTokensInfo$lambda$27;
                }
            }).observeOn(this.schedulersProvider.mo698ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda11
                @Override // io.reactivex.functions.Action
                public final void run() {
                    WalletSwapProcessPresenter.loadApproveTokensInfo$lambda$28(z2, this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally, "private fun loadApproveT…}\n                }\n    }");
            Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2378x9faf7813(this, selectedNetworkTypeBySwapSide$default, z, z2)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2379x9faf7814((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            this.loadApproveMetadataDisposable = subscribe;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadApproveTokensInfo$lambda$27(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadApproveTokensInfo$lambda$28(boolean z, WalletSwapProcessPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            T viewState = this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.CC.showLoadingDialog$default((BaseView) viewState, false, false, null, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSwapErrors(Result.Error<?> error) {
        IErrorStatus status = error.getError().getStatus();
        boolean z = true;
        if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT) {
            ((WalletSwapProcessView) getViewState()).showErrorToast(error, this.resourceManager);
            loadApproveTokensInfo(false, true);
        } else if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
            WalletSwapProcessFragment.ScreenType screenType = this.screenType;
            if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
                ((WalletSwapProcessView) getViewState()).showNotEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(TokenCode.UNKNOWN, SwapProtocol.UNKNOWN, null, 4, null));
            } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
                TokenCode.Companion companion = TokenCode.Companion;
                SelectableToken selectableToken = this.inputToken;
                Intrinsics.checkNotNull(selectableToken);
                ((WalletSwapProcessView) getViewState()).showNotEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(companion.map(selectableToken.getId()), this.swapProtocol, null, 4, null));
            }
        } else {
            if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_BLOCK_CHAIN_ERROR || status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_INSUFFICIENT_RESERVES_IN_LIQUIDITY_POOL_OF_TOKENS) {
                loadApproveTokensInfo$default(this, false, false, 2, null);
                ((WalletSwapProcessView) getViewState()).showErrorToast(error, this.resourceManager);
                resetStateTo(SwapUiState.Idle.INSTANCE);
                return;
            }
            if (status != FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG && status != FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_QUOTE_NOT_FOUND) {
                z = false;
            }
            if (z) {
                ((WalletSwapProcessView) getViewState()).showErrorToast(error, this.resourceManager);
                resetStateIfNeed();
                return;
            }
            ((WalletSwapProcessView) getViewState()).showErrorToast(error, this.resourceManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetStateTo(SwapUiState swapUiState) {
        if (swapUiState instanceof SwapUiState.Idle) {
            this.swapMetadata = null;
            this.selectedSwapFee = null;
            this.selectedDeadline = SwapDeadline.Companion.getDefaultValue();
            this.selectedSlippage = SwapSlippage.Companion.getDefaultValue();
            this.inputToken = null;
            this.outputToken = null;
        }
        renderState(swapUiState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkSelectedTokenApprove() {
        if (this.inputToken != null) {
            Object obj = null;
            List<CryptoTokenApproveMetadata> list = this.approveTokensMetadata.get(getSelectedNetworkTypeBySwapSide$default(this, null, 1, null));
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    String name = ((CryptoTokenApproveMetadata) next).getTokenCode().getName();
                    SelectableToken selectableToken = this.inputToken;
                    if (Intrinsics.areEqual(name, selectableToken != null ? selectableToken.getId() : null)) {
                        obj = next;
                        break;
                    }
                }
                obj = (CryptoTokenApproveMetadata) obj;
            }
            if (obj instanceof CryptoTokenApproveMetadata.Allowed) {
                renderState(new SwapUiState.PrepareSwap(this.outputToken));
            } else if (obj instanceof CryptoTokenApproveMetadata.InProgress) {
                renderState(SwapUiState.ApproveInProgress.INSTANCE);
            } else if (obj instanceof CryptoTokenApproveMetadata.NeedApprove) {
                CryptoTokenApproveMetadata.NeedApprove needApprove = (CryptoTokenApproveMetadata.NeedApprove) obj;
                this.approveMetadata = needApprove;
                TransactionSpeedLevel transactionSpeedLevel = TransactionSpeedLevel.MEDIUM;
                this.selectedApproveFee = new GasPriceItem(transactionSpeedLevel, TokenInfo.Companion.map(needApprove.getFeeTokenCode()), needApprove.getTransactionParams().getFeeByLevel(transactionSpeedLevel));
                renderState(new SwapUiState.NeedApprove(getApproveFeeType(), this.outputToken));
            } else {
                renderState(new SwapUiState.PrepareSwap(this.outputToken));
            }
        }
    }

    private final SwapFeeScreenArgs resolveSwapFeeScreenArgs() {
        CryptoSwapMetadata cryptoSwapMetadata;
        if (!(this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) || (cryptoSwapMetadata = this.swapMetadata) == null || this.selectedSwapFee == null) {
            return null;
        }
        Intrinsics.checkNotNull(cryptoSwapMetadata);
        SwapDeadline swapDeadline = this.selectedDeadline;
        SwapSlippage swapSlippage = this.selectedSlippage;
        GasPriceItem gasPriceItem = this.selectedSwapFee;
        Intrinsics.checkNotNull(gasPriceItem);
        return new SwapFeeScreenArgs(cryptoSwapMetadata, swapDeadline, swapSlippage, gasPriceItem, getSelectedNetworkTypeBySwapSide(SwapSide.INPUT), getSelectedNetworkTypeBySwapSide(SwapSide.OUTPUT), this.swapProtocol);
    }

    private final ApproveArgs resolveApproveArgs() {
        CryptoTokenApproveMetadata cryptoTokenApproveMetadata;
        Object obj;
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            TokenCode.Companion companion = TokenCode.Companion;
            SelectableToken selectableToken = this.inputToken;
            String id = selectableToken != null ? selectableToken.getId() : null;
            if (id == null) {
                id = "";
            }
            TokenCode map = companion.map(id);
            if (!map.isCryptoTokens() || map == getSelectedNetworkTypeBySwapSide$default(this, null, 1, null).getNativeToken()) {
                return null;
            }
            List<CryptoTokenApproveMetadata> list = this.approveTokensMetadata.get(getSelectedNetworkTypeBySwapSide$default(this, null, 1, null));
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    String name = ((CryptoTokenApproveMetadata) obj).getTokenCode().getName();
                    SelectableToken selectableToken2 = this.inputToken;
                    if (Intrinsics.areEqual(name, selectableToken2 != null ? selectableToken2.getId() : null)) {
                        break;
                    }
                }
                cryptoTokenApproveMetadata = (CryptoTokenApproveMetadata) obj;
            } else {
                cryptoTokenApproveMetadata = null;
            }
            if (cryptoTokenApproveMetadata instanceof CryptoTokenApproveMetadata.NeedApprove) {
                TokenInfo map2 = TokenInfo.Companion.map(map);
                Intrinsics.checkNotNull(map2, "null cannot be cast to non-null type com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum");
                TokenInfo.Crypto.Ethereum ethereum = (TokenInfo.Crypto.Ethereum) map2;
                Wallet wallet2 = this.accessManager.getWallet(this.cryptoPreferenceHelper.getCurrentBlockchainType());
                String address = wallet2 != null ? wallet2.getAddress() : null;
                String str = address == null ? "" : address;
                CryptoTokenApproveMetadata.NeedApprove needApprove = (CryptoTokenApproveMetadata.NeedApprove) cryptoTokenApproveMetadata;
                BigInteger bigInteger = new BigInteger(needApprove.getValue());
                long id2 = needApprove.getTransactionParams().getChain().getId();
                BigInteger nonce = needApprove.getTransactionParams().getNonce();
                GasPriceItem gasPriceItem = this.selectedApproveFee;
                Intrinsics.checkNotNull(gasPriceItem);
                BigInteger price = gasPriceItem.getInfo().getPrice();
                GasPriceItem gasPriceItem2 = this.selectedApproveFee;
                Intrinsics.checkNotNull(gasPriceItem2);
                return new ApproveArgs.Dex(ethereum, bigInteger, str, id2, nonce, price, gasPriceItem2.getInfo().getLimit(), needApprove.getTokenContractAddress(), needApprove.getSpenderContractAddress(), getSelectedNetworkTypeBySwapSide$default(this, null, 1, null), this.swapProtocol);
            }
            return null;
        }
        return null;
    }

    private final SwapArgs resolveSwapArgs() {
        CryptoSwapMetadata cryptoSwapMetadata;
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            TokenCode.Companion companion = TokenCode.Companion;
            SelectableToken selectableToken = this.inputToken;
            String id = selectableToken != null ? selectableToken.getId() : null;
            if (id == null) {
                id = "";
            }
            if (!companion.map(id).isCryptoTokens() || (cryptoSwapMetadata = this.swapMetadata) == null) {
                return null;
            }
            Intrinsics.checkNotNull(cryptoSwapMetadata);
            BigDecimal amountIn = cryptoSwapMetadata.getAmountIn();
            CryptoSwapMetadata cryptoSwapMetadata2 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata2);
            BigInteger amountBound = cryptoSwapMetadata2.getAmountBound();
            CryptoSwapMetadata cryptoSwapMetadata3 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata3);
            TokenInfo inputTokenInfo = cryptoSwapMetadata3.getInputTokenInfo();
            Intrinsics.checkNotNull(inputTokenInfo, "null cannot be cast to non-null type com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum");
            TokenInfo.Crypto.Ethereum ethereum = (TokenInfo.Crypto.Ethereum) inputTokenInfo;
            CryptoSwapMetadata cryptoSwapMetadata4 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata4);
            TokenInfo outputTokenInfo = cryptoSwapMetadata4.getOutputTokenInfo();
            Intrinsics.checkNotNull(outputTokenInfo, "null cannot be cast to non-null type com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum");
            TokenInfo.Crypto.Ethereum ethereum2 = (TokenInfo.Crypto.Ethereum) outputTokenInfo;
            CryptoSwapMetadata cryptoSwapMetadata5 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata5);
            long id2 = cryptoSwapMetadata5.getTransactionParams().getChain().getId();
            CryptoSwapMetadata cryptoSwapMetadata6 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata6);
            BigInteger nonce = cryptoSwapMetadata6.getTransactionParams().getNonce();
            GasPriceItem gasPriceItem = this.selectedSwapFee;
            Intrinsics.checkNotNull(gasPriceItem);
            BigInteger price = gasPriceItem.getInfo().getPrice();
            GasPriceItem gasPriceItem2 = this.selectedSwapFee;
            Intrinsics.checkNotNull(gasPriceItem2);
            BigInteger limit = gasPriceItem2.getInfo().getLimit();
            CryptoSwapMetadata cryptoSwapMetadata7 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata7);
            String contractAddress = cryptoSwapMetadata7.getContractAddress();
            String str = contractAddress == null ? "" : contractAddress;
            CryptoSwapMetadata cryptoSwapMetadata8 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata8);
            SwapMethod swapMethod = cryptoSwapMetadata8.getSwapMethod();
            CryptoSwapMetadata cryptoSwapMetadata9 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata9);
            List<String> path = cryptoSwapMetadata9.getPath();
            int minutes = this.selectedDeadline.getMinutes();
            CryptoSwapMetadata cryptoSwapMetadata10 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata10);
            String quoteId = cryptoSwapMetadata10.getQuoteId();
            NetworkType selectedNetworkTypeBySwapSide = getSelectedNetworkTypeBySwapSide(SwapSide.INPUT);
            NetworkType selectedNetworkTypeBySwapSide2 = getSelectedNetworkTypeBySwapSide(SwapSide.OUTPUT);
            SwapProtocol swapProtocol = this.swapProtocol;
            CryptoSwapMetadata cryptoSwapMetadata11 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata11);
            BigInteger value = cryptoSwapMetadata11.getValue();
            CryptoSwapMetadata cryptoSwapMetadata12 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata12);
            return new SwapArgs.Dex(swapProtocol, amountIn, ethereum, ethereum2, id2, nonce, price, limit, amountBound, str, swapMethod, path, minutes, value, cryptoSwapMetadata12.getCallData(), quoteId, selectedNetworkTypeBySwapSide, selectedNetworkTypeBySwapSide2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FeeView.ChooseFeeType getSwapFeeType() {
        WalletSwapProcessPresenter$getSwapFeeType$1 walletSwapProcessPresenter$getSwapFeeType$1 = new WalletSwapProcessPresenter$getSwapFeeType$1(this);
        GasPriceItem gasPriceItem = this.selectedSwapFee;
        Intrinsics.checkNotNull(gasPriceItem);
        return new FeeView.ChooseFeeType.Custom(walletSwapProcessPresenter$getSwapFeeType$1, gasPriceItem);
    }

    private final FeeView.ChooseFeeType getApproveFeeType() {
        DialogModel feeDialogModel = getFeeDialogModel();
        CryptoTokenApproveMetadata.NeedApprove needApprove = this.approveMetadata;
        Intrinsics.checkNotNull(needApprove);
        TransactionParams.Ether transactionParams = needApprove.getTransactionParams();
        TokenInfo.Companion companion = TokenInfo.Companion;
        CryptoTokenApproveMetadata.NeedApprove needApprove2 = this.approveMetadata;
        Intrinsics.checkNotNull(needApprove2);
        TokenInfo map = companion.map(needApprove2.getFeeTokenCode());
        GasPriceItem gasPriceItem = this.selectedApproveFee;
        Intrinsics.checkNotNull(gasPriceItem);
        return new FeeView.ChooseFeeType.Default(feeDialogModel, transactionParams, map, gasPriceItem, new WalletSwapProcessPresenter$getApproveFeeType$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void selectApproveFee(GasPriceItem gasPriceItem) {
        this.selectedApproveFee = gasPriceItem;
        renderState(new SwapUiState.NeedApprove(getApproveFeeType(), this.outputToken));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderState(SwapUiState swapUiState) {
        this.state = swapUiState;
        ((WalletSwapProcessView) getViewState()).renderState(swapUiState);
    }

    private final boolean isValidForPrepareSwap(String str) {
        Double doubleOrNull;
        boolean z;
        SelectableToken selectableToken = this.inputToken;
        if (selectableToken == null) {
            ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.wallet_swap_process_give_token_validation));
        } else {
            SelectableToken selectableToken2 = this.outputToken;
            if (selectableToken2 == null) {
                ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.wallet_swap_process_receive_token_amount_validation));
            } else if (Intrinsics.areEqual(selectableToken, selectableToken2)) {
                ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.wallet_swap_process_diff_tokens_validation));
            } else {
                if (!(str.length() == 0)) {
                    doubleOrNull = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(str);
                    if (!(doubleOrNull != null && NumberExtKt.isZero(doubleOrNull))) {
                        if (isAvailableBalanceLessThanAmount(str)) {
                            WalletSwapProcessFragment.ScreenType screenType = this.screenType;
                            if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
                                ((WalletSwapProcessView) getViewState()).showNotEnoughMoneyBinanceErrorDialog();
                            } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
                                TokenCode.Companion companion = TokenCode.Companion;
                                SelectableToken selectableToken3 = this.inputToken;
                                Intrinsics.checkNotNull(selectableToken3);
                                ((WalletSwapProcessView) getViewState()).showNotEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(companion.map(selectableToken3.getId()), this.swapProtocol, null, 4, null));
                            }
                        } else {
                            List<CryptoTokenApproveMetadata> list = this.approveTokensMetadata.get(getSelectedNetworkTypeBySwapSide$default(this, null, 1, null));
                            if (!(list != null && list.isEmpty())) {
                                z = true;
                                return (this.state instanceof SwapUiState.PrepareSwap) && z;
                            }
                            ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.wallet_swap_process_approve_info_not_loaded_yet_validation));
                            loadApproveTokensInfo(false, true);
                        }
                    }
                }
                ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.wallet_amount_enter_valid_amount_title));
            }
        }
        z = false;
        if (this.state instanceof SwapUiState.PrepareSwap) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean isValidForApprove() {
        /*
            r6 = this;
            com.iMe.model.wallet.crypto.swap.SwapUiState r0 = r6.state
            boolean r0 = r0 instanceof com.iMe.model.wallet.crypto.swap.SwapUiState.NeedApprove
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L54
            com.iMe.model.wallet.select.SelectableToken r0 = r6.inputToken
            if (r0 == 0) goto L54
            java.util.HashMap<com.iMe.storage.domain.model.crypto.NetworkType, java.util.List<com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata>> r0 = r6.approveTokensMetadata
            r3 = 0
            com.iMe.storage.domain.model.crypto.NetworkType r4 = getSelectedNetworkTypeBySwapSide$default(r6, r3, r1, r3)
            java.lang.Object r0 = r0.get(r4)
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L50
            boolean r4 = r0.isEmpty()
            if (r4 == 0) goto L23
        L21:
            r0 = r2
            goto L4c
        L23:
            java.util.Iterator r0 = r0.iterator()
        L27:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L21
            java.lang.Object r4 = r0.next()
            com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata r4 = (com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata) r4
            com.iMe.storage.domain.model.wallet.token.TokenCode r4 = r4.getTokenCode()
            java.lang.String r4 = r4.getName()
            com.iMe.model.wallet.select.SelectableToken r5 = r6.inputToken
            if (r5 == 0) goto L44
            java.lang.String r5 = r5.getId()
            goto L45
        L44:
            r5 = r3
        L45:
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L27
            r0 = r1
        L4c:
            if (r0 != r1) goto L50
            r0 = r1
            goto L51
        L50:
            r0 = r2
        L51:
            if (r0 == 0) goto L54
            goto L55
        L54:
            r1 = r2
        L55:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.swap.process.WalletSwapProcessPresenter.isValidForApprove():boolean");
    }

    private final boolean isValidForCryptoSwap() {
        return (this.state instanceof SwapUiState.Swap) && this.swapMetadata != null;
    }

    private final boolean isValidForBinanceSwap() {
        return (this.state instanceof SwapUiState.Swap) && this.binanceConvertQuote != null;
    }

    private final boolean isAvailableBalanceLessThanAmount(String str) {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            BinanceTokenBalanceInfo binanceTokenBalanceInfo = this.binanceTokenBalance;
            if (binanceTokenBalanceInfo != null) {
                Intrinsics.checkNotNull(binanceTokenBalanceInfo);
                if (binanceTokenBalanceInfo.getSpot().getTotal() < Double.parseDouble(str)) {
                    return true;
                }
            }
        } else if (!(screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto)) {
            throw new NoWhenBranchMatchedException();
        } else {
            TokenBalance tokenBalance = this.tokenBalance;
            if (tokenBalance != null) {
                Intrinsics.checkNotNull(tokenBalance);
                if (tokenBalance.getTotal() < Double.parseDouble(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    private final SelectableToken resolveToken(TokenCode tokenCode) {
        NetworkType selectedNetworkTypeBySwapSide$default;
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if ((screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) && ((WalletSwapProcessFragment.ScreenType.Crypto) screenType).getForcedNetworkType() != null) {
            selectedNetworkTypeBySwapSide$default = ((WalletSwapProcessFragment.ScreenType.Crypto) this.screenType).getForcedNetworkType();
        } else {
            selectedNetworkTypeBySwapSide$default = getSelectedNetworkTypeBySwapSide$default(this, null, 1, null);
        }
        if (tokenCode != null) {
            return SelectableMappingKt.mapToSelectable(TokenInfo.Companion.map(tokenCode), this.resourceManager, selectedNetworkTypeBySwapSide$default);
        }
        return null;
    }

    private final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3295R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3295R.string.common_cancel), 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void chooseSwapFee() {
        SwapFeeScreenArgs resolveSwapFeeScreenArgs = resolveSwapFeeScreenArgs();
        if (resolveSwapFeeScreenArgs != null) {
            ((WalletSwapProcessView) getViewState()).openSwapFeeScreen(resolveSwapFeeScreenArgs);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void checkMinMaxInputValues() {
        List<OutputConvertToken> second;
        if (this.outputToken == null || this.inputToken == null) {
            return;
        }
        Pair<String, ? extends List<OutputConvertToken>> pair = this.binanceAvailableOppositeSelectableSwapTokens;
        OutputConvertToken outputConvertToken = null;
        if (pair != null && (second = pair.getSecond()) != null) {
            Iterator<T> it = second.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                String asset = ((OutputConvertToken) next).getTokenInfo().getAsset();
                SelectableToken selectableToken = this.outputToken;
                if (Intrinsics.areEqual(asset, selectableToken != null ? selectableToken.getId() : null)) {
                    outputConvertToken = next;
                    break;
                }
            }
            outputConvertToken = outputConvertToken;
        }
        if (outputConvertToken != null) {
            SelectableToken selectableToken2 = this.inputToken;
            Intrinsics.checkNotNull(selectableToken2);
            ((WalletSwapProcessView) getViewState()).showMinMaxInputValues(selectableToken2, outputConvertToken);
        }
    }

    private final DialogModel getSwapConfirmationDialogModel() {
        String string;
        String string2 = this.resourceManager.getString(C3295R.string.wallet_swap_process_confirm_swap_alert_title);
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            ResourceManager resourceManager = this.resourceManager;
            int i = C3295R.string.wallet_swap_process_confirm_swap_alert_description;
            Object[] objArr = new Object[4];
            BinanceConvertQuote binanceConvertQuote = this.binanceConvertQuote;
            Number valueOf = binanceConvertQuote != null ? Double.valueOf(binanceConvertQuote.getInputAmount()) : 0;
            TokenInfo.Crypto.Ethereum.BNB bnb = TokenInfo.Crypto.Ethereum.BNB.INSTANCE;
            objArr[0] = BalanceFormatter.formatBalance(valueOf, bnb.getDecimals());
            BinanceConvertQuote binanceConvertQuote2 = this.binanceConvertQuote;
            String inputTokenShortName = binanceConvertQuote2 != null ? binanceConvertQuote2.getInputTokenShortName() : null;
            if (inputTokenShortName == null) {
                inputTokenShortName = "";
            }
            objArr[1] = inputTokenShortName;
            BinanceConvertQuote binanceConvertQuote3 = this.binanceConvertQuote;
            objArr[2] = BalanceFormatter.formatBalance(binanceConvertQuote3 != null ? Double.valueOf(binanceConvertQuote3.getOutputAmount()) : 0, bnb.getDecimals());
            BinanceConvertQuote binanceConvertQuote4 = this.binanceConvertQuote;
            String outputTokenShortName = binanceConvertQuote4 != null ? binanceConvertQuote4.getOutputTokenShortName() : null;
            objArr[3] = outputTokenShortName != null ? outputTokenShortName : "";
            string = resourceManager.getString(i, objArr);
        } else if (!(screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto)) {
            throw new NoWhenBranchMatchedException();
        } else {
            ResourceManager resourceManager2 = this.resourceManager;
            int i2 = C3295R.string.wallet_swap_process_confirm_swap_alert_description;
            CryptoSwapMetadata cryptoSwapMetadata = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata);
            BigDecimal amountIn = cryptoSwapMetadata.getAmountIn();
            CryptoSwapMetadata cryptoSwapMetadata2 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata2);
            ResourceManager resourceManager3 = this.resourceManager;
            CryptoSwapMetadata cryptoSwapMetadata3 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata3);
            CryptoSwapMetadata cryptoSwapMetadata4 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata4);
            BigDecimal amountOut = cryptoSwapMetadata4.getAmountOut();
            CryptoSwapMetadata cryptoSwapMetadata5 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata5);
            ResourceManager resourceManager4 = this.resourceManager;
            CryptoSwapMetadata cryptoSwapMetadata6 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata6);
            string = resourceManager2.getString(i2, BalanceFormatter.formatBalance(amountIn, cryptoSwapMetadata2.getInputTokenInfo().getDecimals()), resourceManager3.getString(cryptoSwapMetadata3.getInputTokenInfo().getShortName()), BalanceFormatter.formatBalance(amountOut, cryptoSwapMetadata5.getOutputTokenInfo().getDecimals()), resourceManager4.getString(cryptoSwapMetadata6.getOutputTokenInfo().getShortName()));
        }
        return new DialogModel(string2, string, this.resourceManager.getString(C3295R.string.common_cancel), this.resourceManager.getString(C3295R.string.wallet_swap_process_confirm_swap_alert_action));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String formatBinanceBalance(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        return this.resourceManager.getString(C3295R.string.binance_convert_balance, BinanceTokenBalanceExtKt.getSpotBalanceShortText(binanceTokenBalanceInfo), BinanceTokenBalanceExtKt.getMarginBalanceShortText(binanceTokenBalanceInfo));
    }

    /* compiled from: WalletSwapProcessPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startUpdatingApproveMetadataIfNeed(List<? extends CryptoTokenApproveMetadata> list, boolean z) {
        boolean z2;
        Disposable disposable;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (CryptoTokenApproveMetadata cryptoTokenApproveMetadata : list) {
                if (cryptoTokenApproveMetadata instanceof CryptoTokenApproveMetadata.InProgress) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        if (z2 && !z) {
            loadApproveTokensInfo$default(this, true, false, 2, null);
        } else if (!z2 && z && (disposable = this.loadApproveMetadataDisposable) != null) {
            disposable.dispose();
        }
    }
}
