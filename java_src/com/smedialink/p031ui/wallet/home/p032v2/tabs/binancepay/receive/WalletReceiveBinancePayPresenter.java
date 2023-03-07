package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.manager.TelegramApi;
import com.smedialink.mapper.wallet.select.SelectableMappingKt;
import com.smedialink.model.wallet.home.pay.BinancePayScreenArgs;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.select.SelectableType;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.common.AppConfiguration$Wallet;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenInfo;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import moxy.InjectViewState;
import org.fork.utils.Callbacks$Callback;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ManageLinksActivity;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$messages_BotResults;
import timber.log.Timber;
/* compiled from: WalletReceiveBinancePayPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter */
/* loaded from: classes3.dex */
public final class WalletReceiveBinancePayPresenter extends BasePresenter<WalletReceiveBinancePayView> {
    private final BinancePayScreenArgs args;
    private List<BinanceTokenInfo> availablePaymentTokens;
    private final BinanceInternalInteractor binanceInternalInteractor;
    private long chatId;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private Long recipientId;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final int screenType;
    private List<? extends SelectableToken> selectableAvailablePaymentTokens;
    private SelectableToken selectedToken;
    private TLRPC$User selectedUser;
    private final TelegramApi telegramApi;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TelegramGateway telegramGateway;

    public WalletReceiveBinancePayPresenter(int i, BinancePayScreenArgs args, TelegramApi telegramApi, TelegramGateway telegramGateway, TelegramControllersGateway telegramControllersGateway, BinanceInternalInteractor binanceInternalInteractor, SchedulersProvider schedulersProvider, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager) {
        List<BinanceTokenInfo> emptyList;
        List<? extends SelectableToken> emptyList2;
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.screenType = i;
        this.args = args;
        this.telegramApi = telegramApi;
        this.telegramGateway = telegramGateway;
        this.telegramControllersGateway = telegramControllersGateway;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.schedulersProvider = schedulersProvider;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.availablePaymentTokens = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.selectableAvailablePaymentTokens = emptyList2;
        this.chatId = -1L;
        this.recipientId = -1L;
    }

    public final List<BinanceTokenInfo> getAvailablePaymentTokens() {
        return this.availablePaymentTokens;
    }

    public final void setAvailablePaymentTokens(List<BinanceTokenInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.availablePaymentTokens = list;
    }

    public final void setSelectableAvailablePaymentTokens(List<? extends SelectableToken> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectableAvailablePaymentTokens = list;
    }

    public final TLRPC$User getSelectedUser() {
        return this.selectedUser;
    }

    public final void setSelectedUser(TLRPC$User tLRPC$User) {
        this.selectedUser = tLRPC$User;
    }

    public final SelectableToken getSelectedToken() {
        return this.selectedToken;
    }

    public final void setSelectedToken(SelectableToken selectableToken) {
        this.selectedToken = selectableToken;
    }

    public final void startSelectTokenFlow(Callbacks$Callback1<SelectableToken> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (this.availablePaymentTokens.isEmpty()) {
            loadAvailableToPayTokens(true, new WalletReceiveBinancePayPresenter$startSelectTokenFlow$1(this, action));
        } else {
            processShowSelectTokenDialog(action);
        }
    }

