package com.iMe.p031ui.wallet.actions.send.amount;

import com.iMe.common.Constants;
import com.iMe.common.TelegramConstants;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.BitcoinUnspentOutput;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import com.iMe.utils.helper.wallet.CryptoHelper;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ManageLinksActivity;
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
    private List<TokenDetailed> availableTokensForBinanceReplenish;
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
    private Network selectedNetwork;
    private TokenDetailed selectedToken;
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
        }
    }

    static {
        new Companion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getBinanceAvailableTokensForReplenish$lambda$8() {
    }

    public WalletSendAmountPresenter(int i, TransferScreenArgs args, WalletInteractor walletInteractor, DonationsInteractor donationsInteractor, BinanceInternalInteractor binanceInternalInteractor, TelegramGateway telegramGateway, TelegramControllersGateway telegramControllersGateway, ResourceManager resourceManager, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, SchedulersProvider schedulersProvider, RxEventBus rxEventBus) {
        List<TokenDetailed> emptyList;
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
        this.selectedNetwork = getInitialNetwork();
        this.selectedUser = resolveUserArg();
        this.selectedChat = resolveChatArg();
        this.selectedAddress = args.getAddress();
        TokenItem tokenItem = args.getTokenItem();
        this.selectedToken = tokenItem != null ? TokenUiMappingKt.mapToDomain(tokenItem) : null;
        this.selectedAmount = "";
        this.isAllowSendInformationToChat = true;
        this.comment = "";
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.availableTokensForBinanceReplenish = emptyList;
        this.currentState = SendScreenState.PREPARE;
        this.sendMode = 3;
    }

    public final boolean isCommentAvailable() {
        return this.selectedNetwork.getBlockchainType() == BlockchainType.TON;
    }

    public final Network getSelectedNetwork() {
        return this.selectedNetwork;
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

    public final TokenDetailed getSelectedToken() {
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

    private final String getSelectedTokenTicker() {
        TokenDetailed tokenDetailed = this.selectedToken;
        String ticker = tokenDetailed != null ? tokenDetailed.getTicker() : null;
        return ticker == null ? "" : ticker;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object] */
    public final void startChooseNetworkDialog() {
        List<Network> networksByBlockchains;
        List<BlockchainType> loggedIndWalletsBlockchains = this.cryptoAccessManager.getLoggedIndWalletsBlockchains();
        if (isBinanceReplenish()) {
            List<Network> binanceSupportedNetworks = NetworksHelper.INSTANCE.getBinanceSupportedNetworks();
            networksByBlockchains = new ArrayList<>();
            for (?? r3 : binanceSupportedNetworks) {
                if (loggedIndWalletsBlockchains.contains(((Network) r3).getBlockchainType())) {
                    networksByBlockchains.add(r3);
                }
            }
        } else {
            networksByBlockchains = NetworksHelper.INSTANCE.getNetworksByBlockchains(loggedIndWalletsBlockchains);
        }
        ((WalletSendAmountView) getViewState()).showChooseNetworkDialog(networksByBlockchains, this.selectedNetwork, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSendAmountPresenter.startChooseNetworkDialog$lambda$1(WalletSendAmountPresenter.this, (Network) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startChooseNetworkDialog$lambda$1(WalletSendAmountPresenter this$0, Network newNetwork) {
        List<TokenDetailed> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean z = this$0.selectedNetwork.getBlockchainType() != newNetwork.getBlockchainType();
        Intrinsics.checkNotNullExpressionValue(newNetwork, "newNetwork");
        this$0.selectedNetwork = newNetwork;
        if (this$0.isBinanceReplenish()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            this$0.availableTokensForBinanceReplenish = emptyList;
            getBinanceAvailableTokensForReplenish$default(this$0, this$0.selectedNetwork, null, 2, null);
        }
        this$0.resetScreenState(z);
    }

    public final TokenBalance getSelectedTokenBalance() {
        return this.tokenBalance;
    }

    public final String getActionButtonTextByState() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.currentState.ordinal()];
        if (i2 == 1) {
            i = C3417R.string.wallet_amount_button_txt;
        } else if (i2 != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            i = C3417R.string.wallet_amount_button_calculate;
        }
        return resourceManager.getString(i);
    }

    public final void startSelectTokenFlow(final Callbacks$Callback1<TokenDetailed> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (isBinanceReplenish()) {
            if (!this.availableTokensForBinanceReplenish.isEmpty()) {
                ((WalletSendAmountView) getViewState()).showSelectTokenDialog(new WalletSelectTokenFragment.ScreenType.Send(this.availableTokensForBinanceReplenish), this.selectedNetwork.getId(), true, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda1
                    @Override // com.iMe.fork.utils.Callbacks$Callback1
                    public final void invoke(Object obj) {
                        WalletSendAmountPresenter.startSelectTokenFlow$lambda$2(WalletSendAmountPresenter.this, action, (TokenDetailed) obj);
                    }
                });
                return;
            } else {
                getBinanceAvailableTokensForReplenish(this.selectedNetwork, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda3
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSendAmountPresenter.startSelectTokenFlow$lambda$3(WalletSendAmountPresenter.this, action);
                    }
                });
                return;
            }
        }
        ((WalletSendAmountView) getViewState()).showSelectTokenDialog(new WalletSelectTokenFragment.ScreenType.Send(null, 1, null), this.selectedNetwork.getId(), true, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSendAmountPresenter.startSelectTokenFlow$lambda$4(WalletSendAmountPresenter.this, action, (TokenDetailed) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenFlow$lambda$2(WalletSendAmountPresenter this$0, Callbacks$Callback1 action, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(token, "token");
        this$0.selectedToken = token;
        this$0.loadBalance(token);
        this$0.getBinanceAddressesForReplenish(this$0.selectedToken);
        action.invoke(token);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenFlow$lambda$3(WalletSendAmountPresenter this$0, Callbacks$Callback1 action) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        this$0.startSelectTokenFlow(action);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenFlow$lambda$4(WalletSendAmountPresenter this$0, Callbacks$Callback1 action, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(token, "token");
        this$0.selectedToken = token;
        this$0.loadBalance(token);
        action.invoke(token);
    }

    public final String getAvatarByNetworkType() {
        return this.selectedNetwork.getLogoUrl();
    }

    public final void validateSend(String rawAmount) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(rawAmount, "rawAmount");
        trim = StringsKt__StringsKt.trim(rawAmount);
        String obj = trim.toString();
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidAddress(this.selectedAddress, this.selectedNetwork.getBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2103x61dc80d6(this, obj)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2104x61dc80d7(null))), "viewState: BaseView? = n…Error.invoke()\n        })");
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
                ((WalletSendAmountView) getViewState()).showToast(this.resourceManager.getString(C3417R.string.wallet_feature_not_available));
                return;
            }
        }
        ((WalletSendAmountView) getViewState()).showToast(this.resourceManager.getString(C3417R.string.wallet_feature_not_available));
    }

    public final void validateRecipientAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<String>> observeOn = CryptoHelper.extractAddress(address, this.selectedNetwork.getBlockchainType(), this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddress(\n        …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2101x6b9f8be9(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2102x6b9f8bea(null))), "viewState: BaseView? = n…Error.invoke()\n        })");
    }

    public final void resetStateIfNeed() {
        this.selectedAmount = "";
        resetTransactionFee();
        this.currentState = SendScreenState.PREPARE;
        ((WalletSendAmountView) getViewState()).setupScreenState(this.currentState);
    }

    public final FeeView.ChooseFeeType getApproveFeeType() {
        if (this.selectedFee != null) {
            DialogModel feeDialogModel = getFeeDialogModel();
            CryptoTransferMetadata cryptoTransferMetadata = this.cryptoTransferMetadata;
            Intrinsics.checkNotNull(cryptoTransferMetadata);
            TransactionParams transactionParams = cryptoTransferMetadata.getTransactionParams();
            CryptoTransferMetadata cryptoTransferMetadata2 = this.cryptoTransferMetadata;
            Intrinsics.checkNotNull(cryptoTransferMetadata2);
            TokenDetailed feeToken = cryptoTransferMetadata2.getFeeToken();
            GasPriceItem gasPriceItem = this.selectedFee;
            Intrinsics.checkNotNull(gasPriceItem);
            return new FeeView.ChooseFeeType.Default(feeDialogModel, transactionParams, feeToken, gasPriceItem, new WalletSendAmountPresenter$getApproveFeeType$1(this));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        if (isWalletTransfer() || isDonationsTransfer() || isBinanceReplenish()) {
            loadBalance(this.selectedToken);
            if (isBinanceReplenish()) {
                getBinanceAddressesForReplenish(this.selectedToken);
                getBinanceAvailableTokensForReplenish$default(this, this.selectedNetwork, null, 2, null);
            }
        }
    }

    private final void getBinanceAddressesForReplenish(TokenDetailed tokenDetailed) {
        if (tokenDetailed == null) {
            return;
        }
        Observable<Result<String>> observeOn = this.binanceInternalInteractor.getAddressForTokenReplenish(tokenDetailed.getTicker(), this.selectedNetwork.getId()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2091xcbcd392d(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2092xcbcd392e((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    static /* synthetic */ void getBinanceAvailableTokensForReplenish$default(WalletSendAmountPresenter walletSendAmountPresenter, Network network, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 2) != 0) {
            callbacks$Callback = WalletSendAmountPresenter$$ExternalSyntheticLambda4.INSTANCE;
        }
        walletSendAmountPresenter.getBinanceAvailableTokensForReplenish(network, callbacks$Callback);
    }

    private final void getBinanceAvailableTokensForReplenish(Network network, Callbacks$Callback callbacks$Callback) {
        Observable<Result<List<BinanceTokenInfo>>> observeOn = this.binanceInternalInteractor.getTokensForReplenish(network.getId()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2093xebaea40e(this, callbacks$Callback)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2094xebaea40f((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void calculateFeeForDonationsTransaction(long j, String str) {
        Token indexedToken;
        DonationsInteractor donationsInteractor = this.donationsInteractor;
        TokenDetailed tokenDetailed = this.selectedToken;
        if (tokenDetailed == null || (indexedToken = TokenExtKt.toIndexedToken(tokenDetailed)) == null) {
            return;
        }
        Observable<Result<DonationTransferMetadata>> observeOn = donationsInteractor.getDataForDonation(j, str, indexedToken).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2087x998569d4(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2088x998569d5((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final Network getInitialNetwork() {
        Network network;
        if (this.args.getNetworkId() != null) {
            network = NetworksHelper.getNetworkById(this.args.getNetworkId());
        } else {
            network = this.cryptoPreferenceHelper.getNetwork();
        }
        return network.getBlockchainType() == BlockchainType.TON ? (isDonationsTransfer() || isBinanceReplenish()) ? (Network) CollectionsKt.first((List<? extends Object>) NetworksHelper.INSTANCE.getEVMNetworks()) : network : network;
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

    private final TransferArgs formatTransferArgs(String str) {
        BigInteger limit;
        GasPriceInfo info;
        BigInteger price;
        BigInteger limit2;
        GasPriceInfo info2;
        GasPriceInfo info3;
        BigInteger price2;
        GasPriceInfo info4;
        CryptoTransferMetadata cryptoTransferMetadata = this.cryptoTransferMetadata;
        if (cryptoTransferMetadata == null) {
            return null;
        }
        TransactionParams transactionParams = cryptoTransferMetadata.getTransactionParams();
        if (transactionParams instanceof TransactionParams.Bitcoin) {
            double parseDouble = Double.parseDouble(str);
            TokenDetailed tokenDetailed = this.selectedToken;
            int orZero = NumberExtKt.orZero(tokenDetailed != null ? Integer.valueOf(tokenDetailed.getDecimals()) : null);
            String str2 = this.selectedAddress;
            TransactionParams.Bitcoin bitcoin = (TransactionParams.Bitcoin) transactionParams;
            List<BitcoinUnspentOutput> utxos = bitcoin.getUtxos();
            String changeAddress = bitcoin.getChangeAddress();
            GasPriceItem gasPriceItem = this.selectedFee;
            if (gasPriceItem == null || (info4 = gasPriceItem.getInfo()) == null || (price2 = info4.getPrice()) == null) {
                price2 = transactionParams.getMedium().getPrice();
            }
            return new TransferArgs.BTC(parseDouble, orZero, str2, utxos, changeAddress, price2);
        } else if (transactionParams instanceof TransactionParams.Ether) {
            double parseDouble2 = Double.parseDouble(str);
            TokenDetailed tokenDetailed2 = this.selectedToken;
            int orZero2 = NumberExtKt.orZero(tokenDetailed2 != null ? Integer.valueOf(tokenDetailed2.getDecimals()) : null);
            String str3 = this.selectedAddress;
            TransactionParams.Ether ether = (TransactionParams.Ether) transactionParams;
            long chainId = ether.getChainId();
            BigInteger nonce = ether.getNonce();
            GasPriceItem gasPriceItem2 = this.selectedFee;
            if (gasPriceItem2 == null || (info3 = gasPriceItem2.getInfo()) == null || (price = info3.getPrice()) == null) {
                price = transactionParams.getMedium().getPrice();
            }
            BigInteger bigInteger = price;
            GasPriceItem gasPriceItem3 = this.selectedFee;
            if (gasPriceItem3 == null || (info2 = gasPriceItem3.getInfo()) == null || (limit2 = info2.getLimit()) == null) {
                limit2 = transactionParams.getMedium().getLimit();
            }
            return new TransferArgs.EVM(parseDouble2, orZero2, str3, chainId, nonce, bigInteger, limit2, cryptoTransferMetadata.getToken().getAddress());
        } else if (transactionParams instanceof TransactionParams.Ton) {
            double parseDouble3 = Double.parseDouble(str);
            TokenDetailed tokenDetailed3 = this.selectedToken;
            return new TransferArgs.TON(parseDouble3, NumberExtKt.orZero(tokenDetailed3 != null ? Integer.valueOf(tokenDetailed3.getDecimals()) : null), this.selectedAddress, this.comment, this.sendMode, false, 32, null);
        } else if (transactionParams instanceof TransactionParams.Tron) {
            double parseDouble4 = Double.parseDouble(str);
            TokenDetailed tokenDetailed4 = this.selectedToken;
            int orZero3 = NumberExtKt.orZero(tokenDetailed4 != null ? Integer.valueOf(tokenDetailed4.getDecimals()) : null);
            String str4 = this.selectedAddress;
            GasPriceItem gasPriceItem4 = this.selectedFee;
            if (gasPriceItem4 == null || (info = gasPriceItem4.getInfo()) == null || (limit = info.getLimit()) == null) {
                limit = transactionParams.getMedium().getLimit();
            }
            TransactionParams.Tron tron = (TransactionParams.Tron) transactionParams;
            return new TransferArgs.TRON(parseDouble4, orZero3, str4, limit, tron.getContractAddress(), tron.getBlockHeader());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
        if (r3.hasUser(r2.f1656id) != false) goto L24;
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
            long r4 = r2.f1656id
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
        return new DialogModel(this.resourceManager.getString(C3417R.string.wallet_amount_confirm_alert_title), getConfirmMessage(str), this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(C3417R.string.wallet_amount_confirm_alert_ok_btn));
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
        TokenDetailed tokenDetailed = this.selectedToken;
        if (tokenDetailed != null) {
            Observable<Result<CryptoTransferMetadata>> observeOn = this.walletInteractor.getCryptoTransferMetadata(new Token(tokenDetailed.getAddress(), tokenDetailed.getNetworkId()), str, str2, this.selectedNetwork).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2089x2c16008d(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2090x2c16008e((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configureFees(CryptoTransferMetadata cryptoTransferMetadata) {
        this.cryptoTransferMetadata = cryptoTransferMetadata;
        TransactionSpeedLevel transactionSpeedLevel = TransactionSpeedLevel.MEDIUM;
        Intrinsics.checkNotNull(cryptoTransferMetadata);
        this.selectedFee = new GasPriceItem(transactionSpeedLevel, cryptoTransferMetadata.getFeeToken(), cryptoTransferMetadata.getTransactionParams().getMedium());
    }

    private final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3417R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3417R.string.common_cancel), 6, null);
    }

    private final void sendDonation(long j, TransferArgs.EVM evm) {
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.sendDonation(j, evm).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2097xd0cb0852(this, evm)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2098xd0cb0853((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void transferTokens(TransferArgs transferArgs, boolean z) {
        Observable<Result<Boolean>> observeOn = this.walletInteractor.sendTokens(transferArgs, this.selectedNetwork.getBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2099x2cfbccbd(this, z, transferArgs)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2100x2cfbccbe((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runNoEnoughMoneyFlow() {
        WalletSendAmountView walletSendAmountView = (WalletSendAmountView) getViewState();
        TokenDetailed tokenDetailed = this.selectedToken;
        if (tokenDetailed == null) {
            return;
        }
        walletSendAmountView.showNoEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(tokenDetailed, SwapProtocol.Companion.resolveByNetworkId(this.cryptoPreferenceHelper.getNetworkId()), null, 4, null));
    }

    private final String getConfirmMessage(String str) {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3417R.string.wallet_amount_send_confirm_alert_description;
        Object[] objArr = new Object[2];
        Double valueOf = Double.valueOf(Double.parseDouble(str));
        TokenDetailed tokenDetailed = this.selectedToken;
        objArr[0] = BalanceFormatter.formatBalance(valueOf, Integer.valueOf(NumberExtKt.orZero(tokenDetailed != null ? Integer.valueOf(tokenDetailed.getDecimals()) : null)));
        objArr[1] = getSelectedTokenTicker();
        return resourceManager.getString(i, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessMessage(double d) {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3417R.string.wallet_amount_success_send_description;
        Object[] objArr = new Object[2];
        Double valueOf = Double.valueOf(d);
        TokenDetailed tokenDetailed = this.selectedToken;
        objArr[0] = BalanceFormatter.formatBalance(valueOf, Integer.valueOf(NumberExtKt.orZero(tokenDetailed != null ? Integer.valueOf(tokenDetailed.getDecimals()) : null)));
        objArr[1] = getSelectedTokenTicker();
        return resourceManager.getString(i, objArr);
    }

    private final void loadBalance(TokenDetailed tokenDetailed) {
        if (tokenDetailed == null) {
            return;
        }
        Observable observeOn = WalletInteractor.getTokenBalance$default(this.walletInteractor, new Token(tokenDetailed.getAddress(), tokenDetailed.getNetworkId()), false, this.selectedNetwork.getId(), 2, null).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2095xd63210e4(this, tokenDetailed)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2096xd63210e5((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
        String string = this.resourceManager.getString(C3417R.string.wallet_amount_send_message_processing_name);
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
                String string2 = this.resourceManager.getString(C3417R.string.wallet_amount_send_message_id);
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
                String string3 = this.resourceManager.getString(C3417R.string.wallet_amount_send_message_id);
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
        int i = C3417R.string.wallet_amount_send_message_payload;
        Object[] objArr = new Object[5];
        Double valueOf = Double.valueOf(d);
        TokenDetailed tokenDetailed = this.selectedToken;
        objArr[0] = BalanceFormatter.formatBalance(valueOf, Integer.valueOf(NumberExtKt.orZero(tokenDetailed != null ? Integer.valueOf(tokenDetailed.getDecimals()) : null)));
        objArr[1] = getSelectedTokenTicker();
        objArr[2] = String.valueOf(j2);
        objArr[3] = String.valueOf(j);
        DateFormatter.DateType dateType = DateFormatter.DateType.DATE_AND_TIME;
        Date date = new Date(j3);
        String language = Locale.US.getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "US.language");
        objArr[4] = DateFormatter.format(dateType, date, language);
        return resourceManager.getString(i, objArr);
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
