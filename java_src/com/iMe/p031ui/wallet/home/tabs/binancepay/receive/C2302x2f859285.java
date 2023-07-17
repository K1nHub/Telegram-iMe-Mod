package com.iMe.p031ui.wallet.home.tabs.binancepay.receive;

import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$2 */
/* loaded from: classes4.dex */
public final class C2302x2f859285 extends Lambda implements Function1<Throwable, Result<? extends TLRPC$messages_BotResults>> {
    public static final C2302x2f859285 INSTANCE = new C2302x2f859285();

    public C2302x2f859285() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<TLRPC$messages_BotResults> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, new ErrorModel(ApiErrorHandler.ErrorStatus.BAD_RESPONSE, it), null, 2, null);
    }
}
