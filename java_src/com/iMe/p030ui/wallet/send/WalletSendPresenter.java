package com.iMe.p030ui.wallet.send;

import android.os.Bundle;
import com.iMe.common.AppRxEvents;
import com.iMe.common.TelegramConstants;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.common.FeatureAvailableManager$Token;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.BlockchainAddressData;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.model.wallet.send.WalletSendScreenType;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.wallet.send.WalletSendPresenter;
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
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.BitcoinUnspentOutput;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.SendCryptoQRData;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extensions.TokenExtKt;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import com.iMe.utils.helper.wallet.CryptoHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_messageEntityTextUrl;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* compiled from: WalletSendPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.send.WalletSendPresenter */
/* loaded from: classes4.dex */
public final class WalletSendPresenter extends BasePresenter<WalletSendView> {
    private final PublishSubject<String> amountSubject;
    private final TransferScreenArgs args;
    private final List<NetworkItem> availableNetworks;
    private List<TokenDetailed> availableTokensForBinanceReplenish;
    private final BinanceInternalInteractor binanceInternalInteractor;
    private String comment;
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private CryptoTransferMetadata cryptoTransferMetadata;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final DonationsInteractor donationsInteractor;
    private final boolean isBinanceReplenish;
    private final boolean isDonationsTransfer;
    private boolean isFirstViewAttach;
    private boolean isValidAddress;
    private final boolean isWalletTransfer;
    private Regex regex;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private String selectedAddress;
    private String selectedAmount;
    private TLRPC$Chat selectedChat;
    private GasPriceItem selectedFee;
    private Network selectedNetwork;
    private TokenBalance selectedTokenBalance;
    private TLRPC$User selectedUser;
    private int sendMode;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TelegramGateway telegramGateway;
    private final WalletInteractor walletInteractor;

    /* compiled from: WalletSendPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendPresenter$SendScreenState */
    /* loaded from: classes4.dex */
    public enum SendScreenState {
        SEND,
        LOADING,
        PREPARE
    }

    static {
        new Companion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getBinanceAvailableTokensForReplenish$lambda$11() {
    }

    public WalletSendPresenter(WalletSendScreenType screenType, TransferScreenArgs args, BinanceInternalInteractor binanceInternalInteractor, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, DonationsInteractor donationsInteractor, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway, TelegramGateway telegramGateway, WalletInteractor walletInteractor) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
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
        this.isWalletTransfer = screenType == WalletSendScreenType.WALLET_TRANSFER;
        this.isBinanceReplenish = screenType == WalletSendScreenType.BINANCE_REPLENISH;
        this.isDonationsTransfer = screenType == WalletSendScreenType.WALLET_TRANSFER_DONATIONS;
        this.availableNetworks = initAvailableNetworks();
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.amountSubject = create;
        this.selectedNetwork = getInitialNetwork();
        this.selectedUser = resolveUserArg();
        this.selectedAddress = args.getAddress();
        this.isValidAddress = true;
        this.comment = "";
        this.regex = resolveRegex();
        SendScreenState sendScreenState = SendScreenState.PREPARE;
        this.sendMode = 3;
        resolveChatArg();
        this.selectedAmount = "";
        this.isFirstViewAttach = true;
    }

    private final String getSelectedTokenTicker() {
        TokenDetailed token;
        TokenBalance tokenBalance = this.selectedTokenBalance;
        String ticker = (tokenBalance == null || (token = tokenBalance.getToken()) == null) ? null : token.getTicker();
        return ticker == null ? "" : ticker;
    }

    public final void startChooseNetworkDialog() {
        ((WalletSendView) getViewState()).showChooseNetworkDialog(this.availableNetworks, NetworkUiMappingKt.mapToUI(this.selectedNetwork));
    }

    public final void onSelectNetworkClick(NetworkItem.Crypto crypto) {
        Network mapToDomain;
        subscribeToAmountSubject();
        if (crypto == null || (mapToDomain = NetworkUiMappingKt.mapToDomain(crypto)) == null) {
            return;
        }
        boolean z = this.selectedNetwork.getBlockchainType() != mapToDomain.getBlockchainType();
        this.selectedNetwork = mapToDomain;
        ((WalletSendView) getViewState()).setupCommentVisibility(this.selectedNetwork.getBlockchainType().isTON());
        this.regex = resolveRegex();
        resetScreenState(z);
        if (this.isBinanceReplenish) {
            this.availableTokensForBinanceReplenish = null;
            getBinanceAvailableTokensForReplenish$default(this, this.selectedNetwork, null, 2, null);
        }
    }

