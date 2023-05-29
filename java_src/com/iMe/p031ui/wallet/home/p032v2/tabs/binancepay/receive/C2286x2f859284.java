package com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.receive;

import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$lambda$0$$inlined$wrapAsResult$1 */
/* loaded from: classes4.dex */
public final class C2286x2f859284 extends Lambda implements Function1<TLRPC$messages_BotResults, Result<? extends TLRPC$messages_BotResults>> {
    public static final C2286x2f859284 INSTANCE = new C2286x2f859284();

    public C2286x2f859284() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends TLRPC$messages_BotResults> invoke(TLRPC$messages_BotResults tLRPC$messages_BotResults) {
        return Result.Companion.success(tLRPC$messages_BotResults);
    }
}
