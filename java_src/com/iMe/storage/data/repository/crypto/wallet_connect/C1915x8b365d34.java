package com.iMe.storage.data.repository.crypto.wallet_connect;

import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectSavedSessions$$inlined$handleError$1 */
/* loaded from: classes3.dex */
public final class C1915x8b365d34 extends Lambda implements Function1<Throwable, Result<? extends List<? extends WCSessionStoreItem>>> {
    final /* synthetic */ ErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1915x8b365d34(ErrorHandler errorHandler) {
        super(1);
        this.$errorHandler = errorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends WCSessionStoreItem>> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError(it), null, 2, null);
    }
}
