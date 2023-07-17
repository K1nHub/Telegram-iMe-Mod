package com.iMe.p031ui.wallet.swap.process;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.model.wallet.crypto.swap.SwapUiState;
import com.iMe.model.wallet.swap.SwapSide;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
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
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.crypto.swap.ApproveArgs;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.model.wallet.swap.SwapDeadline;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import com.iMe.storage.domain.model.wallet.swap.SwapSlippage;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
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
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
/* compiled from: WalletSwapProcessPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter */
/* loaded from: classes4.dex */
public final class WalletSwapProcessPresenter extends BasePresenter<WalletSwapProcessView> {
    private final CryptoAccessManager accessManager;
    private CryptoTokenApproveMetadata.NeedApprove approveMetadata;
    private HashMap<String, List<CryptoTokenApproveMetadata>> approveTokensMetadata;
    private List<Network> availableNetworks;
    private Pair<String, ? extends List<OutputConvertToken>> binanceAvailableOppositeSelectableSwapTokens;
    private BinanceConvertQuote binanceConvertQuote;
    private final BinanceInternalInteractor binanceInternalInteractor;
    private BinanceTokenBalanceInfo binanceTokenBalance;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final HintsPreferenceHelper hintsPreferenceHelper;
    private TokenDetailed inputToken;
    private Disposable loadApproveMetadataDisposable;
    private TokenDetailed outputToken;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final WalletSwapProcessFragment.ScreenType screenType;
    private HashMap<String, List<TokenDetailed>> selectableSupportedSwapTokens;
    private GasPriceItem selectedApproveFee;
    private SwapDeadline selectedDeadline;
    private String selectedInputNetworkId;
    private String selectedOutputNetworkId;
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
                iArr2[SwapProtocol.UNISWAP.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[SwapProtocol.UNISWAP_V3.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[SwapProtocol.ONEINCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[SwapProtocol.SYMBIOSIS.ordinal()] = 4;
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

    public WalletSwapProcessPresenter(WalletSwapProcessFragment.ScreenType screenType, WalletInteractor walletInteractor, BinanceInternalInteractor binanceInternalInteractor, SwapInteractor swapInteractor, SchedulersProvider schedulersProvider, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoAccessManager accessManager, ResourceManager resourceManager, HintsPreferenceHelper hintsPreferenceHelper) {
        List<Network> emptyList;
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
        this.selectedInputNetworkId = NetworksHelper.getBSCNetwork().getId();
        this.selectedOutputNetworkId = NetworksHelper.getBSCNetwork().getId();
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
        ((WalletSwapProcessView) getViewState()).showChooseNetworkDialog(NetworksHelper.getNetworkById(getSelectedNetworkIdBySwapSide(side)), this.availableNetworks, new WalletSwapProcessPresenter$startChooseNetworkDialog$1(side, this));
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

    public final void selectToken(SwapSide side, TokenDetailed token) {
        boolean z;
        Intrinsics.checkNotNullParameter(side, "side");
        Intrinsics.checkNotNullParameter(token, "token");
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            int i = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
            if (i == 1) {
                this.inputToken = token;
                ((WalletSwapProcessView) getViewState()).onTokenSelected(side, token, TokenDetailed.Companion.getBNB().getDecimals());
                loadAvailableOppositeSwapTokensBinance$default(this, token.getTicker(), false, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda1
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSwapProcessPresenter.selectToken$lambda$0(WalletSwapProcessPresenter.this);
                    }
                }, 2, null);
                loadBalance(token);
            } else if (i == 2) {
                this.outputToken = token;
                if (this.inputToken != null) {
                    ((WalletSwapProcessView) getViewState()).onTokenSelected(side, token, TokenDetailed.Companion.getBNB().getDecimals());
                    checkMinMaxInputValues();
                }
            }
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
            if (i2 == 1) {
                this.inputToken = token;
                ((WalletSwapProcessView) getViewState()).onTokenSelected(side, token, token.getDecimals());
                loadBalance(token);
                List<CryptoTokenApproveMetadata> list = this.approveTokensMetadata.get(this.selectedInputNetworkId);
                if (list == null) {
                    list = CollectionsKt__CollectionsKt.emptyList();
                }
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (CryptoTokenApproveMetadata cryptoTokenApproveMetadata : list) {
                        if (Intrinsics.areEqual(cryptoTokenApproveMetadata.getToken().getAddress(), token.getAddress())) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (z || token.isCoin()) {
                    checkSelectedTokenApprove();
                } else {
                    loadApproveTokensInfo(false, true, TokenExtKt.toIndexedToken(token));
                }
            } else if (i2 == 2) {
                this.outputToken = token;
                ((WalletSwapProcessView) getViewState()).onTokenSelected(side, token, token.getDecimals());
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
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2422x8810b3d1(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2423x8810b3d2((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    public final void prepareForSwap(String amount) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (!(screenType instanceof WalletSwapProcessFragment.ScreenType.Binance)) {
            if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
                prepareForSwapCrypto(amount, this.inputToken, this.outputToken, this.swapProtocol);
                return;
            }
            return;
        }
        TokenDetailed tokenDetailed = this.inputToken;
        String ticker = tokenDetailed != null ? tokenDetailed.getTicker() : null;
        if (ticker == null) {
            ticker = "";
        }
        TokenDetailed tokenDetailed2 = this.outputToken;
        String ticker2 = tokenDetailed2 != null ? tokenDetailed2.getTicker() : null;
        prepareForSwapBinance(amount, ticker, ticker2 != null ? ticker2 : "");
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
        return new DialogModel(this.resourceManager.getString(C3417R.string.wallet_swap_process_what_is_approve), this.resourceManager.getString(C3417R.string.wallet_swap_process_what_is_approve_dialog_description), null, this.resourceManager.getString(C3417R.string.common_ok), 4, null);
    }

    public final DialogModel getApproveConfirmationDialogModel() {
        String string = this.resourceManager.getString(C3417R.string.wallet_swap_process_confirm_approve_alert_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3417R.string.wallet_swap_process_confirm_approve_alert_description;
        Object[] objArr = new Object[1];
        TokenDetailed tokenDetailed = this.inputToken;
        String ticker = tokenDetailed != null ? tokenDetailed.getTicker() : null;
        if (ticker == null) {
            ticker = "";
        }
        objArr[0] = ticker;
        return new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(C3417R.string.wallet_swap_process_confirm_approve_alert_action));
    }

    public final void startSelectTokenDialog(final SwapSide side) {
        TransactionDirection transactionDirection;
        List<OutputConvertToken> second;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(side, "side");
        SwapSide swapSide = SwapSide.INPUT;
        TokenDetailed tokenDetailed = side == swapSide ? this.inputToken : this.outputToken;
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        TokenDetailed tokenDetailed2 = null;
        r5 = null;
        List list = null;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            int i = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
            if (i == 1) {
                if (getAvailableTokensByNetwork(NetworksHelper.getBSCNetwork().getId()).isEmpty()) {
                    loadAvailableSwapTokensBinance(true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda3
                        @Override // com.iMe.fork.utils.Callbacks$Callback
                        public final void invoke() {
                            WalletSwapProcessPresenter.startSelectTokenDialog$lambda$3(WalletSwapProcessPresenter.this, side);
                        }
                    });
                } else {
                    ((WalletSwapProcessView) getViewState()).openSelectTokenDialog(tokenDetailed, new WalletSelectTokenFragment.ScreenType.Binance(getAvailableTokensByNetwork(NetworksHelper.getBSCNetwork().getId())), NetworksHelper.getBSCNetwork().getId(), true, new WalletSwapProcessPresenter$startSelectTokenDialog$2(this, side));
                }
            } else if (i == 2) {
                if (this.inputToken == null) {
                    ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3417R.string.wallet_swap_process_give_token_validation));
                    return;
                }
                Pair<String, ? extends List<OutputConvertToken>> pair = this.binanceAvailableOppositeSelectableSwapTokens;
                String first = pair != null ? pair.getFirst() : null;
                TokenDetailed tokenDetailed3 = this.inputToken;
                if (Intrinsics.areEqual(first, tokenDetailed3 != null ? tokenDetailed3.getTicker() : null)) {
                    WalletSwapProcessView walletSwapProcessView = (WalletSwapProcessView) getViewState();
                    Pair<String, ? extends List<OutputConvertToken>> pair2 = this.binanceAvailableOppositeSelectableSwapTokens;
                    if (pair2 != null && (second = pair2.getSecond()) != null) {
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(second, 10);
                        list = new ArrayList(collectionSizeOrDefault);
                        for (OutputConvertToken outputConvertToken : second) {
                            list.add(SelectableMappingKt.mapToDetailedToken(outputConvertToken.getTokenInfo()));
                        }
                    }
                    if (list == null) {
                        list = CollectionsKt__CollectionsKt.emptyList();
                    }
                    walletSwapProcessView.openSelectTokenDialog(tokenDetailed, new WalletSelectTokenFragment.ScreenType.Binance(list), NetworksHelper.getBSCNetwork().getId(), false, new WalletSwapProcessPresenter$startSelectTokenDialog$4(this, side));
                    return;
                }
                TokenDetailed tokenDetailed4 = this.inputToken;
                String ticker = tokenDetailed4 != null ? tokenDetailed4.getTicker() : null;
                if (ticker == null) {
                    ticker = "";
                }
                loadAvailableOppositeSwapTokensBinance(ticker, true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda2
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSwapProcessPresenter.startSelectTokenDialog$lambda$5(WalletSwapProcessPresenter.this, side);
                    }
                });
            }
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            if (this.swapProtocol != SwapProtocol.SYMBIOSIS) {
                if (side == swapSide) {
                    tokenDetailed2 = this.outputToken;
                } else {
                    tokenDetailed2 = this.inputToken;
                }
            }
            int i2 = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
            if (i2 == 1) {
                transactionDirection = TransactionDirection.OUT;
            } else if (i2 != 2) {
                throw new NoWhenBranchMatchedException();
            } else {
                transactionDirection = TransactionDirection.f446IN;
            }
            ((WalletSwapProcessView) getViewState()).openSelectTokenDialog(tokenDetailed, new WalletSelectTokenFragment.ScreenType.Swap(this.swapProtocol, transactionDirection, tokenDetailed2), getSelectedNetworkIdBySwapSide(side), side == swapSide, new WalletSwapProcessPresenter$startSelectTokenDialog$6(this, side));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenDialog$lambda$3(WalletSwapProcessPresenter this$0, SwapSide side) {
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
                    WalletSwapProcessPresenter.startSwapFlow$lambda$6(WalletSwapProcessPresenter.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSwapFlow$lambda$6(WalletSwapProcessPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.swapCrypto();
    }

    public final void showChangeNetworkHintIfNeeded() {
        boolean booleanValue = getNetworkSwitchState().getSecond().booleanValue();
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
        ((WalletSwapProcessView) getViewState()).setupNetwork(NetworksHelper.getNetworkById(getSelectedNetworkIdBySwapSide(swapSide)), swapSide);
        SwapSide swapSide2 = SwapSide.OUTPUT;
        ((WalletSwapProcessView) getViewState()).setupNetwork(NetworksHelper.getNetworkById(getSelectedNetworkIdBySwapSide(swapSide2)), swapSide2);
        renderState(new SwapUiState.PrepareSwap(this.outputToken));
        TokenDetailed tokenDetailed = this.inputToken;
        if (tokenDetailed != null) {
            Intrinsics.checkNotNull(tokenDetailed);
            selectToken(swapSide, tokenDetailed);
        }
        TokenDetailed tokenDetailed2 = this.outputToken;
        if (tokenDetailed2 != null) {
            Intrinsics.checkNotNull(tokenDetailed2);
            selectToken(swapSide2, tokenDetailed2);
        }
        loadAvailableSwapTokens(swapSide);
    }

    static /* synthetic */ String getSelectedNetworkIdBySwapSide$default(WalletSwapProcessPresenter walletSwapProcessPresenter, SwapSide swapSide, int i, Object obj) {
        if ((i & 1) != 0) {
            swapSide = SwapSide.INPUT;
        }
        return walletSwapProcessPresenter.getSelectedNetworkIdBySwapSide(swapSide);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSelectedNetworkIdBySwapSide(SwapSide swapSide) {
        int i = WhenMappings.$EnumSwitchMapping$0[swapSide.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return this.swapProtocol.isCrossChain() ? this.selectedOutputNetworkId : this.selectedInputNetworkId;
            }
            throw new NoWhenBranchMatchedException();
        }
        return this.selectedInputNetworkId;
    }

    private final List<TokenDetailed> getAvailableTokensByNetwork(String str) {
        List<TokenDetailed> emptyList;
        List<TokenDetailed> list = this.selectableSupportedSwapTokens.get(str);
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
        int collectionSizeOrDefault;
        List<String> supportedNetworksIds = SwapProtocolInfo.Companion.map(this.swapProtocol).getSupportedNetworksIds();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedNetworksIds, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str : supportedNetworksIds) {
            arrayList.add(NetworksHelper.getNetworkById(str));
        }
        this.availableNetworks = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resolveSwapProtocol() {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if ((screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) && ((WalletSwapProcessFragment.ScreenType.Crypto) screenType).getSwapProtocol().isUniswap()) {
            this.swapProtocol = SwapProtocol.Companion.resolveByNetworkId(getSelectedNetworkIdBySwapSide$default(this, null, 1, null));
        }
    }

    private final void resolveSelectedNetworkType() {
        int collectionSizeOrDefault;
        Object obj;
        Object obj2;
        int collectionSizeOrDefault2;
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if ((screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) && ((WalletSwapProcessFragment.ScreenType.Crypto) screenType).getForcedNetworkId() != null) {
            this.selectedInputNetworkId = ((WalletSwapProcessFragment.ScreenType.Crypto) this.screenType).getForcedNetworkId();
            this.selectedOutputNetworkId = ((WalletSwapProcessFragment.ScreenType.Crypto) this.screenType).getForcedNetworkId();
            return;
        }
        List<Network> list = this.availableNetworks;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Network network : list) {
            arrayList.add(network.getId());
        }
        Iterator it = arrayList.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it.next();
            if (Intrinsics.areEqual((String) obj2, this.cryptoPreferenceHelper.getNetworkId())) {
                break;
            }
        }
        String str = (String) obj2;
        if (str == null) {
            str = ((Network) CollectionsKt.first((List<? extends Object>) this.availableNetworks)).getId();
        }
        this.selectedInputNetworkId = str;
        List<Network> list2 = this.availableNetworks;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (Network network2 : list2) {
            arrayList2.add(network2.getId());
        }
        Iterator it2 = arrayList2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (!Intrinsics.areEqual((String) next, this.selectedInputNetworkId)) {
                obj = next;
                break;
            }
        }
        String str2 = (String) obj;
        if (str2 == null) {
            str2 = ((Network) CollectionsKt.first((List<? extends Object>) this.availableNetworks)).getId();
        }
        this.selectedOutputNetworkId = str2;
    }

    private final void resolveArgs() {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            WalletSwapProcessFragment.ScreenType.Binance binance = (WalletSwapProcessFragment.ScreenType.Binance) screenType;
            this.inputToken = binance.getFromToken();
            this.outputToken = binance.getToToken();
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            WalletSwapProcessFragment.ScreenType.Crypto crypto = (WalletSwapProcessFragment.ScreenType.Crypto) screenType;
            this.swapProtocol = crypto.getSwapProtocol();
            this.swapProtocolInfo = crypto.getSwapProtocolInfo();
            this.inputToken = crypto.getFromToken();
            this.outputToken = crypto.getToToken();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupSwapInformation() {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            ((WalletSwapProcessView) getViewState()).setupScreenForSwap(this.resourceManager.getString(C3417R.string.binance_convert_toolbar_title), this.resourceManager.getString(C3417R.string.binance_convert_description), C3417R.C3419drawable.fork_ic_bnb_logo, false, WalletSwapProcessFragment.NetworkSwitchType.GLOBAL);
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            Pair<WalletSwapProcessFragment.NetworkSwitchType, Boolean> networkSwitchState = getNetworkSwitchState();
            WalletSwapProcessFragment.NetworkSwitchType component1 = networkSwitchState.component1();
            ((WalletSwapProcessView) getViewState()).setupScreenForSwap(this.resourceManager.getString(this.swapProtocolInfo.getName()), this.resourceManager.getString(this.swapProtocolInfo.getLongDescription()), this.swapProtocolInfo.getLogo(), networkSwitchState.component2().booleanValue(), component1);
        }
    }

    private final Pair<WalletSwapProcessFragment.NetworkSwitchType, Boolean> getNetworkSwitchState() {
        int i = WhenMappings.$EnumSwitchMapping$1[this.swapProtocol.ordinal()];
        boolean z = true;
        if (i == 1 || i == 2 || i == 3) {
            WalletSwapProcessFragment.NetworkSwitchType networkSwitchType = WalletSwapProcessFragment.NetworkSwitchType.GLOBAL;
            WalletSwapProcessFragment.ScreenType screenType = this.screenType;
            return TuplesKt.m85to(networkSwitchType, Boolean.valueOf(((screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) && ((WalletSwapProcessFragment.ScreenType.Crypto) screenType).getForcedNetworkId() == null) ? false : false));
        } else if (i == 4) {
            return TuplesKt.m85to(WalletSwapProcessFragment.NetworkSwitchType.CROSS_CHAIN, Boolean.TRUE);
        } else {
            return TuplesKt.m85to(WalletSwapProcessFragment.NetworkSwitchType.GLOBAL, Boolean.FALSE);
        }
    }

    private final void swapCrypto() {
        SwapArgs resolveSwapArgs;
        if (isValidForCryptoSwap() && (resolveSwapArgs = resolveSwapArgs()) != null) {
            Observable<Result<String>> observeOn = this.swapInteractor.swap(resolveSwapArgs).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "swapInteractor\n         …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2440x471dfc16(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2441x471dfc17((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2438x71745cc7(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2439x71745cc8((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void prepareForSwapBinance(String str, String str2, String str3) {
        if (isValidForPrepareSwap(str)) {
            Observable<Result<BinanceConvertQuote>> observeOn = this.binanceInternalInteractor.getConvertQuote(str2, str3, str).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2434x90737ee5(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2435x90737ee6((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void prepareForSwapCrypto(String str, TokenDetailed tokenDetailed, TokenDetailed tokenDetailed2, SwapProtocol swapProtocol) {
        Token indexedToken;
        Token indexedToken2;
        if (isValidForPrepareSwap(str)) {
            SwapInteractor swapInteractor = this.swapInteractor;
            if (tokenDetailed == null || (indexedToken = TokenExtKt.toIndexedToken(tokenDetailed)) == null || tokenDetailed2 == null || (indexedToken2 = TokenExtKt.toIndexedToken(tokenDetailed2)) == null) {
                return;
            }
            Observable<Result<CryptoSwapMetadata>> observeOn = swapInteractor.getQuoteToSwap(swapProtocol, indexedToken, indexedToken2, str, TradeType.EXACT_INPUT, SwapSlippage.PERCENT_5.getPercent()).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "swapInteractor\n         …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2436xdcc31e38(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2437xdcc31e39((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void loadBalance(TokenDetailed tokenDetailed) {
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            loadBalanceBinance(tokenDetailed);
        } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            loadBalanceCrypto(tokenDetailed);
        }
    }

    private final void loadBalanceBinance(TokenDetailed tokenDetailed) {
        Observable<Result<List<BinanceTokenBalanceInfo>>> observeOn = this.binanceInternalInteractor.getUserBalance().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2430x263949c2(this, tokenDetailed)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2431x263949c3((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadBalanceCrypto(TokenDetailed tokenDetailed) {
        Observable observeOn = WalletInteractor.getTokenBalance$default(this.walletInteractor, TokenExtKt.toIndexedToken(tokenDetailed), false, getSelectedNetworkIdBySwapSide$default(this, null, 1, null), 2, null).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2432xe9da03bb(this, tokenDetailed)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2433xe9da03bc((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    static /* synthetic */ void loadAvailableSwapTokensBinance$default(WalletSwapProcessPresenter walletSwapProcessPresenter, boolean z, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            callbacks$Callback = WalletSwapProcessPresenter$$ExternalSyntheticLambda4.INSTANCE;
        }
        walletSwapProcessPresenter.loadAvailableSwapTokensBinance(z, callbacks$Callback);
    }

    private final void loadAvailableSwapTokensBinance(boolean z, Callbacks$Callback callbacks$Callback) {
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            Observable<Result<List<BinanceTokenInfo>>> observeOn = this.binanceInternalInteractor.getTokensForConvert().observeOn(this.schedulersProvider.mo698ui());
            final WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2 walletSwapProcessPresenter$loadAvailableSwapTokensBinance$2 = new WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2(z, this);
            Observable<R> compose = observeOn.compose(new ObservableTransformer() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda7
                @Override // io.reactivex.ObservableTransformer
                public final ObservableSource apply(Observable observable) {
                    ObservableSource loadAvailableSwapTokensBinance$lambda$21;
                    loadAvailableSwapTokensBinance$lambda$21 = WalletSwapProcessPresenter.loadAvailableSwapTokensBinance$lambda$21(Function1.this, observable);
                    return loadAvailableSwapTokensBinance$lambda$21;
                }
            });
            Intrinsics.checkNotNullExpressionValue(compose, "private fun loadAvailabl…     .autoDispose()\n    }");
            Disposable subscribe = compose.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2428x912b3628(this, callbacks$Callback)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2429x912b3629((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
            callbacks$Callback = WalletSwapProcessPresenter$$ExternalSyntheticLambda5.INSTANCE;
        }
        walletSwapProcessPresenter.loadAvailableOppositeSwapTokensBinance(str, z, callbacks$Callback);
    }

    private final void loadAvailableOppositeSwapTokensBinance(String str, boolean z, Callbacks$Callback callbacks$Callback) {
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            Observable<Result<List<OutputConvertToken>>> observeOn = this.binanceInternalInteractor.getOppositeTokensForConvertByToken(str).observeOn(this.schedulersProvider.mo698ui());
            final C2442xa8fd99cc c2442xa8fd99cc = new C2442xa8fd99cc(z, this);
            Observable<R> compose = observeOn.compose(new ObservableTransformer() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda6
                @Override // io.reactivex.ObservableTransformer
                public final ObservableSource apply(Observable observable) {
                    ObservableSource loadAvailableOppositeSwapTokensBinance$lambda$25;
                    loadAvailableOppositeSwapTokensBinance$lambda$25 = WalletSwapProcessPresenter.loadAvailableOppositeSwapTokensBinance$lambda$25(Function1.this, observable);
                    return loadAvailableOppositeSwapTokensBinance$lambda$25;
                }
            });
            Intrinsics.checkNotNullExpressionValue(compose, "private fun loadAvailabl…     .autoDispose()\n    }");
            Disposable subscribe = compose.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2426x9b0acc81(this, str, callbacks$Callback)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2427x9b0acc82((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            loadAvailableSwapTokensBinance$default(this, false, null, 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void loadApproveTokensInfo$default(WalletSwapProcessPresenter walletSwapProcessPresenter, boolean z, boolean z2, Token token, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            token = null;
        }
        walletSwapProcessPresenter.loadApproveTokensInfo(z, z2, token);
    }

    private final void loadApproveTokensInfo(boolean z, final boolean z2, Token token) {
        Observable<Long> just;
        int collectionSizeOrDefault;
        List list;
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            if (z) {
                just = Observable.interval(30L, TimeUnit.SECONDS);
            } else {
                just = Observable.just(Boolean.TRUE);
            }
            String selectedNetworkIdBySwapSide$default = getSelectedNetworkIdBySwapSide$default(this, null, 1, null);
            if (token != null) {
                list = CollectionsKt__CollectionsJVMKt.listOf(token);
            } else {
                List<TokenDetailed> list2 = this.selectableSupportedSwapTokens.get(selectedNetworkIdBySwapSide$default);
                if (list2 == null) {
                    list2 = CollectionsKt__CollectionsKt.emptyList();
                }
                if (list2.isEmpty()) {
                    list2 = CollectionsKt__CollectionsKt.listOfNotNull(this.inputToken);
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (TokenDetailed tokenDetailed : list2) {
                    arrayList.add(TokenExtKt.toIndexedToken(tokenDetailed));
                }
                list = arrayList;
            }
            final WalletSwapProcessPresenter$loadApproveTokensInfo$1 walletSwapProcessPresenter$loadApproveTokensInfo$1 = new WalletSwapProcessPresenter$loadApproveTokensInfo$1(this, selectedNetworkIdBySwapSide$default, list);
            Observable doFinally = just.flatMap(new Function() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda9
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource loadApproveTokensInfo$lambda$29;
                    loadApproveTokensInfo$lambda$29 = WalletSwapProcessPresenter.loadApproveTokensInfo$lambda$29(Function1.this, obj);
                    return loadApproveTokensInfo$lambda$29;
                }
            }).observeOn(this.schedulersProvider.mo698ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda8
                @Override // io.reactivex.functions.Action
                public final void run() {
                    WalletSwapProcessPresenter.loadApproveTokensInfo$lambda$30(z2, this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally, "private fun loadApproveT…}\n                }\n    }");
            Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2424x9faf7813(token, this, selectedNetworkIdBySwapSide$default, z, z2)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2425x9faf7814((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            this.loadApproveMetadataDisposable = subscribe;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadApproveTokensInfo$lambda$29(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadApproveTokensInfo$lambda$30(boolean z, WalletSwapProcessPresenter this$0) {
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
        if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT) {
            ((WalletSwapProcessView) getViewState()).showErrorToast(error, this.resourceManager);
            loadApproveTokensInfo$default(this, false, true, null, 4, null);
        } else if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
            WalletSwapProcessFragment.ScreenType screenType = this.screenType;
            if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
                ((WalletSwapProcessView) getViewState()).showNotEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(null, null, null, 4, null));
            } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
                TokenDetailed tokenDetailed = this.inputToken;
                Intrinsics.checkNotNull(tokenDetailed);
                ((WalletSwapProcessView) getViewState()).showNotEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(tokenDetailed, this.swapProtocol, null, 4, null));
            }
        } else {
            if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_BLOCK_CHAIN_ERROR || status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_INSUFFICIENT_RESERVES_IN_LIQUIDITY_POOL_OF_TOKENS) {
                loadApproveTokensInfo$default(this, false, false, null, 6, null);
                ((WalletSwapProcessView) getViewState()).showErrorToast(error, this.resourceManager);
                resetStateTo(SwapUiState.Idle.INSTANCE);
                return;
            }
            if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG || status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_QUOTE_NOT_FOUND) {
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
            List<CryptoTokenApproveMetadata> list = this.approveTokensMetadata.get(getSelectedNetworkIdBySwapSide$default(this, null, 1, null));
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    String ticker = ((CryptoTokenApproveMetadata) next).getToken().getTicker();
                    TokenDetailed tokenDetailed = this.inputToken;
                    if (Intrinsics.areEqual(ticker, tokenDetailed != null ? tokenDetailed.getTicker() : null)) {
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
                this.selectedApproveFee = new GasPriceItem(transactionSpeedLevel, needApprove.getFeeToken(), needApprove.getTransactionParams().getFeeByLevel(transactionSpeedLevel));
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
        return new SwapFeeScreenArgs(cryptoSwapMetadata, swapDeadline, swapSlippage, gasPriceItem, this.swapProtocol);
    }

    private final ApproveArgs resolveApproveArgs() {
        CryptoTokenApproveMetadata cryptoTokenApproveMetadata;
        Object obj;
        if (this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
            TokenDetailed tokenDetailed = this.inputToken;
            if (Intrinsics.areEqual(tokenDetailed != null ? Boolean.valueOf(tokenDetailed.isCoin()) : null, Boolean.FALSE)) {
                List<CryptoTokenApproveMetadata> list = this.approveTokensMetadata.get(getSelectedNetworkIdBySwapSide$default(this, null, 1, null));
                if (list != null) {
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it.next();
                        String ticker = ((CryptoTokenApproveMetadata) obj).getToken().getTicker();
                        TokenDetailed tokenDetailed2 = this.inputToken;
                        if (Intrinsics.areEqual(ticker, tokenDetailed2 != null ? tokenDetailed2.getTicker() : null)) {
                            break;
                        }
                    }
                    cryptoTokenApproveMetadata = (CryptoTokenApproveMetadata) obj;
                } else {
                    cryptoTokenApproveMetadata = null;
                }
                if (cryptoTokenApproveMetadata instanceof CryptoTokenApproveMetadata.NeedApprove) {
                    CryptoTokenApproveMetadata.NeedApprove needApprove = (CryptoTokenApproveMetadata.NeedApprove) cryptoTokenApproveMetadata;
                    BlockchainType blockchainType = NetworksHelper.getNetworkById(needApprove.getToken().getNetworkId()).getBlockchainType();
                    Wallet wallet2 = this.accessManager.getWallet(this.cryptoPreferenceHelper.getCurrentBlockchainType());
                    String address = wallet2 != null ? wallet2.getAddress() : null;
                    if (address == null) {
                        address = "";
                    }
                    String str = address;
                    BigInteger bigInteger = new BigInteger(needApprove.getValue());
                    long chainId = needApprove.getTransactionParams().getChainId();
                    BigInteger nonce = needApprove.getTransactionParams().getNonce();
                    GasPriceItem gasPriceItem = this.selectedApproveFee;
                    Intrinsics.checkNotNull(gasPriceItem);
                    BigInteger price = gasPriceItem.getInfo().getPrice();
                    GasPriceItem gasPriceItem2 = this.selectedApproveFee;
                    Intrinsics.checkNotNull(gasPriceItem2);
                    return new ApproveArgs.Dex(blockchainType, bigInteger, str, chainId, nonce, price, gasPriceItem2.getInfo().getLimit(), needApprove.getToken().getAddress(), needApprove.getSpenderContractAddress(), getSelectedNetworkIdBySwapSide$default(this, null, 1, null), this.swapProtocol);
                }
                return null;
            }
            return null;
        }
        return null;
    }

    private final SwapArgs resolveSwapArgs() {
        CryptoSwapMetadata cryptoSwapMetadata;
        if ((this.screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) && (cryptoSwapMetadata = this.swapMetadata) != null) {
            BigDecimal amountIn = cryptoSwapMetadata.getAmountIn();
            BigInteger amountBound = cryptoSwapMetadata.getAmountBound();
            TokenDetailed inputToken = cryptoSwapMetadata.getInputToken();
            long chainId = cryptoSwapMetadata.getTransactionParams().getChainId();
            BigInteger nonce = cryptoSwapMetadata.getTransactionParams().getNonce();
            GasPriceItem gasPriceItem = this.selectedSwapFee;
            Intrinsics.checkNotNull(gasPriceItem);
            BigInteger price = gasPriceItem.getInfo().getPrice();
            GasPriceItem gasPriceItem2 = this.selectedSwapFee;
            Intrinsics.checkNotNull(gasPriceItem2);
            BigInteger limit = gasPriceItem2.getInfo().getLimit();
            String contractAddress = cryptoSwapMetadata.getContractAddress();
            if (contractAddress == null) {
                contractAddress = "";
            }
            return new SwapArgs.Dex(this.swapProtocol, amountIn, inputToken, chainId, nonce, price, limit, amountBound, contractAddress, cryptoSwapMetadata.getSwapMethod(), cryptoSwapMetadata.getPath(), this.selectedDeadline.getMinutes(), cryptoSwapMetadata.getValue(), cryptoSwapMetadata.getCallData(), cryptoSwapMetadata.getQuoteId(), getSelectedNetworkIdBySwapSide(SwapSide.INPUT), getSelectedNetworkIdBySwapSide(SwapSide.OUTPUT));
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
        CryptoTokenApproveMetadata.NeedApprove needApprove2 = this.approveMetadata;
        Intrinsics.checkNotNull(needApprove2);
        TokenDetailed feeToken = needApprove2.getFeeToken();
        GasPriceItem gasPriceItem = this.selectedApproveFee;
        Intrinsics.checkNotNull(gasPriceItem);
        return new FeeView.ChooseFeeType.Default(feeDialogModel, transactionParams, feeToken, gasPriceItem, new WalletSwapProcessPresenter$getApproveFeeType$1(this));
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
        TokenDetailed tokenDetailed = this.inputToken;
        if (tokenDetailed == null) {
            ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3417R.string.wallet_swap_process_give_token_validation));
        } else {
            TokenDetailed tokenDetailed2 = this.outputToken;
            if (tokenDetailed2 == null) {
                ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3417R.string.wallet_swap_process_receive_token_amount_validation));
            } else if (Intrinsics.areEqual(tokenDetailed, tokenDetailed2)) {
                ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3417R.string.wallet_swap_process_diff_tokens_validation));
            } else {
                if (!(str.length() == 0)) {
                    doubleOrNull = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(str);
                    if (!(doubleOrNull != null && NumberExtKt.isZero(doubleOrNull))) {
                        if (isAvailableBalanceLessThanAmount(str)) {
                            WalletSwapProcessFragment.ScreenType screenType = this.screenType;
                            if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
                                ((WalletSwapProcessView) getViewState()).showNotEnoughMoneyBinanceErrorDialog();
                            } else if (screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto) {
                                TokenDetailed tokenDetailed3 = this.inputToken;
                                Intrinsics.checkNotNull(tokenDetailed3);
                                ((WalletSwapProcessView) getViewState()).showNotEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(tokenDetailed3, this.swapProtocol, null, 4, null));
                            }
                        } else {
                            List<CryptoTokenApproveMetadata> list = this.approveTokensMetadata.get(getSelectedNetworkIdBySwapSide$default(this, null, 1, null));
                            if (!(list != null && list.isEmpty())) {
                                z = true;
                                return (this.state instanceof SwapUiState.PrepareSwap) && z;
                            }
                            ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3417R.string.wallet_swap_process_approve_info_not_loaded_yet_validation));
                            loadApproveTokensInfo$default(this, false, true, null, 4, null);
                        }
                    }
                }
                ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3417R.string.wallet_amount_enter_valid_amount_title));
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
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r0 = r6.inputToken
            if (r0 == 0) goto L54
            java.util.HashMap<java.lang.String, java.util.List<com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata>> r0 = r6.approveTokensMetadata
            r3 = 0
            java.lang.String r4 = getSelectedNetworkIdBySwapSide$default(r6, r3, r1, r3)
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
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r4 = r4.getToken()
            java.lang.String r4 = r4.getTicker()
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r5 = r6.inputToken
            if (r5 == 0) goto L44
            java.lang.String r5 = r5.getTicker()
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

    private final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3417R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3417R.string.common_cancel), 6, null);
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
                TokenDetailed tokenDetailed = this.outputToken;
                if (Intrinsics.areEqual(asset, tokenDetailed != null ? tokenDetailed.getTicker() : null)) {
                    outputConvertToken = next;
                    break;
                }
            }
            outputConvertToken = outputConvertToken;
        }
        if (outputConvertToken != null) {
            TokenDetailed tokenDetailed2 = this.inputToken;
            Intrinsics.checkNotNull(tokenDetailed2);
            ((WalletSwapProcessView) getViewState()).showMinMaxInputValues(tokenDetailed2, outputConvertToken);
        }
    }

    private final DialogModel getSwapConfirmationDialogModel() {
        String string;
        String string2 = this.resourceManager.getString(C3417R.string.wallet_swap_process_confirm_swap_alert_title);
        WalletSwapProcessFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSwapProcessFragment.ScreenType.Binance) {
            ResourceManager resourceManager = this.resourceManager;
            int i = C3417R.string.wallet_swap_process_confirm_swap_alert_description;
            Object[] objArr = new Object[4];
            BinanceConvertQuote binanceConvertQuote = this.binanceConvertQuote;
            Number valueOf = binanceConvertQuote != null ? Double.valueOf(binanceConvertQuote.getInputAmount()) : 0;
            TokenDetailed.Companion companion = TokenDetailed.Companion;
            objArr[0] = BalanceFormatter.formatBalance(valueOf, Integer.valueOf(companion.getBNB().getDecimals()));
            BinanceConvertQuote binanceConvertQuote2 = this.binanceConvertQuote;
            String inputTokenShortName = binanceConvertQuote2 != null ? binanceConvertQuote2.getInputTokenShortName() : null;
            if (inputTokenShortName == null) {
                inputTokenShortName = "";
            }
            objArr[1] = inputTokenShortName;
            BinanceConvertQuote binanceConvertQuote3 = this.binanceConvertQuote;
            objArr[2] = BalanceFormatter.formatBalance(binanceConvertQuote3 != null ? Double.valueOf(binanceConvertQuote3.getOutputAmount()) : 0, Integer.valueOf(companion.getBNB().getDecimals()));
            BinanceConvertQuote binanceConvertQuote4 = this.binanceConvertQuote;
            String outputTokenShortName = binanceConvertQuote4 != null ? binanceConvertQuote4.getOutputTokenShortName() : null;
            objArr[3] = outputTokenShortName != null ? outputTokenShortName : "";
            string = resourceManager.getString(i, objArr);
        } else if (!(screenType instanceof WalletSwapProcessFragment.ScreenType.Crypto)) {
            throw new NoWhenBranchMatchedException();
        } else {
            ResourceManager resourceManager2 = this.resourceManager;
            int i2 = C3417R.string.wallet_swap_process_confirm_swap_alert_description;
            CryptoSwapMetadata cryptoSwapMetadata = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata);
            BigDecimal amountIn = cryptoSwapMetadata.getAmountIn();
            CryptoSwapMetadata cryptoSwapMetadata2 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata2);
            CryptoSwapMetadata cryptoSwapMetadata3 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata3);
            CryptoSwapMetadata cryptoSwapMetadata4 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata4);
            BigDecimal amountOut = cryptoSwapMetadata4.getAmountOut();
            CryptoSwapMetadata cryptoSwapMetadata5 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata5);
            CryptoSwapMetadata cryptoSwapMetadata6 = this.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata6);
            string = resourceManager2.getString(i2, BalanceFormatter.formatBalance(amountIn, Integer.valueOf(cryptoSwapMetadata2.getInputToken().getDecimals())), cryptoSwapMetadata3.getInputToken().getTicker(), BalanceFormatter.formatBalance(amountOut, Integer.valueOf(cryptoSwapMetadata5.getOutputToken().getDecimals())), cryptoSwapMetadata6.getOutputToken().getTicker());
        }
        return new DialogModel(string2, string, this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(C3417R.string.wallet_swap_process_confirm_swap_alert_action));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String formatBinanceBalance(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        return this.resourceManager.getString(C3417R.string.binance_convert_balance, BinanceTokenBalanceExtKt.getSpotBalanceShortText(binanceTokenBalanceInfo), BinanceTokenBalanceExtKt.getMarginBalanceShortText(binanceTokenBalanceInfo));
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
        Disposable disposable;
        boolean z2 = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((CryptoTokenApproveMetadata) it.next()) instanceof CryptoTokenApproveMetadata.InProgress) {
                    z2 = true;
                    break;
                }
            }
        }
        if (z2 && !z) {
            loadApproveTokensInfo$default(this, true, false, null, 6, null);
        } else if (z2 || !z || (disposable = this.loadApproveMetadataDisposable) == null) {
        } else {
            disposable.dispose();
        }
    }
}
