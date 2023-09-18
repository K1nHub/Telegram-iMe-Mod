package com.iMe.p031ui.wallet.cryptobox.create;

import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.mapper.cryptobox.CryptoBoxTransactionActionUiMappingKt;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.model.cryptobox.CryptoBoxCreationRulesItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.TransactionStep;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Wallet;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.crypto.cryptobox.CryptoBoxInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxCreationRules;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalStatus;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionArgs;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.telegram.ChatExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.math.BigDecimal;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.TLRPC$Chat;
import timber.log.Timber;
/* compiled from: CreateCryptoBoxPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter */
/* loaded from: classes6.dex */
public final class CreateCryptoBoxPresenter extends BasePresenter<CreateCryptoBoxView> implements NotificationCenter.NotificationCenterDelegate {
    private final List<NetworkItem> availableNetworks;
    private CryptoBoxCreationRules creationRules;
    private final CryptoBoxInteractor cryptoBoxInteractor;
    private final PublishSubject<Pair<BigDecimal, Integer>> cryptoBoxParamsSubject;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private FeeType currentFeeType;
    private TransactionStep currentStep;
    private CryptoBoxTokenApprovalStatus feeTokenApprovalStatus;
    private boolean isFeeTokenTransactionArgs;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private BigDecimal selectedAmount;
    private Integer selectedCapacity;
    private TLRPC$Chat selectedChat;
    private String selectedDescription;
    private NetworkItem.Crypto selectedNetworkItem;
    private TokenBalance selectedTokenBalance;
    private boolean shouldReloadRulesOnConnected;
    private final TelegramApi telegramApi;
    private final TelegramControllersGateway telegramControllersGateway;
    private CryptoBoxTokenApprovalStatus tokenApprovalStatus;
    private Disposable tokenApprovalStatusUpdateDisposable;
    private CryptoBoxTransactionArgs transactionArgs;
    private final long walletBotId;
    private final String walletBotUsername;
    private final WalletInteractor walletInteractor;

