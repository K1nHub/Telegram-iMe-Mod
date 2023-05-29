package com.iMe.p031ui.wallet.actions.send.amount;

import com.iMe.common.Constants;
import com.iMe.common.TelegramConstants;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableType;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.BitcoinUnspentOutput;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.crypto.Convert;
import com.iMe.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import com.iMe.utils.helper.wallet.CryptoHelper;
import com.iMe.utils.helper.wallet.SwapHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.ManageLinksActivity;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$TL_messageEntityTextUrl;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: WalletSendAmountPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter */
/* loaded from: classes3.dex */
public final class WalletSendAmountPresenter extends BasePresenter<WalletSendAmountView> {
    private final TransferScreenArgs args;
    private List<? extends SelectableToken> availableTokensForBinanceReplenish;
    private final BinanceInternalInteractor binanceInternalInteractor;
    private String comment;
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private CryptoTransferMetadata cryptoTransferMetadata;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private SendScreenState currentState;
    private final DonationsInteractor donationsInteractor;
    private boolean isAllowSendInformationToChat;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final int screenType;
    private String selectedAddress;
    private String selectedAmount;
    private TLRPC$Chat selectedChat;
    private GasPriceItem selectedFee;
    private NetworkType selectedNetworkType;
    private SelectableToken selectedToken;
    private String selectedTwitterUserAvatarUrl;
    private TLRPC$User selectedUser;
    private int sendMode;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TelegramGateway telegramGateway;
    private TokenBalance tokenBalance;
    private final WalletInteractor walletInteractor;

    /* compiled from: WalletSendAmountPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$SendScreenState */
    /* loaded from: classes3.dex */
    public enum SendScreenState {
        SEND,
        PREPARE
    }

