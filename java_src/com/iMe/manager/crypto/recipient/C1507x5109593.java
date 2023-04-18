package com.iMe.manager.crypto.recipient;

import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1 */
/* loaded from: classes3.dex */
public final class C1507x5109593 extends Lambda implements Function1<TLRPC$messages_BotResults, Result<? extends TLRPC$messages_BotResults>> {
    public static final C1507x5109593 INSTANCE = new C1507x5109593();

    public C1507x5109593() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends TLRPC$messages_BotResults> invoke(TLRPC$messages_BotResults tLRPC$messages_BotResults) {
        return Result.Companion.success(tLRPC$messages_BotResults);
    }
}
