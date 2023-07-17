package com.iMe.manager.crypto.recipient;

import com.iMe.storage.domain.model.Result;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$LongRef;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1584xd1623ac9 extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends TLRPC$messages_BotResults>>> {
    final /* synthetic */ Ref$LongRef $chatId$inlined;
    final /* synthetic */ String $recipient$inlined;
    final /* synthetic */ CryptoRecipientManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1584xd1623ac9(String str, Ref$LongRef ref$LongRef, CryptoRecipientManager cryptoRecipientManager) {
        super(1);
        this.$recipient$inlined = str;
        this.$chatId$inlined = ref$LongRef;
        this.this$0 = cryptoRecipientManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006f  */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.reactivex.ObservableSource<? extends com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults>> invoke(com.iMe.storage.domain.model.Result<? extends java.lang.String> r10) {
        /*
            r9 = this;
            java.lang.String r0 = "result"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            boolean r0 = r10 instanceof com.iMe.storage.domain.model.Result.Success
            r1 = 2
            r2 = 0
            if (r0 == 0) goto L96
            java.lang.String r0 = r9.$recipient$inlined
            java.lang.Long r0 = kotlin.text.StringsKt.toLongOrNull(r0)
            kotlin.jvm.internal.Ref$LongRef r3 = r9.$chatId$inlined
            r4 = -1
            if (r0 == 0) goto L2c
            com.iMe.manager.crypto.recipient.CryptoRecipientManager r6 = r9.this$0
            com.iMe.gateway.TelegramControllersGateway r6 = com.iMe.manager.crypto.recipient.CryptoRecipientManager.access$getTelegramControllersGateway$p(r6)
            r7 = 0
            r8 = 1
            org.telegram.messenger.MessagesController r6 = com.iMe.gateway.TelegramControllersGateway.CC.getMessagesController$default(r6, r7, r8, r2)
            org.telegram.tgnet.TLRPC$User r0 = r6.getUser(r0)
            if (r0 == 0) goto L2c
            long r6 = r0.f1656id
            goto L2d
        L2c:
            r6 = r4
        L2d:
            r3.element = r6
            kotlin.jvm.internal.Ref$LongRef r0 = r9.$chatId$inlined
            long r6 = r0.element
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 == 0) goto L6f
            com.iMe.manager.crypto.recipient.CryptoRecipientManager r0 = r9.this$0
            com.iMe.manager.TelegramApi r1 = com.iMe.manager.crypto.recipient.CryptoRecipientManager.access$getTelegramApi$p(r0)
            java.lang.Object r10 = r10.getData()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
            r2 = r10
            java.lang.String r2 = (java.lang.String) r2
            kotlin.jvm.internal.Ref$LongRef r10 = r9.$chatId$inlined
            long r3 = r10.element
            long r5 = com.iMe.storage.common.AppConfiguration$Wallet.getWalletBotId()
            io.reactivex.Observable r10 = r1.getInlineBot(r2, r3, r5)
            com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1 r0 = com.iMe.manager.crypto.recipient.C1587x5109593.INSTANCE
            com.iMe.manager.crypto.recipient.CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0 r1 = new com.iMe.manager.crypto.recipient.CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0
            r1.<init>(r0)
            io.reactivex.Observable r10 = r10.map(r1)
            com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2 r0 = com.iMe.manager.crypto.recipient.C1588x5109594.INSTANCE
            com.iMe.manager.crypto.recipient.CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0 r1 = new com.iMe.manager.crypto.recipient.CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0
            r1.<init>(r0)
            io.reactivex.Observable r10 = r10.onErrorReturn(r1)
            java.lang.String r0 = "map { it.toSuccess() }\n …RESPONSE, it).toError() }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
            goto Lb4
        L6f:
            com.iMe.storage.data.network.model.error.ErrorModel r10 = new com.iMe.storage.data.network.model.error.ErrorModel
            com.iMe.manager.crypto.recipient.CryptoRecipientManager r0 = r9.this$0
            com.iMe.storage.domain.utils.system.ResourceManager r0 = com.iMe.manager.crypto.recipient.CryptoRecipientManager.access$getResourceManager$p(r0)
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
            goto Lb4
        L96:
            boolean r0 = r10 instanceof com.iMe.storage.domain.model.Result.Error
            if (r0 == 0) goto Lb0
            com.iMe.storage.domain.model.Result$Companion r0 = com.iMe.storage.domain.model.Result.Companion
            com.iMe.storage.domain.model.Result$Error r10 = (com.iMe.storage.domain.model.Result.Error) r10
            com.iMe.storage.data.network.model.error.ErrorModel r10 = r10.getError()
            com.iMe.storage.domain.model.Result r10 = com.iMe.storage.domain.model.Result.Companion.error$default(r0, r10, r2, r1, r2)
            java.lang.String r0 = "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r10, r0)
            io.reactivex.Observable r10 = io.reactivex.Observable.just(r10)
            goto Lb4
        Lb0:
            io.reactivex.Observable r10 = io.reactivex.Observable.empty()
        Lb4:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.crypto.recipient.C1584xd1623ac9.invoke(com.iMe.storage.domain.model.Result):io.reactivex.ObservableSource");
    }
}
