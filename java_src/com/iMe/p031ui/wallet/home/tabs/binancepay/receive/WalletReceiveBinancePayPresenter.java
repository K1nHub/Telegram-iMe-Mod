package com.iMe.p031ui.wallet.home.tabs.binancepay.receive;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.wallet.home.pay.BinancePayScreenArgs;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Wallet;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceCollectionOrder;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import moxy.InjectViewState;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ManageLinksActivity;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$messages_BotResults;
import timber.log.Timber;
/* compiled from: WalletReceiveBinancePayPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter */
/* loaded from: classes6.dex */
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
    private List<TokenDetailed> selectableAvailablePaymentTokens;
    private TokenDetailed selectedToken;
    private TLRPC$User selectedUser;
    private final TelegramApi telegramApi;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TelegramGateway telegramGateway;

    public WalletReceiveBinancePayPresenter(int i, BinancePayScreenArgs args, TelegramApi telegramApi, TelegramGateway telegramGateway, TelegramControllersGateway telegramControllersGateway, BinanceInternalInteractor binanceInternalInteractor, SchedulersProvider schedulersProvider, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager) {
        List<BinanceTokenInfo> emptyList;
        List<TokenDetailed> emptyList2;
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

    public final void setSelectableAvailablePaymentTokens(List<TokenDetailed> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectableAvailablePaymentTokens = list;
    }

    public final TLRPC$User getSelectedUser() {
        return this.selectedUser;
    }

    public final void setSelectedUser(TLRPC$User tLRPC$User) {
        this.selectedUser = tLRPC$User;
    }

    public final TokenDetailed getSelectedToken() {
        return this.selectedToken;
    }

    public final void startSelectTokenFlow(final Callbacks$Callback1<TokenDetailed> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (this.availablePaymentTokens.isEmpty()) {
            loadAvailableToPayTokens(true, new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$startSelectTokenFlow$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    WalletReceiveBinancePayPresenter.this.processShowSelectTokenDialog(action);
                }
            });
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
            long j = tLRPC$User.f1685id;
            double parseDouble = Double.parseDouble(amount);
            TokenDetailed tokenDetailed = this.selectedToken;
            Intrinsics.checkNotNull(tokenDetailed);
            Observable<R> flatMap = binanceInternalInteractor.createCollection(j, parseDouble, tokenDetailed.getTicker()).flatMap(new C2421xde1d1050(new Function1<Result<? extends BinanceCollectionOrder>, ObservableSource<? extends Result<? extends TLRPC$messages_BotResults>>>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$$inlined$flatMapSuccess$1
                {
                    super(1);
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
                /* JADX WARN: Removed duplicated region for block: B:17:0x008f  */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final io.reactivex.ObservableSource<? extends com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults>> invoke(com.iMe.storage.domain.model.Result<? extends com.iMe.storage.domain.model.binancepay.BinanceCollectionOrder> r10) {
                    /*
                        r9 = this;
                        java.lang.String r0 = "result"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                        boolean r0 = r10 instanceof com.iMe.storage.domain.model.Result.Success
                        r1 = 2
                        r2 = 0
                        if (r0 == 0) goto Lb6
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        org.telegram.tgnet.TLRPC$User r3 = r0.getSelectedUser()
                        if (r3 == 0) goto L1b
                        long r3 = r3.f1685id
                        java.lang.Long r3 = java.lang.Long.valueOf(r3)
                        goto L1c
                    L1b:
                        r3 = r2
                    L1c:
                        com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$setRecipientId$p(r0, r3)
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        java.lang.Long r3 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getRecipientId$p(r0)
                        r4 = -1
                        if (r3 == 0) goto L44
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r3 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        com.iMe.gateway.TelegramControllersGateway r3 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getTelegramControllersGateway$p(r3)
                        r6 = 0
                        r7 = 1
                        org.telegram.messenger.MessagesController r3 = com.iMe.gateway.TelegramControllersGateway.CC.getMessagesController$default(r3, r6, r7, r2)
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r6 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        java.lang.Long r6 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getRecipientId$p(r6)
                        org.telegram.tgnet.TLRPC$User r3 = r3.getUser(r6)
                        if (r3 == 0) goto L44
                        long r6 = r3.f1685id
                        goto L45
                    L44:
                        r6 = r4
                    L45:
                        com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$setChatId$p(r0, r6)
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        long r6 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getChatId$p(r0)
                        int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
                        if (r0 == 0) goto L8f
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        com.iMe.manager.TelegramApi r1 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getTelegramApi$p(r0)
                        java.lang.Object r10 = r10.getData()
                        kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
                        com.iMe.storage.domain.model.binancepay.BinanceCollectionOrder r10 = (com.iMe.storage.domain.model.binancepay.BinanceCollectionOrder) r10
                        java.lang.String r2 = r10.getMessageId()
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r10 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        long r3 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getChatId$p(r10)
                        long r5 = com.iMe.storage.common.AppConfiguration$Wallet.getWalletBotId()
                        io.reactivex.Observable r10 = r1.getInlineBot(r2, r3, r5)
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$1 r0 = new kotlin.jvm.functions.Function1<org.telegram.tgnet.TLRPC$messages_BotResults, com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults>>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$1
                            static {
                                /*
                                    com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$1 r0 = new com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$1
                                    r0.<init>()
                                    
                                    // error: 0x0005: SPUT  
  (r0 I:com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$1)
 com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$1.INSTANCE com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$1
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2417x2f859284.<clinit>():void");
                            }

                            {
                                /*
                                    r1 = this;
                                    r0 = 1
                                    r1.<init>(r0)
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2417x2f859284.<init>():void");
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults> invoke(org.telegram.tgnet.TLRPC$messages_BotResults r2) {
                                /*
                                    r1 = this;
                                    com.iMe.storage.domain.model.Result$Companion r0 = com.iMe.storage.domain.model.Result.Companion
                                    com.iMe.storage.domain.model.Result r2 = r0.success(r2)
                                    return r2
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2417x2f859284.invoke(java.lang.Object):com.iMe.storage.domain.model.Result");
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults> invoke(org.telegram.tgnet.TLRPC$messages_BotResults r1) {
                                /*
                                    r0 = this;
                                    com.iMe.storage.domain.model.Result r1 = r0.invoke(r1)
                                    return r1
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2417x2f859284.invoke(java.lang.Object):java.lang.Object");
                            }
                        }
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$inlined$sam$i$io_reactivex_functions_Function$0 r1 = new com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$inlined$sam$i$io_reactivex_functions_Function$0
                        r1.<init>(r0)
                        io.reactivex.Observable r10 = r10.map(r1)
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$2 r0 = new kotlin.jvm.functions.Function1<java.lang.Throwable, com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults>>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$2
                            static {
                                /*
                                    com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$2 r0 = new com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$2
                                    r0.<init>()
                                    
                                    // error: 0x0005: SPUT  
  (r0 I:com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$2)
 com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$2.INSTANCE com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$2
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2418x2f859285.<clinit>():void");
                            }

                            {
                                /*
                                    r1 = this;
                                    r0 = 1
                                    r1.<init>(r0)
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2418x2f859285.<init>():void");
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final com.iMe.storage.domain.model.Result<org.telegram.tgnet.TLRPC$messages_BotResults> invoke(java.lang.Throwable r4) {
                                /*
                                    r3 = this;
                                    java.lang.String r0 = "it"
                                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                                    com.iMe.storage.data.network.model.error.ErrorModel r0 = new com.iMe.storage.data.network.model.error.ErrorModel
                                    com.iMe.storage.data.network.handlers.impl.ApiErrorHandler$ErrorStatus r1 = com.iMe.storage.data.network.handlers.impl.ApiErrorHandler.ErrorStatus.BAD_RESPONSE
                                    r0.<init>(r1, r4)
                                    com.iMe.storage.domain.model.Result$Companion r4 = com.iMe.storage.domain.model.Result.Companion
                                    r1 = 0
                                    r2 = 2
                                    com.iMe.storage.domain.model.Result r4 = com.iMe.storage.domain.model.Result.Companion.error$default(r4, r0, r1, r2, r1)
                                    return r4
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2418x2f859285.invoke(java.lang.Throwable):com.iMe.storage.domain.model.Result");
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults> invoke(java.lang.Throwable r1) {
                                /*
                                    r0 = this;
                                    java.lang.Throwable r1 = (java.lang.Throwable) r1
                                    com.iMe.storage.domain.model.Result r1 = r0.invoke(r1)
                                    return r1
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2418x2f859285.invoke(java.lang.Object):java.lang.Object");
                            }
                        }
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$inlined$sam$i$io_reactivex_functions_Function$0 r1 = new com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$inlined$sam$i$io_reactivex_functions_Function$0
                        r1.<init>(r0)
                        io.reactivex.Observable r10 = r10.onErrorReturn(r1)
                        java.lang.String r0 = "map { it.toSuccess() }\n …RESPONSE, it).toError() }"
                        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
                        goto Ld4
                    L8f:
                        com.iMe.storage.data.network.model.error.ErrorModel r10 = new com.iMe.storage.data.network.model.error.ErrorModel
                        com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.this
                        com.iMe.storage.domain.utils.system.ResourceManager r0 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getResourceManager$p(r0)
                        int r3 = org.telegram.messenger.C3473R.string.wallet_recipient_validation_chat_with_user_first_error
                        java.lang.String r4 = r0.getString(r3)
                        com.iMe.storage.data.network.handlers.impl.ApiErrorHandler$ErrorStatus r5 = com.iMe.storage.data.network.handlers.impl.ApiErrorHandler.ErrorStatus.BAD_RESPONSE
                        r6 = 0
                        r7 = 4
                        r8 = 0
                        r3 = r10
                        r3.<init>(r4, r5, r6, r7, r8)
                        com.iMe.storage.domain.model.Result$Companion r0 = com.iMe.storage.domain.model.Result.Companion
                        com.iMe.storage.domain.model.Result r10 = com.iMe.storage.domain.model.Result.Companion.error$default(r0, r10, r2, r1, r2)
                        io.reactivex.Observable r10 = io.reactivex.Observable.just(r10)
                        java.lang.String r0 = "just(this)"
                        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
                        goto Ld4
                    Lb6:
                        boolean r0 = r10 instanceof com.iMe.storage.domain.model.Result.Error
                        if (r0 == 0) goto Ld0
                        com.iMe.storage.domain.model.Result$Companion r0 = com.iMe.storage.domain.model.Result.Companion
                        com.iMe.storage.domain.model.Result$Error r10 = (com.iMe.storage.domain.model.Result.Error) r10
                        com.iMe.storage.data.network.model.error.ErrorModel r10 = r10.getError()
                        com.iMe.storage.domain.model.Result r10 = com.iMe.storage.domain.model.Result.Companion.error$default(r0, r10, r2, r1, r2)
                        java.lang.String r0 = "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"
                        kotlin.jvm.internal.Intrinsics.checkNotNull(r10, r0)
                        io.reactivex.Observable r10 = io.reactivex.Observable.just(r10)
                        goto Ld4
                    Ld0:
                        io.reactivex.Observable r10 = io.reactivex.Observable.empty()
                    Ld4:
                        return r10
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2414x1b3c7af8.invoke(com.iMe.storage.domain.model.Result):io.reactivex.ObservableSource");
                }
            }));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo716ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TLRPC$messages_BotResults>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TLRPC$messages_BotResults> result) {
                    m1536invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1536invoke(Result<? extends TLRPC$messages_BotResults> it) {
                    ResourceManager resourceManager;
                    TelegramGateway telegramGateway;
                    HashMap formatBotRequestParams;
                    long j2;
                    ResourceManager resourceManager2;
                    ResourceManager resourceManager3;
                    Long l;
                    ResourceManager resourceManager4;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends TLRPC$messages_BotResults> result = it;
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
                        String str = tLRPC$BotInlineResult.f1520id;
                        Intrinsics.checkNotNullExpressionValue(str, "inlineBot.id");
                        formatBotRequestParams = walletReceiveBinancePayPresenter.formatBotRequestParams(str, String.valueOf(((TLRPC$messages_BotResults) success.getData()).query_id));
                        j2 = this.chatId;
                        SendMessagesHelper.prepareSendingBotContextResult(baseFragment, accountInstance, tLRPC$BotInlineResult, formatBotRequestParams, j2, null, null, null, true, 0, null);
                        resourceManager2 = this.resourceManager;
                        String string = resourceManager2.getString(C3473R.string.wallet_binance_pay_request_send_success_dialog_title);
                        resourceManager3 = this.resourceManager;
                        int i = C3473R.string.wallet_binance_pay_request_send_success_dialog_description;
                        l = this.recipientId;
                        String string2 = resourceManager3.getString(i, String.valueOf(l));
                        resourceManager4 = this.resourceManager;
                        String string3 = resourceManager4.getString(C3473R.string.common_ok);
                        final WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter2 = this;
                        ((WalletReceiveBinancePayView) this.getViewState()).showCreatedCollectionSuccessDialog(string, string2, string3, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$2$1
                            @Override // com.iMe.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                long j3;
                                j3 = WalletReceiveBinancePayPresenter.this.chatId;
                                ((WalletReceiveBinancePayView) WalletReceiveBinancePayPresenter.this.getViewState()).openChatScreen(j3);
                            }
                        });
                    } else if (result instanceof Result.Error) {
                        resourceManager = this.resourceManager;
                        ((WalletReceiveBinancePayView) this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$2
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
        if (this.args.getUserId() != null && (user = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(this.args.getUserId())) != null) {
            this.selectedUser = user;
            ((WalletReceiveBinancePayView) getViewState()).updateSelectedUser();
        }
        if (this.args.getTokenItem() != null) {
            this.selectedToken = TokenUiMappingKt.mapToDomain(this.args.getTokenItem());
            ((WalletReceiveBinancePayView) getViewState()).updateSelectedToken();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, String> formatBotRequestParams(String str, String str2) {
        HashMap<String, String> hashMapOf;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m103to(TtmlNode.ATTR_ID, str), TuplesKt.m103to("query_id", str2), TuplesKt.m103to("bot", String.valueOf(AppConfiguration$Wallet.getWalletBotId())), TuplesKt.m103to("bot_name", AppConfiguration$Wallet.getWalletBotUsernameLowerCase()));
        return hashMapOf;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void loadAvailableToPayTokens$default(WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        walletReceiveBinancePayPresenter.loadAvailableToPayTokens(z, function0);
    }

    private final void loadAvailableToPayTokens(final boolean z, final Function0<Unit> function0) {
        Observable<Result<List<BinanceTokenInfo>>> doFinally = this.binanceInternalInteractor.getAvailablePaymentTokens().observeOn(this.schedulersProvider.mo716ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletReceiveBinancePayPresenter.loadAvailableToPayTokens$lambda$2(z, this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "binanceInternalInteracto…          }\n            }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BinanceTokenInfo>>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenInfo>> result) {
                m1537invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1537invoke(Result<? extends List<? extends BinanceTokenInfo>> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends BinanceTokenInfo>> result = it;
                if (result instanceof Result.Success) {
                    WalletReceiveBinancePayPresenter.this.setAvailablePaymentTokens((List) ((Result.Success) result).getData());
                    WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter = WalletReceiveBinancePayPresenter.this;
                    walletReceiveBinancePayPresenter.setSelectableAvailablePaymentTokens(SelectableMappingKt.mapToDetailedToken(walletReceiveBinancePayPresenter.getAvailablePaymentTokens()));
                    function0.invoke();
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletReceiveBinancePayPresenter.this.resourceManager;
                    ((WalletReceiveBinancePayView) WalletReceiveBinancePayPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                } else if ((result instanceof Result.Loading) && z) {
                    T viewState = WalletReceiveBinancePayPresenter.this.getViewState();
                    Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                    BaseView.CC.showLoadingDialog$default((BaseView) viewState, true, true, null, 4, null);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$2
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
    public static final void loadAvailableToPayTokens$lambda$2(boolean z, WalletReceiveBinancePayPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            T viewState = this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.CC.showLoadingDialog$default((BaseView) viewState, false, true, null, 4, null);
        }
    }

    private final boolean isValidFields(String str) {
        boolean z;
        Double doubleOrNull;
        Double doubleOrNull2;
        if (this.selectedUser == null) {
            ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.wallet_binance_receive_selected_user_is_empty));
        } else if (this.selectedToken == null) {
            ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.wallet_binance_receive_selected_token_is_empty));
        } else {
            List<BinanceTokenInfo> list = this.availablePaymentTokens;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (BinanceTokenInfo binanceTokenInfo : list) {
                    String asset = binanceTokenInfo.getAsset();
                    TokenDetailed tokenDetailed = this.selectedToken;
                    if (Intrinsics.areEqual(asset, tokenDetailed != null ? tokenDetailed.getTicker() : null)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z) {
                ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.wallet_binance_receive_selected_token_is_unsupported));
            } else {
                doubleOrNull = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(str);
                if (doubleOrNull != null) {
                    doubleOrNull2 = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(str);
                    if (!Intrinsics.areEqual(doubleOrNull2, 0.0d)) {
                        return true;
                    }
                }
                ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3473R.string.wallet_binance_receive_amount_is_empty_or_zero));
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processShowSelectTokenDialog(final Callbacks$Callback1<TokenDetailed> callbacks$Callback1) {
        ((WalletReceiveBinancePayView) getViewState()).showSelectTokenDialog(new SelectTokenScreenType.Binance(this.selectableAvailablePaymentTokens), this.cryptoPreferenceHelper.getNetworkId(), false, new Callbacks$Callback2() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback2
            public final void invoke(Object obj, Object obj2) {
                WalletReceiveBinancePayPresenter.processShowSelectTokenDialog$lambda$5(WalletReceiveBinancePayPresenter.this, callbacks$Callback1, (TokenDetailed) obj, (FiatValue) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void processShowSelectTokenDialog$lambda$5(WalletReceiveBinancePayPresenter this$0, Callbacks$Callback1 action, TokenDetailed tokenDetailed, FiatValue fiatValue) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        this$0.selectedToken = tokenDetailed;
        action.invoke(tokenDetailed);
    }
}
