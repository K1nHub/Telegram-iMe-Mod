package com.iMe.p031ui.wallet.home.tabs.binancepay.receive;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceCollectionOrder;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$$inlined$flatMapSuccess$1 */
/* loaded from: classes4.dex */
public final class C2298x1b3c7af8 extends Lambda implements Function1<Result<? extends BinanceCollectionOrder>, ObservableSource<? extends Result<? extends TLRPC$messages_BotResults>>> {
    final /* synthetic */ WalletReceiveBinancePayPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2298x1b3c7af8(WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter) {
        super(1);
        this.this$0 = walletReceiveBinancePayPresenter;
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
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = r9.this$0
            org.telegram.tgnet.TLRPC$User r3 = r0.getSelectedUser()
            if (r3 == 0) goto L1b
            long r3 = r3.f1656id
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            goto L1c
        L1b:
            r3 = r2
        L1c:
            com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$setRecipientId$p(r0, r3)
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = r9.this$0
            java.lang.Long r3 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getRecipientId$p(r0)
            r4 = -1
            if (r3 == 0) goto L44
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r3 = r9.this$0
            com.iMe.gateway.TelegramControllersGateway r3 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getTelegramControllersGateway$p(r3)
            r6 = 0
            r7 = 1
            org.telegram.messenger.MessagesController r3 = com.iMe.gateway.TelegramControllersGateway.CC.getMessagesController$default(r3, r6, r7, r2)
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r6 = r9.this$0
            java.lang.Long r6 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getRecipientId$p(r6)
            org.telegram.tgnet.TLRPC$User r3 = r3.getUser(r6)
            if (r3 == 0) goto L44
            long r6 = r3.f1656id
            goto L45
        L44:
            r6 = r4
        L45:
            com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$setChatId$p(r0, r6)
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = r9.this$0
            long r6 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getChatId$p(r0)
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 == 0) goto L8f
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = r9.this$0
            com.iMe.manager.TelegramApi r1 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getTelegramApi$p(r0)
            java.lang.Object r10 = r10.getData()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
            com.iMe.storage.domain.model.binancepay.BinanceCollectionOrder r10 = (com.iMe.storage.domain.model.binancepay.BinanceCollectionOrder) r10
            java.lang.String r2 = r10.getMessageId()
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r10 = r9.this$0
            long r3 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getChatId$p(r10)
            long r5 = com.iMe.storage.common.AppConfiguration$Wallet.getWalletBotId()
            io.reactivex.Observable r10 = r1.getInlineBot(r2, r3, r5)
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$1 r0 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2301x2f859284.INSTANCE
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$inlined$sam$i$io_reactivex_functions_Function$0 r1 = new com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            r1.<init>(r0)
            io.reactivex.Observable r10 = r10.map(r1)
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$2 r0 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2302x2f859285.INSTANCE
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$inlined$sam$i$io_reactivex_functions_Function$0 r1 = new com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            r1.<init>(r0)
            io.reactivex.Observable r10 = r10.onErrorReturn(r1)
            java.lang.String r0 = "map { it.toSuccess() }\n …RESPONSE, it).toError() }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
            goto Ld4
        L8f:
            com.iMe.storage.data.network.model.error.ErrorModel r10 = new com.iMe.storage.data.network.model.error.ErrorModel
            com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter r0 = r9.this$0
            com.iMe.storage.domain.utils.system.ResourceManager r0 = com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter.access$getResourceManager$p(r0)
            int r3 = org.telegram.messenger.C3417R.string.wallet_recipient_validation_chat_with_user_first_error
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
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.home.tabs.binancepay.receive.C2298x1b3c7af8.invoke(com.iMe.storage.domain.model.Result):io.reactivex.ObservableSource");
    }
}