    /* compiled from: CreateCryptoBoxPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$WhenMappings */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CryptoBoxTokenApprovalStatus.values().length];
            try {
                iArr[CryptoBoxTokenApprovalStatus.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CryptoBoxTokenApprovalStatus.PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CryptoBoxTokenApprovalStatus.DONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public CreateCryptoBoxPresenter(TLRPC$Chat tLRPC$Chat, Network network, CryptoBoxInteractor cryptoBoxInteractor, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway, TelegramApi telegramApi, WalletInteractor walletInteractor) {
        Intrinsics.checkNotNullParameter(cryptoBoxInteractor, "cryptoBoxInteractor");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.cryptoBoxInteractor = cryptoBoxInteractor;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.telegramControllersGateway = telegramControllersGateway;
        this.telegramApi = telegramApi;
        this.walletInteractor = walletInteractor;
        this.availableNetworks = NetworkUiMappingKt.mapToUI(NetworksHelper.INSTANCE.getEVMNetworks());
        PublishSubject<Pair<BigDecimal, Integer>> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.cryptoBoxParamsSubject = create;
        this.walletBotId = AppConfiguration$Wallet.getWalletBotId();
        this.walletBotUsername = AppConfiguration$Wallet.getWalletBotUsernameLowerCase();
        this.selectedNetworkItem = getInitialNetwork(network);
        this.selectedChat = tLRPC$Chat;
        this.selectedDescription = "";
        Disposable disposed = Disposables.disposed();
        Intrinsics.checkNotNullExpressionValue(disposed, "disposed()");
        this.tokenApprovalStatusUpdateDisposable = disposed;
        this.isFeeTokenTransactionArgs = true;
        this.currentStep = TransactionStep.Loading.INSTANCE;
    }

    private final NotificationCenter getNotificationCenter() {
        return TelegramControllersGateway.CC.getNotificationCenterInstance$default(this.telegramControllersGateway, 0, 1, null);
    }

    public final void onSelectNetworkClick() {
        ((CreateCryptoBoxView) getViewState()).showChooseNetworkDialog(this.selectedNetworkItem, this.availableNetworks);
    }

    public final void onNetworkSelected(NetworkItem.Crypto crypto) {
        if (crypto == null) {
            return;
        }
        this.selectedNetworkItem = crypto;
        this.selectedTokenBalance = null;
        ((CreateCryptoBoxView) getViewState()).resetSelectedToken();
        ((CreateCryptoBoxView) getViewState()).setupNetwork(this.selectedNetworkItem);
        loadInitialData();
    }

    public final void onSelectTokenClick() {
        ((CreateCryptoBoxView) getViewState()).openSelectTokenScreen(this.selectedNetworkItem.getNetworkId());
    }

    public final void onSelectChatClick() {
        CreateCryptoBoxView createCryptoBoxView = (CreateCryptoBoxView) getViewState();
        TLRPC$Chat tLRPC$Chat = this.selectedChat;
        createCryptoBoxView.openSelectChatScreen(tLRPC$Chat != null ? Long.valueOf(tLRPC$Chat.f1522id) : null);
    }

    public final void onTokenSelected(TokenDetailed selectedToken) {
        Intrinsics.checkNotNullParameter(selectedToken, "selectedToken");
        TokenBalance tokenBalance = this.selectedTokenBalance;
        if (Intrinsics.areEqual(tokenBalance != null ? tokenBalance.getToken() : null, selectedToken)) {
            return;
        }
        resetTransactionsData();
        Observable<Result<TokenBalance>> observeOn = this.walletInteractor.getTokenBalance(TokenExtKt.toIndexedToken(selectedToken), true, this.selectedNetworkItem.getNetworkId()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TokenBalance>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
                m1501invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1501invoke(Result<? extends TokenBalance> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                CryptoBoxTokenApprovalStatus cryptoBoxTokenApprovalStatus;
                boolean isDone;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TokenBalance> result = it;
                if (result instanceof Result.Success) {
                    CreateCryptoBoxPresenter createCryptoBoxPresenter = CreateCryptoBoxPresenter.this;
                    TokenBalance tokenBalance2 = (TokenBalance) ((Result.Success) result).getData();
                    TokenDetailed token = tokenBalance2.getToken();
                    resourceManager2 = CreateCryptoBoxPresenter.this.resourceManager;
                    String string = resourceManager2.getString(C3473R.string.wallet_common_token_name_with_ticker, token.getName(), token.getTicker());
                    String avatarUrl = token.getAvatarUrl();
                    int decimals = token.getDecimals();
                    ((CreateCryptoBoxView) CreateCryptoBoxPresenter.this.getViewState()).renderSelectedToken(string, avatarUrl, decimals, BalanceFormatter.format$default(Double.valueOf(tokenBalance2.getTotal()), null, 2, null) + ' ' + token.getTicker());
                    CreateCryptoBoxPresenter createCryptoBoxPresenter2 = CreateCryptoBoxPresenter.this;
                    cryptoBoxTokenApprovalStatus = createCryptoBoxPresenter2.feeTokenApprovalStatus;
                    isDone = createCryptoBoxPresenter2.isDone(cryptoBoxTokenApprovalStatus);
                    if (isDone) {
                        CreateCryptoBoxPresenter.setupTransactionAction$default(CreateCryptoBoxPresenter.this, TransactionStep.Loading.INSTANCE, null, 2, null);
                        CreateCryptoBoxPresenter.this.checkTokenApproval(token, false, true);
                    }
                    createCryptoBoxPresenter.selectedTokenBalance = tokenBalance2;
                    CreateCryptoBoxPresenter.this.pushCurrentCryptoBoxParamsValues();
                } else if (result instanceof Result.Error) {
                    resourceManager = CreateCryptoBoxPresenter.this.resourceManager;
                    ((CreateCryptoBoxView) CreateCryptoBoxPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$2
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

    public final void onAmountChanged(String amountText) {
        BigDecimal bigDecimalOrNull;
        Intrinsics.checkNotNullParameter(amountText, "amountText");
        try {
            bigDecimalOrNull = StringsKt__StringNumberConversionsJVMKt.toBigDecimalOrNull(amountText);
            this.selectedAmount = bigDecimalOrNull;
            pushCurrentCryptoBoxParamsValues();
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }

    public final void onCapacityChanged(String amountText) {
        Integer intOrNull;
        Intrinsics.checkNotNullParameter(amountText, "amountText");
        try {
            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(amountText);
            this.selectedCapacity = intOrNull;
            pushCurrentCryptoBoxParamsValues();
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }

    public final void onDescriptionChanged(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        this.selectedDescription = description;
    }

    public final void onChatSelected(Long l) {
        if (l == null) {
            ((CreateCryptoBoxView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.common_error_unexpected));
            return;
        }
        TLRPC$Chat tLRPC$Chat = this.selectedChat;
        if (tLRPC$Chat != null && (-l.longValue()) == tLRPC$Chat.f1522id) {
            return;
        }
        final TLRPC$Chat chat = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getChat(Long.valueOf(-l.longValue()));
        Intrinsics.checkNotNullExpressionValue(chat, "telegramControllersGatew…roller().getChat(-chatId)");
        Observable fullChatInfoById$default = TelegramApi.CC.getFullChatInfoById$default(this.telegramApi, -l.longValue(), null, 2, null);
        final CreateCryptoBoxPresenter$onChatSelected$1 createCryptoBoxPresenter$onChatSelected$1 = new CreateCryptoBoxPresenter$onChatSelected$1(this, chat);
        Observable observeOn = fullChatInfoById$default.flatMap(new Function() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource onChatSelected$lambda$5;
                onChatSelected$lambda$5 = CreateCryptoBoxPresenter.onChatSelected$lambda$5(Function1.this, obj);
                return onChatSelected$lambda$5;
            }
        }).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "fun onChatSelected(chatI…     .autoDispose()\n    }");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Boolean, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$onChatSelected$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                m1500invoke(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1500invoke(Boolean it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Boolean bool = it;
                if (!TLRPC$Chat.this.creator) {
                    resourceManager = this.resourceManager;
                    ((CreateCryptoBoxView) this.getViewState()).showToast(resourceManager.getString(C3473R.string.cryptobox_create_user_not_owner));
                } else if (bool.booleanValue()) {
                    this.onWalletBotAdminRightsGranted(TLRPC$Chat.this);
                } else {
                    this.onWalletBotAdminRightsRequired(TLRPC$Chat.this);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$onChatSelected$$inlined$subscribeWithErrorHandle$default$2
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
    public static final ObservableSource onChatSelected$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final void onWalletBotAdminRightsGranted(TLRPC$Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "chat");
        this.selectedChat = chat;
        renderSelectedChat();
    }

    public final void onActionClick() {
        TransactionStep transactionStep = this.currentStep;
        if (transactionStep instanceof TransactionStep.ApprovalNeeded) {
            confirmTokenApprovalExecution(((TransactionStep.ApprovalNeeded) transactionStep).getTokenTicker());
        } else if (Intrinsics.areEqual(transactionStep, TransactionStep.Prepare.INSTANCE)) {
            validatePrepareConditions();
        } else if (Intrinsics.areEqual(transactionStep, TransactionStep.CryptoBoxExecute.INSTANCE)) {
            confirmCryptoboxExecution();
        } else if (Intrinsics.areEqual(transactionStep, TransactionStep.Loading.INSTANCE)) {
            ((CreateCryptoBoxView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.staking_action_loading_wait));
        } else if (Intrinsics.areEqual(transactionStep, TransactionStep.RetryLoading.INSTANCE)) {
            loadInitialData();
        }
    }

    public final void onCryptoBoxInfoClick() {
        CryptoBoxCreationRules cryptoBoxCreationRules = this.creationRules;
        if (cryptoBoxCreationRules != null) {
            ((CreateCryptoBoxView) getViewState()).showCryptoBoxInfoDialog(this.resourceManager.getString(C3473R.string.cryptobox_create_cryptobox_information_description, BalanceFormatter.INSTANCE.formatTokenBalance(new BigDecimal(String.valueOf(cryptoBoxCreationRules.getFeePerUser())), cryptoBoxCreationRules.getFeeToken())));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        getNotificationCenter().addObserver(this, NotificationCenter.didUpdateConnectionState);
        subscribeToCryptoBoxParamsSubject();
        ((CreateCryptoBoxView) getViewState()).setupNetwork(this.selectedNetworkItem);
        renderSelectedChat();
        loadInitialData();
    }

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.didUpdateConnectionState);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.didUpdateConnectionState) {
            onConnectionStateChanged();
        }
    }

    private final void onConnectionStateChanged() {
        if (this.shouldReloadRulesOnConnected) {
            int connectionState = TelegramControllersGateway.CC.getConnectionsManager$default(this.telegramControllersGateway, 0, 1, null).getConnectionState();
            if (connectionState == 3 || connectionState == 5) {
                loadInitialData();
            }
        }
    }

    private final void resetTransactionsData() {
        this.tokenApprovalStatus = null;
        if (isDone(this.feeTokenApprovalStatus)) {
            this.tokenApprovalStatusUpdateDisposable.dispose();
            setTransactionArgs(null, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pushCurrentCryptoBoxParamsValues() {
        this.cryptoBoxParamsSubject.onNext(TuplesKt.m103to(NumberExtKt.orZero(this.selectedAmount), Integer.valueOf(NumberExtKt.orZero(this.selectedCapacity))));
    }

    private final void subscribeToCryptoBoxParamsSubject() {
        Observable<Pair<BigDecimal, Integer>> debounce = this.cryptoBoxParamsSubject.debounce(200L, TimeUnit.MILLISECONDS);
        final Function1<Pair<? extends BigDecimal, ? extends Integer>, Result<? extends CryptoBoxCreationRulesItem>> function1 = new Function1<Pair<? extends BigDecimal, ? extends Integer>, Result<? extends CryptoBoxCreationRulesItem>>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Result<? extends CryptoBoxCreationRulesItem> invoke(Pair<? extends BigDecimal, ? extends Integer> pair) {
                return invoke2((Pair<? extends BigDecimal, Integer>) pair);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Result<CryptoBoxCreationRulesItem> invoke2(Pair<? extends BigDecimal, Integer> it) {
                CryptoBoxCreationRules cryptoBoxCreationRules;
                Integer num;
                BigDecimal bigDecimal;
                TokenBalance tokenBalance;
                Intrinsics.checkNotNullParameter(it, "it");
                cryptoBoxCreationRules = CreateCryptoBoxPresenter.this.creationRules;
                if (cryptoBoxCreationRules == null) {
                    return Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, (Throwable) null, 3, (DefaultConstructorMarker) null), null, 2, null);
                }
                num = CreateCryptoBoxPresenter.this.selectedCapacity;
                int orZero = NumberExtKt.orZero(num);
                bigDecimal = CreateCryptoBoxPresenter.this.selectedAmount;
                BigDecimal orZero2 = NumberExtKt.orZero(bigDecimal);
                long j = orZero;
                BigDecimal valueOf = BigDecimal.valueOf(j);
                Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
                BigDecimal multiply = orZero2.multiply(valueOf);
                Intrinsics.checkNotNullExpressionValue(multiply, "this.multiply(other)");
                BigDecimal bigDecimal2 = new BigDecimal(String.valueOf(cryptoBoxCreationRules.getFeePerUser()));
                BigDecimal valueOf2 = BigDecimal.valueOf(j);
                Intrinsics.checkNotNullExpressionValue(valueOf2, "valueOf(this.toLong())");
                BigDecimal multiply2 = bigDecimal2.multiply(valueOf2);
                Intrinsics.checkNotNullExpressionValue(multiply2, "this.multiply(other)");
                BigDecimal add = multiply2.add(new BigDecimal(String.valueOf(cryptoBoxCreationRules.getFeePerCryptobox())));
                Intrinsics.checkNotNullExpressionValue(add, "this.add(other)");
                tokenBalance = CreateCryptoBoxPresenter.this.selectedTokenBalance;
                TokenDetailed token = tokenBalance != null ? tokenBalance.getToken() : null;
                String formatTokenBalance = token == null ? SessionDescription.SUPPORTED_SDP_VERSION : BalanceFormatter.INSTANCE.formatTokenBalance(multiply, token);
                BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
                return Result.Companion.success(new CryptoBoxCreationRulesItem(balanceFormatter.formatTokenBalance(multiply2, cryptoBoxCreationRules.getFeeToken()), formatTokenBalance, balanceFormatter.formatTokenBalance(new BigDecimal(String.valueOf(cryptoBoxCreationRules.getFeePerCryptobox())), cryptoBoxCreationRules.getFeeToken()), balanceFormatter.formatTokenBalance(add, cryptoBoxCreationRules.getFeeToken())));
            }
        };
        Observable observeOn = debounce.map(new Function() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result subscribeToCryptoBoxParamsSubject$lambda$8;
                subscribeToCryptoBoxParamsSubject$lambda$8 = CreateCryptoBoxPresenter.subscribeToCryptoBoxParamsSubject$lambda$8(Function1.this, obj);
                return subscribeToCryptoBoxParamsSubject$lambda$8;
            }
        }).subscribeOn(this.schedulersProvider.mo717io()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun subscribeToC…     .autoDispose()\n    }");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CryptoBoxCreationRulesItem>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoBoxCreationRulesItem> result) {
                m1503invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1503invoke(Result<? extends CryptoBoxCreationRulesItem> it) {
                TransactionStep transactionStep;
                ResourceManager resourceManager;
                TransactionStep transactionStep2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends CryptoBoxCreationRulesItem> result = it;
                if (result instanceof Result.Success) {
                    transactionStep2 = CreateCryptoBoxPresenter.this.currentStep;
                    if (Intrinsics.areEqual(transactionStep2, TransactionStep.CryptoBoxExecute.INSTANCE)) {
                        CreateCryptoBoxPresenter.setupTransactionAction$default(CreateCryptoBoxPresenter.this, TransactionStep.Prepare.INSTANCE, null, 2, null);
                    }
                    ((CreateCryptoBoxView) CreateCryptoBoxPresenter.this.getViewState()).renderCryptoBoxInfo((CryptoBoxCreationRulesItem) ((Result.Success) result).getData(), true);
                } else if (result instanceof Result.Error) {
                    transactionStep = CreateCryptoBoxPresenter.this.currentStep;
                    if (Intrinsics.areEqual(transactionStep, TransactionStep.CryptoBoxExecute.INSTANCE)) {
                        CreateCryptoBoxPresenter.setupTransactionAction$default(CreateCryptoBoxPresenter.this, TransactionStep.Prepare.INSTANCE, null, 2, null);
                    }
                    CreateCryptoBoxPresenter.this.renderCryptoBoxRulesPlaceholderData(C3473R.string.common_error);
                    resourceManager = CreateCryptoBoxPresenter.this.resourceManager;
                    ((CreateCryptoBoxView) CreateCryptoBoxPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$2
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
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result subscribeToCryptoBoxParamsSubject$lambda$8(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    private final void loadInitialData() {
        setupTransactionAction$default(this, TransactionStep.Loading.INSTANCE, null, 2, null);
        resetTransactionsData();
        loadRules();
    }

    private final void loadRules() {
        this.shouldReloadRulesOnConnected = false;
        renderCryptoBoxRulesPlaceholderData(C3473R.string.common_progress_state_title);
        Observable<Result<CryptoBoxCreationRules>> observeOn = this.cryptoBoxInteractor.getCreationRules(this.selectedNetworkItem.getNetworkId()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoBoxInteractor\n    …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CryptoBoxCreationRules>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$loadRules$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoBoxCreationRules> result) {
                m1499invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1499invoke(Result<? extends CryptoBoxCreationRules> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends CryptoBoxCreationRules> result = it;
                if (result instanceof Result.Success) {
                    CreateCryptoBoxPresenter createCryptoBoxPresenter = CreateCryptoBoxPresenter.this;
                    CryptoBoxCreationRules cryptoBoxCreationRules = (CryptoBoxCreationRules) ((Result.Success) result).getData();
                    CreateCryptoBoxPresenter.this.pushCurrentCryptoBoxParamsValues();
                    if (!cryptoBoxCreationRules.getFeeToken().isCoin()) {
                        CreateCryptoBoxPresenter.this.checkTokenApproval(cryptoBoxCreationRules.getFeeToken(), true, true);
                    } else {
                        CreateCryptoBoxPresenter.this.feeTokenApprovalStatus = CryptoBoxTokenApprovalStatus.DONE;
                        CreateCryptoBoxPresenter.setupTransactionAction$default(CreateCryptoBoxPresenter.this, TransactionStep.Prepare.INSTANCE, null, 2, null);
                    }
                    createCryptoBoxPresenter.creationRules = cryptoBoxCreationRules;
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    CreateCryptoBoxPresenter.this.shouldReloadRulesOnConnected = error.getError().isNoConnectionStatus();
                    CreateCryptoBoxPresenter.setupTransactionAction$default(CreateCryptoBoxPresenter.this, TransactionStep.RetryLoading.INSTANCE, null, 2, null);
                    CreateCryptoBoxPresenter.this.renderCryptoBoxRulesPlaceholderData(C3473R.string.common_error);
                    resourceManager = CreateCryptoBoxPresenter.this.resourceManager;
                    ((CreateCryptoBoxView) CreateCryptoBoxPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$loadRules$$inlined$subscribeWithErrorHandle$default$2
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
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TransactionStep getStepByApprovalStatus(CryptoBoxTokenApprovalStatus cryptoBoxTokenApprovalStatus, String str) {
        int i = cryptoBoxTokenApprovalStatus == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cryptoBoxTokenApprovalStatus.ordinal()];
        if (i != -1) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return TransactionStep.Prepare.INSTANCE;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return TransactionStep.ApprovalProcessing.INSTANCE;
            }
            return new TransactionStep.ApprovalNeeded(str);
        }
        return TransactionStep.Loading.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTransactionArgs(CryptoBoxTransactionArgs cryptoBoxTransactionArgs, boolean z) {
        this.transactionArgs = cryptoBoxTransactionArgs;
        this.isFeeTokenTransactionArgs = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void setupTransactionAction$default(CreateCryptoBoxPresenter createCryptoBoxPresenter, TransactionStep transactionStep, FeeType feeType, int i, Object obj) {
        if ((i & 2) != 0) {
            feeType = null;
        }
        createCryptoBoxPresenter.setupTransactionAction(transactionStep, feeType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupTransactionAction(TransactionStep transactionStep, FeeType feeType) {
        this.currentStep = transactionStep;
        this.currentFeeType = feeType;
        ((CreateCryptoBoxView) getViewState()).renderTransactionActionBlock(this.currentStep, this.currentFeeType);
    }

    private final void renderSelectedChat() {
        CreateCryptoBoxView createCryptoBoxView = (CreateCryptoBoxView) getViewState();
        TLRPC$Chat tLRPC$Chat = this.selectedChat;
        if (tLRPC$Chat == null) {
            return;
        }
        createCryptoBoxView.renderSelectedChat(tLRPC$Chat);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void checkTokenApproval$default(CreateCryptoBoxPresenter createCryptoBoxPresenter, TokenDetailed tokenDetailed, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = false;
        }
        createCryptoBoxPresenter.checkTokenApproval(tokenDetailed, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkTokenApproval(final TokenDetailed tokenDetailed, final boolean z, final boolean z2) {
        this.tokenApprovalStatusUpdateDisposable.dispose();
        Observable<Long> interval = Observable.interval(0L, 15L, TimeUnit.SECONDS);
        final Function1<Long, ObservableSource<? extends Result<? extends CryptoBoxTokenApprovalInfo>>> function1 = new Function1<Long, ObservableSource<? extends Result<? extends CryptoBoxTokenApprovalInfo>>>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$checkTokenApproval$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<CryptoBoxTokenApprovalInfo>> invoke(Long it) {
                CryptoBoxInteractor cryptoBoxInteractor;
                NetworkItem.Crypto crypto;
                Intrinsics.checkNotNullParameter(it, "it");
                cryptoBoxInteractor = CreateCryptoBoxPresenter.this.cryptoBoxInteractor;
                crypto = CreateCryptoBoxPresenter.this.selectedNetworkItem;
                return cryptoBoxInteractor.getApprovalInfo(crypto.getNetworkId(), tokenDetailed.getAddress());
            }
        };
        Observable<R> flatMap = interval.flatMap(new Function() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource checkTokenApproval$lambda$12;
                checkTokenApproval$lambda$12 = CreateCryptoBoxPresenter.checkTokenApproval$lambda$12(Function1.this, obj);
                return checkTokenApproval$lambda$12;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "private fun checkTokenAp…y { autoDispose() }\n    }");
        Observable flatMap2 = flatMap.flatMap(new C2333x7c925b1e(new Function1<Result<? extends CryptoBoxTokenApprovalInfo>, ObservableSource<? extends Result<? extends Pair<? extends TransactionStep, ? extends FeeType>>>>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$checkTokenApproval$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
                if (r2 != false) goto L12;
             */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final io.reactivex.ObservableSource<? extends com.iMe.storage.domain.model.Result<? extends kotlin.Pair<? extends com.iMe.model.staking.TransactionStep, ? extends com.iMe.model.wallet.crypto.send.fee.FeeType>>> invoke(com.iMe.storage.domain.model.Result<? extends com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalInfo> r5) {
                /*
                    r4 = this;
                    java.lang.String r0 = "result"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                    boolean r0 = r5 instanceof com.iMe.storage.domain.model.Result.Success
                    r1 = 0
                    if (r0 == 0) goto L90
                    java.lang.Object r0 = r5.getData()
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                    com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalInfo r0 = (com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalInfo) r0
                    com.iMe.storage.domain.model.wallet.token.TokenDetailed r0 = r0.getToken()
                    java.lang.Object r5 = r5.getData()
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
                    com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalInfo r5 = (com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalInfo) r5
                    com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalStatus r5 = r5.getStatus()
                    boolean r2 = r1
                    if (r2 == 0) goto L2f
                    com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter r2 = r2
                    com.iMe.p031ui.wallet.cryptobox.create.CreateCryptoBoxPresenter.access$setFeeTokenApprovalStatus$p(r2, r5)
                    goto L34
                L2f:
                    com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter r2 = r2
                    com.iMe.p031ui.wallet.cryptobox.create.CreateCryptoBoxPresenter.access$setTokenApprovalStatus$p(r2, r5)
                L34:
                    com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalStatus r2 = com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalStatus.MISSING
                    if (r5 != r2) goto L72
                    boolean r2 = r1
                    if (r2 != 0) goto L48
                    com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter r2 = r2
                    com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalStatus r3 = com.iMe.p031ui.wallet.cryptobox.create.CreateCryptoBoxPresenter.access$getFeeTokenApprovalStatus$p(r2)
                    boolean r2 = com.iMe.p031ui.wallet.cryptobox.create.CreateCryptoBoxPresenter.access$isDone(r2, r3)
                    if (r2 == 0) goto L72
                L48:
                    com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter r5 = r2
                    com.iMe.storage.domain.interactor.crypto.cryptobox.CryptoBoxInteractor r5 = com.iMe.p031ui.wallet.cryptobox.create.CreateCryptoBoxPresenter.access$getCryptoBoxInteractor$p(r5)
                    java.lang.String r1 = r0.getNetworkId()
                    java.lang.String r2 = r0.getAddress()
                    io.reactivex.Observable r5 = r5.getApprovalPrepareData(r1, r2)
                    com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$checkTokenApproval$lambda$14$$inlined$mapSuccess$1 r1 = new com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$checkTokenApproval$lambda$14$$inlined$mapSuccess$1
                    com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter r2 = r2
                    boolean r3 = r1
                    r1.<init>()
                    com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$inlined$sam$i$io_reactivex_functions_Function$0 r0 = new com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$inlined$sam$i$io_reactivex_functions_Function$0
                    r0.<init>(r1)
                    io.reactivex.Observable r5 = r5.map(r0)
                    java.lang.String r0 = "crossinline body: (T) ->…ult as? R\n        }\n    }"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
                    goto Laf
                L72:
                    com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter r2 = r2
                    java.lang.String r0 = r0.getTicker()
                    com.iMe.model.staking.TransactionStep r5 = com.iMe.p031ui.wallet.cryptobox.create.CreateCryptoBoxPresenter.access$getStepByApprovalStatus(r2, r5, r0)
                    kotlin.Pair r5 = kotlin.TuplesKt.m103to(r5, r1)
                    com.iMe.storage.domain.model.Result$Companion r0 = com.iMe.storage.domain.model.Result.Companion
                    com.iMe.storage.domain.model.Result r5 = r0.success(r5)
                    io.reactivex.Observable r5 = io.reactivex.Observable.just(r5)
                    java.lang.String r0 = "just(this)"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
                    goto Laf
                L90:
                    boolean r0 = r5 instanceof com.iMe.storage.domain.model.Result.Error
                    if (r0 == 0) goto Lab
                    com.iMe.storage.domain.model.Result$Companion r0 = com.iMe.storage.domain.model.Result.Companion
                    com.iMe.storage.domain.model.Result$Error r5 = (com.iMe.storage.domain.model.Result.Error) r5
                    com.iMe.storage.data.network.model.error.ErrorModel r5 = r5.getError()
                    r2 = 2
                    com.iMe.storage.domain.model.Result r5 = com.iMe.storage.domain.model.Result.Companion.error$default(r0, r5, r1, r2, r1)
                    java.lang.String r0 = "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r0)
                    io.reactivex.Observable r5 = io.reactivex.Observable.just(r5)
                    goto Laf
                Lab:
                    io.reactivex.Observable r5 = io.reactivex.Observable.empty()
                Laf:
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.cryptobox.create.C2312x8ca852e4.invoke(com.iMe.storage.domain.model.Result):io.reactivex.ObservableSource");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap2.observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun checkTokenAp…y { autoDispose() }\n    }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Pair<? extends TransactionStep, ? extends FeeType>>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Pair<? extends TransactionStep, ? extends FeeType>> result) {
                m1496invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1496invoke(Result<? extends Pair<? extends TransactionStep, ? extends FeeType>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Pair<? extends TransactionStep, ? extends FeeType>> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    CreateCryptoBoxPresenter.this.onApprovalCheckSuccess(z, (TransactionStep) ((Pair) success.getData()).getFirst(), (FeeType) ((Pair) success.getData()).getSecond());
                } else if (result instanceof Result.Error) {
                    CreateCryptoBoxPresenter.this.onApprovalCheckError(z2, z, (Result.Error) result);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$2
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
        this.tokenApprovalStatusUpdateDisposable = subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource checkTokenApproval$lambda$12(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onApprovalCheckSuccess(boolean z, TransactionStep transactionStep, FeeType feeType) {
        if (z) {
            if (this.feeTokenApprovalStatus != CryptoBoxTokenApprovalStatus.PENDING) {
                this.tokenApprovalStatusUpdateDisposable.dispose();
            }
            if (isDone(this.feeTokenApprovalStatus)) {
                TokenBalance tokenBalance = this.selectedTokenBalance;
                TokenDetailed token = tokenBalance != null ? tokenBalance.getToken() : null;
                if (token == null) {
                    transactionStep = TransactionStep.Prepare.INSTANCE;
                } else {
                    checkTokenApproval$default(this, token, false, false, 4, null);
                    transactionStep = TransactionStep.Loading.INSTANCE;
                }
            }
            setupTransactionAction(transactionStep, feeType);
            return;
        }
        if (isDone(this.feeTokenApprovalStatus) && this.tokenApprovalStatus != CryptoBoxTokenApprovalStatus.PENDING) {
            this.tokenApprovalStatusUpdateDisposable.dispose();
        }
        if (this.feeTokenApprovalStatus == CryptoBoxTokenApprovalStatus.DONE) {
            setupTransactionAction(transactionStep, feeType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> void onApprovalCheckError(boolean z, boolean z2, Result.Error<? extends T> error) {
        if (z && (z2 || isDone(this.feeTokenApprovalStatus))) {
            setupTransactionAction$default(this, TransactionStep.RetryLoading.INSTANCE, null, 2, null);
        }
        ((CreateCryptoBoxView) getViewState()).showErrorToast(error, this.resourceManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void executeTokenApproval() {
        this.tokenApprovalStatusUpdateDisposable.dispose();
        CryptoBoxInteractor cryptoBoxInteractor = this.cryptoBoxInteractor;
        CryptoBoxTransactionArgs cryptoBoxTransactionArgs = this.transactionArgs;
        if (cryptoBoxTransactionArgs == null) {
            return;
        }
        Observable<Result<String>> observeOn = cryptoBoxInteractor.sendApprovalExecute(cryptoBoxTransactionArgs).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoBoxInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1498invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1498invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                boolean z;
                TokenBalance tokenBalance;
                boolean z2;
                CryptoBoxCreationRules cryptoBoxCreationRules;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    TokenDetailed tokenDetailed = null;
                    CreateCryptoBoxPresenter.setupTransactionAction$default(CreateCryptoBoxPresenter.this, TransactionStep.ApprovalProcessing.INSTANCE, null, 2, null);
                    CreateCryptoBoxPresenter.this.transactionArgs = null;
                    z = CreateCryptoBoxPresenter.this.isFeeTokenTransactionArgs;
                    if (z) {
                        cryptoBoxCreationRules = CreateCryptoBoxPresenter.this.creationRules;
                        if (cryptoBoxCreationRules != null) {
                            tokenDetailed = cryptoBoxCreationRules.getFeeToken();
                        }
                    } else {
                        tokenBalance = CreateCryptoBoxPresenter.this.selectedTokenBalance;
                        if (tokenBalance != null) {
                            tokenDetailed = tokenBalance.getToken();
                        }
                    }
                    TokenDetailed tokenDetailed2 = tokenDetailed;
                    if (tokenDetailed2 == null) {
                        return;
                    }
                    CreateCryptoBoxPresenter createCryptoBoxPresenter = CreateCryptoBoxPresenter.this;
                    z2 = createCryptoBoxPresenter.isFeeTokenTransactionArgs;
                    CreateCryptoBoxPresenter.checkTokenApproval$default(createCryptoBoxPresenter, tokenDetailed2, z2, false, 4, null);
                } else if (result instanceof Result.Error) {
                    resourceManager = CreateCryptoBoxPresenter.this.resourceManager;
                    ((CreateCryptoBoxView) CreateCryptoBoxPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2
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

    private final void confirmTokenApprovalExecution(String str) {
        ((CreateCryptoBoxView) getViewState()).showConfirmDialog(getApproveConfirmationDialogModel(str), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CreateCryptoBoxPresenter.this.executeTokenApproval();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onWalletBotAdminRightsRequired(final TLRPC$Chat tLRPC$Chat) {
        ((CreateCryptoBoxView) getViewState()).showConfirmDialog(new DialogModel(this.resourceManager.getString(C3473R.string.cryptobox_create_wallet_bot_amin_rights_confirmation_title), this.resourceManager.getString(C3473R.string.cryptobox_create_wallet_bot_amin_rights_confirmation_description), this.resourceManager.getString(C3473R.string.common_cancel), LocaleController.getString(RtspHeaders.ALLOW, C3473R.string.Allow)), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CreateCryptoBoxPresenter.onWalletBotAdminRightsRequired$lambda$18(CreateCryptoBoxPresenter.this, tLRPC$Chat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onWalletBotAdminRightsRequired$lambda$18(CreateCryptoBoxPresenter this$0, TLRPC$Chat chat) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(chat, "$chat");
        ((CreateCryptoBoxView) this$0.getViewState()).openAddAdminScreen(this$0.walletBotId, chat);
    }

    private final void confirmCryptoboxExecution() {
        TokenDetailed token;
        TokenDetailed token2;
        BigDecimal orZero = NumberExtKt.orZero(this.selectedAmount);
        BigDecimal valueOf = BigDecimal.valueOf(NumberExtKt.orZero(this.selectedCapacity));
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        BigDecimal multiply = orZero.multiply(valueOf);
        Intrinsics.checkNotNullExpressionValue(multiply, "this.multiply(other)");
        CreateCryptoBoxView createCryptoBoxView = (CreateCryptoBoxView) getViewState();
        TokenBalance tokenBalance = this.selectedTokenBalance;
        String str = null;
        String format = BalanceFormatter.format(multiply, (tokenBalance == null || (token2 = tokenBalance.getToken()) == null) ? null : Integer.valueOf(token2.getDecimals()));
        TokenBalance tokenBalance2 = this.selectedTokenBalance;
        if (tokenBalance2 != null && (token = tokenBalance2.getToken()) != null) {
            str = token.getTicker();
        }
        if (str == null) {
            str = "";
        }
        createCryptoBoxView.showConfirmDialog(getCreateConfirmationDialogModel(format, str), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CreateCryptoBoxPresenter.confirmCryptoboxExecution$lambda$19(CreateCryptoBoxPresenter.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void confirmCryptoboxExecution$lambda$19(CreateCryptoBoxPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.executeAction();
    }

    private final void validatePrepareConditions() {
        BigDecimal orZero = NumberExtKt.orZero(this.selectedAmount);
        BigDecimal valueOf = BigDecimal.valueOf(NumberExtKt.orZero(this.selectedCapacity));
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        BigDecimal multiply = orZero.multiply(valueOf);
        Intrinsics.checkNotNullExpressionValue(multiply, "this.multiply(other)");
        if (this.selectedTokenBalance == null) {
            ((CreateCryptoBoxView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.cryptobox_create_select_token_error));
            return;
        }
        BigDecimal bigDecimal = this.selectedAmount;
        if (bigDecimal == null) {
            ((CreateCryptoBoxView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.cryptobox_create_enter_amount_error));
        } else if (NumberExtKt.isZero(NumberExtKt.orZero(bigDecimal))) {
            ((CreateCryptoBoxView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.wallet_amount_validation_zero_amount_error));
        } else {
            Integer num = this.selectedCapacity;
            if (num == null) {
                ((CreateCryptoBoxView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.cryptobox_create_enter_capacity_error));
                return;
            }
            int orZero2 = NumberExtKt.orZero(num);
            CryptoBoxCreationRules cryptoBoxCreationRules = this.creationRules;
            if (orZero2 < NumberExtKt.orZero(cryptoBoxCreationRules != null ? Integer.valueOf(cryptoBoxCreationRules.getMinimalCapacity()) : null)) {
                CreateCryptoBoxView createCryptoBoxView = (CreateCryptoBoxView) getViewState();
                ResourceManager resourceManager = this.resourceManager;
                int i = C3473R.string.cryptobox_create_enter_capacity_threshold_error;
                Object[] objArr = new Object[1];
                CryptoBoxCreationRules cryptoBoxCreationRules2 = this.creationRules;
                objArr[0] = Integer.valueOf(NumberExtKt.orZero(cryptoBoxCreationRules2 != null ? Integer.valueOf(cryptoBoxCreationRules2.getMinimalCapacity()) : null));
                createCryptoBoxView.showToast(resourceManager.getString(i, objArr));
                return;
            }
            TokenBalance tokenBalance = this.selectedTokenBalance;
            if (new BigDecimal(String.valueOf(NumberExtKt.orZero(tokenBalance != null ? Double.valueOf(tokenBalance.getTotal()) : null))).compareTo(multiply) < 0) {
                runNoEnoughMoneyFlow();
            } else if (this.selectedChat == null) {
                ((CreateCryptoBoxView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.cryptobox_create_select_chat_error));
            } else {
                prepareCreation();
            }
        }
    }

    private final void prepareCreation() {
        TokenDetailed token;
        CryptoBoxInteractor cryptoBoxInteractor = this.cryptoBoxInteractor;
        String networkId = this.selectedNetworkItem.getNetworkId();
        TokenBalance tokenBalance = this.selectedTokenBalance;
        String address = (tokenBalance == null || (token = tokenBalance.getToken()) == null) ? null : token.getAddress();
        if (address == null) {
            address = "";
        }
        Observable<Result<CryptoBoxTransactionAction>> observeOn = cryptoBoxInteractor.getCreationPrepareData(networkId, address, NumberExtKt.orZero(this.selectedAmount), NumberExtKt.orZero(this.selectedCapacity)).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoBoxInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CryptoBoxTransactionAction>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$prepareCreation$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoBoxTransactionAction> result) {
                m1502invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1502invoke(Result<? extends CryptoBoxTransactionAction> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends CryptoBoxTransactionAction> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    CreateCryptoBoxPresenter.this.setTransactionArgs(((CryptoBoxTransactionAction) success.getData()).getTransaction(), false);
                    CreateCryptoBoxPresenter createCryptoBoxPresenter = CreateCryptoBoxPresenter.this;
                    TransactionStep.CryptoBoxExecute cryptoBoxExecute = TransactionStep.CryptoBoxExecute.INSTANCE;
                    resourceManager2 = CreateCryptoBoxPresenter.this.resourceManager;
                    createCryptoBoxPresenter.setupTransactionAction(cryptoBoxExecute, CryptoBoxTransactionActionUiMappingKt.mapToUi((CryptoBoxTransactionAction) success.getData(), resourceManager2));
                } else if (result instanceof Result.Error) {
                    resourceManager = CreateCryptoBoxPresenter.this.resourceManager;
                    ((CreateCryptoBoxView) CreateCryptoBoxPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$prepareCreation$$inlined$subscribeWithErrorHandle$default$2
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

    private final void executeAction() {
        TLRPC$Chat tLRPC$Chat = this.selectedChat;
        Long valueOf = tLRPC$Chat != null ? Long.valueOf(ChatExtKt.getBotApiId(tLRPC$Chat)) : null;
        CryptoBoxTransactionArgs cryptoBoxTransactionArgs = this.transactionArgs;
        if (valueOf == null || cryptoBoxTransactionArgs == null) {
            ((CreateCryptoBoxView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.common_error_unexpected));
            return;
        }
        Observable<Result<String>> observeOn = this.cryptoBoxInteractor.sendCreationExecute(valueOf.longValue(), this.selectedDescription, cryptoBoxTransactionArgs).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoBoxInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1497invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1497invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                RxEventBus rxEventBus;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    rxEventBus = CreateCryptoBoxPresenter.this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.CryptoBoxCreated.INSTANCE);
                    ((CreateCryptoBoxView) CreateCryptoBoxPresenter.this.getViewState()).showCreationSuccess();
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = CreateCryptoBoxPresenter.this.resourceManager;
                    ((CreateCryptoBoxView) CreateCryptoBoxPresenter.this.getViewState()).showActionError(error.getMessage(resourceManager));
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2
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

    private final NetworkItem.Crypto getInitialNetwork(Network network) {
        if (network == null) {
            network = this.cryptoPreferenceHelper.getNetwork();
            if (!network.isEVM()) {
                network = null;
            }
            if (network == null) {
                network = NetworksHelper.getBSCNetwork();
            }
        }
        return NetworkUiMappingKt.mapToUI(network);
    }

    private final void runNoEnoughMoneyFlow() {
        TokenDetailed token;
        CreateCryptoBoxView createCryptoBoxView = (CreateCryptoBoxView) getViewState();
        TokenBalance tokenBalance = this.selectedTokenBalance;
        if (tokenBalance == null || (token = tokenBalance.getToken()) == null) {
            return;
        }
        createCryptoBoxView.showNoEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(token, SwapProtocol.Companion.resolveByNetworkId(this.selectedNetworkItem.getNetworkId()), this.selectedNetworkItem.getNetworkId()));
    }

    private final DialogModel getApproveConfirmationDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3473R.string.wallet_swap_process_confirm_approve_alert_title), this.resourceManager.getString(C3473R.string.wallet_swap_process_confirm_approve_alert_description, str), this.resourceManager.getString(C3473R.string.common_cancel), this.resourceManager.getString(C3473R.string.wallet_swap_process_confirm_approve_alert_action));
    }

    private final DialogModel getCreateConfirmationDialogModel(String str, String str2) {
        return new DialogModel(this.resourceManager.getString(C3473R.string.profile_twitter_link_confirmation_alert_title), this.resourceManager.getString(C3473R.string.cryptobox_create_confirmation_description, str, str2), this.resourceManager.getString(C3473R.string.common_cancel), this.resourceManager.getString(C3473R.string.cryptobox_action_type_create));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderCryptoBoxRulesPlaceholderData(int i) {
        String string = this.resourceManager.getString(i);
        ((CreateCryptoBoxView) getViewState()).renderCryptoBoxInfo(new CryptoBoxCreationRulesItem(string, string, string, string), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isDone(CryptoBoxTokenApprovalStatus cryptoBoxTokenApprovalStatus) {
        return cryptoBoxTokenApprovalStatus == CryptoBoxTokenApprovalStatus.DONE;
    }

    /* compiled from: CreateCryptoBoxPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
