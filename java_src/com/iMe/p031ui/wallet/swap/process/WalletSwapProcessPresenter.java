package com.iMe.p031ui.wallet.swap.process;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.dialog.AnimatedSpannableDialogModel;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.model.wallet.crypto.swap.SwapUiState;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.model.wallet.swap.SwapSide;
import com.iMe.model.wallet.swap.WalletSwapScreenType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceConvertQuote;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.binancepay.OutputConvertToken;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.crypto.swap.ApproveArgs;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import com.iMe.storage.domain.model.crypto.swap.TokenApproveData;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.model.wallet.swap.SwapDeadline;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import com.iMe.storage.domain.model.wallet.swap.SwapSlippage;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
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
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt___StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3473R;
import timber.log.Timber;
/* compiled from: WalletSwapProcessPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter */
/* loaded from: classes6.dex */
public final class WalletSwapProcessPresenter extends BasePresenter<WalletSwapProcessView> {
    private String amount;
    private final PublishSubject<String> amountSubject;
    private Disposable amountSubjectDisposable;
    private TokenApproveData.NeedApprove approveMetadata;
    private List<NetworkItem.Crypto> availableNetworks;
    private Pair<String, ? extends List<OutputConvertToken>> binanceAvailableOppositeSwapTokens;
    private BinanceConvertQuote binanceConvertQuote;
    private final BinanceInternalInteractor binanceInternalInteractor;
    private BinanceTokenBalanceInfo binanceTokenBalance;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private SwapSide currentNetworkSelectionSide;
    private final HintsPreferenceHelper hintsPreferenceHelper;
    private TokenDetailed inputToken;
    private Disposable loadApproveMetadataDisposable;
    private TokenDetailed outputToken;
    private FiatValue outputTokenRate;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final WalletSwapScreenType screenType;
    private GasPriceItem selectedApproveFee;
    private SwapDeadline selectedDeadline;
    private NetworkItem.Crypto selectedInputNetworkItem;
    private NetworkItem.Crypto selectedOutputNetworkItem;
    private SwapSlippage selectedSlippage;
    private GasPriceItem selectedSwapFee;
    private boolean shouldIgnoreAmountChanges;
    private SwapUiState state;
    private HashMap<String, List<TokenDetailed>> supportedSwapTokens;
    private final SwapInteractor swapInteractor;
    private CryptoSwapMetadata swapMetadata;
    private SwapProtocol swapProtocol;
    private SwapProtocolInfo swapProtocolInfo;
    private TokenBalance tokenBalance;
    private HashMap<String, List<TokenApproveData>> tokensApprovalData;
    private final WalletInteractor walletInteractor;