    public final void onSelectTokenClick() {
        if (!this.isBinanceReplenish) {
            ((WalletSendView) getViewState()).openSelectTokenScreen(new SelectTokenScreenType.Send(null, 1, null), this.selectedNetwork.getId());
        } else if (this.availableTokensForBinanceReplenish == null) {
            getBinanceAvailableTokensForReplenish(this.selectedNetwork, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSendPresenter.onSelectTokenClick$lambda$0(WalletSendPresenter.this);
                }
            });
        } else {
            ((WalletSendView) getViewState()).openSelectTokenScreen(new SelectTokenScreenType.Send(this.availableTokensForBinanceReplenish), this.selectedNetwork.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSelectTokenClick$lambda$0(WalletSendPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSelectTokenClick();
    }

    public final void onTokenSelected(TokenDetailed selectedToken) {
        Intrinsics.checkNotNullParameter(selectedToken, "selectedToken");
        TokenBalance tokenBalance = this.selectedTokenBalance;
        if (Intrinsics.areEqual(tokenBalance != null ? tokenBalance.getToken() : null, selectedToken)) {
            return;
        }
        if (this.isBinanceReplenish) {
            getBinanceAddressesForReplenish(selectedToken);
        }
        Observable<Result<TokenBalance>> observeOn = this.walletInteractor.getTokenBalance(TokenExtKt.toIndexedToken(selectedToken), true, selectedToken.getNetworkId()).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TokenBalance>, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
                m1799invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1799invoke(Result<? extends TokenBalance> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TokenBalance> result = it;
                if (result instanceof Result.Success) {
                    WalletSendPresenter walletSendPresenter = WalletSendPresenter.this;
                    TokenBalance tokenBalance2 = (TokenBalance) ((Result.Success) result).getData();
                    TokenDetailed token = tokenBalance2.getToken();
                    WalletSendView walletSendView = (WalletSendView) WalletSendPresenter.this.getViewState();
                    resourceManager2 = WalletSendPresenter.this.resourceManager;
                    String string = resourceManager2.getString(C3632R.string.wallet_common_token_name_with_ticker, token.getName(), token.getTicker());
                    String avatarUrl = token.getAvatarUrl();
                    int decimals = token.getDecimals();
                    String str = BalanceFormatter.format$default(Double.valueOf(tokenBalance2.getTotal()), null, 2, null) + ' ' + token.getTicker();
                    resourceManager3 = WalletSendPresenter.this.resourceManager;
                    walletSendView.renderSelectedToken(string, avatarUrl, decimals, str, resourceManager3.getString(C3632R.string.wallet_amount_send_send_amount_in_fiat, 0));
                    walletSendPresenter.selectedTokenBalance = tokenBalance2;
                    WalletSendPresenter.this.selectedAmount = "";
                    WalletSendPresenter.this.checkEnteredData();
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletSendPresenter.this.resourceManager;
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$2
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

    public final void onSelectContact(String address, TLRPC$User user) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(user, "user");
        this.selectedAddress = address;
        this.selectedUser = user;
        checkEnteredData();
        ((WalletSendView) getViewState()).setupAvatarRecipient(this.selectedUser);
    }

    public final void onAmountChanged(String amountText) {
        Intrinsics.checkNotNullParameter(amountText, "amountText");
        this.amountSubject.onNext(amountText);
    }

    public final void onCommentChanged(String commentText) {
        Intrinsics.checkNotNullParameter(commentText, "commentText");
        this.comment = commentText;
    }

    public final void send(boolean z) {
        TransferArgs formatTransferArgs = formatTransferArgs(this.selectedAmount);
        if (formatTransferArgs == null) {
            ((WalletSendView) getViewState()).showToast(this.resourceManager.getString(C3632R.string.wallet_feature_not_available));
        } else if (this.isWalletTransfer || this.isBinanceReplenish) {
            transferTokens(formatTransferArgs, z);
        } else if (this.isDonationsTransfer && this.args.getChatId() != null && (formatTransferArgs instanceof TransferArgs.EVM)) {
            sendDonation(TelegramConstants.INSTANCE.prepareChatIdForBotAPI(this.args.getChatId().longValue()), (TransferArgs.EVM) formatTransferArgs);
        } else {
            ((WalletSendView) getViewState()).showToast(this.resourceManager.getString(C3632R.string.wallet_feature_not_available));
        }
    }

    public final void validateRecipientAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<SendCryptoQRData>> observeOn = CryptoHelper.extractAddressAndAmount(address, this.selectedNetwork.getBlockchainType(), this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddressAndAmount(…(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends SendCryptoQRData>, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SendCryptoQRData> result) {
                m1802invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1802invoke(Result<? extends SendCryptoQRData> it) {
                ResourceManager resourceManager;
                String str;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends SendCryptoQRData> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    if (((SendCryptoQRData) success.getData()).getAddress().length() > 0) {
                        WalletSendPresenter.this.selectedAddress = ((SendCryptoQRData) success.getData()).getAddress();
                        WalletSendPresenter.this.selectedUser = null;
                        WalletSendPresenter.this.selectedChat = null;
                        WalletSendView walletSendView = (WalletSendView) WalletSendPresenter.this.getViewState();
                        str = WalletSendPresenter.this.selectedAddress;
                        walletSendView.setupReplenishAddress(str);
                        if (((SendCryptoQRData) success.getData()).getAmount().length() > 0) {
                            walletSendView.setupAmount(((SendCryptoQRData) success.getData()).getAmount());
                        }
                        WalletSendPresenter.this.checkEnteredData();
                        return;
                    }
                    resourceManager = WalletSendPresenter.this.resourceManager;
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).showToast(resourceManager.getString(C3632R.string.wallet_recipient_validation_address_error));
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
    }

    public final void resolveAction() {
        boolean z;
        TokenBalance tokenBalance = this.selectedTokenBalance;
        if (NumberExtKt.orZero(tokenBalance != null ? Double.valueOf(tokenBalance.getTotal()) : null) < Double.parseDouble(this.selectedAmount)) {
            runNoEnoughMoneyFlow();
            return;
        }
        WalletSendView walletSendView = (WalletSendView) getViewState();
        DialogModel sendConfirmationDialogModel = getSendConfirmationDialogModel(this.selectedAmount);
        TLRPC$User tLRPC$User = this.selectedUser;
        if (tLRPC$User != null) {
            TelegramGateway telegramGateway = this.telegramGateway;
            Intrinsics.checkNotNull(tLRPC$User);
            if (telegramGateway.hasUser(tLRPC$User.f1749id)) {
                z = true;
                walletSendView.onSuccessValidation(sendConfirmationDialogModel, z);
            }
        }
        z = false;
        walletSendView.onSuccessValidation(sendConfirmationDialogModel, z);
    }

    public final void onContactsClick() {
        int i;
        if (this.isBinanceReplenish) {
            WalletSendView walletSendView = (WalletSendView) getViewState();
            ResourceManager resourceManager = this.resourceManager;
            if (this.selectedAddress.length() == 0) {
                i = C3632R.string.binance_replenish_token_choose_token_first_error;
            } else {
                i = C3632R.string.binance_replenish_token_choose_token_cant_change_error;
            }
            walletSendView.showToast(resourceManager.getString(i));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("destroyAfterSelect", true);
        bundle.putBoolean("returnAsResult", true);
        bundle.putBoolean("allowSelf", false);
        bundle.putBoolean("allowBots", false);
        if (this.isWalletTransfer) {
            bundle.putBoolean("is_choose_wallet_transfer_recipient", true);
            bundle.putString("network_type", this.selectedNetwork.getId());
        }
        ((WalletSendView) getViewState()).openChooseContact(bundle);
    }

    public final void validateEnterAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        ((WalletSendView) getViewState()).setupRecipientInputErrorState(!this.regex.matches(address));
        if (!this.isFirstViewAttach) {
            this.selectedUser = null;
        }
        ((WalletSendView) getViewState()).setupAvatarRecipient(this.selectedUser);
        this.isValidAddress = this.regex.matches(address);
        this.selectedAddress = address;
        checkEnteredData();
    }

    public final void onMaxAmountClick() {
        TokenBalance tokenBalance = this.selectedTokenBalance;
        if ((tokenBalance != null ? tokenBalance.getToken() : null) == null) {
            ((WalletSendView) getViewState()).setupTokenInputErrorState(true);
            return;
        }
        WalletSendView walletSendView = (WalletSendView) getViewState();
        TokenBalance tokenBalance2 = this.selectedTokenBalance;
        String plainString = NumberExtKt.orZero(tokenBalance2 != null ? new BigDecimal(String.valueOf(tokenBalance2.getTotal())) : null).toPlainString();
        Intrinsics.checkNotNullExpressionValue(plainString, "selectedTokenBalance?.to….orZero().toPlainString()");
        walletSendView.setupAmount(StringExtKt.stripZeros$default(plainString, (char) 0, 1, null));
    }

    public final void onReplenish() {
        TokenDetailed token;
        WalletSendView walletSendView = (WalletSendView) getViewState();
        TokenBalance tokenBalance = this.selectedTokenBalance;
        if (tokenBalance == null || (token = tokenBalance.getToken()) == null) {
            return;
        }
        walletSendView.openBuyScreen(new TokenBuyCoordinatorArgs(null, token, SwapProtocol.Companion.resolveByNetworkId(this.cryptoPreferenceHelper.getNetworkId()), null, 9, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        TokenDetailed mapToDomain;
        super.onFirstViewAttach();
        TokenItem tokenItem = this.args.getTokenItem();
        if (tokenItem != null && (mapToDomain = TokenUiMappingKt.mapToDomain(tokenItem)) != null) {
            onTokenSelected(mapToDomain);
        }
        WalletSendView walletSendView = (WalletSendView) getViewState();
        walletSendView.setupNetwork(NetworkUiMappingKt.mapToUI(this.selectedNetwork));
        walletSendView.setupReplenishAddress(this.selectedAddress);
        walletSendView.setupAvatarRecipient(this.selectedUser);
        walletSendView.updateStateButtonSend(SendScreenState.PREPARE);
        walletSendView.setupRecipientInputErrorState(false);
        walletSendView.setupCommentVisibility(this.selectedNetwork.getBlockchainType().isTON());
        if (this.isBinanceReplenish) {
            TokenItem tokenItem2 = this.args.getTokenItem();
            getBinanceAddressesForReplenish(tokenItem2 != null ? TokenUiMappingKt.mapToDomain(tokenItem2) : null);
            getBinanceAvailableTokensForReplenish$default(this, this.selectedNetwork, null, 2, null);
        }
        subscribeToAmountSubject();
        this.isFirstViewAttach = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showAmountError(boolean z) {
        ((WalletSendView) getViewState()).setupAmountInputErrorState(z, FeatureAvailableManager$Token.INSTANCE.isPurchaseAvailable(this.selectedNetwork.getId()) ? this.resourceManager.getString(C3632R.string.wallet_token_details_action_buy) : "");
    }

    private final void validateSend() {
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidAddress(this.selectedAddress, this.selectedNetwork.getBlockchainType()).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1803invoke(result);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
                if (r0 != false) goto L16;
             */
            /* renamed from: invoke  reason: collision with other method in class */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void m1803invoke(com.iMe.storage.domain.model.Result<? extends java.lang.Boolean> r3) {
                /*
                    r2 = this;
                    java.lang.String r0 = "it"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
                    com.iMe.storage.domain.model.Result r3 = (com.iMe.storage.domain.model.Result) r3
                    boolean r0 = r3 instanceof com.iMe.storage.domain.model.Result.Success
                    if (r0 == 0) goto L81
                    com.iMe.ui.wallet.send.WalletSendPresenter r0 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    boolean r0 = com.iMe.p030ui.wallet.send.WalletSendPresenter.access$isWalletTransfer$p(r0)
                    if (r0 != 0) goto L1c
                    com.iMe.ui.wallet.send.WalletSendPresenter r0 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    boolean r0 = com.iMe.p030ui.wallet.send.WalletSendPresenter.access$isBinanceReplenish$p(r0)
                    if (r0 == 0) goto L42
                L1c:
                    com.iMe.storage.domain.model.Result$Success r3 = (com.iMe.storage.domain.model.Result.Success) r3
                    java.lang.Object r3 = r3.getData()
                    java.lang.Boolean r3 = (java.lang.Boolean) r3
                    boolean r3 = r3.booleanValue()
                    if (r3 != 0) goto L42
                    com.iMe.ui.wallet.send.WalletSendPresenter r3 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    moxy.MvpView r3 = r3.getViewState()
                    com.iMe.ui.wallet.send.WalletSendView r3 = (com.iMe.p030ui.wallet.send.WalletSendView) r3
                    com.iMe.ui.wallet.send.WalletSendPresenter r0 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    com.iMe.storage.domain.utils.system.ResourceManager r0 = com.iMe.p030ui.wallet.send.WalletSendPresenter.access$getResourceManager$p(r0)
                    int r1 = org.telegram.messenger.C3632R.string.wallet_amount_send_invalid_eth_address
                    java.lang.String r0 = r0.getString(r1)
                    r3.showToast(r0)
                    goto L98
                L42:
                    com.iMe.ui.wallet.send.WalletSendPresenter r3 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    boolean r3 = com.iMe.p030ui.wallet.send.WalletSendPresenter.access$isDonationsTransfer$p(r3)
                    if (r3 == 0) goto L6e
                    com.iMe.ui.wallet.send.WalletSendPresenter r3 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    com.iMe.model.wallet.transfer.TransferScreenArgs r3 = com.iMe.p030ui.wallet.send.WalletSendPresenter.access$getArgs$p(r3)
                    java.lang.Long r3 = r3.getChatId()
                    if (r3 != 0) goto L6e
                    com.iMe.ui.wallet.send.WalletSendPresenter r3 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    moxy.MvpView r3 = r3.getViewState()
                    com.iMe.ui.wallet.send.WalletSendView r3 = (com.iMe.p030ui.wallet.send.WalletSendView) r3
                    com.iMe.ui.wallet.send.WalletSendPresenter r0 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    com.iMe.storage.domain.utils.system.ResourceManager r0 = com.iMe.p030ui.wallet.send.WalletSendPresenter.access$getResourceManager$p(r0)
                    int r1 = org.telegram.messenger.C3632R.string.wallet_amount_send_invalid_chat_id
                    java.lang.String r0 = r0.getString(r1)
                    r3.showToast(r0)
                    goto L98
                L6e:
                    com.iMe.ui.wallet.send.WalletSendPresenter r3 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    moxy.MvpView r3 = r3.getViewState()
                    com.iMe.ui.wallet.send.WalletSendView r3 = (com.iMe.p030ui.wallet.send.WalletSendView) r3
                    com.iMe.ui.wallet.send.WalletSendPresenter$SendScreenState r0 = com.iMe.p030ui.wallet.send.WalletSendPresenter.SendScreenState.SEND
                    r3.updateStateButtonSend(r0)
                    com.iMe.ui.wallet.send.WalletSendPresenter r3 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    com.iMe.p030ui.wallet.send.WalletSendPresenter.access$updateFee(r3)
                    goto L98
                L81:
                    boolean r0 = r3 instanceof com.iMe.storage.domain.model.Result.Error
                    if (r0 == 0) goto L98
                    com.iMe.ui.wallet.send.WalletSendPresenter r0 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    moxy.MvpView r0 = r0.getViewState()
                    com.iMe.ui.wallet.send.WalletSendView r0 = (com.iMe.p030ui.wallet.send.WalletSendView) r0
                    com.iMe.storage.domain.model.Result$Error r3 = (com.iMe.storage.domain.model.Result.Error) r3
                    com.iMe.ui.wallet.send.WalletSendPresenter r1 = com.iMe.p030ui.wallet.send.WalletSendPresenter.this
                    com.iMe.storage.domain.utils.system.ResourceManager r1 = com.iMe.p030ui.wallet.send.WalletSendPresenter.access$getResourceManager$p(r1)
                    r0.showErrorToast(r3, r1)
                L98:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.wallet.send.C2436x4eac471e.m1803invoke(java.lang.Object):void");
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkEnteredData() {
        if (this.isValidAddress) {
            if (this.selectedAddress.length() > 0) {
                TokenBalance tokenBalance = this.selectedTokenBalance;
                if ((tokenBalance != null ? tokenBalance.getToken() : null) != null) {
                    if ((this.selectedAmount.length() > 0) && !NumberExtKt.isZero(Double.valueOf(Double.parseDouble(this.selectedAmount)))) {
                        ((WalletSendView) getViewState()).updateStateButtonSend(SendScreenState.LOADING);
                        validateSend();
                        return;
                    }
                }
            }
        }
        ((WalletSendView) getViewState()).updateStateButtonSend(SendScreenState.PREPARE);
        ((WalletSendView) getViewState()).hideFeeView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateFee() {
        CharSequence trim;
        if (this.isDonationsTransfer && this.args.getChatId() != null) {
            calculateFeeForDonationsTransaction(TelegramConstants.INSTANCE.prepareChatIdForBotAPI(this.args.getChatId().longValue()), this.selectedAmount);
        } else if (this.isWalletTransfer || this.isBinanceReplenish) {
            trim = StringsKt__StringsKt.trim(this.selectedAddress);
            calculateFeeForTransaction(trim.toString(), this.selectedAmount);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetStateIfNeeded() {
        this.selectedAmount = "";
        resetTransactionFee();
    }

    private final FeeType getApproveFeeType() {
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
            return new FeeType.Default(feeDialogModel, transactionParams, feeToken, gasPriceItem, new Function1<GasPriceItem, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$getApproveFeeType$1
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
                    WalletSendPresenter.this.selectFee(fee);
                }
            });
        }
        return null;
    }

    private final void getBinanceAddressesForReplenish(TokenDetailed tokenDetailed) {
        if (tokenDetailed == null) {
            return;
        }
        Observable<Result<String>> observeOn = this.binanceInternalInteractor.getAddressForTokenReplenish(tokenDetailed.getTicker(), this.selectedNetwork.getId()).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1797invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1797invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                String str;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    WalletSendPresenter.this.selectedAddress = (String) ((Result.Success) result).getData();
                    str = WalletSendPresenter.this.selectedAddress;
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).setupReplenishAddress(str);
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        WalletSendPresenter.this.runNoEnoughMoneyFlow();
                        return;
                    }
                    resourceManager = WalletSendPresenter.this.resourceManager;
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$2
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

    static /* synthetic */ void getBinanceAvailableTokensForReplenish$default(WalletSendPresenter walletSendPresenter, Network network, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 2) != 0) {
            callbacks$Callback = new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$$ExternalSyntheticLambda1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSendPresenter.getBinanceAvailableTokensForReplenish$lambda$11();
                }
            };
        }
        walletSendPresenter.getBinanceAvailableTokensForReplenish(network, callbacks$Callback);
    }

    private final void getBinanceAvailableTokensForReplenish(Network network, final Callbacks$Callback callbacks$Callback) {
        Observable<Result<List<BinanceTokenInfo>>> observeOn = this.binanceInternalInteractor.getTokensForReplenish(network.getId()).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BinanceTokenInfo>>, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenInfo>> result) {
                m1798invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1798invoke(Result<? extends List<? extends BinanceTokenInfo>> it) {
                ResourceManager resourceManager;
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends BinanceTokenInfo>> result = it;
                if (result instanceof Result.Success) {
                    WalletSendPresenter walletSendPresenter = WalletSendPresenter.this;
                    Iterable<BinanceTokenInfo> iterable = (Iterable) ((Result.Success) result).getData();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (BinanceTokenInfo binanceTokenInfo : iterable) {
                        arrayList.add(SelectableMappingKt.mapToDetailedToken(binanceTokenInfo));
                    }
                    walletSendPresenter.availableTokensForBinanceReplenish = arrayList;
                    callbacks$Callback.invoke();
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        WalletSendPresenter.this.runNoEnoughMoneyFlow();
                        return;
                    }
                    resourceManager = WalletSendPresenter.this.resourceManager;
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$2
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

    private final void calculateFeeForDonationsTransaction(long j, String str) {
        TokenDetailed token;
        Token indexedToken;
        DonationsInteractor donationsInteractor = this.donationsInteractor;
        TokenBalance tokenBalance = this.selectedTokenBalance;
        if (tokenBalance == null || (token = tokenBalance.getToken()) == null || (indexedToken = TokenExtKt.toIndexedToken(token)) == null) {
            return;
        }
        Observable<Result<DonationTransferMetadata>> observeOn = donationsInteractor.getDataForDonation(j, str, indexedToken).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends DonationTransferMetadata>, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends DonationTransferMetadata> result) {
                m1795invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1795invoke(Result<? extends DonationTransferMetadata> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends DonationTransferMetadata> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    WalletSendPresenter.this.selectedAddress = ((DonationTransferMetadata) success.getData()).getRecipientAddress();
                    WalletSendPresenter.this.configureFees(DonationMappingKt.mapToCryptoMetadata((DonationTransferMetadata) success.getData()));
                } else if (result instanceof Result.Error) {
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).hideFeeView();
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        WalletSendPresenter.this.runNoEnoughMoneyFlow();
                        return;
                    }
                    resourceManager = WalletSendPresenter.this.resourceManager;
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$2
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

    private final Network getInitialNetwork() {
        Object obj;
        Network network;
        Set set;
        Set intersect;
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
                network = (Network) CollectionsKt.firstOrNull((List<? extends Object>) loggedInNetworks);
                if (network == null) {
                    network = NetworksHelper.INSTANCE.getDefault();
                }
            } else {
                network = network2;
            }
        }
        if (this.isDonationsTransfer && network.getBlockchainType() != BlockchainType.EVM) {
            return (Network) CollectionsKt.first((List<? extends Object>) NetworksHelper.INSTANCE.getLoggedInNetworks());
        }
        if (this.isBinanceReplenish) {
            NetworksHelper networksHelper = NetworksHelper.INSTANCE;
            if (networksHelper.getBinanceNetworks().contains(network)) {
                return network;
            }
            List<Network> loggedInNetworks2 = networksHelper.getLoggedInNetworks();
            set = CollectionsKt___CollectionsKt.toSet(networksHelper.getBinanceNetworks());
            intersect = CollectionsKt___CollectionsKt.intersect(loggedInNetworks2, set);
            return (Network) CollectionsKt.first(intersect);
        }
        return network;
    }

    private final Regex resolveRegex() {
        return new Regex(BlockchainAddressData.Companion.mapByBlockchainType(this.selectedNetwork.getBlockchainType()).getRegex());
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
            this.selectedUser = null;
        }
        this.selectedTokenBalance = null;
        SendScreenState sendScreenState = SendScreenState.PREPARE;
        this.selectedAmount = "";
        resetTransactionFee();
        ((WalletSendView) getViewState()).resetScreen();
        ((WalletSendView) getViewState()).setupNetwork(NetworkUiMappingKt.mapToUI(this.selectedNetwork));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void selectFee(GasPriceItem gasPriceItem) {
        this.selectedFee = gasPriceItem;
        ((WalletSendView) getViewState()).updateFeeView(getApproveFeeType());
    }

    private final TransferArgs formatTransferArgs(String str) {
        BigInteger limit;
        GasPriceInfo info;
        TokenDetailed token;
        TokenDetailed token2;
        BigInteger price;
        BigInteger limit2;
        GasPriceInfo info2;
        GasPriceInfo info3;
        TokenDetailed token3;
        BigInteger price2;
        GasPriceInfo info4;
        TokenDetailed token4;
        CryptoTransferMetadata cryptoTransferMetadata = this.cryptoTransferMetadata;
        Integer num = null;
        if (cryptoTransferMetadata == null) {
            return null;
        }
        TransactionParams transactionParams = cryptoTransferMetadata.getTransactionParams();
        if (transactionParams instanceof TransactionParams.Bitcoin) {
            double parseDouble = Double.parseDouble(str);
            TokenBalance tokenBalance = this.selectedTokenBalance;
            if (tokenBalance != null && (token4 = tokenBalance.getToken()) != null) {
                num = Integer.valueOf(token4.getDecimals());
            }
            int orZero = NumberExtKt.orZero(num);
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
            TokenBalance tokenBalance2 = this.selectedTokenBalance;
            if (tokenBalance2 != null && (token3 = tokenBalance2.getToken()) != null) {
                num = Integer.valueOf(token3.getDecimals());
            }
            int orZero2 = NumberExtKt.orZero(num);
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
            TokenBalance tokenBalance3 = this.selectedTokenBalance;
            if (tokenBalance3 != null && (token2 = tokenBalance3.getToken()) != null) {
                num = Integer.valueOf(token2.getDecimals());
            }
            return new TransferArgs.TON(parseDouble3, NumberExtKt.orZero(num), this.selectedAddress, this.comment, this.sendMode, ((TransactionParams.Ton) transactionParams).getWalletSeqno(), false, 64, null);
        } else if (transactionParams instanceof TransactionParams.Tron) {
            double parseDouble4 = Double.parseDouble(str);
            TokenBalance tokenBalance4 = this.selectedTokenBalance;
            if (tokenBalance4 != null && (token = tokenBalance4.getToken()) != null) {
                num = Integer.valueOf(token.getDecimals());
            }
            int orZero3 = NumberExtKt.orZero(num);
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

    private final DialogModel getSendConfirmationDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3632R.string.wallet_amount_confirm_alert_title), getConfirmMessage(str), this.resourceManager.getString(C3632R.string.common_cancel), this.resourceManager.getString(C3632R.string.wallet_amount_confirm_alert_ok_btn));
    }

    private final void calculateFeeForTransaction(String str, String str2) {
        TokenDetailed token;
        TokenBalance tokenBalance = this.selectedTokenBalance;
        if (tokenBalance == null || (token = tokenBalance.getToken()) == null) {
            return;
        }
        Observable<Result<CryptoTransferMetadata>> observeOn = this.walletInteractor.getCryptoTransferMetadata(new Token(token.getAddress(), token.getNetworkId()), str, str2, this.selectedNetwork).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CryptoTransferMetadata>, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoTransferMetadata> result) {
                m1796invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1796invoke(Result<? extends CryptoTransferMetadata> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends CryptoTransferMetadata> result = it;
                if (result instanceof Result.Success) {
                    WalletSendPresenter.this.configureFees((CryptoTransferMetadata) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).hideFeeView();
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() != FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        resourceManager = WalletSendPresenter.this.resourceManager;
                        ((WalletSendView) WalletSendPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$2
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
    public final void configureFees(CryptoTransferMetadata cryptoTransferMetadata) {
        this.cryptoTransferMetadata = cryptoTransferMetadata;
        TransactionSpeedLevel transactionSpeedLevel = TransactionSpeedLevel.MEDIUM;
        Intrinsics.checkNotNull(cryptoTransferMetadata);
        selectFee(new GasPriceItem(transactionSpeedLevel, cryptoTransferMetadata.getFeeToken(), cryptoTransferMetadata.getTransactionParams().getMedium()));
    }

    private final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3632R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3632R.string.common_cancel), 6, null);
    }

    private final void sendDonation(long j, final TransferArgs.EVM evm) {
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.sendDonation(j, evm).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1800invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1800invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                TLRPC$User tLRPC$User;
                RxEventBus rxEventBus;
                String successMessage;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    rxEventBus = WalletSendPresenter.this.rxEventBus;
                    rxEventBus.publish(AppRxEvents.UpdateWalletScreen.INSTANCE);
                    successMessage = WalletSendPresenter.this.getSuccessMessage(evm.getAmount());
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).showSuccessSend(successMessage);
                    WalletSendPresenter.this.resetTransactionFee();
                    WalletSendPresenter.this.resetStateIfNeeded();
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    IErrorStatus status = error.getError().getStatus();
                    if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        WalletSendPresenter.this.runNoEnoughMoneyFlow();
                    } else if (status == FirebaseFunctionsErrorHandler.ErrorStatus.USER_NOT_FOUND) {
                        tLRPC$User = WalletSendPresenter.this.selectedUser;
                        if (tLRPC$User != null) {
                            ((WalletSendView) WalletSendPresenter.this.getViewState()).showRecipientWalletNotActivatedError();
                        } else {
                            ((WalletSendView) WalletSendPresenter.this.getViewState()).showRecipientNotFoundError();
                        }
                    } else if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_BLOCK_CHAIN_ERROR) {
                        WalletSendPresenter.this.resetTransactionFee();
                        WalletSendPresenter.this.resetStateIfNeeded();
                        resourceManager2 = WalletSendPresenter.this.resourceManager;
                        ((WalletSendView) WalletSendPresenter.this.getViewState()).showErrorToast(error, resourceManager2);
                    } else {
                        resourceManager = WalletSendPresenter.this.resourceManager;
                        ((WalletSendView) WalletSendPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$2
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

    private final void transferTokens(final TransferArgs transferArgs, final boolean z) {
        Observable<Result<String>> observeOn = this.walletInteractor.sendTokens(transferArgs, this.selectedNetwork).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1801invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1801invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                TLRPC$User tLRPC$User;
                TLRPC$User tLRPC$User2;
                RxEventBus rxEventBus;
                String successMessage;
                TelegramGateway telegramGateway;
                TLRPC$User tLRPC$User3;
                TLRPC$User tLRPC$User4;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    T viewState2 = WalletSendPresenter.this.getViewState();
                    Intrinsics.checkNotNullExpressionValue(viewState2, "viewState");
                    BaseView.CC.showLoadingDialog$default((BaseView) viewState2, false, false, null, 6, null);
                    tLRPC$User2 = WalletSendPresenter.this.selectedUser;
                    if (tLRPC$User2 != null && z) {
                        telegramGateway = WalletSendPresenter.this.telegramGateway;
                        tLRPC$User3 = WalletSendPresenter.this.selectedUser;
                        Intrinsics.checkNotNull(tLRPC$User3);
                        if (telegramGateway.hasUser(tLRPC$User3.f1749id)) {
                            WalletSendPresenter walletSendPresenter = WalletSendPresenter.this;
                            tLRPC$User4 = walletSendPresenter.selectedUser;
                            Intrinsics.checkNotNull(tLRPC$User4);
                            walletSendPresenter.sendReceiptToChat(tLRPC$User4.f1749id, (String) ((Result.Success) result).getData());
                        }
                    }
                    rxEventBus = WalletSendPresenter.this.rxEventBus;
                    rxEventBus.publish(AppRxEvents.UpdateWalletScreen.INSTANCE);
                    successMessage = WalletSendPresenter.this.getSuccessMessage(transferArgs.getAmount());
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).showSuccessSend(successMessage);
                    WalletSendPresenter.this.resetTransactionFee();
                    WalletSendPresenter.this.resetStateIfNeeded();
                } else if (result instanceof Result.Error) {
                    T viewState3 = WalletSendPresenter.this.getViewState();
                    Intrinsics.checkNotNullExpressionValue(viewState3, "viewState");
                    BaseView.CC.showLoadingDialog$default((BaseView) viewState3, false, false, null, 6, null);
                    Result.Error error = (Result.Error) result;
                    IErrorStatus status = error.getError().getStatus();
                    if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        WalletSendPresenter.this.runNoEnoughMoneyFlow();
                    } else if (status == FirebaseFunctionsErrorHandler.ErrorStatus.USER_NOT_FOUND) {
                        tLRPC$User = WalletSendPresenter.this.selectedUser;
                        if (tLRPC$User != null) {
                            ((WalletSendView) WalletSendPresenter.this.getViewState()).showRecipientWalletNotActivatedError();
                        } else {
                            ((WalletSendView) WalletSendPresenter.this.getViewState()).showRecipientNotFoundError();
                        }
                    } else if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_BLOCK_CHAIN_ERROR) {
                        WalletSendPresenter.this.resetTransactionFee();
                        WalletSendPresenter.this.resetStateIfNeeded();
                        resourceManager2 = WalletSendPresenter.this.resourceManager;
                        ((WalletSendView) WalletSendPresenter.this.getViewState()).showErrorToast(error, resourceManager2);
                    } else {
                        resourceManager = WalletSendPresenter.this.resourceManager;
                        ((WalletSendView) WalletSendPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$2
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
    public final void runNoEnoughMoneyFlow() {
        TokenDetailed token;
        WalletSendView walletSendView = (WalletSendView) getViewState();
        TokenBalance tokenBalance = this.selectedTokenBalance;
        if (tokenBalance == null || (token = tokenBalance.getToken()) == null) {
            return;
        }
        walletSendView.showNoEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(null, token, SwapProtocol.Companion.resolveByNetworkId(this.cryptoPreferenceHelper.getNetworkId()), null, 9, null));
    }

    private final String getConfirmMessage(String str) {
        TokenDetailed token;
        ResourceManager resourceManager = this.resourceManager;
        int i = C3632R.string.wallet_amount_send_confirm_alert_description;
        Object[] objArr = new Object[2];
        Double valueOf = Double.valueOf(Double.parseDouble(str));
        TokenBalance tokenBalance = this.selectedTokenBalance;
        objArr[0] = BalanceFormatter.format(valueOf, Integer.valueOf(NumberExtKt.orZero((tokenBalance == null || (token = tokenBalance.getToken()) == null) ? null : Integer.valueOf(token.getDecimals()))));
        objArr[1] = getSelectedTokenTicker();
        return resourceManager.getString(i, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessMessage(double d) {
        TokenDetailed token;
        ResourceManager resourceManager = this.resourceManager;
        int i = C3632R.string.wallet_amount_success_send_description;
        Object[] objArr = new Object[2];
        Double valueOf = Double.valueOf(d);
        TokenBalance tokenBalance = this.selectedTokenBalance;
        objArr[0] = BalanceFormatter.format(valueOf, Integer.valueOf(NumberExtKt.orZero((tokenBalance == null || (token = tokenBalance.getToken()) == null) ? null : Integer.valueOf(token.getDecimals()))));
        objArr[1] = getSelectedTokenTicker();
        return resourceManager.getString(i, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendReceiptToChat(long j, String str) {
        String shortened;
        int indexOf$default;
        int lastIndexOf$default;
        ArrayList arrayListOf;
        int indexOf$default2;
        int indexOf$default3;
        Wallet wallet2 = this.cryptoAccessManager.getWallet(this.selectedNetwork.getBlockchainType());
        String address = wallet2 != null ? wallet2.getAddress() : null;
        String str2 = address == null ? "" : address;
        String shortened2 = StringExtKt.shortened(str2, 6);
        String shortened3 = StringExtKt.shortened(this.selectedAddress, 6);
        if (this.selectedNetwork.getBlockchainType().isTON()) {
            shortened = this.resourceManager.getString(C3632R.string.wallet_amount_send_message_hash_unavailable);
        } else {
            shortened = StringExtKt.shortened(str, 6);
        }
        String str3 = shortened;
        String string = this.selectedNetwork.getBlockchainType().isTON() ? "" : this.resourceManager.getString(C3632R.string.wallet_transaction_details_action_open_etherscan, this.selectedNetwork.getExplorer().getName());
        String formatMessageToUser = formatMessageToUser(shortened2, shortened3, str3, DateExtKt.now(), this.selectedNetwork.getBlockchainType().isTON() ? "" : this.resourceManager.getString(C3632R.string.wallet_amount_send_message_open_scanner, string));
        TLRPC$TL_messageEntityTextUrl tLRPC$TL_messageEntityTextUrl = new TLRPC$TL_messageEntityTextUrl();
        tLRPC$TL_messageEntityTextUrl.url = this.selectedNetwork.getAddressUrl(str2);
        tLRPC$TL_messageEntityTextUrl.length = shortened2.length();
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) formatMessageToUser, shortened2, 0, false, 6, (Object) null);
        tLRPC$TL_messageEntityTextUrl.offset = indexOf$default;
        Unit unit = Unit.INSTANCE;
        TLRPC$TL_messageEntityTextUrl tLRPC$TL_messageEntityTextUrl2 = new TLRPC$TL_messageEntityTextUrl();
        tLRPC$TL_messageEntityTextUrl2.url = this.selectedNetwork.getAddressUrl(this.selectedAddress);
        tLRPC$TL_messageEntityTextUrl2.length = shortened3.length();
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) formatMessageToUser, shortened3, 0, false, 6, (Object) null);
        tLRPC$TL_messageEntityTextUrl2.offset = lastIndexOf$default;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(tLRPC$TL_messageEntityTextUrl, tLRPC$TL_messageEntityTextUrl2);
        if (!this.selectedNetwork.getBlockchainType().isTON()) {
            TLRPC$TL_messageEntityTextUrl tLRPC$TL_messageEntityTextUrl3 = new TLRPC$TL_messageEntityTextUrl();
            tLRPC$TL_messageEntityTextUrl3.url = this.selectedNetwork.getTxUrl(str);
            tLRPC$TL_messageEntityTextUrl3.length = str3.length();
            indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) formatMessageToUser, str3, 0, false, 6, (Object) null);
            tLRPC$TL_messageEntityTextUrl3.offset = indexOf$default2;
            arrayListOf.add(tLRPC$TL_messageEntityTextUrl3);
            TLRPC$TL_messageEntityTextUrl tLRPC$TL_messageEntityTextUrl4 = new TLRPC$TL_messageEntityTextUrl();
            tLRPC$TL_messageEntityTextUrl4.url = this.selectedNetwork.getTxUrl(str);
            tLRPC$TL_messageEntityTextUrl4.length = string.length();
            indexOf$default3 = StringsKt__StringsKt.indexOf$default((CharSequence) formatMessageToUser, string, 0, false, 6, (Object) null);
            tLRPC$TL_messageEntityTextUrl4.offset = indexOf$default3;
            arrayListOf.add(tLRPC$TL_messageEntityTextUrl4);
        }
        TelegramControllersGateway.CC.getSendMessagesHelper$default(this.telegramControllersGateway, 0, 1, null).sendMessage(SendMessagesHelper.SendMessageParams.m91of(formatMessageToUser, j, null, null, null, false, arrayListOf, null, null, true, 0, null, false, null));
    }

    private final String formatMessageToUser(String str, String str2, String str3, long j, String str4) {
        TokenDetailed token;
        ResourceManager resourceManager = this.resourceManager;
        int i = C3632R.string.wallet_amount_send_message_payload;
        Object[] objArr = new Object[7];
        TokenBalance tokenBalance = this.selectedTokenBalance;
        String ticker = (tokenBalance == null || (token = tokenBalance.getToken()) == null) ? null : token.getTicker();
        if (ticker == null) {
            ticker = "";
        }
        objArr[0] = ticker;
        objArr[1] = this.selectedNetwork.getFullName();
        objArr[2] = str;
        objArr[3] = str2;
        objArr[4] = str3;
        DateFormatter.DateType dateType = DateFormatter.DateType.DATE_AND_TIME;
        Date date = new Date(j);
        String language = Locale.US.getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "US.language");
        objArr[5] = DateFormatter.format$default(dateType, date, language, null, 8, null);
        objArr[6] = str4;
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
        if (this.isBinanceReplenish) {
            List<Network> binanceNetworks = NetworksHelper.INSTANCE.getBinanceNetworks();
            loggedInNetworks = new ArrayList<>();
            for (?? r2 : binanceNetworks) {
                if (this.cryptoAccessManager.getLoggedInWalletsBlockchains().contains(((Network) r2).getBlockchainType())) {
                    loggedInNetworks.add(r2);
                }
            }
        } else {
            loggedInNetworks = NetworksHelper.INSTANCE.getLoggedInNetworks();
        }
        return NetworkUiMappingKt.mapToUI(loggedInNetworks);
    }

    private final void subscribeToAmountSubject() {
        Observable<String> observeOn = this.amountSubject.observeOn(this.schedulersProvider.mo1010ui());
        final Function1<String, Boolean> function1 = new Function1<String, Boolean>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$subscribeToAmountSubject$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String amountText) {
                Double doubleOrNull;
                ResourceManager resourceManager;
                Intrinsics.checkNotNullParameter(amountText, "amountText");
                doubleOrNull = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(amountText);
                boolean z = true;
                if (NumberExtKt.isZero(Double.valueOf(NumberExtKt.orZero(doubleOrNull)))) {
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).updateStateButtonSend(WalletSendPresenter.SendScreenState.PREPARE);
                    WalletSendPresenter.this.showAmountError(false);
                    resourceManager = WalletSendPresenter.this.resourceManager;
                    ((WalletSendView) WalletSendPresenter.this.getViewState()).renderInsertedAmountInFiat(resourceManager.getString(C3632R.string.wallet_amount_send_send_amount_in_fiat, BalanceFormatter.formatFiatBalance$default(BalanceFormatter.INSTANCE, 0, null, 2, null)));
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        };
        Observable<String> observeOn2 = observeOn.filter(new Predicate() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                boolean subscribeToAmountSubject$lambda$27;
                subscribeToAmountSubject$lambda$27 = WalletSendPresenter.subscribeToAmountSubject$lambda$27(Function1.this, obj);
                return subscribeToAmountSubject$lambda$27;
            }
        }).observeOn(this.schedulersProvider.mo1011io()).debounce(300L, TimeUnit.MILLISECONDS).observeOn(this.schedulersProvider.mo1010ui());
        final Function1<String, Unit> function12 = new Function1<String, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$subscribeToAmountSubject$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                String str;
                TokenBalance tokenBalance;
                ResourceManager resourceManager;
                TokenBalance tokenBalance2;
                str = WalletSendPresenter.this.selectedAmount;
                if (!Intrinsics.areEqual(str, it)) {
                    WalletSendPresenter walletSendPresenter = WalletSendPresenter.this;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    walletSendPresenter.selectedAmount = it;
                    tokenBalance2 = WalletSendPresenter.this.selectedTokenBalance;
                    if (tokenBalance2 != null) {
                        WalletSendPresenter.this.showAmountError(Double.parseDouble(it) > tokenBalance2.getTotal());
                    }
                }
                tokenBalance = WalletSendPresenter.this.selectedTokenBalance;
                if (tokenBalance != null) {
                    WalletSendPresenter walletSendPresenter2 = WalletSendPresenter.this;
                    resourceManager = walletSendPresenter2.resourceManager;
                    int i = C3632R.string.wallet_amount_send_send_amount_in_fiat;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    ((WalletSendView) walletSendPresenter2.getViewState()).renderInsertedAmountInFiat(resourceManager.getString(i, TokenBalanceExtKt.getInsertedTokenAmountInDollars(tokenBalance, Double.parseDouble(it))));
                }
                WalletSendPresenter.this.checkEnteredData();
            }
        };
        Disposable subscribe = observeOn2.subscribe(new Consumer() { // from class: com.iMe.ui.wallet.send.WalletSendPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletSendPresenter.subscribeToAmountSubject$lambda$28(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun subscribeToA…     .autoDispose()\n    }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean subscribeToAmountSubject$lambda$27(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToAmountSubject$lambda$28(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* compiled from: WalletSendPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendPresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