    public final void createCollection(final BaseFragment fragment, String amount) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(amount, "amount");
        if (isValidFields(amount)) {
            BinanceInternalInteractor binanceInternalInteractor = this.binanceInternalInteractor;
            TLRPC$User tLRPC$User = this.selectedUser;
            Intrinsics.checkNotNull(tLRPC$User);
            long j = tLRPC$User.f1633id;
            double parseDouble = Double.parseDouble(amount);
            SelectableToken selectableToken = this.selectedToken;
            Intrinsics.checkNotNull(selectableToken);
            Observable<R> flatMap = binanceInternalInteractor.createCollection(j, parseDouble, selectableToken.getId()).flatMap(new Function() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$$inlined$flatMapSuccess$1
                /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
                /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
                /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
                @Override // io.reactivex.functions.Function
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final io.reactivex.ObservableSource apply(com.smedialink.storage.domain.model.Result r10) {
                    /*
                        r9 = this;
                        java.lang.String r0 = "result"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                        boolean r0 = r10 instanceof com.smedialink.storage.domain.model.Result.Success
                        r1 = 2
                        r2 = 0
                        if (r0 == 0) goto Lb2
                        com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        org.telegram.tgnet.TLRPC$User r3 = r0.getSelectedUser()
                        if (r3 != 0) goto L15
                        r3 = r2
                        goto L1b
                    L15:
                        long r3 = r3.f1633id
                        java.lang.Long r3 = java.lang.Long.valueOf(r3)
                    L1b:
                        com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$setRecipientId$p(r0, r3)
                        com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        java.lang.Long r3 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getRecipientId$p(r0)
                        r4 = -1
                        if (r3 == 0) goto L44
                        com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r3 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        com.smedialink.gateway.TelegramControllersGateway r3 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getTelegramControllersGateway$p(r3)
                        r6 = 0
                        r7 = 1
                        org.telegram.messenger.MessagesController r3 = com.smedialink.gateway.TelegramControllersGateway.DefaultImpls.getMessagesController$default(r3, r6, r7, r2)
                        com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r6 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        java.lang.Long r6 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getRecipientId$p(r6)
                        org.telegram.tgnet.TLRPC$User r3 = r3.getUser(r6)
                        if (r3 != 0) goto L41
                        goto L44
                    L41:
                        long r6 = r3.f1633id
                        goto L45
                    L44:
                        r6 = r4
                    L45:
                        com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$setChatId$p(r0, r6)
                        com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        long r6 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getChatId$p(r0)
                        int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
                        if (r0 == 0) goto L8b
                        com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        com.smedialink.manager.TelegramApi r1 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getTelegramApi$p(r0)
                        java.lang.Object r10 = r10.getData()
                        kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
                        com.smedialink.storage.domain.model.binancepay.BinanceCollectionOrder r10 = (com.smedialink.storage.domain.model.binancepay.BinanceCollectionOrder) r10
                        java.lang.String r2 = r10.getMessageId()
                        com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r10 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        long r3 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getChatId$p(r10)
                        long r5 = com.smedialink.storage.common.AppConfiguration$Wallet.getWalletBotId()
                        io.reactivex.Observable r10 = r1.getInlineBot(r2, r3, r5)
                        com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda-0$$inlined$wrapAsResult$1 r0 = new com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda-0$$inlined$wrapAsResult$1
                        r0.<init>()
                        io.reactivex.Observable r10 = r10.map(r0)
                        com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda-0$$inlined$wrapAsResult$2 r0 = new com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda-0$$inlined$wrapAsResult$2
                        r0.<init>()
                        io.reactivex.Observable r10 = r10.onErrorReturn(r0)
                        java.lang.String r0 = "map { it.toSuccess() }\n …RESPONSE, it).toError() }"
                        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
                        goto Lcb
                    L8b:
                        com.smedialink.storage.data.network.model.error.ErrorModel r10 = new com.smedialink.storage.data.network.model.error.ErrorModel
                        com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        com.smedialink.storage.domain.utils.system.ResourceManager r0 = com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getResourceManager$p(r0)
                        int r3 = org.telegram.messenger.C3158R.string.wallet_recipient_validation_chat_with_user_first_error
                        java.lang.String r4 = r0.getString(r3)
                        com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler$ErrorStatus r5 = com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler.ErrorStatus.BAD_RESPONSE
                        r6 = 0
                        r7 = 4
                        r8 = 0
                        r3 = r10
                        r3.<init>(r4, r5, r6, r7, r8)
                        com.smedialink.storage.domain.model.Result$Companion r0 = com.smedialink.storage.domain.model.Result.Companion
                        com.smedialink.storage.domain.model.Result r10 = com.smedialink.storage.domain.model.Result.Companion.error$default(r0, r10, r2, r1, r2)
                        io.reactivex.Observable r10 = io.reactivex.Observable.just(r10)
                        java.lang.String r0 = "just(this)"
                        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
                        goto Lcb
                    Lb2:
                        boolean r0 = r10 instanceof com.smedialink.storage.domain.model.Result.Error
                        if (r0 == 0) goto Lc7
                        com.smedialink.storage.domain.model.Result$Companion r0 = com.smedialink.storage.domain.model.Result.Companion
                        com.smedialink.storage.domain.model.Result$Error r10 = (com.smedialink.storage.domain.model.Result.Error) r10
                        com.smedialink.storage.data.network.model.error.ErrorModel r10 = r10.getError()
                        com.smedialink.storage.domain.model.Result r10 = com.smedialink.storage.domain.model.Result.Companion.error$default(r0, r10, r2, r1, r2)
                        io.reactivex.Observable r10 = io.reactivex.Observable.just(r10)
                        goto Lcb
                    Lc7:
                        io.reactivex.Observable r10 = io.reactivex.Observable.empty()
                    Lcb:
                        return r10
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.C2061x1b3c7af8.apply(com.smedialink.storage.domain.model.Result):io.reactivex.ObservableSource");
                }
            });
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    ResourceManager resourceManager;
                    TelegramGateway telegramGateway;
                    HashMap formatBotRequestParams;
                    long j2;
                    ResourceManager resourceManager2;
                    ResourceManager resourceManager3;
                    Long l;
                    ResourceManager resourceManager4;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        Result.Success success = (Result.Success) result;
                        ArrayList<TLRPC$BotInlineResult> arrayList = ((TLRPC$messages_BotResults) success.getData()).results;
                        Intrinsics.checkNotNullExpressionValue(arrayList, "result.data.results");
                        Object first = CollectionsKt.first((List<? extends Object>) arrayList);
                        Intrinsics.checkNotNullExpressionValue(first, "result.data.results.first()");
                        TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) first;
                        BaseFragment baseFragment = BaseFragment.this;
                        telegramGateway = this.telegramGateway;
                        AccountInstance accountInstance = AccountInstance.getInstance(telegramGateway.getSelectedAccountIndex());
                        WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter = this;
                        String str = tLRPC$BotInlineResult.f1492id;
                        Intrinsics.checkNotNullExpressionValue(str, "inlineBot.id");
                        formatBotRequestParams = walletReceiveBinancePayPresenter.formatBotRequestParams(str, String.valueOf(((TLRPC$messages_BotResults) success.getData()).query_id));
                        j2 = this.chatId;
                        SendMessagesHelper.prepareSendingBotContextResult(baseFragment, accountInstance, tLRPC$BotInlineResult, formatBotRequestParams, j2, null, null, true, 0, null);
                        resourceManager2 = this.resourceManager;
                        String string = resourceManager2.getString(C3158R.string.wallet_binance_pay_request_send_success_dialog_title);
                        resourceManager3 = this.resourceManager;
                        int i = C3158R.string.wallet_binance_pay_request_send_success_dialog_description;
                        l = this.recipientId;
                        String string2 = resourceManager3.getString(i, String.valueOf(l));
                        resourceManager4 = this.resourceManager;
                        String string3 = resourceManager4.getString(C3158R.string.common_ok);
                        final WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter2 = this;
                        ((WalletReceiveBinancePayView) this.getViewState()).showCreatedCollectionSuccessDialog(string, string2, string3, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$2$1
                            @Override // org.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                long j3;
                                j3 = WalletReceiveBinancePayPresenter.this.chatId;
                                ((WalletReceiveBinancePayView) WalletReceiveBinancePayPresenter.this.getViewState()).openChatScreen(j3);
                            }
                        });
                    } else if (result instanceof Result.Error) {
                        ErrorModel error = ((Result.Error) result).getError();
                        resourceManager = this.resourceManager;
                        ((WalletReceiveBinancePayView) this.getViewState()).showToast(error.getMessage(resourceManager));
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        if (this.screenType == ManageLinksActivity.BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE) {
            preInitFields();
            loadAvailableToPayTokens$default(this, false, null, 3, null);
        }
    }

    private final void preInitFields() {
        TLRPC$User user;
        if (this.args.getUserId() != null && (user = TelegramControllersGateway.DefaultImpls.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(this.args.getUserId())) != null) {
            this.selectedUser = user;
            ((WalletReceiveBinancePayView) getViewState()).updateSelectedUser();
        }
        if (this.args.getToken() != null) {
            this.selectedToken = this.args.getToken();
            ((WalletReceiveBinancePayView) getViewState()).updateSelectedToken();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, String> formatBotRequestParams(String str, String str2) {
        HashMap<String, String> hashMapOf;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m100to(TtmlNode.ATTR_ID, str), TuplesKt.m100to("query_id", str2), TuplesKt.m100to("bot", String.valueOf(AppConfiguration$Wallet.getWalletBotId())), TuplesKt.m100to("bot_name", AppConfiguration$Wallet.getWalletBotUsernameLowerCase()));
        return hashMapOf;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void loadAvailableToPayTokens$default(WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            function0 = WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$1.INSTANCE;
        }
        walletReceiveBinancePayPresenter.loadAvailableToPayTokens(z, function0);
    }

    private final void loadAvailableToPayTokens(final boolean z, final Function0<Unit> function0) {
        Observable<Result<List<BinanceTokenInfo>>> doFinally = this.binanceInternalInteractor.getAvailablePaymentTokens().observeOn(this.schedulersProvider.mo707ui()).doFinally(new Action() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletReceiveBinancePayPresenter.m1676loadAvailableToPayTokens$lambda2(z, this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "binanceInternalInteracto…      }\n                }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = doFinally.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    WalletReceiveBinancePayPresenter.this.setAvailablePaymentTokens((List) ((Result.Success) result).getData());
                    WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter = WalletReceiveBinancePayPresenter.this;
                    walletReceiveBinancePayPresenter.setSelectableAvailablePaymentTokens(SelectableMappingKt.mapToSelectable(walletReceiveBinancePayPresenter.getAvailablePaymentTokens()));
                    function0.invoke();
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletReceiveBinancePayPresenter.this.resourceManager;
                    ((WalletReceiveBinancePayView) WalletReceiveBinancePayPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                } else if ((result instanceof Result.Loading) && z) {
                    T viewState = WalletReceiveBinancePayPresenter.this.getViewState();
                    Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                    BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState, true, true, null, 4, null);
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAvailableToPayTokens$lambda-2  reason: not valid java name */
    public static final void m1676loadAvailableToPayTokens$lambda2(boolean z, WalletReceiveBinancePayPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            T viewState = this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState, false, true, null, 4, null);
        }
    }

    private final boolean isValidFields(String str) {
        boolean z;
        Double doubleOrNull;
        Double doubleOrNull2;
        if (this.selectedUser == null) {
            ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_binance_receive_selected_user_is_empty));
        } else if (this.selectedToken == null) {
            ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_binance_receive_selected_token_is_empty));
        } else {
            List<BinanceTokenInfo> list = this.availablePaymentTokens;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (BinanceTokenInfo binanceTokenInfo : list) {
                    String asset = binanceTokenInfo.getAsset();
                    SelectableToken selectedToken = getSelectedToken();
                    if (Intrinsics.areEqual(asset, selectedToken == null ? null : selectedToken.getId())) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z) {
                ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_binance_receive_selected_token_is_unsupported));
            } else {
                doubleOrNull = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(str);
                if (doubleOrNull != null) {
                    doubleOrNull2 = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(str);
                    if (!Intrinsics.areEqual(doubleOrNull2, 0.0d)) {
                        return true;
                    }
                }
                ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_binance_receive_amount_is_empty_or_zero));
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processShowSelectTokenDialog(final Callbacks$Callback1<SelectableToken> callbacks$Callback1) {
        ((WalletReceiveBinancePayView) getViewState()).showSelectTokenDialog(SelectableType.BINANCE, this.selectableAvailablePaymentTokens, this.cryptoPreferenceHelper.getNetworkType(), false, new Callbacks$Callback1() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$$ExternalSyntheticLambda1
            @Override // org.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletReceiveBinancePayPresenter.m1677processShowSelectTokenDialog$lambda5(WalletReceiveBinancePayPresenter.this, callbacks$Callback1, (SelectableToken) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processShowSelectTokenDialog$lambda-5  reason: not valid java name */
    public static final void m1677processShowSelectTokenDialog$lambda5(WalletReceiveBinancePayPresenter this$0, Callbacks$Callback1 action, SelectableToken token) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(token, "token");
        this$0.setSelectedToken(token);
        action.invoke(token);
    }
}