    /* compiled from: WalletSwapProcessPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$WhenMappings */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

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
        }
    }

    static {
        new Companion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAvailableOppositeSwapTokensBinance$lambda$22() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAvailableSwapTokensBinance$lambda$18() {
    }

    public WalletSwapProcessPresenter(WalletSwapScreenType screenType, WalletInteractor walletInteractor, BinanceInternalInteractor binanceInternalInteractor, SwapInteractor swapInteractor, SchedulersProvider schedulersProvider, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager, HintsPreferenceHelper hintsPreferenceHelper) {
        List<NetworkItem.Crypto> emptyList;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(swapInteractor, "swapInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(hintsPreferenceHelper, "hintsPreferenceHelper");
        this.screenType = screenType;
        this.walletInteractor = walletInteractor;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.swapInteractor = swapInteractor;
        this.schedulersProvider = schedulersProvider;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        this.hintsPreferenceHelper = hintsPreferenceHelper;
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.amountSubject = create;
        this.amount = "";
        this.selectedSlippage = SwapSlippage.Companion.getDefaultValue();
        this.selectedDeadline = SwapDeadline.Companion.getDefaultValue();
        this.state = new SwapUiState.Idle(true, null, 2, null);
        this.supportedSwapTokens = new HashMap<>();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.availableNetworks = emptyList;
        this.selectedInputNetworkItem = getInitialNetworkItem();
        this.selectedOutputNetworkItem = getInitialNetworkItem();
        SwapProtocol swapProtocol = SwapProtocol.UNKNOWN;
        this.swapProtocol = swapProtocol;
        this.swapProtocolInfo = SwapProtocolInfo.Companion.map(swapProtocol);
        Disposable disposed = Disposables.disposed();
        Intrinsics.checkNotNullExpressionValue(disposed, "disposed()");
        this.loadApproveMetadataDisposable = disposed;
        Disposable disposed2 = Disposables.disposed();
        Intrinsics.checkNotNullExpressionValue(disposed2, "disposed()");
        this.amountSubjectDisposable = disposed2;
        this.tokensApprovalData = new HashMap<>();
    }

    public static /* synthetic */ void startChooseNetworkDialog$default(WalletSwapProcessPresenter walletSwapProcessPresenter, SwapSide swapSide, int i, Object obj) {
        if ((i & 1) != 0) {
            swapSide = SwapSide.INPUT;
        }
        walletSwapProcessPresenter.startChooseNetworkDialog(swapSide);
    }

    public final void startChooseNetworkDialog(SwapSide side) {
        Intrinsics.checkNotNullParameter(side, "side");
        this.currentNetworkSelectionSide = side;
        ((WalletSwapProcessView) getViewState()).showChooseNetworkDialog(getNetworkItemBySwapSide(side), this.availableNetworks);
    }

    public final void onNetworkSelected(NetworkItem.Crypto crypto) {
        SwapSide swapSide;
        SwapSide swapSide2;
        resetAmountSubjectSubscription();
        if (crypto == null || (swapSide = this.currentNetworkSelectionSide) == null) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[swapSide.ordinal()];
        if (i == 1) {
            this.selectedInputNetworkItem = crypto;
        } else if (i == 2) {
            this.selectedOutputNetworkItem = crypto;
        }
        ((WalletSwapProcessView) getViewState()).setupNetwork(crypto, swapSide);
        resetLoadedInformation();
        setupSwapInformation();
        if (this.swapProtocol.isCrossChain()) {
            swapSide2 = SwapSide.INPUT;
            if (swapSide == swapSide2) {
                swapSide2 = SwapSide.OUTPUT;
            }
        } else {
            swapSide2 = null;
        }
        resetStateTo(new SwapUiState.Idle(true, swapSide2), swapSide2);
        loadAvailableSwapTokens(swapSide);
        if (this.swapProtocol.isCrossChain()) {
            return;
        }
        this.amount = "";
    }

    public final void processSwapFee(SwapFeeScreenArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.swapMetadata = args.getMetadata();
        this.selectedSwapFee = args.getSelectedFee();
        this.selectedDeadline = args.getSelectedDeadline();
        this.selectedSlippage = args.getSelectedSlippage();
        renderState(getCryptoSwapUiState());
    }

    public final void onAmountChanged(String amountText) {
        Intrinsics.checkNotNullParameter(amountText, "amountText");
        resetStateIfNeeded();
        if (this.shouldIgnoreAmountChanges) {
            return;
        }
        this.amountSubject.onNext(amountText);
    }

    public final void onMaxClick() {
        WalletSwapProcessView walletSwapProcessView = (WalletSwapProcessView) getViewState();
        SwapSide swapSide = SwapSide.INPUT;
        TokenBalance tokenBalance = this.tokenBalance;
        String plainString = NumberExtKt.orZero(tokenBalance != null ? new BigDecimal(String.valueOf(tokenBalance.getTotal())) : null).toPlainString();
        Intrinsics.checkNotNullExpressionValue(plainString, "tokenBalance?.total?.toB….orZero().toPlainString()");
        walletSwapProcessView.setAmount(swapSide, StringExtKt.stripZeros$default(plainString, (char) 0, 1, null));
    }

    public final void swapPositions() {
        BigDecimal amountOut;
        String plainString;
        TokenDetailed tokenDetailed = this.inputToken;
        TokenDetailed tokenDetailed2 = this.outputToken;
        if (tokenDetailed == null && tokenDetailed2 == null) {
            return;
        }
        resetAmountSubjectSubscription();
        this.loadApproveMetadataDisposable.dispose();
        CryptoSwapMetadata cryptoSwapMetadata = this.swapMetadata;
        String stripZeros$default = (cryptoSwapMetadata == null || (amountOut = cryptoSwapMetadata.getAmountOut()) == null || (plainString = amountOut.toPlainString()) == null) ? null : StringExtKt.stripZeros$default(plainString, (char) 0, 1, null);
        this.shouldIgnoreAmountChanges = stripZeros$default != null;
        resetStateTo$default(this, new SwapUiState.Idle(true, null, 2, null), null, 2, null);
        this.amount = "";
        if (this.swapProtocol.isCrossChain()) {
            NetworkItem.Crypto crypto = this.selectedInputNetworkItem;
            this.currentNetworkSelectionSide = SwapSide.INPUT;
            onNetworkSelected(this.selectedOutputNetworkItem);
            this.currentNetworkSelectionSide = SwapSide.OUTPUT;
            onNetworkSelected(crypto);
        }
        SwapSide swapSide = SwapSide.INPUT;
        selectToken(swapSide, tokenDetailed2);
        selectToken(SwapSide.OUTPUT, tokenDetailed);
        if (stripZeros$default != null) {
            this.shouldIgnoreAmountChanges = false;
            this.amount = stripZeros$default;
            ((WalletSwapProcessView) getViewState()).setAmount(swapSide, stripZeros$default);
            this.amountSubject.onNext(stripZeros$default);
        }
    }

    public final void approve() {
        ApproveArgs resolveApproveArgs;
        if (isValidForApprove() && (resolveApproveArgs = resolveApproveArgs()) != null) {
            Observable<Result<String>> observeOn = this.swapInteractor.approveToken(resolveApproveArgs).observeOn(this.schedulersProvider.mo716ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "swapInteractor\n         …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                    m1608invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1608invoke(Result<? extends String> it) {
                    TokenApproveData inputTokenApprovalData;
                    HashMap hashMap;
                    NetworkItem.Crypto crypto;
                    HashMap hashMap2;
                    NetworkItem.Crypto crypto2;
                    int collectionSizeOrDefault;
                    List mutableList;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends String> result = it;
                    if (result instanceof Result.Success) {
                        inputTokenApprovalData = WalletSwapProcessPresenter.this.getInputTokenApprovalData();
                        if (inputTokenApprovalData != null) {
                            hashMap = WalletSwapProcessPresenter.this.tokensApprovalData;
                            crypto = WalletSwapProcessPresenter.this.selectedInputNetworkItem;
                            String networkId = crypto.getNetworkId();
                            hashMap2 = WalletSwapProcessPresenter.this.tokensApprovalData;
                            crypto2 = WalletSwapProcessPresenter.this.selectedInputNetworkItem;
                            List<TokenApproveData> list = (List) hashMap2.get(crypto2.getNetworkId());
                            if (list == null) {
                                list = CollectionsKt__CollectionsKt.emptyList();
                            }
                            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                            for (TokenApproveData tokenApproveData : list) {
                                if (Intrinsics.areEqual(inputTokenApprovalData.getToken(), tokenApproveData.getToken())) {
                                    tokenApproveData = new TokenApproveData.InProgress(inputTokenApprovalData.getToken(), inputTokenApprovalData.getValue());
                                }
                                arrayList.add(tokenApproveData);
                            }
                            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                            hashMap.put(networkId, mutableList);
                        }
                        WalletSwapProcessPresenter.this.renderState(SwapUiState.ApprovalPending.INSTANCE);
                        WalletSwapProcessPresenter.loadApproveTokensInfo$default(WalletSwapProcessPresenter.this, true, null, 2, null);
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showSuccessApproveAlert();
                    } else if (result instanceof Result.Error) {
                        WalletSwapProcessPresenter.this.handleSwapErrors((Result.Error) result);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable error) {
                    Timber.m6e(error);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 != null) {
                        String message = error.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        baseView2.showToast(message);
                    }
                    Intrinsics.checkNotNullExpressionValue(error, "error");
                }
            }));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    public final void resetStateIfNeeded() {
        if (this.state instanceof SwapUiState.Swap) {
            this.binanceConvertQuote = null;
            this.swapMetadata = null;
            this.selectedSwapFee = null;
        }
        this.amountSubject.onNext(this.amount);
    }

    public final void onApprovalInfoClick() {
        ((WalletSwapProcessView) getViewState()).showApprovalInfoDialog(new AnimatedSpannableDialogModel(C3473R.raw.fork_common_info, this.resourceManager.getString(C3473R.string.wallet_swap_process_what_is_approve), this.resourceManager.getString(C3473R.string.wallet_swap_process_what_is_approve_dialog_description), this.resourceManager.getString(C3473R.string.common_ok)));
    }

    public final void onApproveClick() {
        WalletSwapProcessView walletSwapProcessView = (WalletSwapProcessView) getViewState();
        String string = this.resourceManager.getString(C3473R.string.wallet_swap_process_confirm_approve_alert_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3473R.string.wallet_swap_process_confirm_approve_alert_description;
        Object[] objArr = new Object[1];
        TokenDetailed tokenDetailed = this.inputToken;
        String ticker = tokenDetailed != null ? tokenDetailed.getTicker() : null;
        if (ticker == null) {
            ticker = "";
        }
        objArr[0] = ticker;
        walletSwapProcessView.showApprovalConfirmationDialog(new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3473R.string.common_cancel), this.resourceManager.getString(C3473R.string.wallet_swap_process_confirm_approve_alert_action)));
    }

    public final void startSelectTokenScreen(final SwapSide side) {
        TokenDetailed tokenDetailed;
        TransactionDirection transactionDirection;
        List<OutputConvertToken> second;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(side, "side");
        SwapSide swapSide = SwapSide.INPUT;
        TokenDetailed tokenDetailed2 = side == swapSide ? this.inputToken : this.outputToken;
        WalletSwapScreenType walletSwapScreenType = this.screenType;
        if (walletSwapScreenType instanceof WalletSwapScreenType.Binance) {
            int i = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
            if (i == 1) {
                if (getAvailableTokensByNetwork(NetworksHelper.getBSCNetwork().getId()).isEmpty()) {
                    loadAvailableSwapTokensBinance(true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda2
                        @Override // com.iMe.fork.utils.Callbacks$Callback
                        public final void invoke() {
                            WalletSwapProcessPresenter.startSelectTokenScreen$lambda$2(WalletSwapProcessPresenter.this, side);
                        }
                    });
                } else {
                    ((WalletSwapProcessView) getViewState()).openSelectTokenScreen(tokenDetailed2, new SelectTokenScreenType.Binance(getAvailableTokensByNetwork(NetworksHelper.getBSCNetwork().getId())), NetworksHelper.getBSCNetwork().getId(), true, new Function2<TokenDetailed, FiatValue, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$startSelectTokenScreen$2
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(TokenDetailed tokenDetailed3, FiatValue fiatValue) {
                            invoke2(tokenDetailed3, fiatValue);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(TokenDetailed token, FiatValue fiatValue) {
                            Intrinsics.checkNotNullParameter(token, "token");
                            WalletSwapProcessPresenter.this.selectToken(side, token);
                        }
                    });
                }
            } else if (i == 2) {
                if (this.inputToken == null) {
                    ((WalletSwapProcessView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.wallet_swap_process_give_token_validation));
                    return;
                }
                Pair<String, ? extends List<OutputConvertToken>> pair = this.binanceAvailableOppositeSwapTokens;
                r1 = null;
                List list = null;
                String first = pair != null ? pair.getFirst() : null;
                TokenDetailed tokenDetailed3 = this.inputToken;
                if (Intrinsics.areEqual(first, tokenDetailed3 != null ? tokenDetailed3.getTicker() : null)) {
                    WalletSwapProcessView walletSwapProcessView = (WalletSwapProcessView) getViewState();
                    Pair<String, ? extends List<OutputConvertToken>> pair2 = this.binanceAvailableOppositeSwapTokens;
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
                    walletSwapProcessView.openSelectTokenScreen(tokenDetailed2, new SelectTokenScreenType.Binance(list), NetworksHelper.getBSCNetwork().getId(), false, new Function2<TokenDetailed, FiatValue, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$startSelectTokenScreen$4
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(TokenDetailed tokenDetailed4, FiatValue fiatValue) {
                            invoke2(tokenDetailed4, fiatValue);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(TokenDetailed token, FiatValue fiatValue) {
                            Intrinsics.checkNotNullParameter(token, "token");
                            WalletSwapProcessPresenter.this.selectToken(side, token);
                        }
                    });
                    return;
                }
                TokenDetailed tokenDetailed4 = this.inputToken;
                String ticker = tokenDetailed4 != null ? tokenDetailed4.getTicker() : null;
                if (ticker == null) {
                    ticker = "";
                }
                loadAvailableOppositeSwapTokensBinance(ticker, true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda3
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSwapProcessPresenter.startSelectTokenScreen$lambda$4(WalletSwapProcessPresenter.this, side);
                    }
                });
            }
        } else if (walletSwapScreenType instanceof WalletSwapScreenType.Crypto) {
            int[] iArr = WhenMappings.$EnumSwitchMapping$0;
            int i2 = iArr[side.ordinal()];
            if (i2 == 1) {
                tokenDetailed = this.outputToken;
            } else if (i2 != 2) {
                throw new NoWhenBranchMatchedException();
            } else {
                tokenDetailed = this.inputToken;
            }
            int i3 = iArr[side.ordinal()];
            if (i3 == 1) {
                transactionDirection = TransactionDirection.OUT;
            } else if (i3 != 2) {
                throw new NoWhenBranchMatchedException();
            } else {
                transactionDirection = TransactionDirection.f459IN;
            }
            ((WalletSwapProcessView) getViewState()).openSelectTokenScreen(tokenDetailed2, new SelectTokenScreenType.Swap(this.swapProtocol, transactionDirection, tokenDetailed), getNetworkIdBySwapSide(side), side == swapSide, new Function2<TokenDetailed, FiatValue, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$startSelectTokenScreen$6
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TokenDetailed tokenDetailed5, FiatValue fiatValue) {
                    invoke2(tokenDetailed5, fiatValue);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(TokenDetailed token, FiatValue fiatValue) {
                    Intrinsics.checkNotNullParameter(token, "token");
                    if (SwapSide.this == SwapSide.OUTPUT) {
                        this.outputTokenRate = fiatValue;
                    }
                    this.selectToken(SwapSide.this, token);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenScreen$lambda$2(WalletSwapProcessPresenter this$0, SwapSide side) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(side, "$side");
        this$0.startSelectTokenScreen(side);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenScreen$lambda$4(WalletSwapProcessPresenter this$0, SwapSide side) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(side, "$side");
        this$0.startSelectTokenScreen(side);
    }

    public final void startSwapFlow() {
        ((WalletSwapProcessView) getViewState()).showSwapConfirmationDialog(getSwapConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProcessPresenter.startSwapFlow$lambda$5(WalletSwapProcessPresenter.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSwapFlow$lambda$5(WalletSwapProcessPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletSwapScreenType walletSwapScreenType = this$0.screenType;
        if (walletSwapScreenType instanceof WalletSwapScreenType.Binance) {
            this$0.swapBinance();
        } else if (walletSwapScreenType instanceof WalletSwapScreenType.Crypto) {
            this$0.swapCrypto();
        }
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
        subscribeToAmountSubject();
        resolveArgs();
        resolveAvailableNetworks();
        resolveSelectedNetworkType();
        setupSwapInformation();
        SwapSide swapSide = SwapSide.INPUT;
        ((WalletSwapProcessView) getViewState()).setupNetwork(getNetworkItemBySwapSide(swapSide), swapSide);
        SwapSide swapSide2 = SwapSide.OUTPUT;
        ((WalletSwapProcessView) getViewState()).setupNetwork(getNetworkItemBySwapSide(swapSide2), swapSide2);
        renderState(new SwapUiState.Idle(true, null, 2, null));
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void selectToken(SwapSide swapSide, TokenDetailed tokenDetailed) {
        WalletSwapScreenType walletSwapScreenType = this.screenType;
        if (walletSwapScreenType instanceof WalletSwapScreenType.Binance) {
            int i = WhenMappings.$EnumSwitchMapping$0[swapSide.ordinal()];
            if (i == 1) {
                this.inputToken = tokenDetailed;
                if (tokenDetailed != null) {
                    ((WalletSwapProcessView) getViewState()).onTokenSelected(swapSide, tokenDetailed);
                    loadAvailableOppositeSwapTokensBinance$default(this, tokenDetailed.getTicker(), false, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda1
                        @Override // com.iMe.fork.utils.Callbacks$Callback
                        public final void invoke() {
                            WalletSwapProcessPresenter.selectToken$lambda$6(WalletSwapProcessPresenter.this);
                        }
                    }, 2, null);
                    loadBalance(tokenDetailed);
                }
            } else if (i != 2) {
            } else {
                this.outputToken = tokenDetailed;
                if (this.inputToken == null || tokenDetailed == null) {
                    return;
                }
                ((WalletSwapProcessView) getViewState()).onTokenSelected(swapSide, tokenDetailed);
                checkMinMaxInputValues();
            }
        } else if (walletSwapScreenType instanceof WalletSwapScreenType.Crypto) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[swapSide.ordinal()];
            if (i2 == 1) {
                this.inputToken = tokenDetailed;
                if (tokenDetailed != null) {
                    ((WalletSwapProcessView) getViewState()).onTokenSelected(swapSide, tokenDetailed);
                    loadBalance(tokenDetailed);
                    if (getInputTokenApprovalData() != null || tokenDetailed.isCoin()) {
                        checkSelectedTokenApprove();
                    } else {
                        loadApproveTokensInfo(false, TokenExtKt.toIndexedToken(tokenDetailed));
                    }
                }
            } else if (i2 == 2) {
                this.outputToken = tokenDetailed;
                if (tokenDetailed != null) {
                    ((WalletSwapProcessView) getViewState()).onTokenSelected(swapSide, tokenDetailed);
                }
            }
            resetStateIfNeeded();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void selectToken$lambda$6(WalletSwapProcessPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkMinMaxInputValues();
    }

    private final NetworkItem.Crypto getNetworkItemBySwapSide(SwapSide swapSide) {
        int i = WhenMappings.$EnumSwitchMapping$0[swapSide.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return this.swapProtocol.isCrossChain() ? this.selectedOutputNetworkItem : this.selectedInputNetworkItem;
            }
            throw new NoWhenBranchMatchedException();
        }
        return this.selectedInputNetworkItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String getNetworkIdBySwapSide$default(WalletSwapProcessPresenter walletSwapProcessPresenter, SwapSide swapSide, int i, Object obj) {
        if ((i & 1) != 0) {
            swapSide = SwapSide.INPUT;
        }
        return walletSwapProcessPresenter.getNetworkIdBySwapSide(swapSide);
    }

    private final String getNetworkIdBySwapSide(SwapSide swapSide) {
        return getNetworkItemBySwapSide(swapSide).getNetworkId();
    }

    private final List<TokenDetailed> getAvailableTokensByNetwork(String str) {
        List<TokenDetailed> emptyList;
        List<TokenDetailed> list = this.supportedSwapTokens.get(str);
        if (list == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return list;
    }

    private final void resetLoadedInformation() {
        this.supportedSwapTokens = new HashMap<>();
        this.tokensApprovalData = new HashMap<>();
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
        this.availableNetworks = NetworkUiMappingKt.mapToUI(arrayList);
    }

    private final void resolveSelectedNetworkType() {
        Object obj;
        Object obj2;
        WalletSwapScreenType walletSwapScreenType = this.screenType;
        if (!(walletSwapScreenType instanceof WalletSwapScreenType.Crypto) || ((WalletSwapScreenType.Crypto) walletSwapScreenType).getForcedNetworkId() == null) {
            Iterator<T> it = this.availableNetworks.iterator();
            while (true) {
                obj = null;
                if (!it.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it.next();
                if (Intrinsics.areEqual(((NetworkItem.Crypto) obj2).getNetworkId(), this.cryptoPreferenceHelper.getNetworkId())) {
                    break;
                }
            }
            NetworkItem.Crypto crypto = (NetworkItem.Crypto) obj2;
            if (crypto == null) {
                crypto = (NetworkItem.Crypto) CollectionsKt.first((List<? extends Object>) this.availableNetworks);
            }
            this.selectedInputNetworkItem = crypto;
            Iterator<T> it2 = this.availableNetworks.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (!Intrinsics.areEqual((NetworkItem.Crypto) next, this.selectedInputNetworkItem)) {
                    obj = next;
                    break;
                }
            }
            NetworkItem.Crypto crypto2 = (NetworkItem.Crypto) obj;
            if (crypto2 == null) {
                crypto2 = (NetworkItem.Crypto) CollectionsKt.first((List<? extends Object>) this.availableNetworks);
            }
            this.selectedOutputNetworkItem = crypto2;
            return;
        }
        NetworkItem.Crypto mapToUI = NetworkUiMappingKt.mapToUI(NetworksHelper.getNetworkById(((WalletSwapScreenType.Crypto) this.screenType).getForcedNetworkId()));
        this.selectedInputNetworkItem = mapToUI;
        this.selectedOutputNetworkItem = mapToUI;
    }

    private final void resolveArgs() {
        WalletSwapScreenType walletSwapScreenType = this.screenType;
        if (walletSwapScreenType instanceof WalletSwapScreenType.Binance) {
            WalletSwapScreenType.Binance binance = (WalletSwapScreenType.Binance) walletSwapScreenType;
            this.inputToken = binance.getFromToken();
            this.outputToken = binance.getToToken();
        } else if (walletSwapScreenType instanceof WalletSwapScreenType.Crypto) {
            WalletSwapScreenType.Crypto crypto = (WalletSwapScreenType.Crypto) walletSwapScreenType;
            this.swapProtocol = crypto.getSwapProtocol();
            this.swapProtocolInfo = crypto.getSwapProtocolInfo();
            this.inputToken = crypto.getFromToken();
            this.outputToken = crypto.getToToken();
        }
    }

    private final void setupSwapInformation() {
        WalletSwapScreenType walletSwapScreenType = this.screenType;
        if (walletSwapScreenType instanceof WalletSwapScreenType.Binance) {
            ((WalletSwapProcessView) getViewState()).setupScreenForSwap(this.resourceManager.getString(C3473R.string.binance_convert_toolbar_title), this.resourceManager.getString(C3473R.string.binance_convert_description), C3473R.C3475drawable.fork_ic_bnb_logo, false, true);
        } else if (walletSwapScreenType instanceof WalletSwapScreenType.Crypto) {
            Pair<Boolean, Boolean> networkSwitchState = getNetworkSwitchState();
            boolean booleanValue = networkSwitchState.component1().booleanValue();
            ((WalletSwapProcessView) getViewState()).setupScreenForSwap(this.resourceManager.getString(this.swapProtocolInfo.getName()), this.resourceManager.getString(this.swapProtocolInfo.getLongDescription()), this.swapProtocolInfo.getLogo(), networkSwitchState.component2().booleanValue(), booleanValue);
        }
    }

    private final Pair<Boolean, Boolean> getNetworkSwitchState() {
        return TuplesKt.m103to(Boolean.valueOf(this.swapProtocol.isCrossChain()), Boolean.valueOf(this.swapProtocol != SwapProtocol.UNKNOWN));
    }

    private final void swapCrypto() {
        SwapArgs resolveSwapArgs;
        if (this.swapMetadata == null || !(this.state instanceof SwapUiState.Swap) || (resolveSwapArgs = resolveSwapArgs()) == null) {
            return;
        }
        Observable<Result<String>> observeOn = this.swapInteractor.swap(resolveSwapArgs).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "swapInteractor\n         …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1616invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1616invoke(Result<? extends String> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    WalletSwapProcessPresenter.loadApproveTokensInfo$default(WalletSwapProcessPresenter.this, false, null, 2, null);
                    WalletSwapProcessPresenter.resetStateTo$default(WalletSwapProcessPresenter.this, new SwapUiState.Idle(true, null, 2, null), null, 2, null);
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showSuccessSwapAlert();
                } else if (result instanceof Result.Error) {
                    WalletSwapProcessPresenter.this.handleSwapErrors((Result.Error) result);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void swapBinance() {
        BinanceConvertQuote binanceConvertQuote = this.binanceConvertQuote;
        if (binanceConvertQuote == null || !(this.state instanceof SwapUiState.Swap)) {
            return;
        }
        BinanceInternalInteractor binanceInternalInteractor = this.binanceInternalInteractor;
        String quoteId = binanceConvertQuote != null ? binanceConvertQuote.getQuoteId() : null;
        if (quoteId == null) {
            quoteId = "";
        }
        Observable<Result<Boolean>> observeOn = binanceInternalInteractor.confirmConvertQuote(quoteId).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1615invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1615invoke(Result<? extends Boolean> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    WalletSwapProcessPresenter.resetStateTo$default(WalletSwapProcessPresenter.this, new SwapUiState.Idle(true, null, 2, null), null, 2, null);
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showSuccessSwapAlert();
                } else if (result instanceof Result.Error) {
                    WalletSwapProcessPresenter.this.handleSwapErrors((Result.Error) result);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<SwapUiState.Swap>> getSwapPrepareObservable() {
        Double doubleOrNull;
        SwapProtocol swapProtocol;
        FiatValue rateToFiat;
        TokenDetailed tokenDetailed = this.inputToken;
        if (tokenDetailed == null) {
            Observable<Result<SwapUiState.Swap>> empty = Observable.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty()");
            return empty;
        }
        TokenDetailed tokenDetailed2 = this.outputToken;
        if (tokenDetailed2 == null) {
            Observable<Result<SwapUiState.Swap>> empty2 = Observable.empty();
            Intrinsics.checkNotNullExpressionValue(empty2, "empty()");
            return empty2;
        }
        WalletSwapScreenType walletSwapScreenType = this.screenType;
        if (walletSwapScreenType instanceof WalletSwapScreenType.Binance) {
            Observable<Result<BinanceConvertQuote>> convertQuote = this.binanceInternalInteractor.getConvertQuote(tokenDetailed.getTicker(), tokenDetailed2.getTicker(), this.amount);
            final Function1<Result<? extends BinanceConvertQuote>, Result<? extends SwapUiState.Swap>> function1 = new Function1<Result<? extends BinanceConvertQuote>, Result<? extends SwapUiState.Swap>>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$getSwapPrepareObservable$$inlined$mapSuccess$1
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public final Result<? extends SwapUiState.Swap> invoke(Result<? extends BinanceConvertQuote> result) {
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (!(result instanceof Result.Success)) {
                        if (result instanceof Result.Error) {
                            Result<? extends SwapUiState.Swap> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                            return error$default;
                        } else if (result instanceof Object) {
                            return result;
                        } else {
                            return null;
                        }
                    }
                    WalletSwapProcessPresenter.this.binanceConvertQuote = (BinanceConvertQuote) result.getData();
                    Object data = result.getData();
                    Intrinsics.checkNotNull(data);
                    return Result.Companion.success(new SwapUiState.Swap.Binance((BinanceConvertQuote) data));
                }
            };
            Observable map = convertQuote.map(new Function(function1) { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$inlined$sam$i$io_reactivex_functions_Function$0
                private final /* synthetic */ Function1 function;

                {
                    Intrinsics.checkNotNullParameter(function1, "function");
                    this.function = function1;
                }

                @Override // io.reactivex.functions.Function
                public final /* synthetic */ Object apply(Object obj) {
                    return this.function.invoke(obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
            return map;
        } else if (walletSwapScreenType instanceof WalletSwapScreenType.Crypto) {
            if (Intrinsics.areEqual(this.swapProtocolInfo, SwapProtocolInfo.Oneinch.INSTANCE)) {
                TokenBalance tokenBalance = this.tokenBalance;
                double orZero = NumberExtKt.orZero((tokenBalance == null || (rateToFiat = tokenBalance.getRateToFiat()) == null) ? null : Double.valueOf(rateToFiat.getValue()));
                doubleOrNull = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(this.amount);
                double orZero2 = orZero * NumberExtKt.orZero(doubleOrNull);
                if (tokenDetailed.isCoin() || orZero2 < 5.0d) {
                    swapProtocol = SwapProtocol.ONEINCH;
                } else {
                    swapProtocol = SwapProtocol.ONEINCH_FUSION;
                }
                this.swapProtocol = swapProtocol;
            }
            Observable<Result<CryptoSwapMetadata>> quoteToSwap = this.swapInteractor.getQuoteToSwap(this.swapProtocol, TokenExtKt.toIndexedToken(tokenDetailed), TokenExtKt.toIndexedToken(tokenDetailed2), this.amount, TradeType.EXACT_INPUT, Float.valueOf(SwapSlippage.PERCENT_5.getPercent()));
            final Function1<Result<? extends CryptoSwapMetadata>, Result<? extends SwapUiState.Swap>> function12 = new Function1<Result<? extends CryptoSwapMetadata>, Result<? extends SwapUiState.Swap>>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$getSwapPrepareObservable$$inlined$mapSuccess$2
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public final Result<? extends SwapUiState.Swap> invoke(Result<? extends CryptoSwapMetadata> result) {
                    SwapUiState.Swap.Crypto cryptoSwapUiState;
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (!(result instanceof Result.Success)) {
                        if (result instanceof Result.Error) {
                            Result<? extends SwapUiState.Swap> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                            return error$default;
                        } else if (result instanceof Object) {
                            return result;
                        } else {
                            return null;
                        }
                    }
                    WalletSwapProcessPresenter.this.swapMetadata = (CryptoSwapMetadata) result.getData();
                    WalletSwapProcessPresenter walletSwapProcessPresenter = WalletSwapProcessPresenter.this;
                    TransactionSpeedLevel transactionSpeedLevel = TransactionSpeedLevel.MEDIUM;
                    Object data = result.getData();
                    Intrinsics.checkNotNull(data);
                    TokenDetailed feeToken = ((CryptoSwapMetadata) data).getFeeToken();
                    Object data2 = result.getData();
                    Intrinsics.checkNotNull(data2);
                    walletSwapProcessPresenter.selectedSwapFee = new GasPriceItem(transactionSpeedLevel, feeToken, ((CryptoSwapMetadata) data2).getTransactionParams().getMedium());
                    cryptoSwapUiState = WalletSwapProcessPresenter.this.getCryptoSwapUiState();
                    return Result.Companion.success(cryptoSwapUiState);
                }
            };
            Observable map2 = quoteToSwap.map(new Function(function12) { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$inlined$sam$i$io_reactivex_functions_Function$0
                private final /* synthetic */ Function1 function;

                {
                    Intrinsics.checkNotNullParameter(function12, "function");
                    this.function = function12;
                }

                @Override // io.reactivex.functions.Function
                public final /* synthetic */ Object apply(Object obj) {
                    return this.function.invoke(obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map2, "crossinline body: (T) ->…ult as? R\n        }\n    }");
            return map2;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private final void loadBalance(TokenDetailed tokenDetailed) {
        WalletSwapScreenType walletSwapScreenType = this.screenType;
        if (walletSwapScreenType instanceof WalletSwapScreenType.Binance) {
            loadBalanceBinance(tokenDetailed);
        } else if (walletSwapScreenType instanceof WalletSwapScreenType.Crypto) {
            loadBalanceCrypto(tokenDetailed);
        }
    }

    private final void loadBalanceBinance(final TokenDetailed tokenDetailed) {
        Observable<Result<List<BinanceTokenBalanceInfo>>> observeOn = this.binanceInternalInteractor.getUserBalance().observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BinanceTokenBalanceInfo>>, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> result) {
                m1612invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1612invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> it) {
                ResourceManager resourceManager;
                String formatBinanceBalance;
                Object obj;
                BinanceTokenBalanceInfo binanceTokenBalanceInfo;
                BinanceTokenBalanceInfo binanceTokenBalanceInfo2;
                String formatBinanceBalance2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends BinanceTokenBalanceInfo>> result = it;
                if (result instanceof Result.Success) {
                    WalletSwapProcessPresenter walletSwapProcessPresenter = WalletSwapProcessPresenter.this;
                    Iterator it2 = ((Iterable) ((Result.Success) result).getData()).iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        if (Intrinsics.areEqual(((BinanceTokenBalanceInfo) obj).getAsset(), tokenDetailed.getTicker())) {
                            break;
                        }
                    }
                    walletSwapProcessPresenter.binanceTokenBalance = (BinanceTokenBalanceInfo) obj;
                    binanceTokenBalanceInfo = WalletSwapProcessPresenter.this.binanceTokenBalance;
                    if (binanceTokenBalanceInfo != null) {
                        WalletSwapProcessPresenter walletSwapProcessPresenter2 = WalletSwapProcessPresenter.this;
                        binanceTokenBalanceInfo2 = walletSwapProcessPresenter2.binanceTokenBalance;
                        Intrinsics.checkNotNull(binanceTokenBalanceInfo2);
                        formatBinanceBalance2 = walletSwapProcessPresenter2.formatBinanceBalance(binanceTokenBalanceInfo2);
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showTokenBalance("", formatBinanceBalance2);
                    }
                } else if (result instanceof Result.Loading) {
                    formatBinanceBalance = WalletSwapProcessPresenter.this.formatBinanceBalance(BinanceTokenBalanceInfo.Companion.createEmptyBalanceFor(tokenDetailed.getTicker()));
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showTokenBalance("", formatBinanceBalance);
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletSwapProcessPresenter.this.resourceManager;
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadBalanceCrypto(final TokenDetailed tokenDetailed) {
        Observable observeOn = WalletInteractor.getTokenBalance$default(this.walletInteractor, TokenExtKt.toIndexedToken(tokenDetailed), false, getNetworkIdBySwapSide$default(this, null, 1, null), 2, null).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TokenBalance>, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
                m1613invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1613invoke(Result<? extends TokenBalance> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                PublishSubject publishSubject;
                String str;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TokenBalance> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    WalletSwapProcessPresenter.this.tokenBalance = (TokenBalance) success.getData();
                    resourceManager3 = WalletSwapProcessPresenter.this.resourceManager;
                    String string = resourceManager3.getString(C3473R.string.wallet_swap_process_max);
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showTokenBalance(string, ' ' + TokenBalanceExtKt.getTotalBalanceShortText((TokenBalance) success.getData()));
                    publishSubject = WalletSwapProcessPresenter.this.amountSubject;
                    str = WalletSwapProcessPresenter.this.amount;
                    publishSubject.onNext(str);
                } else if (result instanceof Result.Loading) {
                    resourceManager2 = WalletSwapProcessPresenter.this.resourceManager;
                    String string2 = resourceManager2.getString(C3473R.string.wallet_swap_process_max);
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showTokenBalance(string2, ' ' + TokenBalanceExtKt.getTotalBalanceShortText(TokenBalance.Companion.createEmptyBalanceFor(tokenDetailed)));
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletSwapProcessPresenter.this.resourceManager;
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    static /* synthetic */ void loadAvailableSwapTokensBinance$default(WalletSwapProcessPresenter walletSwapProcessPresenter, boolean z, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            callbacks$Callback = new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda5
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSwapProcessPresenter.loadAvailableSwapTokensBinance$lambda$18();
                }
            };
        }
        walletSwapProcessPresenter.loadAvailableSwapTokensBinance(z, callbacks$Callback);
    }

    private final void loadAvailableSwapTokensBinance(final boolean z, final Callbacks$Callback callbacks$Callback) {
        if (this.screenType instanceof WalletSwapScreenType.Binance) {
            Observable<Result<List<BinanceTokenInfo>>> observeOn = this.binanceInternalInteractor.getTokensForConvert().observeOn(this.schedulersProvider.mo716ui());
            final Function1<Observable<Result<? extends List<? extends BinanceTokenInfo>>>, ObservableSource<Result<? extends List<? extends BinanceTokenInfo>>>> function1 = new Function1<Observable<Result<? extends List<? extends BinanceTokenInfo>>>, ObservableSource<Result<? extends List<? extends BinanceTokenInfo>>>>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ ObservableSource<Result<? extends List<? extends BinanceTokenInfo>>> invoke(Observable<Result<? extends List<? extends BinanceTokenInfo>>> observable) {
                    return invoke2((Observable<Result<List<BinanceTokenInfo>>>) observable);
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final ObservableSource<Result<List<BinanceTokenInfo>>> invoke2(Observable<Result<List<BinanceTokenInfo>>> observable) {
                    Intrinsics.checkNotNullParameter(observable, "observable");
                    if (z) {
                        T viewState = this.getViewState();
                        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                        return RxExtKt.withLoadingDialog$default((Observable) observable, (BaseView) viewState, false, 2, (Object) null);
                    }
                    return observable;
                }
            };
            Observable<R> compose = observeOn.compose(new ObservableTransformer() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda7
                @Override // io.reactivex.ObservableTransformer
                public final ObservableSource apply(Observable observable) {
                    ObservableSource loadAvailableSwapTokensBinance$lambda$19;
                    loadAvailableSwapTokensBinance$lambda$19 = WalletSwapProcessPresenter.loadAvailableSwapTokensBinance$lambda$19(Function1.this, observable);
                    return loadAvailableSwapTokensBinance$lambda$19;
                }
            });
            Intrinsics.checkNotNullExpressionValue(compose, "private fun loadAvailabl…     .autoDispose()\n    }");
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = compose.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BinanceTokenInfo>>, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenInfo>> result) {
                    m1611invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1611invoke(Result<? extends List<? extends BinanceTokenInfo>> it) {
                    ResourceManager resourceManager;
                    HashMap hashMap;
                    int collectionSizeOrDefault;
                    List mutableList;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends List<? extends BinanceTokenInfo>> result = it;
                    if (result instanceof Result.Success) {
                        hashMap = WalletSwapProcessPresenter.this.supportedSwapTokens;
                        Iterable<BinanceTokenInfo> iterable = (Iterable) ((Result.Success) result).getData();
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                        for (BinanceTokenInfo binanceTokenInfo : iterable) {
                            arrayList.add(SelectableMappingKt.mapToDetailedToken(binanceTokenInfo));
                        }
                        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                        hashMap.put(NetworkType.BSC, mutableList);
                        callbacks$Callback.invoke();
                    } else if (result instanceof Result.Error) {
                        resourceManager = WalletSwapProcessPresenter.this.resourceManager;
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable error) {
                    Timber.m6e(error);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 != null) {
                        String message = error.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        baseView2.showToast(message);
                    }
                    Intrinsics.checkNotNullExpressionValue(error, "error");
                }
            }));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadAvailableSwapTokensBinance$lambda$19(Function1 tmp0, Observable p0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        Intrinsics.checkNotNullParameter(p0, "p0");
        return (ObservableSource) tmp0.invoke(p0);
    }

    static /* synthetic */ void loadAvailableOppositeSwapTokensBinance$default(WalletSwapProcessPresenter walletSwapProcessPresenter, String str, boolean z, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            callbacks$Callback = new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda4
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSwapProcessPresenter.loadAvailableOppositeSwapTokensBinance$lambda$22();
                }
            };
        }
        walletSwapProcessPresenter.loadAvailableOppositeSwapTokensBinance(str, z, callbacks$Callback);
    }

    private final void loadAvailableOppositeSwapTokensBinance(final String str, final boolean z, final Callbacks$Callback callbacks$Callback) {
        if (this.screenType instanceof WalletSwapScreenType.Binance) {
            Observable<Result<List<OutputConvertToken>>> observeOn = this.binanceInternalInteractor.getOppositeTokensForConvertByToken(str).observeOn(this.schedulersProvider.mo716ui());
            final Function1<Observable<Result<? extends List<? extends OutputConvertToken>>>, ObservableSource<Result<? extends List<? extends OutputConvertToken>>>> function1 = new Function1<Observable<Result<? extends List<? extends OutputConvertToken>>>, ObservableSource<Result<? extends List<? extends OutputConvertToken>>>>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ ObservableSource<Result<? extends List<? extends OutputConvertToken>>> invoke(Observable<Result<? extends List<? extends OutputConvertToken>>> observable) {
                    return invoke2((Observable<Result<List<OutputConvertToken>>>) observable);
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final ObservableSource<Result<List<OutputConvertToken>>> invoke2(Observable<Result<List<OutputConvertToken>>> observable) {
                    Intrinsics.checkNotNullParameter(observable, "observable");
                    if (z) {
                        T viewState = this.getViewState();
                        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                        return RxExtKt.withLoadingDialog$default((Observable) observable, (BaseView) viewState, false, 2, (Object) null);
                    }
                    return observable;
                }
            };
            Observable<R> compose = observeOn.compose(new ObservableTransformer() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda6
                @Override // io.reactivex.ObservableTransformer
                public final ObservableSource apply(Observable observable) {
                    ObservableSource loadAvailableOppositeSwapTokensBinance$lambda$23;
                    loadAvailableOppositeSwapTokensBinance$lambda$23 = WalletSwapProcessPresenter.loadAvailableOppositeSwapTokensBinance$lambda$23(Function1.this, observable);
                    return loadAvailableOppositeSwapTokensBinance$lambda$23;
                }
            });
            Intrinsics.checkNotNullExpressionValue(compose, "private fun loadAvailabl…     .autoDispose()\n    }");
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = compose.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends OutputConvertToken>>, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends OutputConvertToken>> result) {
                    m1610invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1610invoke(Result<? extends List<? extends OutputConvertToken>> it) {
                    ResourceManager resourceManager;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends List<? extends OutputConvertToken>> result = it;
                    if (result instanceof Result.Success) {
                        WalletSwapProcessPresenter.this.binanceAvailableOppositeSwapTokens = TuplesKt.m103to(str, ((Result.Success) result).getData());
                        callbacks$Callback.invoke();
                    } else if (result instanceof Result.Error) {
                        resourceManager = WalletSwapProcessPresenter.this.resourceManager;
                        ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable error) {
                    Timber.m6e(error);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 != null) {
                        String message = error.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        baseView2.showToast(message);
                    }
                    Intrinsics.checkNotNullExpressionValue(error, "error");
                }
            }));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadAvailableOppositeSwapTokensBinance$lambda$23(Function1 tmp0, Observable p0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        Intrinsics.checkNotNullParameter(p0, "p0");
        return (ObservableSource) tmp0.invoke(p0);
    }

    private final void loadAvailableSwapTokens(SwapSide swapSide) {
        if (this.screenType instanceof WalletSwapScreenType.Binance) {
            loadAvailableSwapTokensBinance$default(this, false, null, 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void loadApproveTokensInfo$default(WalletSwapProcessPresenter walletSwapProcessPresenter, boolean z, Token token, int i, Object obj) {
        if ((i & 2) != 0) {
            token = null;
        }
        walletSwapProcessPresenter.loadApproveTokensInfo(z, token);
    }

    private final void loadApproveTokensInfo(final boolean z, final Token token) {
        Observable<Long> just;
        int collectionSizeOrDefault;
        final List list;
        if (this.screenType instanceof WalletSwapScreenType.Crypto) {
            if (z) {
                just = Observable.interval(15L, TimeUnit.SECONDS);
            } else {
                just = Observable.just(Boolean.TRUE);
            }
            final String networkIdBySwapSide$default = getNetworkIdBySwapSide$default(this, null, 1, null);
            if (token != null) {
                list = CollectionsKt__CollectionsJVMKt.listOf(token);
            } else {
                List<TokenDetailed> list2 = this.supportedSwapTokens.get(networkIdBySwapSide$default);
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
            final Function1<?, ObservableSource<? extends Result<? extends List<? extends TokenApproveData>>>> function1 = new Function1<?, ObservableSource<? extends Result<? extends List<? extends TokenApproveData>>>>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadApproveTokensInfo$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                /* renamed from: invoke */
                public final ObservableSource<? extends Result<? extends List<? extends TokenApproveData>>> invoke2(Object obj) {
                    SwapInteractor swapInteractor;
                    SwapProtocol swapProtocol;
                    swapInteractor = WalletSwapProcessPresenter.this.swapInteractor;
                    String str = networkIdBySwapSide$default;
                    swapProtocol = WalletSwapProcessPresenter.this.swapProtocol;
                    return swapInteractor.getApproveTokensInfo(str, swapProtocol, list);
                }
            };
            Observable observeOn = just.flatMap(new Function() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda8
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource loadApproveTokensInfo$lambda$27;
                    loadApproveTokensInfo$lambda$27 = WalletSwapProcessPresenter.loadApproveTokensInfo$lambda$27(Function1.this, obj);
                    return loadApproveTokensInfo$lambda$27;
                }
            }).observeOn(this.schedulersProvider.mo716ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "private fun loadApproveT…     .autoDispose()\n    }");
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends TokenApproveData>>, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TokenApproveData>> result) {
                    m1609invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1609invoke(Result<? extends List<? extends TokenApproveData>> it) {
                    HashMap hashMap;
                    List mutableList;
                    HashMap hashMap2;
                    HashMap hashMap3;
                    HashMap hashMap4;
                    List mutableList2;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends List<? extends TokenApproveData>> result = it;
                    if (result instanceof Result.Success) {
                        if (Token.this != null) {
                            hashMap2 = this.tokensApprovalData;
                            if (hashMap2.get(networkIdBySwapSide$default) == null) {
                                hashMap4 = this.tokensApprovalData;
                                String str = networkIdBySwapSide$default;
                                mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) ((Collection) ((Result.Success) result).getData()));
                                hashMap4.put(str, mutableList2);
                            } else {
                                hashMap3 = this.tokensApprovalData;
                                List list3 = (List) hashMap3.get(networkIdBySwapSide$default);
                                if (list3 != null) {
                                    list3.addAll((Collection) ((Result.Success) result).getData());
                                }
                            }
                        } else {
                            hashMap = this.tokensApprovalData;
                            String str2 = networkIdBySwapSide$default;
                            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ((Collection) ((Result.Success) result).getData()));
                            hashMap.put(str2, mutableList);
                        }
                        this.checkSelectedTokenApprove();
                        this.startUpdatingApproveMetadataIfNeed((List) ((Result.Success) result).getData(), z);
                    } else if (result instanceof Result.Loading) {
                        this.renderState(SwapUiState.Loading.INSTANCE);
                    } else if (result instanceof Result.Error) {
                        this.renderState(new SwapUiState.Idle(false, null, 3, null));
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable error) {
                    Timber.m6e(error);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 != null) {
                        String message = error.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        baseView2.showToast(message);
                    }
                    Intrinsics.checkNotNullExpressionValue(error, "error");
                }
            }));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
            this.loadApproveMetadataDisposable = subscribe;
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadApproveTokensInfo$lambda$27(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSwapErrors(Result.Error<?> error) {
        renderState(new SwapUiState.Idle(false, null, 3, null));
        IErrorStatus status = error.getError().getStatus();
        if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT) {
            ((WalletSwapProcessView) getViewState()).showErrorToast(error, this.resourceManager);
            loadApproveTokensInfo$default(this, false, null, 2, null);
        } else if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
            WalletSwapScreenType walletSwapScreenType = this.screenType;
            if (walletSwapScreenType instanceof WalletSwapScreenType.Binance) {
                ((WalletSwapProcessView) getViewState()).showNotEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(null, null, null, 4, null));
            } else if (walletSwapScreenType instanceof WalletSwapScreenType.Crypto) {
                TokenDetailed tokenDetailed = this.inputToken;
                Intrinsics.checkNotNull(tokenDetailed);
                ((WalletSwapProcessView) getViewState()).showNotEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(tokenDetailed, this.swapProtocol, null, 4, null));
            }
        } else {
            if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_BLOCK_CHAIN_ERROR || status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_INSUFFICIENT_RESERVES_IN_LIQUIDITY_POOL_OF_TOKENS) {
                loadApproveTokensInfo$default(this, false, null, 2, null);
                ((WalletSwapProcessView) getViewState()).showErrorToast(error, this.resourceManager);
                resetStateTo$default(this, new SwapUiState.Idle(false, null, 3, null), null, 2, null);
                return;
            }
            if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG || status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.SWAP_QUOTE_NOT_FOUND) {
                ((WalletSwapProcessView) getViewState()).showErrorToast(error, this.resourceManager);
                resetStateIfNeeded();
            } else if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ERR_AMOUNT_LESS_THAN_MIN) {
                ((WalletSwapProcessView) getViewState()).setInputError(this.resourceManager.getString(C3473R.string.wallet_swap_process_low_amount));
            } else if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ERR_FETCH_TOKEN) {
                WalletSwapProcessView walletSwapProcessView = (WalletSwapProcessView) getViewState();
                String errorMessage = error.getError().getErrorMessage();
                if (errorMessage == null) {
                    errorMessage = "";
                }
                walletSwapProcessView.showCommonErrorDialog(errorMessage);
            } else {
                ((WalletSwapProcessView) getViewState()).showErrorToast(error, this.resourceManager);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void resetStateTo$default(WalletSwapProcessPresenter walletSwapProcessPresenter, SwapUiState swapUiState, SwapSide swapSide, int i, Object obj) {
        if ((i & 2) != 0) {
            swapSide = null;
        }
        walletSwapProcessPresenter.resetStateTo(swapUiState, swapSide);
    }

    private final void resetStateTo(SwapUiState swapUiState, SwapSide swapSide) {
        if (swapUiState instanceof SwapUiState.Idle) {
            this.swapMetadata = null;
            this.selectedSwapFee = null;
            this.selectedDeadline = SwapDeadline.Companion.getDefaultValue();
            this.selectedSlippage = SwapSlippage.Companion.getDefaultValue();
            int i = swapSide == null ? -1 : WhenMappings.$EnumSwitchMapping$0[swapSide.ordinal()];
            if (i == -1) {
                this.inputToken = null;
                this.outputToken = null;
            } else if (i == 1) {
                this.outputToken = null;
            } else if (i == 2) {
                this.inputToken = null;
            }
        }
        renderState(swapUiState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TokenApproveData getInputTokenApprovalData() {
        Object obj = null;
        List<TokenApproveData> list = this.tokensApprovalData.get(getNetworkIdBySwapSide$default(this, null, 1, null));
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                String ticker = ((TokenApproveData) next).getToken().getTicker();
                TokenDetailed tokenDetailed = this.inputToken;
                if (Intrinsics.areEqual(ticker, tokenDetailed != null ? tokenDetailed.getTicker() : null)) {
                    obj = next;
                    break;
                }
            }
            return (TokenApproveData) obj;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkSelectedTokenApprove() {
        if (this.inputToken != null) {
            TokenApproveData inputTokenApprovalData = getInputTokenApprovalData();
            if (inputTokenApprovalData instanceof TokenApproveData.Allowed) {
                this.amountSubject.onNext(this.amount);
            } else if (inputTokenApprovalData instanceof TokenApproveData.InProgress) {
                renderState(SwapUiState.ApprovalPending.INSTANCE);
                loadApproveTokensInfo$default(this, true, null, 2, null);
            } else if (inputTokenApprovalData instanceof TokenApproveData.NeedApprove) {
                TokenApproveData.NeedApprove needApprove = (TokenApproveData.NeedApprove) inputTokenApprovalData;
                this.approveMetadata = needApprove;
                TransactionSpeedLevel transactionSpeedLevel = TransactionSpeedLevel.MEDIUM;
                this.selectedApproveFee = new GasPriceItem(transactionSpeedLevel, needApprove.getFeeToken(), needApprove.getTransactionParams().getFeeByLevel(transactionSpeedLevel));
                renderState(new SwapUiState.Approval(getApproveFeeType(), this.outputToken));
            } else {
                renderState(new SwapUiState.Idle(false, null, 3, null));
            }
        }
    }

    private final SwapFeeScreenArgs resolveSwapFeeScreenArgs() {
        CryptoSwapMetadata cryptoSwapMetadata;
        if (!(this.screenType instanceof WalletSwapScreenType.Crypto) || (cryptoSwapMetadata = this.swapMetadata) == null || this.selectedSwapFee == null) {
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
        if (this.screenType instanceof WalletSwapScreenType.Crypto) {
            TokenDetailed tokenDetailed = this.inputToken;
            boolean z = false;
            if (tokenDetailed != null && tokenDetailed.isCoin()) {
                z = true;
            }
            if (z) {
                return null;
            }
            TokenApproveData inputTokenApprovalData = getInputTokenApprovalData();
            if (inputTokenApprovalData instanceof TokenApproveData.NeedApprove) {
                TokenApproveData.NeedApprove needApprove = (TokenApproveData.NeedApprove) inputTokenApprovalData;
                BlockchainType blockchainType = NetworksHelper.getNetworkById(needApprove.getToken().getNetworkId()).getBlockchainType();
                BigInteger bigInteger = new BigInteger(needApprove.getValue());
                long chainId = needApprove.getTransactionParams().getChainId();
                BigInteger nonce = needApprove.getTransactionParams().getNonce();
                GasPriceItem gasPriceItem = this.selectedApproveFee;
                Intrinsics.checkNotNull(gasPriceItem);
                BigInteger price = gasPriceItem.getInfo().getPrice();
                GasPriceItem gasPriceItem2 = this.selectedApproveFee;
                Intrinsics.checkNotNull(gasPriceItem2);
                return new ApproveArgs.Dex(blockchainType, bigInteger, chainId, nonce, price, gasPriceItem2.getInfo().getLimit(), needApprove.getToken().getAddress(), needApprove.getSpenderContractAddress(), getNetworkIdBySwapSide$default(this, null, 1, null), this.swapProtocol);
            }
            return null;
        }
        return null;
    }

    private final SwapArgs resolveSwapArgs() {
        CryptoSwapMetadata cryptoSwapMetadata;
        if ((this.screenType instanceof WalletSwapScreenType.Crypto) && (cryptoSwapMetadata = this.swapMetadata) != null) {
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
            return new SwapArgs.Dex(this.swapProtocol, amountIn, inputToken, chainId, nonce, price, limit, amountBound, contractAddress, cryptoSwapMetadata.getSwapMethod(), cryptoSwapMetadata.getPath(), this.selectedDeadline.getMinutes(), cryptoSwapMetadata.getValue(), cryptoSwapMetadata.getCallData(), cryptoSwapMetadata.getQuoteId(), getNetworkItemBySwapSide(SwapSide.INPUT).getNetworkId(), getNetworkItemBySwapSide(SwapSide.OUTPUT).getNetworkId());
        }
        return null;
    }

    private final FeeType getSwapFeeType() {
        Function0<Unit> function0 = new Function0<Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$getSwapFeeType$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                WalletSwapProcessPresenter.this.chooseSwapFee();
            }
        };
        GasPriceItem gasPriceItem = this.selectedSwapFee;
        Intrinsics.checkNotNull(gasPriceItem);
        return new FeeType.Custom(function0, gasPriceItem);
    }

    private final FeeType getApproveFeeType() {
        DialogModel feeDialogModel = getFeeDialogModel();
        TokenApproveData.NeedApprove needApprove = this.approveMetadata;
        Intrinsics.checkNotNull(needApprove);
        TransactionParams.Ether transactionParams = needApprove.getTransactionParams();
        TokenApproveData.NeedApprove needApprove2 = this.approveMetadata;
        Intrinsics.checkNotNull(needApprove2);
        TokenDetailed feeToken = needApprove2.getFeeToken();
        GasPriceItem gasPriceItem = this.selectedApproveFee;
        Intrinsics.checkNotNull(gasPriceItem);
        return new FeeType.Default(feeDialogModel, transactionParams, feeToken, gasPriceItem, new Function1<GasPriceItem, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$getApproveFeeType$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GasPriceItem gasPriceItem2) {
                invoke2(gasPriceItem2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(GasPriceItem fee) {
                Intrinsics.checkNotNullParameter(fee, "fee");
                WalletSwapProcessPresenter.this.selectApproveFee(fee);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void selectApproveFee(GasPriceItem gasPriceItem) {
        this.selectedApproveFee = gasPriceItem;
        renderState(new SwapUiState.Approval(getApproveFeeType(), this.outputToken));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SwapUiState.Swap.Crypto getCryptoSwapUiState() {
        FeeType swapFeeType = getSwapFeeType();
        CryptoSwapMetadata cryptoSwapMetadata = this.swapMetadata;
        Intrinsics.checkNotNull(cryptoSwapMetadata);
        return new SwapUiState.Swap.Crypto(swapFeeType, cryptoSwapMetadata, getOutputFiatAmountText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderState(SwapUiState swapUiState) {
        this.state = swapUiState;
        ((WalletSwapProcessView) getViewState()).renderState(swapUiState);
    }

    private final boolean isValidForApprove() {
        return (!(this.state instanceof SwapUiState.Approval) || this.inputToken == null || getInputTokenApprovalData() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isAvailableBalanceLessThanAmount(double d) {
        WalletSwapScreenType walletSwapScreenType = this.screenType;
        if (walletSwapScreenType instanceof WalletSwapScreenType.Binance) {
            BinanceTokenBalanceInfo binanceTokenBalanceInfo = this.binanceTokenBalance;
            if (binanceTokenBalanceInfo != null) {
                Intrinsics.checkNotNull(binanceTokenBalanceInfo);
                if (binanceTokenBalanceInfo.getSpot().getTotal() < d) {
                    return true;
                }
            }
        } else if (!(walletSwapScreenType instanceof WalletSwapScreenType.Crypto)) {
            throw new NoWhenBranchMatchedException();
        } else {
            TokenBalance tokenBalance = this.tokenBalance;
            if (tokenBalance != null) {
                Intrinsics.checkNotNull(tokenBalance);
                if (tokenBalance.getTotal() < d) {
                    return true;
                }
            }
        }
        return false;
    }

    private final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3473R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3473R.string.common_cancel), 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void chooseSwapFee() {
        WalletSwapProcessView walletSwapProcessView = (WalletSwapProcessView) getViewState();
        SwapFeeScreenArgs resolveSwapFeeScreenArgs = resolveSwapFeeScreenArgs();
        if (resolveSwapFeeScreenArgs == null) {
            return;
        }
        walletSwapProcessView.openSwapFeeScreen(resolveSwapFeeScreenArgs);
    }

    private final void checkMinMaxInputValues() {
        Pair<String, ? extends List<OutputConvertToken>> pair;
        List<OutputConvertToken> second;
        Object obj;
        if (this.outputToken != null) {
            WalletSwapProcessView walletSwapProcessView = (WalletSwapProcessView) getViewState();
            TokenDetailed tokenDetailed = this.inputToken;
            if (tokenDetailed == null || (pair = this.binanceAvailableOppositeSwapTokens) == null || (second = pair.getSecond()) == null) {
                return;
            }
            Iterator<T> it = second.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                String asset = ((OutputConvertToken) next).getTokenInfo().getAsset();
                TokenDetailed tokenDetailed2 = this.outputToken;
                if (Intrinsics.areEqual(asset, tokenDetailed2 != null ? tokenDetailed2.getTicker() : null)) {
                    obj = next;
                    break;
                }
            }
            OutputConvertToken outputConvertToken = (OutputConvertToken) obj;
            if (outputConvertToken == null) {
                return;
            }
            walletSwapProcessView.showMinMaxInputValues(tokenDetailed, outputConvertToken);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00f0, code lost:
        if (r8 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.iMe.model.dialog.DialogModel getSwapConfirmationDialogModel() {
        /*
            r13 = this;
            com.iMe.storage.domain.utils.system.ResourceManager r0 = r13.resourceManager
            int r1 = org.telegram.messenger.C3473R.string.wallet_swap_process_confirm_swap_alert_title
            java.lang.String r0 = r0.getString(r1)
            com.iMe.model.wallet.swap.WalletSwapScreenType r1 = r13.screenType
            boolean r2 = r1 instanceof com.iMe.model.wallet.swap.WalletSwapScreenType.Binance
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            r7 = 4
            r8 = 0
            if (r2 == 0) goto L66
            com.iMe.storage.domain.model.binancepay.BinanceConvertQuote r1 = r13.binanceConvertQuote
            if (r1 == 0) goto Lf4
            com.iMe.storage.domain.utils.system.ResourceManager r2 = r13.resourceManager
            int r8 = org.telegram.messenger.C3473R.string.wallet_swap_process_confirm_swap_alert_description
            java.lang.Object[] r7 = new java.lang.Object[r7]
            double r9 = r1.getInputAmount()
            java.lang.Double r9 = java.lang.Double.valueOf(r9)
            com.iMe.storage.domain.model.wallet.token.TokenDetailed$Companion r10 = com.iMe.storage.domain.model.wallet.token.TokenDetailed.Companion
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r11 = r10.getBNB()
            int r11 = r11.getDecimals()
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            java.lang.String r9 = com.iMe.utils.formatter.BalanceFormatter.format(r9, r11)
            r7[r6] = r9
            java.lang.String r6 = r1.getInputTokenShortName()
            r7[r5] = r6
            double r5 = r1.getOutputAmount()
            java.lang.Double r5 = java.lang.Double.valueOf(r5)
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r6 = r10.getBNB()
            int r6 = r6.getDecimals()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            java.lang.String r5 = com.iMe.utils.formatter.BalanceFormatter.format(r5, r6)
            r7[r4] = r5
            java.lang.String r1 = r1.getOutputTokenShortName()
            r7[r3] = r1
            java.lang.String r8 = r2.getString(r8, r7)
            goto Lf4
        L66:
            boolean r1 = r1 instanceof com.iMe.model.wallet.swap.WalletSwapScreenType.Crypto
            if (r1 == 0) goto L10a
            com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata r1 = r13.swapMetadata
            if (r1 == 0) goto Lf2
            com.iMe.storage.domain.utils.system.ResourceManager r2 = r13.resourceManager
            int r9 = org.telegram.messenger.C3473R.string.wallet_swap_process_confirm_swap_alert_description
            r10 = 6
            java.lang.Object[] r10 = new java.lang.Object[r10]
            java.math.BigDecimal r11 = r1.getAmountIn()
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r12 = r1.getInputToken()
            int r12 = r12.getDecimals()
            java.lang.Integer r12 = java.lang.Integer.valueOf(r12)
            java.lang.String r11 = com.iMe.utils.formatter.BalanceFormatter.format(r11, r12)
            r10[r6] = r11
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r6 = r1.getInputToken()
            java.lang.String r6 = r6.getTicker()
            r10[r5] = r6
            java.math.BigDecimal r5 = r1.getAmountOut()
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r6 = r1.getOutputToken()
            int r6 = r6.getDecimals()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            java.lang.String r5 = com.iMe.utils.formatter.BalanceFormatter.format(r5, r6)
            r10[r4] = r5
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r4 = r1.getOutputToken()
            java.lang.String r4 = r4.getTicker()
            r10[r3] = r4
            com.iMe.model.wallet.crypto.send.fee.GasPriceItem r3 = r13.selectedSwapFee
            if (r3 == 0) goto Lc7
            com.iMe.storage.domain.model.crypto.send.GasPriceInfo r3 = r3.getInfo()
            if (r3 == 0) goto Lc7
            double r3 = r3.getFee()
            java.lang.Double r8 = java.lang.Double.valueOf(r3)
        Lc7:
            double r3 = com.iMe.storage.data.utils.extentions.NumberExtKt.orZero(r8)
            java.lang.Double r3 = java.lang.Double.valueOf(r3)
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r4 = r1.getFeeToken()
            int r4 = r4.getDecimals()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.lang.String r3 = com.iMe.utils.formatter.BalanceFormatter.format(r3, r4)
            r10[r7] = r3
            r3 = 5
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r1 = r1.getFeeToken()
            java.lang.String r1 = r1.getTicker()
            r10[r3] = r1
            java.lang.String r8 = r2.getString(r9, r10)
            if (r8 != 0) goto Lf4
        Lf2:
            java.lang.String r8 = ""
        Lf4:
            com.iMe.storage.domain.utils.system.ResourceManager r1 = r13.resourceManager
            int r2 = org.telegram.messenger.C3473R.string.common_cancel
            java.lang.String r1 = r1.getString(r2)
            com.iMe.storage.domain.utils.system.ResourceManager r2 = r13.resourceManager
            int r3 = org.telegram.messenger.C3473R.string.wallet_swap_process_confirm_swap_alert_action
            java.lang.String r2 = r2.getString(r3)
            com.iMe.model.dialog.DialogModel r3 = new com.iMe.model.dialog.DialogModel
            r3.<init>(r0, r8, r1, r2)
            return r3
        L10a:
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.swap.process.WalletSwapProcessPresenter.getSwapConfirmationDialogModel():com.iMe.model.dialog.DialogModel");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String formatBinanceBalance(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        return this.resourceManager.getString(C3473R.string.binance_convert_balance, BinanceTokenBalanceExtKt.getSpotBalanceShortText(binanceTokenBalanceInfo), BinanceTokenBalanceExtKt.getMarginBalanceShortText(binanceTokenBalanceInfo));
    }

    private final void resetAmountSubjectSubscription() {
        this.amountSubjectDisposable.dispose();
        subscribeToAmountSubject();
    }

    private final void subscribeToAmountSubject() {
        Observable<String> observeOn = this.amountSubject.observeOn(this.schedulersProvider.mo716ui());
        final Function1<String, Boolean> function1 = new Function1<String, Boolean>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$subscribeToAmountSubject$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String amountText) {
                boolean startsWith$default;
                String drop;
                Intrinsics.checkNotNullParameter(amountText, "amountText");
                boolean z = false;
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(amountText, ".", false, 2, null);
                if (startsWith$default) {
                    SwapSide swapSide = SwapSide.INPUT;
                    drop = StringsKt___StringsKt.drop(amountText, 1);
                    ((WalletSwapProcessView) WalletSwapProcessPresenter.this.getViewState()).setAmount(swapSide, drop);
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        };
        Observable<String> observeOn2 = observeOn.filter(new Predicate() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                boolean subscribeToAmountSubject$lambda$37;
                subscribeToAmountSubject$lambda$37 = WalletSwapProcessPresenter.subscribeToAmountSubject$lambda$37(Function1.this, obj);
                return subscribeToAmountSubject$lambda$37;
            }
        }).observeOn(this.schedulersProvider.mo717io()).debounce(300L, TimeUnit.MILLISECONDS).observeOn(this.schedulersProvider.mo716ui());
        final Function1<String, Boolean> function12 = new Function1<String, Boolean>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$subscribeToAmountSubject$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String amountText) {
                BigDecimal bigDecimalOrNull;
                TokenBalance tokenBalance;
                TokenApproveData inputTokenApprovalData;
                TokenDetailed tokenDetailed;
                boolean isAvailableBalanceLessThanAmount;
                TokenDetailed tokenDetailed2;
                TokenDetailed tokenDetailed3;
                TokenDetailed tokenDetailed4;
                HashMap hashMap;
                ResourceManager resourceManager;
                SwapUiState swapUiState;
                boolean isAvailableBalanceLessThanAmount2;
                ResourceManager resourceManager2;
                FiatValue rateToFiat;
                Intrinsics.checkNotNullParameter(amountText, "amountText");
                bigDecimalOrNull = StringsKt__StringNumberConversionsJVMKt.toBigDecimalOrNull(amountText);
                double doubleValue = NumberExtKt.orZero(bigDecimalOrNull).doubleValue();
                WalletSwapProcessPresenter walletSwapProcessPresenter = WalletSwapProcessPresenter.this;
                String plainString = new BigDecimal(String.valueOf(doubleValue)).toPlainString();
                Intrinsics.checkNotNullExpressionValue(plainString, "amountNumber.toBigDecimal().toPlainString()");
                walletSwapProcessPresenter.amount = plainString;
                StringBuilder sb = new StringBuilder();
                sb.append('~');
                BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
                tokenBalance = WalletSwapProcessPresenter.this.tokenBalance;
                sb.append(balanceFormatter.formatFiatBalance(Double.valueOf(NumberExtKt.orZero((tokenBalance == null || (rateToFiat = tokenBalance.getRateToFiat()) == null) ? null : Double.valueOf(rateToFiat.getValue())) * doubleValue), Integer.valueOf(TokenDetailed.Companion.getUSD().getDecimals())));
                String sb2 = sb.toString();
                inputTokenApprovalData = WalletSwapProcessPresenter.this.getInputTokenApprovalData();
                boolean z = true;
                if (!(inputTokenApprovalData instanceof TokenApproveData.Allowed)) {
                    swapUiState = WalletSwapProcessPresenter.this.state;
                    if (swapUiState.isApproving()) {
                        isAvailableBalanceLessThanAmount2 = WalletSwapProcessPresenter.this.isAvailableBalanceLessThanAmount(doubleValue);
                        if (isAvailableBalanceLessThanAmount2) {
                            WalletSwapProcessPresenter walletSwapProcessPresenter2 = WalletSwapProcessPresenter.this;
                            resourceManager2 = walletSwapProcessPresenter2.resourceManager;
                            walletSwapProcessPresenter2.setInputError(resourceManager2.getString(C3473R.string.wallet_swap_process_insufficient_funds));
                        }
                        z = false;
                        return Boolean.valueOf(z);
                    }
                }
                tokenDetailed = WalletSwapProcessPresenter.this.inputToken;
                if (tokenDetailed == null) {
                    WalletSwapProcessPresenter.this.renderState(new SwapUiState.Idle(false, null, 3, null));
                } else if (NumberExtKt.isZero(Double.valueOf(doubleValue))) {
                    WalletSwapProcessPresenter.this.setInputFiatText(sb2);
                    WalletSwapProcessPresenter.this.renderState(new SwapUiState.Idle(false, null, 3, null));
                } else {
                    isAvailableBalanceLessThanAmount = WalletSwapProcessPresenter.this.isAvailableBalanceLessThanAmount(doubleValue);
                    if (!isAvailableBalanceLessThanAmount) {
                        tokenDetailed2 = WalletSwapProcessPresenter.this.outputToken;
                        if (tokenDetailed2 != null) {
                            tokenDetailed3 = WalletSwapProcessPresenter.this.inputToken;
                            tokenDetailed4 = WalletSwapProcessPresenter.this.outputToken;
                            if (!Intrinsics.areEqual(tokenDetailed3, tokenDetailed4)) {
                                hashMap = WalletSwapProcessPresenter.this.tokensApprovalData;
                                List list = (List) hashMap.get(WalletSwapProcessPresenter.getNetworkIdBySwapSide$default(WalletSwapProcessPresenter.this, null, 1, null));
                                if (list != null && list.isEmpty()) {
                                    WalletSwapProcessPresenter.this.renderState(SwapUiState.Loading.INSTANCE);
                                    WalletSwapProcessPresenter.loadApproveTokensInfo$default(WalletSwapProcessPresenter.this, false, null, 2, null);
                                } else {
                                    WalletSwapProcessPresenter.this.setInputFiatText(sb2);
                                    WalletSwapProcessPresenter.this.renderState(SwapUiState.Loading.INSTANCE);
                                    return Boolean.valueOf(z);
                                }
                            }
                        }
                        WalletSwapProcessPresenter.this.setInputFiatText(sb2);
                        WalletSwapProcessPresenter.this.renderState(new SwapUiState.Idle(false, null, 3, null));
                    } else {
                        WalletSwapProcessPresenter walletSwapProcessPresenter3 = WalletSwapProcessPresenter.this;
                        resourceManager = walletSwapProcessPresenter3.resourceManager;
                        walletSwapProcessPresenter3.setInputError(resourceManager.getString(C3473R.string.wallet_swap_process_insufficient_funds));
                        WalletSwapProcessPresenter.this.renderState(new SwapUiState.Idle(false, null, 3, null));
                    }
                }
                z = false;
                return Boolean.valueOf(z);
            }
        };
        Observable<String> observeOn3 = observeOn2.filter(new Predicate() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                boolean subscribeToAmountSubject$lambda$38;
                subscribeToAmountSubject$lambda$38 = WalletSwapProcessPresenter.subscribeToAmountSubject$lambda$38(Function1.this, obj);
                return subscribeToAmountSubject$lambda$38;
            }
        }).observeOn(this.schedulersProvider.mo717io());
        final Function1<String, ObservableSource<? extends Result<? extends SwapUiState.Swap>>> function13 = new Function1<String, ObservableSource<? extends Result<? extends SwapUiState.Swap>>>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$subscribeToAmountSubject$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<SwapUiState.Swap>> invoke(String it) {
                Observable swapPrepareObservable;
                Intrinsics.checkNotNullParameter(it, "it");
                swapPrepareObservable = WalletSwapProcessPresenter.this.getSwapPrepareObservable();
                return swapPrepareObservable;
            }
        };
        Observable observeOn4 = observeOn3.switchMap(new Function() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToAmountSubject$lambda$39;
                subscribeToAmountSubject$lambda$39 = WalletSwapProcessPresenter.subscribeToAmountSubject$lambda$39(Function1.this, obj);
                return subscribeToAmountSubject$lambda$39;
            }
        }).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn4, "private fun subscribeToA…     .autoDispose()\n    }");
        Disposable subscribe = observeOn4.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends SwapUiState.Swap>, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$subscribeToAmountSubject$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SwapUiState.Swap> result) {
                m1614invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1614invoke(Result<? extends SwapUiState.Swap> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends SwapUiState.Swap> result = it;
                if (result instanceof Result.Success) {
                    WalletSwapProcessPresenter.this.renderState((SwapUiState) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    WalletSwapProcessPresenter.this.handleSwapErrors((Result.Error) result);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$subscribeToAmountSubject$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        this.amountSubjectDisposable = subscribe;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean subscribeToAmountSubject$lambda$37(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean subscribeToAmountSubject$lambda$38(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource subscribeToAmountSubject$lambda$39(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    private final String getOutputFiatAmountText() {
        BigDecimal amountOut;
        FiatValue fiatValue = this.outputTokenRate;
        String str = null;
        r1 = null;
        Double d = null;
        if (fiatValue != null) {
            StringBuilder sb = new StringBuilder();
            sb.append('~');
            BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
            double value = fiatValue.getValue();
            CryptoSwapMetadata cryptoSwapMetadata = this.swapMetadata;
            if (cryptoSwapMetadata != null && (amountOut = cryptoSwapMetadata.getAmountOut()) != null) {
                d = Double.valueOf(amountOut.doubleValue());
            }
            sb.append(balanceFormatter.formatFiatBalance(Double.valueOf(value * NumberExtKt.orZero(d)), Integer.valueOf(TokenDetailed.Companion.getUSD().getDecimals())));
            str = sb.toString();
        }
        return str == null ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setInputFiatText(String str) {
        if (this.screenType instanceof WalletSwapScreenType.Crypto) {
            ((WalletSwapProcessView) getViewState()).setInputFiatText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setInputError(String str) {
        if (this.screenType instanceof WalletSwapScreenType.Crypto) {
            ((WalletSwapProcessView) getViewState()).setInputError(str);
        }
    }

    private final NetworkItem.Crypto getInitialNetworkItem() {
        return NetworkUiMappingKt.mapToUI(NetworksHelper.getBSCNetwork());
    }

    /* compiled from: WalletSwapProcessPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startUpdatingApproveMetadataIfNeed(List<? extends TokenApproveData> list, boolean z) {
        boolean z2 = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((TokenApproveData) it.next()) instanceof TokenApproveData.InProgress) {
                    z2 = true;
                    break;
                }
            }
        }
        if (z2 && !z) {
            loadApproveTokensInfo$default(this, true, null, 2, null);
        } else if (z2 || !z) {
        } else {
            this.loadApproveMetadataDisposable.dispose();
        }
    }
}
