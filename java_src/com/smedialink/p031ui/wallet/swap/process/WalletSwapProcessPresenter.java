package com.smedialink.p031ui.wallet.swap.process;

import com.smedialink.mapper.wallet.select.SelectableMappingKt;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.send.fee.GasPriceItem;
import com.smedialink.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.smedialink.model.wallet.crypto.swap.SwapUiState;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.select.SelectableType;
import com.smedialink.model.wallet.swap.SwapSide;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.custom.FeeView;
import com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.smedialink.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceConvertQuote;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenInfo;
import com.smedialink.storage.domain.model.binancepay.OutputConvertToken;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.TransactionParams;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.smedialink.storage.domain.model.crypto.swap.ApproveArgs;
import com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.smedialink.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.smedialink.storage.domain.model.crypto.swap.SwapArgs;
import com.smedialink.storage.domain.model.wallet.Hint;
import com.smedialink.storage.domain.model.wallet.swap.SwapDeadline;
import com.smedialink.storage.domain.model.wallet.swap.SwapMethod;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocol;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocolInfo;
import com.smedialink.storage.domain.model.wallet.swap.SwapSlippage;
import com.smedialink.storage.domain.model.wallet.swap.TradeType;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.storage.HintsPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.smedialink.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.formatter.BalanceFormatter;
import com.smedialink.utils.helper.wallet.SwapHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
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
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: WalletSwapProcessPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter */
/* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[SwapSide.values().length];
            iArr[SwapSide.INPUT.ordinal()] = 1;
            iArr[SwapSide.OUTPUT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[SwapProtocol.values().length];
            iArr2[SwapProtocol.SYMBIOSIS.ordinal()] = 1;
            iArr2[SwapProtocol.UNISWAP.ordinal()] = 2;
            iArr2[SwapProtocol.UNISWAP_V3.ordinal()] = 3;
            iArr2[SwapProtocol.ONEINCH.ordinal()] = 4;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAvailableOppositeSwapTokensBinance$lambda-24  reason: not valid java name */
    public static final void m1776loadAvailableOppositeSwapTokensBinance$lambda24() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAvailableSwapTokensBinance$lambda-20  reason: not valid java name */
    public static final void m1778loadAvailableSwapTokensBinance$lambda20() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAvailableSwapTokensCrypto$lambda-17  reason: not valid java name */
    public static final void m1780loadAvailableSwapTokensCrypto$lambda17() {
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
                loadAvailableOppositeSwapTokensBinance$default(this, token.getId(), false, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda5
                    @Override // org.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSwapProcessPresenter.m1782selectToken$lambda0(WalletSwapProcessPresenter.this);
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
    /* renamed from: selectToken$lambda-0  reason: not valid java name */
    public static final void m1782selectToken$lambda0(WalletSwapProcessPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkMinMaxInputValues();
    }

    public final void approve() {
        ApproveArgs resolveApproveArgs;
        if (isValidForApprove() && (resolveApproveArgs = resolveApproveArgs()) != null) {
            Observable<Result<String>> observeOn = this.swapInteractor.approveToken(resolveApproveArgs).observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "swapInteractor\n         …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        WalletSwapProcessPresenter.this.renderState(SwapUiState.ApproveInProgress.INSTANCE);
                        WalletSwapProcessPresenter.loadApproveTokensInfo$default(WalletSwapProcessPresenter.this, true, false, 2, null);
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showSuccessApproveAlert();
                    } else if (result instanceof Result.Error) {
                        WalletSwapProcessPresenter.this.handleSwapErrors((Result.Error) result);
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            });
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
            String id2 = selectableToken == null ? null : selectableToken.getId();
            if (id2 == null) {
                id2 = "";
            }
            SelectableToken selectableToken2 = this.outputToken;
            id = selectableToken2 != null ? selectableToken2.getId() : null;
            prepareForSwapBinance(amount, id2, id != null ? id : "");
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            SelectableToken selectableToken3 = this.inputToken;
            String id3 = selectableToken3 == null ? null : selectableToken3.getId();
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
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_swap_process_what_is_approve), this.resourceManager.getString(C3158R.string.wallet_swap_process_what_is_approve_dialog_description), null, this.resourceManager.getString(C3158R.string.common_ok), 4, null);
    }

    public final DialogModel getApproveConfirmationDialogModel() {
        String string = this.resourceManager.getString(C3158R.string.wallet_swap_process_confirm_approve_alert_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3158R.string.wallet_swap_process_confirm_approve_alert_description;
        Object[] objArr = new Object[1];
        SelectableToken selectableToken = this.inputToken;
        String ticker = selectableToken == null ? null : selectableToken.getTicker();
        if (ticker == null) {
            ticker = "";
        }
        objArr[0] = ticker;
        return new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_swap_process_confirm_approve_alert_action));
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
                    loadAvailableSwapTokensBinance(true, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda8
                        @Override // org.fork.utils.Callbacks$Callback
                        public final void invoke() {
                            WalletSwapProcessPresenter.m1783startSelectTokenDialog$lambda2(WalletSwapProcessPresenter.this, side);
                        }
                    });
                } else {
                    ((WalletSwapProcessView) getViewState()).openSelectTokenDialog(side, selectableToken2, getAvailableTokensByNetwork(networkType), networkType, SelectableType.BINANCE, true, new WalletSwapProcessPresenter$startSelectTokenDialog$2(this, side));
                }
            } else if (i == 2) {
                if (this.inputToken == null) {
                    ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_swap_process_give_token_validation));
                    return;
                }
                Pair<String, ? extends List<OutputConvertToken>> pair = this.binanceAvailableOppositeSelectableSwapTokens;
                String first = pair == null ? null : pair.getFirst();
                SelectableToken selectableToken3 = this.inputToken;
                if (Intrinsics.areEqual(first, selectableToken3 == null ? null : selectableToken3.getId())) {
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
                loadAvailableOppositeSwapTokensBinance(id, true, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda9
                    @Override // org.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSwapProcessPresenter.m1784startSelectTokenDialog$lambda4(WalletSwapProcessPresenter.this, side);
                    }
                });
            }
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            if (getAvailableTokensByNetwork(getSelectedNetworkTypeBySwapSide(side)).isEmpty()) {
                loadAvailableSwapTokensCrypto(side, true, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda7
                    @Override // org.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSwapProcessPresenter.m1785startSelectTokenDialog$lambda5(WalletSwapProcessPresenter.this, side);
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
                if (!Intrinsics.areEqual(((SelectableToken) obj).getId(), selectableToken == null ? null : selectableToken.getId())) {
                    arrayList3.add(obj);
                }
            }
            ((WalletSwapProcessView) getViewState()).openSelectTokenDialog(side, selectableToken2, arrayList3, selectedNetworkTypeBySwapSide, SelectableType.INTERNAL, side == SwapSide.INPUT, new WalletSwapProcessPresenter$startSelectTokenDialog$7(this, side));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startSelectTokenDialog$lambda-2  reason: not valid java name */
    public static final void m1783startSelectTokenDialog$lambda2(WalletSwapProcessPresenter this$0, SwapSide side) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(side, "$side");
        this$0.startSelectTokenDialog(side);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startSelectTokenDialog$lambda-4  reason: not valid java name */
    public static final void m1784startSelectTokenDialog$lambda4(WalletSwapProcessPresenter this$0, SwapSide side) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(side, "$side");
        this$0.startSelectTokenDialog(side);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startSelectTokenDialog$lambda-5  reason: not valid java name */
    public static final void m1785startSelectTokenDialog$lambda5(WalletSwapProcessPresenter this$0, SwapSide side) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(side, "$side");
        this$0.startSelectTokenDialog(side);
    }

    public final void startSwapFlow() {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            swapBinance();
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            ((WalletSwapProcessView) getViewState()).showSwapConfirmationDialog(getSwapConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda6
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSwapProcessPresenter.m1786startSwapFlow$lambda7(WalletSwapProcessPresenter.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startSwapFlow$lambda-7  reason: not valid java name */
    public static final void m1786startSwapFlow$lambda7(WalletSwapProcessPresenter this$0) {
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
            ((WalletSwapProcessView) getViewState()).setupScreenForSwap(this.resourceManager.getString(C3158R.string.binance_convert_toolbar_title), this.resourceManager.getString(C3158R.string.binance_convert_description), C3158R.C3160drawable.fork_ic_bnb_logo, false, WalletSwapProcessFragment.NetworkSwitchType.GLOBAL);
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
                return TuplesKt.m100to(networkSwitchType, Boolean.valueOf(((screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) && ((WalletSwapProcessFragment.ScreenType.Crypto) screenType).getForcedNetworkType() == null) ? false : false));
            }
            return TuplesKt.m100to(WalletSwapProcessFragment.NetworkSwitchType.GLOBAL, Boolean.FALSE);
        }
        return TuplesKt.m100to(WalletSwapProcessFragment.NetworkSwitchType.CROSS_CHAIN, Boolean.TRUE);
    }

    private final void swapCrypto() {
        SwapArgs resolveSwapArgs;
        if (isValidForCryptoSwap() && (resolveSwapArgs = resolveSwapArgs()) != null) {
            Observable<Result<String>> observeOn = this.swapInteractor.swap(resolveSwapArgs).observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "swapInteractor\n         …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        WalletSwapProcessPresenter.loadApproveTokensInfo$default(WalletSwapProcessPresenter.this, false, false, 2, null);
                        WalletSwapProcessPresenter.this.resetStateTo(SwapUiState.Idle.INSTANCE);
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showSuccessSwapAlert();
                    } else if (result instanceof Result.Error) {
                        WalletSwapProcessPresenter.this.handleSwapErrors((Result.Error) result);
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void swapBinance() {
        if (isValidForBinanceSwap()) {
            BinanceInternalInteractor binanceInternalInteractor = this.binanceInternalInteractor;
            BinanceConvertQuote binanceConvertQuote = this.binanceConvertQuote;
            String quoteId = binanceConvertQuote == null ? null : binanceConvertQuote.getQuoteId();
            if (quoteId == null) {
                quoteId = "";
            }
            Observable<Result<Boolean>> observeOn = binanceInternalInteractor.confirmConvertQuote(quoteId).observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        WalletSwapProcessPresenter.this.resetStateTo(SwapUiState.Idle.INSTANCE);
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showSuccessSwapAlert();
                    } else if (result instanceof Result.Error) {
                        WalletSwapProcessPresenter.this.handleSwapErrors((Result.Error) result);
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void prepareForSwapBinance(String str, String str2, String str3) {
        if (isValidForPrepareSwap(str)) {
            Observable<Result<BinanceConvertQuote>> observeOn = this.binanceInternalInteractor.getConvertQuote(str2, str3, str).observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        Result.Success success = (Result.Success) result;
                        WalletSwapProcessPresenter.this.binanceConvertQuote = (BinanceConvertQuote) success.getData();
                        WalletSwapProcessPresenter.this.renderState(new SwapUiState.Swap.Binance((BinanceConvertQuote) success.getData()));
                    } else if (result instanceof Result.Error) {
                        WalletSwapProcessPresenter.this.handleSwapErrors((Result.Error) result);
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void prepareForSwapCrypto(String str, String str2, String str3, SwapProtocol swapProtocol) {
        if (isValidForPrepareSwap(str)) {
            SwapInteractor swapInteractor = this.swapInteractor;
            TokenCode.Companion companion = TokenCode.Companion;
            Observable<Result<CryptoSwapMetadata>> observeOn = swapInteractor.getQuoteToSwap(companion.map(str2), companion.map(str3), str, TradeType.EXACT_INPUT, SwapSlippage.PERCENT_5.getPercent(), getSelectedNetworkTypeBySwapSide(SwapSide.INPUT), getSelectedNetworkTypeBySwapSide(SwapSide.OUTPUT), swapProtocol).observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "swapInteractor\n         …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    FeeView.ChooseFeeType swapFeeType;
                    CryptoSwapMetadata cryptoSwapMetadata;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        Result.Success success = (Result.Success) result;
                        WalletSwapProcessPresenter.this.swapMetadata = (CryptoSwapMetadata) success.getData();
                        WalletSwapProcessPresenter.this.selectedSwapFee = new GasPriceItem(TransactionSpeedLevel.MEDIUM, TokenInfo.Companion.map(((CryptoSwapMetadata) success.getData()).getFeeTokenCode()), ((CryptoSwapMetadata) success.getData()).getTransactionParams().getMedium());
                        WalletSwapProcessPresenter walletSwapProcessPresenter = WalletSwapProcessPresenter.this;
                        swapFeeType = walletSwapProcessPresenter.getSwapFeeType();
                        cryptoSwapMetadata = WalletSwapProcessPresenter.this.swapMetadata;
                        Intrinsics.checkNotNull(cryptoSwapMetadata);
                        walletSwapProcessPresenter.renderState(new SwapUiState.Swap.Crypto(swapFeeType, cryptoSwapMetadata));
                    } else if (result instanceof Result.Error) {
                        WalletSwapProcessPresenter.this.handleSwapErrors((Result.Error) result);
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            });
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

    private final void loadBalanceBinance(final SelectableToken selectableToken) {
        Observable<Result<List<BinanceTokenBalanceInfo>>> observeOn = this.binanceInternalInteractor.getUserBalance().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                String formatBinanceBalance;
                T t;
                BinanceTokenBalanceInfo binanceTokenBalanceInfo;
                BinanceTokenBalanceInfo binanceTokenBalanceInfo2;
                String formatBinanceBalance2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    WalletSwapProcessPresenter walletSwapProcessPresenter = WalletSwapProcessPresenter.this;
                    Iterator<T> it2 = ((Iterable) ((Result.Success) result).getData()).iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            t = null;
                            break;
                        }
                        t = it2.next();
                        if (Intrinsics.areEqual(((BinanceTokenBalanceInfo) t).getAsset(), selectableToken.getId())) {
                            break;
                        }
                    }
                    walletSwapProcessPresenter.binanceTokenBalance = (BinanceTokenBalanceInfo) t;
                    binanceTokenBalanceInfo = WalletSwapProcessPresenter.this.binanceTokenBalance;
                    if (binanceTokenBalanceInfo != null) {
                        WalletSwapProcessPresenter walletSwapProcessPresenter2 = WalletSwapProcessPresenter.this;
                        binanceTokenBalanceInfo2 = walletSwapProcessPresenter2.binanceTokenBalance;
                        Intrinsics.checkNotNull(binanceTokenBalanceInfo2);
                        formatBinanceBalance2 = walletSwapProcessPresenter2.formatBinanceBalance(binanceTokenBalanceInfo2);
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showTokenBalance(formatBinanceBalance2);
                    }
                } else if (result instanceof Result.Loading) {
                    formatBinanceBalance = WalletSwapProcessPresenter.this.formatBinanceBalance(BinanceTokenBalanceInfo.Companion.createEmptyBalanceFor(selectableToken.getTicker()));
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showTokenBalance(formatBinanceBalance);
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletSwapProcessPresenter.this.resourceManager;
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadBalanceCrypto(final TokenCode tokenCode) {
        Observable observeOn = WalletInteractor.getTokenBalance$default(this.walletInteractor, tokenCode, false, getSelectedNetworkTypeBySwapSide$default(this, null, 1, null), 2, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                ResourceManager resourceManager4;
                ResourceManager resourceManager5;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    WalletSwapProcessPresenter.this.tokenBalance = (TokenBalance) success.getData();
                    resourceManager4 = WalletSwapProcessPresenter.this.resourceManager;
                    int i = C3158R.string.wallet_swap_process_my_balance;
                    resourceManager5 = WalletSwapProcessPresenter.this.resourceManager;
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showTokenBalance(resourceManager4.getString(i, TokenBalanceExtKt.getTotalBalanceShortText((TokenBalance) success.getData(), resourceManager5)));
                } else if (result instanceof Result.Loading) {
                    resourceManager2 = WalletSwapProcessPresenter.this.resourceManager;
                    int i2 = C3158R.string.wallet_swap_process_my_balance;
                    TokenBalance createEmptyBalanceFor = TokenBalance.Companion.createEmptyBalanceFor(TokenInfo.Companion.map(tokenCode));
                    resourceManager3 = WalletSwapProcessPresenter.this.resourceManager;
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showTokenBalance(resourceManager2.getString(i2, TokenBalanceExtKt.getTotalBalanceShortText(createEmptyBalanceFor, resourceManager3)));
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletSwapProcessPresenter.this.resourceManager;
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
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
            callbacks$Callback = WalletSwapProcessPresenter$$ExternalSyntheticLambda12.INSTANCE;
        }
        walletSwapProcessPresenter.loadAvailableSwapTokensCrypto(swapSide, z, callbacks$Callback);
    }

    private final void loadAvailableSwapTokensCrypto(SwapSide swapSide, final boolean z, final Callbacks$Callback callbacks$Callback) {
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            final NetworkType selectedNetworkTypeBySwapSide = getSelectedNetworkTypeBySwapSide(swapSide);
            Observable<R> compose = this.swapInteractor.getAvailableTokensToSwap(selectedNetworkTypeBySwapSide, this.swapProtocol).observeOn(this.schedulersProvider.mo707ui()).compose(new ObservableTransformer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda2
                @Override // io.reactivex.ObservableTransformer
                public final ObservableSource apply(Observable observable) {
                    ObservableSource m1781loadAvailableSwapTokensCrypto$lambda18;
                    m1781loadAvailableSwapTokensCrypto$lambda18 = WalletSwapProcessPresenter.m1781loadAvailableSwapTokensCrypto$lambda18(z, this, observable);
                    return m1781loadAvailableSwapTokensCrypto$lambda18;
                }
            });
            Intrinsics.checkNotNullExpressionValue(compose, "swapInteractor\n         …ervable\n                }");
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = compose.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    ResourceManager resourceManager;
                    HashMap hashMap;
                    ResourceManager resourceManager2;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        hashMap = WalletSwapProcessPresenter.this.selectableSupportedSwapTokens;
                        resourceManager2 = WalletSwapProcessPresenter.this.resourceManager;
                        hashMap.put(selectedNetworkTypeBySwapSide, SelectableMappingKt.mapToSelectable((List) ((Result.Success) result).getData(), resourceManager2, selectedNetworkTypeBySwapSide));
                        callbacks$Callback.invoke();
                    } else if (result instanceof Result.Error) {
                        ErrorModel error = ((Result.Error) result).getError();
                        resourceManager = WalletSwapProcessPresenter.this.resourceManager;
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAvailableSwapTokensCrypto$lambda-18  reason: not valid java name */
    public static final ObservableSource m1781loadAvailableSwapTokensCrypto$lambda18(boolean z, WalletSwapProcessPresenter this$0, Observable observable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(observable, "observable");
        if (z) {
            T viewState = this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            return RxExtKt.withLoadingDialog$default(observable, (BaseView) viewState, false, 2, (Object) null);
        }
        return observable;
    }

    static /* synthetic */ void loadAvailableSwapTokensBinance$default(WalletSwapProcessPresenter walletSwapProcessPresenter, boolean z, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            callbacks$Callback = WalletSwapProcessPresenter$$ExternalSyntheticLambda11.INSTANCE;
        }
        walletSwapProcessPresenter.loadAvailableSwapTokensBinance(z, callbacks$Callback);
    }

    private final void loadAvailableSwapTokensBinance(final boolean z, final Callbacks$Callback callbacks$Callback) {
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            Observable<R> compose = this.binanceInternalInteractor.getTokensForConvert().observeOn(this.schedulersProvider.mo707ui()).compose(new ObservableTransformer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda0
                @Override // io.reactivex.ObservableTransformer
                public final ObservableSource apply(Observable observable) {
                    ObservableSource m1779loadAvailableSwapTokensBinance$lambda21;
                    m1779loadAvailableSwapTokensBinance$lambda21 = WalletSwapProcessPresenter.m1779loadAvailableSwapTokensBinance$lambda21(z, this, observable);
                    return m1779loadAvailableSwapTokensBinance$lambda21;
                }
            });
            Intrinsics.checkNotNullExpressionValue(compose, "binanceInternalInteracto…ervable\n                }");
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = compose.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    ResourceManager resourceManager;
                    HashMap hashMap;
                    int collectionSizeOrDefault;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        hashMap = WalletSwapProcessPresenter.this.selectableSupportedSwapTokens;
                        NetworkType networkType = NetworkType.BINANCE_SMART_CHAIN;
                        Iterable<BinanceTokenInfo> iterable = (Iterable) ((Result.Success) result).getData();
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                        for (BinanceTokenInfo binanceTokenInfo : iterable) {
                            arrayList.add(SelectableMappingKt.mapToSelectable(binanceTokenInfo));
                        }
                        hashMap.put(networkType, arrayList);
                        callbacks$Callback.invoke();
                    } else if (result instanceof Result.Error) {
                        ErrorModel error = ((Result.Error) result).getError();
                        resourceManager = WalletSwapProcessPresenter.this.resourceManager;
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAvailableSwapTokensBinance$lambda-21  reason: not valid java name */
    public static final ObservableSource m1779loadAvailableSwapTokensBinance$lambda21(boolean z, WalletSwapProcessPresenter this$0, Observable observable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(observable, "observable");
        if (z) {
            T viewState = this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            return RxExtKt.withLoadingDialog$default(observable, (BaseView) viewState, false, 2, (Object) null);
        }
        return observable;
    }

    static /* synthetic */ void loadAvailableOppositeSwapTokensBinance$default(WalletSwapProcessPresenter walletSwapProcessPresenter, String str, boolean z, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            callbacks$Callback = WalletSwapProcessPresenter$$ExternalSyntheticLambda10.INSTANCE;
        }
        walletSwapProcessPresenter.loadAvailableOppositeSwapTokensBinance(str, z, callbacks$Callback);
    }

    private final void loadAvailableOppositeSwapTokensBinance(final String str, final boolean z, final Callbacks$Callback callbacks$Callback) {
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            Observable<R> compose = this.binanceInternalInteractor.getOppositeTokensForConvertByToken(str).observeOn(this.schedulersProvider.mo707ui()).compose(new ObservableTransformer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda1
                @Override // io.reactivex.ObservableTransformer
                public final ObservableSource apply(Observable observable) {
                    ObservableSource m1777loadAvailableOppositeSwapTokensBinance$lambda25;
                    m1777loadAvailableOppositeSwapTokensBinance$lambda25 = WalletSwapProcessPresenter.m1777loadAvailableOppositeSwapTokensBinance$lambda25(z, this, observable);
                    return m1777loadAvailableOppositeSwapTokensBinance$lambda25;
                }
            });
            Intrinsics.checkNotNullExpressionValue(compose, "binanceInternalInteracto…ervable\n                }");
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = compose.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    ResourceManager resourceManager;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        WalletSwapProcessPresenter.this.binanceAvailableOppositeSelectableSwapTokens = TuplesKt.m100to(str, ((Result.Success) result).getData());
                        callbacks$Callback.invoke();
                    } else if (result instanceof Result.Error) {
                        ErrorModel error = ((Result.Error) result).getError();
                        resourceManager = WalletSwapProcessPresenter.this.resourceManager;
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAvailableOppositeSwapTokensBinance$lambda-25  reason: not valid java name */
    public static final ObservableSource m1777loadAvailableOppositeSwapTokensBinance$lambda25(boolean z, WalletSwapProcessPresenter this$0, Observable observable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(observable, "observable");
        if (z) {
            T viewState = this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            return RxExtKt.withLoadingDialog$default(observable, (BaseView) viewState, false, 2, (Object) null);
        }
        return observable;
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

    private final void loadApproveTokensInfo(final boolean z, final boolean z2) {
        Observable<Long> just;
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            if (z) {
                just = Observable.interval(30L, TimeUnit.SECONDS);
            } else {
                just = Observable.just(Boolean.TRUE);
            }
            final NetworkType selectedNetworkTypeBySwapSide$default = getSelectedNetworkTypeBySwapSide$default(this, null, 1, null);
            final WalletSwapProcessPresenter$loadApproveTokensInfo$1 walletSwapProcessPresenter$loadApproveTokensInfo$1 = new WalletSwapProcessPresenter$loadApproveTokensInfo$1(this, selectedNetworkTypeBySwapSide$default);
            Observable doFinally = just.flatMap(new Function() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource m1774loadApproveTokensInfo$lambda27;
                    m1774loadApproveTokensInfo$lambda27 = WalletSwapProcessPresenter.m1774loadApproveTokensInfo$lambda27(Function1.this, obj);
                    return m1774loadApproveTokensInfo$lambda27;
                }
            }).observeOn(this.schedulersProvider.mo707ui()).doFinally(new Action() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Action
                public final void run() {
                    WalletSwapProcessPresenter.m1775loadApproveTokensInfo$lambda28(z2, this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally, "private fun loadApproveT…}\n                }\n    }");
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = doFinally.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    HashMap hashMap;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        hashMap = WalletSwapProcessPresenter.this.approveTokensMetadata;
                        Result.Success success = (Result.Success) result;
                        hashMap.put(selectedNetworkTypeBySwapSide$default, success.getData());
                        WalletSwapProcessPresenter.this.checkSelectedTokenApprove();
                        WalletSwapProcessPresenter.this.startUpdatingApproveMetadataIfNeed((List) success.getData(), z);
                    } else if ((result instanceof Result.Loading) && z2) {
                        T viewState = WalletSwapProcessPresenter.this.getViewState();
                        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                        BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState, true, false, null, 4, null);
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            this.loadApproveMetadataDisposable = subscribe;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadApproveTokensInfo$lambda-27  reason: not valid java name */
    public static final ObservableSource m1774loadApproveTokensInfo$lambda27(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadApproveTokensInfo$lambda-28  reason: not valid java name */
    public static final void m1775loadApproveTokensInfo$lambda28(boolean z, WalletSwapProcessPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            T viewState = this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState, false, false, null, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSwapErrors(Result.Error<?> error) {
        IErrorStatus status = error.getError().getStatus();
        boolean z = true;
        if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT) {
            ((WalletSwapProcessView) getViewState()).showToast(error.getError().getMessage(this.resourceManager));
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
                ((WalletSwapProcessView) getViewState()).showToast(error.getError().getMessage(this.resourceManager));
                resetStateTo(SwapUiState.Idle.INSTANCE);
                return;
            }
            if (status != FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG && status != FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_QUOTE_NOT_FOUND) {
                z = false;
            }
            if (z) {
                ((WalletSwapProcessView) getViewState()).showToast(error.getError().getMessage(this.resourceManager));
                resetStateIfNeed();
                return;
            }
            ((WalletSwapProcessView) getViewState()).showToast(error.getError().getMessage(this.resourceManager));
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
                    if (Intrinsics.areEqual(name, selectableToken == null ? null : selectableToken.getId())) {
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
        Object obj;
        CryptoTokenApproveMetadata cryptoTokenApproveMetadata;
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            TokenCode.Companion companion = TokenCode.Companion;
            SelectableToken selectableToken = this.inputToken;
            String id = selectableToken == null ? null : selectableToken.getId();
            if (id == null) {
                id = "";
            }
            TokenCode map = companion.map(id);
            if (!map.isCryptoTokens() || map == getSelectedNetworkTypeBySwapSide$default(this, null, 1, null).getNativeToken()) {
                return null;
            }
            List<CryptoTokenApproveMetadata> list = this.approveTokensMetadata.get(getSelectedNetworkTypeBySwapSide$default(this, null, 1, null));
            if (list == null) {
                cryptoTokenApproveMetadata = null;
            } else {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    String name = ((CryptoTokenApproveMetadata) obj).getTokenCode().getName();
                    SelectableToken selectableToken2 = this.inputToken;
                    if (Intrinsics.areEqual(name, selectableToken2 == null ? null : selectableToken2.getId())) {
                        break;
                    }
                }
                cryptoTokenApproveMetadata = (CryptoTokenApproveMetadata) obj;
            }
            if (cryptoTokenApproveMetadata instanceof CryptoTokenApproveMetadata.NeedApprove) {
                TokenInfo.Crypto.Ethereum ethereum = (TokenInfo.Crypto.Ethereum) TokenInfo.Companion.map(map);
                Wallet wallet = this.accessManager.getWallet(this.cryptoPreferenceHelper.getCurrentBlockchainType());
                String address = wallet == null ? null : wallet.getAddress();
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
            String id = selectableToken == null ? null : selectableToken.getId();
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
            TokenInfo.Crypto.Ethereum ethereum = (TokenInfo.Crypto.Ethereum) cryptoSwapMetadata3.getInputTokenInfo();
            CryptoSwapMetadata cryptoSwapMetadata4 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata4);
            TokenInfo.Crypto.Ethereum ethereum2 = (TokenInfo.Crypto.Ethereum) cryptoSwapMetadata4.getOutputTokenInfo();
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
        TransactionParams transactionParams = needApprove.getTransactionParams();
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
            ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_swap_process_give_token_validation));
        } else {
            SelectableToken selectableToken2 = this.outputToken;
            if (selectableToken2 == null) {
                ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_swap_process_receive_token_amount_validation));
            } else if (Intrinsics.areEqual(selectableToken, selectableToken2)) {
                ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_swap_process_diff_tokens_validation));
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
                            ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_swap_process_approve_info_not_loaded_yet_validation));
                            loadApproveTokensInfo(false, true);
                        }
                    }
                }
                ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_amount_enter_valid_amount_title));
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
            com.smedialink.model.wallet.crypto.swap.SwapUiState r0 = r6.state
            boolean r0 = r0 instanceof com.smedialink.model.wallet.crypto.swap.SwapUiState.NeedApprove
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L54
            com.smedialink.model.wallet.select.SelectableToken r0 = r6.inputToken
            if (r0 == 0) goto L54
            java.util.HashMap<com.smedialink.storage.domain.model.crypto.NetworkType, java.util.List<com.smedialink.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata>> r0 = r6.approveTokensMetadata
            r3 = 0
            com.smedialink.storage.domain.model.crypto.NetworkType r4 = getSelectedNetworkTypeBySwapSide$default(r6, r3, r1, r3)
            java.lang.Object r0 = r0.get(r4)
            java.util.List r0 = (java.util.List) r0
            if (r0 != 0) goto L1d
        L1b:
            r0 = 0
            goto L51
        L1d:
            boolean r4 = r0.isEmpty()
            if (r4 == 0) goto L25
        L23:
            r0 = 0
            goto L4e
        L25:
            java.util.Iterator r0 = r0.iterator()
        L29:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L23
            java.lang.Object r4 = r0.next()
            com.smedialink.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata r4 = (com.smedialink.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata) r4
            com.smedialink.storage.domain.model.wallet.token.TokenCode r4 = r4.getTokenCode()
            java.lang.String r4 = r4.getName()
            com.smedialink.model.wallet.select.SelectableToken r5 = r6.inputToken
            if (r5 != 0) goto L43
            r5 = r3
            goto L47
        L43:
            java.lang.String r5 = r5.getId()
        L47:
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L29
            r0 = 1
        L4e:
            if (r0 != r1) goto L1b
            r0 = 1
        L51:
            if (r0 == 0) goto L54
            goto L55
        L54:
            r1 = 0
        L55:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessPresenter.isValidForApprove():boolean");
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
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3158R.string.common_cancel), 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void chooseSwapFee() {
        SwapFeeScreenArgs resolveSwapFeeScreenArgs = resolveSwapFeeScreenArgs();
        if (resolveSwapFeeScreenArgs == null) {
            return;
        }
        ((WalletSwapProcessView) getViewState()).openSwapFeeScreen(resolveSwapFeeScreenArgs);
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
                if (Intrinsics.areEqual(asset, selectableToken == null ? null : selectableToken.getId())) {
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
        String string2 = this.resourceManager.getString(C3158R.string.wallet_swap_process_confirm_swap_alert_title);
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            ResourceManager resourceManager = this.resourceManager;
            int i = C3158R.string.wallet_swap_process_confirm_swap_alert_description;
            Object[] objArr = new Object[4];
            BinanceConvertQuote binanceConvertQuote = this.binanceConvertQuote;
            Number valueOf = binanceConvertQuote == null ? 0 : Double.valueOf(binanceConvertQuote.getInputAmount());
            TokenInfo.Crypto.Ethereum.BNB bnb = TokenInfo.Crypto.Ethereum.BNB.INSTANCE;
            objArr[0] = BalanceFormatter.formatBalance(valueOf, bnb.getDecimals());
            BinanceConvertQuote binanceConvertQuote2 = this.binanceConvertQuote;
            String inputTokenShortName = binanceConvertQuote2 == null ? null : binanceConvertQuote2.getInputTokenShortName();
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
            int i2 = C3158R.string.wallet_swap_process_confirm_swap_alert_description;
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
        return new DialogModel(string2, string, this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_swap_process_confirm_swap_alert_action));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String formatBinanceBalance(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        return this.resourceManager.getString(C3158R.string.binance_convert_balance, BinanceTokenBalanceExtKt.getSpotBalanceShortText(binanceTokenBalanceInfo), BinanceTokenBalanceExtKt.getMarginBalanceShortText(binanceTokenBalanceInfo));
    }

    /* compiled from: WalletSwapProcessPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$Companion */
    /* loaded from: classes3.dex */
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
