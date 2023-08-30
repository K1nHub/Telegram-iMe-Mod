package com.iMe.p031ui.wallet.actions.send.amount;

import com.iMe.common.AppRxEvents;
import com.iMe.common.Constants;
import com.iMe.common.TelegramConstants;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.data.mapper.crypto.DonationMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
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
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.p043ui.ManageLinksActivity;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_messageEntityTextUrl;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* compiled from: WalletSendAmountPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter */
/* loaded from: classes4.dex */
public final class WalletSendAmountPresenter extends BasePresenter<WalletSendAmountView> {
    private final TransferScreenArgs args;
    private final List<NetworkItem> availableNetworks;
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
    /* loaded from: classes4.dex */
    public enum SendScreenState {
        SEND,
        PREPARE
    }

    /* compiled from: WalletSendAmountPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$WhenMappings */
    /* loaded from: classes4.dex */
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
    public static final void getBinanceAvailableTokensForReplenish$lambda$7() {
    }

    public WalletSendAmountPresenter(int i, TransferScreenArgs args, BinanceInternalInteractor binanceInternalInteractor, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, DonationsInteractor donationsInteractor, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway, TelegramGateway telegramGateway, WalletInteractor walletInteractor) {
        List<TokenDetailed> emptyList;
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(donationsInteractor, "donationsInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.screenType = i;
        this.args = args;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.donationsInteractor = donationsInteractor;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.telegramControllersGateway = telegramControllersGateway;
        this.telegramGateway = telegramGateway;
        this.walletInteractor = walletInteractor;
        this.selectedNetwork = getInitialNetwork();
        this.selectedUser = resolveUserArg();
        this.selectedChat = resolveChatArg();
        this.selectedAddress = args.getAddress();
        TokenItem tokenItem = args.getTokenItem();
        this.selectedToken = tokenItem != null ? TokenUiMappingKt.mapToDomain(tokenItem) : null;
        this.selectedAmount = "";
        this.isAllowSendInformationToChat = true;
        this.comment = "";
        this.availableNetworks = initAvailableNetworks();
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

    public final void startChooseNetworkDialog() {
        ((WalletSendAmountView) getViewState()).showChooseNetworkDialog(this.availableNetworks, NetworkUiMappingKt.mapToUI(this.selectedNetwork), new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSendAmountPresenter.startChooseNetworkDialog$lambda$0(WalletSendAmountPresenter.this, (NetworkItem.Crypto) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startChooseNetworkDialog$lambda$0(WalletSendAmountPresenter this$0, NetworkItem.Crypto crypto) {
        Network mapToDomain;
        List<TokenDetailed> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (crypto == null || (mapToDomain = NetworkUiMappingKt.mapToDomain(crypto)) == null) {
            return;
        }
        boolean z = this$0.selectedNetwork.getBlockchainType() != mapToDomain.getBlockchainType();
        this$0.selectedNetwork = mapToDomain;
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
            i = C3558R.string.wallet_amount_button_txt;
        } else if (i2 != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            i = C3558R.string.wallet_amount_button_calculate;
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
                        WalletSendAmountPresenter.startSelectTokenFlow$lambda$1(WalletSendAmountPresenter.this, action, (TokenDetailed) obj);
                    }
                });
                return;
            } else {
                getBinanceAvailableTokensForReplenish(this.selectedNetwork, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda3
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSendAmountPresenter.startSelectTokenFlow$lambda$2(WalletSendAmountPresenter.this, action);
                    }
                });
                return;
            }
        }
        ((WalletSendAmountView) getViewState()).showSelectTokenDialog(new WalletSelectTokenFragment.ScreenType.Send(null, 1, null), this.selectedNetwork.getId(), true, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSendAmountPresenter.startSelectTokenFlow$lambda$3(WalletSendAmountPresenter.this, action, (TokenDetailed) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenFlow$lambda$1(WalletSendAmountPresenter this$0, Callbacks$Callback1 action, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(token, "token");
        this$0.selectedToken = token;
        this$0.loadBalance(token);
        this$0.getBinanceAddressesForReplenish(this$0.selectedToken);
        action.invoke(token);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenFlow$lambda$2(WalletSendAmountPresenter this$0, Callbacks$Callback1 action) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        this$0.startSelectTokenFlow(action);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startSelectTokenFlow$lambda$3(WalletSendAmountPresenter this$0, Callbacks$Callback1 action, TokenDetailed token) {
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
        final String obj = trim.toString();
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidAddress(this.selectedAddress, this.selectedNetwork.getBlockchainType()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1425invoke(result);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
                if (r0 != false) goto L33;
             */
            /* renamed from: invoke  reason: collision with other method in class */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void m1425invoke(com.iMe.storage.domain.model.Result<? extends java.lang.Boolean> r8) {
                /*
                    Method dump skipped, instructions count: 257
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.actions.send.amount.C2157x61dc80d6.m1425invoke(java.lang.Object):void");
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n….invoke(error)\n        })");
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
                ((WalletSendAmountView) getViewState()).showToast(this.resourceManager.getString(C3558R.string.wallet_feature_not_available));
                return;
            }
        }
        ((WalletSendAmountView) getViewState()).showToast(this.resourceManager.getString(C3558R.string.wallet_feature_not_available));
    }

    public final void validateRecipientAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<String>> observeOn = CryptoHelper.extractAddress(address, this.selectedNetwork.getBlockchainType(), this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddress(\n        …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1424invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1424invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    if (!(((CharSequence) success.getData()).length() > 0)) {
                        resourceManager = WalletSendAmountPresenter.this.resourceManager;
                        ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showToast(resourceManager.getString(C3558R.string.wallet_recipient_validation_address_error));
                        return;
                    }
                    WalletSendAmountPresenter.this.setSelectedAddress((String) success.getData());
                    WalletSendAmountPresenter.this.setSelectedUser(null);
                    WalletSendAmountPresenter.this.setSelectedChat(null);
                    WalletSendAmountPresenter.this.setSelectedTwitterUserAvatarUrl(null);
                    ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).updateSelectedUser();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n….invoke(error)\n        })");
    }

    public final void resetStateIfNeed() {
        this.selectedAmount = "";
        resetTransactionFee();
        this.currentState = SendScreenState.PREPARE;
        ((WalletSendAmountView) getViewState()).setupScreenState(this.currentState);
    }

    public final FeeType getApproveFeeType() {
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
            return new FeeType.Default(feeDialogModel, transactionParams, feeToken, gasPriceItem, new Function1<GasPriceItem, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$getApproveFeeType$1
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
                    WalletSendAmountPresenter.this.selectFee(fee);
                }
            });
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
        Observable<Result<String>> observeOn = this.binanceInternalInteractor.getAddressForTokenReplenish(tokenDetailed.getTicker(), this.selectedNetwork.getId()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1419invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1419invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    WalletSendAmountPresenter.this.setSelectedAddress((String) ((Result.Success) result).getData());
                    ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).setupReplenishAddress();
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        WalletSendAmountPresenter.this.runNoEnoughMoneyFlow();
                        return;
                    }
                    resourceManager = WalletSendAmountPresenter.this.resourceManager;
                    ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    static /* synthetic */ void getBinanceAvailableTokensForReplenish$default(WalletSendAmountPresenter walletSendAmountPresenter, Network network, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 2) != 0) {
            callbacks$Callback = new Callbacks$Callback() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$$ExternalSyntheticLambda4
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSendAmountPresenter.getBinanceAvailableTokensForReplenish$lambda$7();
                }
            };
        }
        walletSendAmountPresenter.getBinanceAvailableTokensForReplenish(network, callbacks$Callback);
    }

    private final void getBinanceAvailableTokensForReplenish(Network network, final Callbacks$Callback callbacks$Callback) {
        Observable<Result<List<BinanceTokenInfo>>> observeOn = this.binanceInternalInteractor.getTokensForReplenish(network.getId()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BinanceTokenInfo>>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenInfo>> result) {
                m1420invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1420invoke(Result<? extends List<? extends BinanceTokenInfo>> it) {
                ResourceManager resourceManager;
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends BinanceTokenInfo>> result = it;
                if (result instanceof Result.Success) {
                    WalletSendAmountPresenter walletSendAmountPresenter = WalletSendAmountPresenter.this;
                    Iterable<BinanceTokenInfo> iterable = (Iterable) ((Result.Success) result).getData();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (BinanceTokenInfo binanceTokenInfo : iterable) {
                        arrayList.add(SelectableMappingKt.mapToDetailedToken(binanceTokenInfo));
                    }
                    walletSendAmountPresenter.availableTokensForBinanceReplenish = arrayList;
                    callbacks$Callback.invoke();
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        WalletSendAmountPresenter.this.runNoEnoughMoneyFlow();
                        return;
                    }
                    resourceManager = WalletSendAmountPresenter.this.resourceManager;
                    ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void calculateFeeForDonationsTransaction(long j, String str) {
        Token indexedToken;
        DonationsInteractor donationsInteractor = this.donationsInteractor;
        TokenDetailed tokenDetailed = this.selectedToken;
        if (tokenDetailed == null || (indexedToken = TokenExtKt.toIndexedToken(tokenDetailed)) == null) {
            return;
        }
        Observable<Result<DonationTransferMetadata>> observeOn = donationsInteractor.getDataForDonation(j, str, indexedToken).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends DonationTransferMetadata>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends DonationTransferMetadata> result) {
                m1417invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1417invoke(Result<? extends DonationTransferMetadata> it) {
                ResourceManager resourceManager;
                WalletSendAmountPresenter.SendScreenState sendScreenState;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends DonationTransferMetadata> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    WalletSendAmountPresenter.this.setSelectedAddress(((DonationTransferMetadata) success.getData()).getRecipientAddress());
                    WalletSendAmountPresenter.this.configureFees(DonationMappingKt.mapToCryptoMetadata((DonationTransferMetadata) success.getData()));
                    WalletSendAmountPresenter.this.currentState = WalletSendAmountPresenter.SendScreenState.SEND;
                    sendScreenState = WalletSendAmountPresenter.this.currentState;
                    ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).setupScreenState(sendScreenState);
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        WalletSendAmountPresenter.this.runNoEnoughMoneyFlow();
                        return;
                    }
                    resourceManager = WalletSendAmountPresenter.this.resourceManager;
                    ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final Network getInitialNetwork() {
        Object obj;
        Network network;
        if (this.args.getNetworkId() != null) {
            network = NetworksHelper.getNetworkById(this.args.getNetworkId());
        } else {
            List<Network> loggedInNetworks = NetworksHelper.INSTANCE.getLoggedInNetworks();
            Iterator<T> it = loggedInNetworks.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((Network) obj).getId(), this.cryptoPreferenceHelper.getNetwork().getId())) {
                    break;
                }
            }
            Network network2 = (Network) obj;
            if (network2 == null) {
                network = (Network) CollectionsKt.firstOrNull(loggedInNetworks);
                if (network == null) {
                    network = NetworksHelper.INSTANCE.getDefault();
                }
            } else {
                network = network2;
            }
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
        if (r3.hasUser(r2.f1694id) != false) goto L24;
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
            long r4 = r2.f1694id
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
        return new DialogModel(this.resourceManager.getString(C3558R.string.wallet_amount_confirm_alert_title), getConfirmMessage(str), this.resourceManager.getString(C3558R.string.common_cancel), this.resourceManager.getString(C3558R.string.wallet_amount_confirm_alert_ok_btn));
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
            Observable<Result<CryptoTransferMetadata>> observeOn = this.walletInteractor.getCryptoTransferMetadata(new Token(tokenDetailed.getAddress(), tokenDetailed.getNetworkId()), str, str2, this.selectedNetwork).observeOn(this.schedulersProvider.mo716ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CryptoTransferMetadata>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoTransferMetadata> result) {
                    m1418invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1418invoke(Result<? extends CryptoTransferMetadata> it) {
                    ResourceManager resourceManager;
                    WalletSendAmountPresenter.SendScreenState sendScreenState;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends CryptoTransferMetadata> result = it;
                    if (result instanceof Result.Success) {
                        WalletSendAmountPresenter.this.configureFees((CryptoTransferMetadata) ((Result.Success) result).getData());
                        WalletSendAmountPresenter.this.currentState = WalletSendAmountPresenter.SendScreenState.SEND;
                        sendScreenState = WalletSendAmountPresenter.this.currentState;
                        ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).setupScreenState(sendScreenState);
                    } else if (result instanceof Result.Error) {
                        Result.Error error = (Result.Error) result;
                        if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                            WalletSendAmountPresenter.this.runNoEnoughMoneyFlow();
                            return;
                        }
                        resourceManager = WalletSendAmountPresenter.this.resourceManager;
                        ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$2
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
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
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
        return new DialogModel(this.resourceManager.getString(C3558R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3558R.string.common_cancel), 6, null);
    }

    private final void sendDonation(long j, final TransferArgs.EVM evm) {
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.sendDonation(j, evm).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1422invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1422invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                RxEventBus rxEventBus;
                String successMessage;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    rxEventBus = WalletSendAmountPresenter.this.rxEventBus;
                    rxEventBus.publish(AppRxEvents.UpdateWalletScreen.INSTANCE);
                    successMessage = WalletSendAmountPresenter.this.getSuccessMessage(evm.getAmount());
                    ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showSuccessSend(successMessage);
                    WalletSendAmountPresenter.this.resetTransactionFee();
                    WalletSendAmountPresenter.this.resetStateIfNeed();
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    IErrorStatus status = error.getError().getStatus();
                    if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        WalletSendAmountPresenter.this.runNoEnoughMoneyFlow();
                    } else if (status == FirebaseFunctionsErrorHandler.ErrorStatus.USER_NOT_FOUND) {
                        if (WalletSendAmountPresenter.this.getSelectedUser() != null) {
                            ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showRecipientWalletNotActivatedError();
                        } else {
                            ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showRecipientNotFoundError();
                        }
                    } else if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_BLOCK_CHAIN_ERROR) {
                        WalletSendAmountPresenter.this.resetTransactionFee();
                        WalletSendAmountPresenter.this.resetStateIfNeed();
                        resourceManager2 = WalletSendAmountPresenter.this.resourceManager;
                        ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showErrorToast(error, resourceManager2);
                    } else {
                        resourceManager = WalletSendAmountPresenter.this.resourceManager;
                        ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void transferTokens(final TransferArgs transferArgs, final boolean z) {
        Observable<Result<Boolean>> observeOn = this.walletInteractor.sendTokens(transferArgs, this.selectedNetwork).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1423invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1423invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                RxEventBus rxEventBus;
                String successMessage;
                TelegramGateway telegramGateway;
                TelegramGateway telegramGateway2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    T viewState2 = WalletSendAmountPresenter.this.getViewState();
                    Intrinsics.checkNotNullExpressionValue(viewState2, "viewState");
                    BaseView.CC.showLoadingDialog$default((BaseView) viewState2, false, false, null, 6, null);
                    if (WalletSendAmountPresenter.this.getSelectedUser() != null && z) {
                        telegramGateway = WalletSendAmountPresenter.this.telegramGateway;
                        TLRPC$User selectedUser = WalletSendAmountPresenter.this.getSelectedUser();
                        Intrinsics.checkNotNull(selectedUser);
                        if (telegramGateway.hasUser(selectedUser.f1694id)) {
                            WalletSendAmountPresenter walletSendAmountPresenter = WalletSendAmountPresenter.this;
                            TLRPC$User selectedUser2 = walletSendAmountPresenter.getSelectedUser();
                            Intrinsics.checkNotNull(selectedUser2);
                            long j = selectedUser2.f1694id;
                            telegramGateway2 = WalletSendAmountPresenter.this.telegramGateway;
                            walletSendAmountPresenter.sendMessageToChat(j, telegramGateway2.getSelectedAccountId(), transferArgs.getAmount());
                        }
                    }
                    rxEventBus = WalletSendAmountPresenter.this.rxEventBus;
                    rxEventBus.publish(AppRxEvents.UpdateWalletScreen.INSTANCE);
                    successMessage = WalletSendAmountPresenter.this.getSuccessMessage(transferArgs.getAmount());
                    ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showSuccessSend(successMessage);
                    WalletSendAmountPresenter.this.resetTransactionFee();
                    WalletSendAmountPresenter.this.resetStateIfNeed();
                } else if (result instanceof Result.Error) {
                    T viewState3 = WalletSendAmountPresenter.this.getViewState();
                    Intrinsics.checkNotNullExpressionValue(viewState3, "viewState");
                    BaseView.CC.showLoadingDialog$default((BaseView) viewState3, false, false, null, 6, null);
                    Result.Error error = (Result.Error) result;
                    IErrorStatus status = error.getError().getStatus();
                    if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        WalletSendAmountPresenter.this.runNoEnoughMoneyFlow();
                    } else if (status == FirebaseFunctionsErrorHandler.ErrorStatus.USER_NOT_FOUND) {
                        if (WalletSendAmountPresenter.this.getSelectedUser() != null) {
                            ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showRecipientWalletNotActivatedError();
                        } else {
                            ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showRecipientNotFoundError();
                        }
                    } else if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_BLOCK_CHAIN_ERROR) {
                        WalletSendAmountPresenter.this.resetTransactionFee();
                        WalletSendAmountPresenter.this.resetStateIfNeed();
                        resourceManager2 = WalletSendAmountPresenter.this.resourceManager;
                        ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showErrorToast(error, resourceManager2);
                    } else {
                        resourceManager = WalletSendAmountPresenter.this.resourceManager;
                        ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
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
        int i = C3558R.string.wallet_amount_send_confirm_alert_description;
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
        int i = C3558R.string.wallet_amount_success_send_description;
        Object[] objArr = new Object[2];
        Double valueOf = Double.valueOf(d);
        TokenDetailed tokenDetailed = this.selectedToken;
        objArr[0] = BalanceFormatter.formatBalance(valueOf, Integer.valueOf(NumberExtKt.orZero(tokenDetailed != null ? Integer.valueOf(tokenDetailed.getDecimals()) : null)));
        objArr[1] = getSelectedTokenTicker();
        return resourceManager.getString(i, objArr);
    }

    private final void loadBalance(final TokenDetailed tokenDetailed) {
        if (tokenDetailed == null) {
            return;
        }
        Observable observeOn = WalletInteractor.getTokenBalance$default(this.walletInteractor, new Token(tokenDetailed.getAddress(), tokenDetailed.getNetworkId()), false, this.selectedNetwork.getId(), 2, null).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TokenBalance>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
                m1421invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1421invoke(Result<? extends TokenBalance> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TokenBalance> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    WalletSendAmountPresenter.this.tokenBalance = (TokenBalance) success.getData();
                    ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showBalance((TokenBalance) success.getData());
                } else if (result instanceof Result.Loading) {
                    WalletSendAmountPresenter.this.tokenBalance = TokenBalance.Companion.createEmptyBalanceFor(tokenDetailed);
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletSendAmountPresenter.this.resourceManager;
                    ((WalletSendAmountView) WalletSendAmountPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendMessageToChat(long j, long j2, double d) {
        int indexOf$default;
        int lastIndexOf$default;
        int indexOf$default2;
        String formatMessageToUser = formatMessageToUser(j, d, j2, DateExtKt.now());
        ArrayList arrayList = new ArrayList();
        TLRPC$TL_messageEntityTextUrl tLRPC$TL_messageEntityTextUrl = new TLRPC$TL_messageEntityTextUrl();
        String string = this.resourceManager.getString(C3558R.string.wallet_amount_send_message_processing_name);
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
                String string2 = this.resourceManager.getString(C3558R.string.wallet_amount_send_message_id);
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
                String string3 = this.resourceManager.getString(C3558R.string.wallet_amount_send_message_id);
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
        TelegramControllersGateway.CC.getSendMessagesHelper$default(this.telegramControllersGateway, 0, 1, null).sendMessage(SendMessagesHelper.SendMessageParams.m60of(formatMessageToUser, j, null, null, null, false, arrayList, null, null, true, 0, null, false, null));
    }

    private final String formatMessageToUser(long j, double d, long j2, long j3) {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3558R.string.wallet_amount_send_message_payload;
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

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    private final List<NetworkItem.Crypto> initAvailableNetworks() {
        List<Network> loggedInNetworks;
        if (isBinanceReplenish()) {
            List<Network> binanceSupportedNetworks = NetworksHelper.INSTANCE.getBinanceSupportedNetworks();
            loggedInNetworks = new ArrayList<>();
            for (?? r2 : binanceSupportedNetworks) {
                if (this.cryptoAccessManager.getLoggedInWalletsBlockchains().contains(((Network) r2).getBlockchainType())) {
                    loggedInNetworks.add(r2);
                }
            }
        } else {
            loggedInNetworks = NetworksHelper.INSTANCE.getLoggedInNetworks();
        }
        return NetworkUiMappingKt.mapToUI(loggedInNetworks);
    }

    /* compiled from: WalletSendAmountPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
