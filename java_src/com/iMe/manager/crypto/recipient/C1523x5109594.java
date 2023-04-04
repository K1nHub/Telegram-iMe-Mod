package com.iMe.manager.crypto.recipient;

import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2 */
/* loaded from: classes3.dex */
public final class C1523x5109594 extends Lambda implements Function1<Throwable, Result<? extends TLRPC$messages_BotResults>> {
    public static final C1523x5109594 INSTANCE = new C1523x5109594();

    public C1523x5109594() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<TLRPC$messages_BotResults> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, new ErrorModel(ApiErrorHandler.ErrorStatus.BAD_RESPONSE, it), null, 2, null);
    }
}