    /* compiled from: WalletSendAmountPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[SendScreenState.values().length];
            try {
                iArr[SendScreenState.SEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SendScreenState.PREPARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BlockchainType.values().length];
            try {
                iArr2[BlockchainType.EVM.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[BlockchainType.TON.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[BlockchainType.TRON.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[BlockchainType.BITCOIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getBinanceAvailableTokensForReplenish$lambda$8() {
    }

    public WalletSendAmountPresenter(int i, TransferScreenArgs args, WalletInteractor walletInteractor, DonationsInteractor donationsInteractor, BinanceInternalInteractor binanceInternalInteractor, TelegramGateway telegramGateway, TelegramControllersGateway telegramControllersGateway, ResourceManager resourceManager, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, SchedulersProvider schedulersProvider, RxEventBus rxEventBus) {
        List<? extends SelectableToken> emptyList;
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        Intrinsics.checkNotNullParameter(donationsInteractor, "donationsInteractor");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.screenType = i;
        this.args = args;
        this.walletInteractor = walletInteractor;
        this.donationsInteractor = donationsInteractor;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.telegramGateway = telegramGateway;
        this.telegramControllersGateway = telegramControllersGateway;
        this.resourceManager = resourceManager;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.schedulersProvider = schedulersProvider;
        this.rxEventBus = rxEventBus;
        this.selectedNetworkType = getInitialNetworkType();
        this.selectedUser = resolveUserArg();
        this.selectedChat = resolveChatArg();
        this.selectedAddress = args.getAddress();
        this.selectedToken = resolveTokenArg();
        this.selectedAmount = "";
        this.isAllowSendInformationToChat = true;
        this.comment = "";
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.availableTokensForBinanceReplenish = emptyList;
        this.currentState = SendScreenState.PREPARE;
        this.sendMode = 3;
    }

    public final boolean isCommentAvailable() {
        return this.selectedNetworkType.getBlockchainType() == BlockchainType.TON;
    }

    public final NetworkType getSelectedNetworkType() {
        return this.selectedNetworkType;
    }

    public final TLRPC$User getSelectedUser() {
        return this.selectedUser;
    }

    public final void setSelectedUser(TLRPC$User tLRPC$User) {
        this.selectedUser = tLRPC$User;
    }

    public final String getSelectedTwitterUserAvatarUrl() {
        return this.selectedTwitterUserAvatarUrl;
    }

    public final void setSelectedTwitterUserAvatarUrl(String str) {
        this.selectedTwitterUserAvatarUrl = str;
    }

    public final TLRPC$Chat getSelectedChat() {
        return this.selectedChat;
    }

    public final void setSelectedChat(TLRPC$Chat tLRPC$Chat) {
        this.selectedChat = tLRPC$Chat;
    }

    public final String getSelectedAddress() {
        return this.selectedAddress;
    }

    public final void setSelectedAddress(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.selectedAddress = str;
    }

    public final SelectableToken getSelectedToken() {
        return this.selectedToken;
    }

    public final String getSelectedAmount() {
        return this.selectedAmount;
    }

    public final void setAllowSendInformationToChat(boolean z) {
        this.isAllowSendInformationToChat = z;
    }

    public final String getComment() {
        return this.comment;
    }

    public final void setComment(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.comment = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isWalletTransfer() {
        return this.screenType == ManageLinksActivity.WALLET_TRANSFER_SCREEN_TYPE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isDonationsTransfer() {
        return this.screenType == ManageLinksActivity.WALLET_TRANSFER_DONATIONS_SCREEN_TYPE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isBinanceReplenish() {
        return this.screenType == ManageLinksActivity.BINANCE_REPLENISH_SCREEN_TYPE;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object] */
    public final void startChooseNetworkDialog() {
        List<NetworkType> networksByBlockchains;
        List<BlockchainType> createdWalletsBlockchains = this.cryptoAccessManager.getCreatedWalletsBlockchains();
        if (isBinanceReplenish()) {
            List<NetworkType> binanceSupportedNetworks = NetworkType.Companion.getBinanceSupportedNetworks();
            networksByBlockchains = new ArrayList<>();
            for (?? r3 : binanceSupportedNetworks) {
                if (createdWalletsBlockchains.contains(((NetworkType) r3).getBlockchainType())) {
                    networksByBlockchains.add(r3);
                }
            }
        } else {
            networksByBlockchains = NetworkType.Companion.getNetworksByBlockchains(createdWalletsBlockchains);
        }
        ((WalletSendAmountView) getViewState()).showChooseNetworkDialog(networksByBlockchains, this.selectedNetworkType, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSendAmountPresenter.startChooseNetworkDialog$lambda$1(WalletSendAmountPresenter.this, (NetworkType) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startChooseNetworkDialog$lambda$1(WalletSendAmountPresenter this$0, NetworkType newNetworkType) {
        List<? extends SelectableToken> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean z = this$0.selectedNetworkType.getBlockchainType() != newNetworkType.getBlockchainType();
        Intrinsics.checkNotNullExpressionValue(newNetworkType, "newNetworkType");
        this$0.selectedNetworkType = newNetworkType;
        if (this$0.isBinanceReplenish()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            this$0.availableTokensForBinanceReplenish = emptyList;
            getBinanceAvailableTokensForReplenish$default(this$0, this$0.selectedNetworkType, null, 2, null);
        }
        this$0.resetScreenState(z);
    }

    public final TokenCode getSelectedTokenCode() {
        TokenCode.Companion companion = TokenCode.Companion;
        SelectableToken selectableToken = this.selectedToken;
        String id = selectableToken != null ? selectableToken.getId() : null;
        if (id == null) {
            id = "";
        }
        return companion.map(id);
    }

    public final TokenBalance getSelectedTokenBalance() {
        return this.tokenBalance;
    }

    public final TokenInfo getSelectedTokenInfo() {
        return TokenInfo.Companion.map(getSelectedTokenCode());
    }

    public final String getActionButtonTextByState() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.currentState.ordinal()];
        if (i2 == 1) {
            i = C3295R.string.wallet_amount_button_txt;
        } else if (i2 != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            i = C3295R.string.wallet_amount_button_calculate;
        }
        return resourceManager.getString(i);
    }

    public final void startSelectTokenFlow(final Callbacks$Callback1<SelectableToken> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (isBinanceReplenish()) {
            if (!this.availableTokensForBinanceReplenish.isEmpty()) {
                ((WalletSendAmountView) getViewState()).showSelectTokenDialog(SelectableType.INTERNAL, this.availableTokensForBinanceReplenish, this.selectedNetworkType, true, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda1
                    @Override // com.iMe.fork.utils.Callbacks$Callback1
                    public final void invoke(Object obj) {
                        WalletSendAmountPresenter.startSelectTokenFlow$lambda$2(WalletSendAmountPresenter.this, action, (SelectableToken) obj);
                    }
                });
                return;
            } else {
                getBinanceAvailableTokensForReplenish(this.selectedNetworkType, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda3
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSendAmountPresenter.startSelectTokenFlow$lambda$3(WalletSendAmountPresenter.this, action);
                    }
                });
                return;
            }
        }
        ((WalletSendAmountView) getViewState()).showSelectTokenDialog(SelectableType.INTERNAL, getAvailableTransferTokensByNetwork(), this.selectedNetworkType, true, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSendAmountPresenter.startSelectTokenFlow$lambda$4(WalletSendAmountPresenter.this, action, (SelectableToken) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenFlow$lambda$2(WalletSendAmountPresenter this$0, Callbacks$Callback1 action, SelectableToken token) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(token, "token");
        this$0.selectedToken = token;
        this$0.loadBalance(this$0.getSelectedTokenCode());
        this$0.getBinanceAddressesForReplenish(this$0.getSelectedTokenCode());
        action.invoke(token);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenFlow$lambda$3(WalletSendAmountPresenter this$0, Callbacks$Callback1 action) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        this$0.startSelectTokenFlow(action);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenFlow$lambda$4(WalletSendAmountPresenter this$0, Callbacks$Callback1 action, SelectableToken token) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(token, "token");
        this$0.selectedToken = token;
        this$0.loadBalance(this$0.getSelectedTokenCode());
        action.invoke(token);
    }

    public final int getAvatarByNetworkType() {
        return this.selectedNetworkType.getLogo();
    }

    public final void validateSend(String rawAmount) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(rawAmount, "rawAmount");
        trim = StringsKt__StringsKt.trim(rawAmount);
        String obj = trim.toString();
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidAddress(this.selectedAddress, this.selectedNetworkType.getBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2099x61dc80d6(this, obj)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2100x61dc80d7(null))), "viewState: BaseView? = n…  onError.invoke()\n    })");
    }

    public final void send(String amount) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        TransferArgs formatTransferArgs = formatTransferArgs(amount);
        if (formatTransferArgs != null) {
            if (isWalletTransfer() || isBinanceReplenish()) {
                transferTokens(formatTransferArgs, this.isAllowSendInformationToChat);
                return;
            } else if (isDonationsTransfer() && this.args.getChatId() != null && (formatTransferArgs instanceof TransferArgs.EVM)) {
                sendDonation(TelegramConstants.INSTANCE.prepareChatIdForBotAPI(this.args.getChatId().longValue()), (TransferArgs.EVM) formatTransferArgs);
                return;
            } else {
                ((WalletSendAmountView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.wallet_feature_not_available));
                return;
            }
        }
        ((WalletSendAmountView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.wallet_feature_not_available));
    }

    public final void validateRecipientAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<String>> observeOn = CryptoHelper.extractAddress(address, this.selectedNetworkType.getBlockchainType(), this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddress(\n        …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2097x6b9f8be9(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2098x6b9f8bea(null))), "viewState: BaseView? = n…  onError.invoke()\n    })");
    }

    public final void resetStateIfNeed() {
        SendScreenState sendScreenState;
        if (getSelectedTokenCode().isCryptoTokens()) {
            this.selectedAmount = "";
            resetTransactionFee();
            sendScreenState = SendScreenState.PREPARE;
        } else {
            sendScreenState = SendScreenState.SEND;
        }
        this.currentState = sendScreenState;
        ((WalletSendAmountView) getViewState()).setupScreenState(this.currentState);
    }

    public final FeeView.ChooseFeeType getApproveFeeType() {
        if (this.selectedFee != null) {
            DialogModel feeDialogModel = getFeeDialogModel();
            CryptoTransferMetadata cryptoTransferMetadata = this.cryptoTransferMetadata;
            Intrinsics.checkNotNull(cryptoTransferMetadata);
            TransactionParams transactionParams = cryptoTransferMetadata.getTransactionParams();
            TokenInfo.Companion companion = TokenInfo.Companion;
            CryptoTransferMetadata cryptoTransferMetadata2 = this.cryptoTransferMetadata;
            Intrinsics.checkNotNull(cryptoTransferMetadata2);
            TokenInfo map = companion.map(cryptoTransferMetadata2.getFeeTokenCode());
            GasPriceItem gasPriceItem = this.selectedFee;
            Intrinsics.checkNotNull(gasPriceItem);
            return new FeeView.ChooseFeeType.Default(feeDialogModel, transactionParams, map, gasPriceItem, new WalletSendAmountPresenter$getApproveFeeType$1(this));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        if ((isWalletTransfer() || isDonationsTransfer() || isBinanceReplenish()) && !getSelectedTokenCode().isUnknown()) {
            loadBalance(getSelectedTokenCode());
            if (isBinanceReplenish()) {
                getBinanceAddressesForReplenish(getSelectedTokenCode());
                getBinanceAvailableTokensForReplenish$default(this, this.selectedNetworkType, null, 2, null);
            }
        }
    }

    private final void getBinanceAddressesForReplenish(TokenCode tokenCode) {
        Observable<Result<String>> observeOn = this.binanceInternalInteractor.getAddressForTokenReplenish(tokenCode, this.selectedNetworkType).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2087xcbcd392d(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2088xcbcd392e((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    static /* synthetic */ void getBinanceAvailableTokensForReplenish$default(WalletSendAmountPresenter walletSendAmountPresenter, NetworkType networkType, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 2) != 0) {
            callbacks$Callback = WalletSendAmountPresenter$$ExternalSyntheticLambda4.INSTANCE;
        }
        walletSendAmountPresenter.getBinanceAvailableTokensForReplenish(networkType, callbacks$Callback);
    }

    private final void getBinanceAvailableTokensForReplenish(NetworkType networkType, Callbacks$Callback callbacks$Callback) {
        Observable<Result<List<BinanceTokenInfo>>> observeOn = this.binanceInternalInteractor.getTokensForReplenish(networkType).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2089xebaea40e(this, callbacks$Callback)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2090xebaea40f((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void calculateFeeForDonationsTransaction(long j, String str) {
        Observable<Result<DonationTransferMetadata>> observeOn = this.donationsInteractor.getDataForDonation(j, str, this.selectedNetworkType).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2083x998569d4(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2084x998569d5((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final NetworkType getInitialNetworkType() {
        NetworkType networkType = this.args.getNetworkType();
        if (networkType == null) {
            networkType = this.cryptoPreferenceHelper.getNetworkType();
        }
        return networkType.getBlockchainType() == BlockchainType.TON ? (isDonationsTransfer() || isBinanceReplenish()) ? (NetworkType) CollectionsKt.first((List<? extends Object>) NetworkType.Companion.getEVMNetworks()) : networkType : networkType;
    }

    private final SelectableToken resolveTokenArg() {
        if (this.args.getCode() == null) {
            return null;
        }
        if (!isSupportTokenOnNetwork(this.args.getCode())) {
            ((WalletSendAmountView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.wallet_amount_send_unsupported_token_on_network_error));
            return null;
        }
        return SelectableMappingKt.mapToSelectable(TokenInfo.Companion.map(this.args.getCode().getName()), this.resourceManager, this.selectedNetworkType);
    }

    private final TLRPC$User resolveUserArg() {
        if (this.args.getUserId() == null) {
            return null;
        }
        return TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(this.args.getUserId());
    }

    private final TLRPC$Chat resolveChatArg() {
        if (this.args.getChatId() == null) {
            return null;
        }
        return TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getChat(this.args.getChatId());
    }

    private final boolean isSupportTokenOnNetwork(TokenCode tokenCode) {
        return TokenCode.Companion.getTokensByNetwork(this.selectedNetworkType).contains(tokenCode);
    }

    private final void resetScreenState(boolean z) {
        if (z) {
            this.selectedAddress = "";
            this.selectedTwitterUserAvatarUrl = null;
            this.selectedUser = null;
            this.selectedChat = null;
        }
        this.selectedToken = null;
        this.currentState = SendScreenState.PREPARE;
        this.selectedAmount = "";
        this.tokenBalance = null;
        resetTransactionFee();
        ((WalletSendAmountView) getViewState()).resetScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void selectFee(GasPriceItem gasPriceItem) {
        this.selectedFee = gasPriceItem;
        ((WalletSendAmountView) getViewState()).updateFeeView();
    }

    private final List<SelectableToken> getAvailableTransferTokensByNetwork() {
        int collectionSizeOrDefault;
        List<TokenCode> tokensByNetwork = TokenCode.Companion.getTokensByNetwork(this.selectedNetworkType);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokensByNetwork, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenCode tokenCode : tokensByNetwork) {
            arrayList.add(SelectableMappingKt.mapToSelectable(TokenInfo.Companion.map(tokenCode), this.resourceManager, this.selectedNetworkType));
        }
        return arrayList;
    }

    private final TransferArgs formatTransferArgs(String str) {
        BigInteger price;
        BigInteger limit;
        TransferArgs evm;
        GasPriceInfo info;
        GasPriceInfo info2;
        BigInteger limit2;
        GasPriceInfo info3;
        BigInteger price2;
        GasPriceInfo info4;
        CryptoTransferMetadata cryptoTransferMetadata = this.cryptoTransferMetadata;
        if (cryptoTransferMetadata != null && getSelectedTokenCode().isCryptoTokens() && (getSelectedTokenInfo() instanceof TokenInfo.Crypto.Ethereum)) {
            int i = WhenMappings.$EnumSwitchMapping$1[this.selectedNetworkType.getBlockchainType().ordinal()];
            if (i == 1) {
                TransactionParams transactionParams = cryptoTransferMetadata.getTransactionParams();
                TransactionParams.Ether ether = transactionParams instanceof TransactionParams.Ether ? (TransactionParams.Ether) transactionParams : null;
                if (ether == null) {
                    return null;
                }
                Convert.Unit weiFromToken = getWeiFromToken(getSelectedTokenInfo());
                String str2 = this.selectedAddress;
                double parseDouble = Double.parseDouble(str);
                long id = ether.getChain().getId();
                BigInteger nonce = ether.getNonce();
                GasPriceItem gasPriceItem = this.selectedFee;
                if (gasPriceItem == null || (info2 = gasPriceItem.getInfo()) == null || (price = info2.getPrice()) == null) {
                    price = ether.getMedium().getPrice();
                }
                BigInteger bigInteger = price;
                GasPriceItem gasPriceItem2 = this.selectedFee;
                if (gasPriceItem2 == null || (info = gasPriceItem2.getInfo()) == null || (limit = info.getLimit()) == null) {
                    limit = ether.getMedium().getLimit();
                }
                evm = new TransferArgs.EVM(parseDouble, weiFromToken, str2, id, nonce, bigInteger, limit, cryptoTransferMetadata.getContractAddress());
            } else if (i == 2) {
                return new TransferArgs.TON(Double.parseDouble(str), getWeiFromToken(getSelectedTokenInfo()), this.selectedAddress, this.comment, this.sendMode, false, 32, null);
            } else {
                if (i != 3) {
                    if (i == 4) {
                        TransactionParams transactionParams2 = cryptoTransferMetadata.getTransactionParams();
                        TransactionParams.Bitcoin bitcoin = transactionParams2 instanceof TransactionParams.Bitcoin ? (TransactionParams.Bitcoin) transactionParams2 : null;
                        if (bitcoin != null) {
                            double parseDouble2 = Double.parseDouble(str);
                            String str3 = this.selectedAddress;
                            List<BitcoinUnspentOutput> utxos = bitcoin.getUtxos();
                            String changeAddress = bitcoin.getChangeAddress();
                            GasPriceItem gasPriceItem3 = this.selectedFee;
                            if (gasPriceItem3 == null || (info4 = gasPriceItem3.getInfo()) == null || (price2 = info4.getPrice()) == null) {
                                price2 = bitcoin.getMedium().getPrice();
                            }
                            return new TransferArgs.BTC(parseDouble2, str3, utxos, changeAddress, price2);
                        }
                        return null;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                TransactionParams transactionParams3 = cryptoTransferMetadata.getTransactionParams();
                TransactionParams.Tron tron = transactionParams3 instanceof TransactionParams.Tron ? (TransactionParams.Tron) transactionParams3 : null;
                if (tron == null) {
                    return null;
                }
                Convert.Unit weiFromToken2 = getWeiFromToken(getSelectedTokenInfo());
                String str4 = this.selectedAddress;
                double parseDouble3 = Double.parseDouble(str);
                GasPriceItem gasPriceItem4 = this.selectedFee;
                if (gasPriceItem4 == null || (info3 = gasPriceItem4.getInfo()) == null || (limit2 = info3.getLimit()) == null) {
                    limit2 = tron.getMedium().getLimit();
                }
                evm = new TransferArgs.TRON(parseDouble3, weiFromToken2, str4, limit2, cryptoTransferMetadata.getContractAddress(), tron.getBlockHeader());
            }
            return evm;
        }
        return null;
    }

    private final Convert.Unit getWeiFromToken(TokenInfo tokenInfo) {
        return tokenInfo instanceof TokenInfo.Crypto.Ethereum ? TokenInfoExtKt.getWeiConvertUnit((TokenInfo.Crypto.Ethereum) tokenInfo, this.selectedNetworkType) : Convert.Unit.ETHER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
        if (r3.hasUser(r2.f1574id) != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void resolveAction(java.lang.String r7) {
        /*
            r6 = this;
            r6.selectedAmount = r7
            com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$SendScreenState r0 = r6.currentState
            int[] r1 = com.iMe.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter.WhenMappings.$EnumSwitchMapping$0
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 1
            if (r0 == r1) goto L4f
            r1 = 2
            if (r0 == r1) goto L13
            goto L6f
        L13:
            boolean r0 = r6.isDonationsTransfer()
            if (r0 == 0) goto L35
            com.iMe.model.wallet.transfer.TransferScreenArgs r0 = r6.args
            java.lang.Long r0 = r0.getChatId()
            if (r0 == 0) goto L35
            com.iMe.common.TelegramConstants r0 = com.iMe.common.TelegramConstants.INSTANCE
            com.iMe.model.wallet.transfer.TransferScreenArgs r1 = r6.args
            java.lang.Long r1 = r1.getChatId()
            long r1 = r1.longValue()
            long r0 = r0.prepareChatIdForBotAPI(r1)
            r6.calculateFeeForDonationsTransaction(r0, r7)
            goto L6f
        L35:
            boolean r0 = r6.isWalletTransfer()
            if (r0 != 0) goto L41
            boolean r0 = r6.isBinanceReplenish()
            if (r0 == 0) goto L6f
        L41:
            java.lang.String r0 = r6.selectedAddress
            java.lang.CharSequence r0 = kotlin.text.StringsKt.trim(r0)
            java.lang.String r0 = r0.toString()
            r6.calculateFeeForTransaction(r0, r7)
            goto L6f
        L4f:
            moxy.MvpView r0 = r6.getViewState()
            com.iMe.ui.wallet.actions.send.amount.WalletSendAmountView r0 = (com.iMe.p031ui.wallet.actions.send.amount.WalletSendAmountView) r0
            com.iMe.model.dialog.DialogModel r7 = r6.getSendConfirmationDialogModel(r7)
            org.telegram.tgnet.TLRPC$User r2 = r6.selectedUser
            if (r2 == 0) goto L6b
            com.iMe.storage.domain.gateway.TelegramGateway r3 = r6.telegramGateway
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            long r4 = r2.f1574id
            boolean r2 = r3.hasUser(r4)
            if (r2 == 0) goto L6b
            goto L6c
        L6b:
            r1 = 0
        L6c:
            r0.onSuccessValidation(r7, r1)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter.resolveAction(java.lang.String):void");
    }

    private final DialogModel getSendConfirmationDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3295R.string.wallet_amount_confirm_alert_title), getConfirmMessage(str), this.resourceManager.getString(C3295R.string.common_cancel), this.resourceManager.getString(C3295R.string.wallet_amount_confirm_alert_ok_btn));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isAvailableBalanceLessThanAmount(String str) {
        TokenBalance tokenBalance = this.tokenBalance;
        if (tokenBalance != null) {
            Intrinsics.checkNotNull(tokenBalance);
            if (tokenBalance.getTotal() < Double.parseDouble(str)) {
                return true;
            }
        }
        return false;
    }

    private final void calculateFeeForTransaction(String str, String str2) {
        Observable<Result<CryptoTransferMetadata>> observeOn = this.walletInteractor.getCryptoTransferMetadata(getSelectedTokenCode(), str, str2, this.selectedNetworkType).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2085x2c16008d(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2086x2c16008e((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configureFees(CryptoTransferMetadata cryptoTransferMetadata) {
        this.cryptoTransferMetadata = cryptoTransferMetadata;
        TransactionSpeedLevel transactionSpeedLevel = TransactionSpeedLevel.MEDIUM;
        TokenInfo.Companion companion = TokenInfo.Companion;
        Intrinsics.checkNotNull(cryptoTransferMetadata);
        this.selectedFee = new GasPriceItem(transactionSpeedLevel, companion.map(cryptoTransferMetadata.getFeeTokenCode()), cryptoTransferMetadata.getTransactionParams().getMedium());
    }

    private final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3295R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3295R.string.common_cancel), 6, null);
    }

    private final void sendDonation(long j, TransferArgs.EVM evm) {
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.sendDonation(j, evm).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2093xd0cb0852(this, evm)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2094xd0cb0853((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void transferTokens(TransferArgs transferArgs, boolean z) {
        Observable<Result<Boolean>> observeOn = this.walletInteractor.sendTokens(getSelectedTokenCode(), transferArgs, this.selectedNetworkType.getBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2095x2cfbccbd(this, z, transferArgs)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2096x2cfbccbe((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runNoEnoughMoneyFlow() {
        ((WalletSendAmountView) getViewState()).showNoEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(getSelectedTokenCode(), SwapHelper.resolveSwapProtocolByNetwork$default(SwapHelper.INSTANCE, null, 1, null), null, 4, null));
    }

    private final String getConfirmMessage(String str) {
        return this.resourceManager.getString(C3295R.string.wallet_amount_send_confirm_alert_description, BalanceFormatter.formatBalance(Double.valueOf(Double.parseDouble(str)), getSelectedTokenInfo().getDecimals()), this.resourceManager.getString(getSelectedTokenInfo().getShortName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessMessage(double d) {
        return this.resourceManager.getString(C3295R.string.wallet_amount_success_send_description, BalanceFormatter.formatBalance(Double.valueOf(d), getSelectedTokenInfo().getDecimals()), this.resourceManager.getString(getSelectedTokenInfo().getShortName()));
    }

    private final void loadBalance(TokenCode tokenCode) {
        Observable observeOn = WalletInteractor.getTokenBalance$default(this.walletInteractor, tokenCode, false, this.selectedNetworkType, 2, null).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2091xd63210e4(this, tokenCode)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2092xd63210e5((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendMessageToChat(long j, long j2, double d) {
        int indexOf$default;
        int lastIndexOf$default;
        int indexOf$default2;
        String formatMessageToUser = formatMessageToUser(j, d, j2, DateExtKt.now());
        ArrayList<TLRPC$MessageEntity> arrayList = new ArrayList<>();
        TLRPC$TL_messageEntityTextUrl tLRPC$TL_messageEntityTextUrl = new TLRPC$TL_messageEntityTextUrl();
        String string = this.resourceManager.getString(C3295R.string.wallet_amount_send_message_processing_name);
        tLRPC$TL_messageEntityTextUrl.url = "https://imem.app/download";
        tLRPC$TL_messageEntityTextUrl.length = string.length();
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) formatMessageToUser, string, 0, false, 6, (Object) null);
        tLRPC$TL_messageEntityTextUrl.offset = indexOf$default;
        arrayList.add(tLRPC$TL_messageEntityTextUrl);
        TLRPC$User user = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(Long.valueOf(j2));
        if (user != null) {
            Intrinsics.checkNotNullExpressionValue(user, "getUser(senderId)");
            String str = user.username;
            if (!(str == null || str.length() == 0)) {
                TLRPC$TL_messageEntityTextUrl tLRPC$TL_messageEntityTextUrl2 = new TLRPC$TL_messageEntityTextUrl();
                String string2 = this.resourceManager.getString(C3295R.string.wallet_amount_send_message_id);
                Constants.Telegram telegram = Constants.Telegram.INSTANCE;
                String str2 = user.username;
                Intrinsics.checkNotNullExpressionValue(str2, "user.username");
                tLRPC$TL_messageEntityTextUrl2.url = telegram.getShareLinkFor(str2);
                tLRPC$TL_messageEntityTextUrl2.length = string2.length() + 1 + String.valueOf(j2).length();
                indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) formatMessageToUser, string2, 0, false, 6, (Object) null);
                tLRPC$TL_messageEntityTextUrl2.offset = indexOf$default2;
                arrayList.add(tLRPC$TL_messageEntityTextUrl2);
            }
        }
        TLRPC$User user2 = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(Long.valueOf(j));
        if (user2 != null) {
            Intrinsics.checkNotNullExpressionValue(user2, "getUser(recipientId)");
            String str3 = user2.username;
            if (!(str3 == null || str3.length() == 0)) {
                TLRPC$TL_messageEntityTextUrl tLRPC$TL_messageEntityTextUrl3 = new TLRPC$TL_messageEntityTextUrl();
                String string3 = this.resourceManager.getString(C3295R.string.wallet_amount_send_message_id);
                Constants.Telegram telegram2 = Constants.Telegram.INSTANCE;
                String str4 = user2.username;
                Intrinsics.checkNotNullExpressionValue(str4, "user.username");
                tLRPC$TL_messageEntityTextUrl3.url = telegram2.getShareLinkFor(str4);
                tLRPC$TL_messageEntityTextUrl3.length = string3.length() + 1 + String.valueOf(j).length();
                lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) formatMessageToUser, string3, 0, false, 6, (Object) null);
                tLRPC$TL_messageEntityTextUrl3.offset = lastIndexOf$default;
                arrayList.add(tLRPC$TL_messageEntityTextUrl3);
            }
        }
        TelegramControllersGateway.CC.getSendMessagesHelper$default(this.telegramControllersGateway, 0, 1, null).sendMessage(formatMessageToUser, j, null, null, null, false, arrayList, null, null, true, 0, null, false, null);
    }

    private final String formatMessageToUser(long j, double d, long j2, long j3) {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3295R.string.wallet_amount_send_message_payload;
        DateFormatter.DateType dateType = DateFormatter.DateType.DATE_AND_TIME;
        Date date = new Date(j3);
        String language = Locale.US.getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "US.language");
        return resourceManager.getString(i, BalanceFormatter.formatBalance(Double.valueOf(d), getSelectedTokenInfo().getDecimals()), this.resourceManager.getString(getSelectedTokenInfo().getShortName()), String.valueOf(j2), String.valueOf(j), DateFormatter.format(dateType, date, language));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetTransactionFee() {
        this.cryptoTransferMetadata = null;
        this.selectedFee = null;
    }

    /* compiled from: WalletSendAmountPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
