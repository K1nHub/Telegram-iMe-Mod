package org.ton.lite.api.liteserver.functions;

import kotlin.jvm.internal.Intrinsics;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.lite.api.liteserver.LiteServerAccountId;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LiteServerGetAccountState.kt */
/* loaded from: classes6.dex */
public final class LiteServerGetAccountStateTlConstructor extends TlConstructor<LiteServerGetAccountState> {
    public static final LiteServerGetAccountStateTlConstructor INSTANCE = new LiteServerGetAccountStateTlConstructor();

    private LiteServerGetAccountStateTlConstructor() {
        super("liteServer.getAccountState id:tonNode.blockIdExt account:liteServer.accountId = liteServer.AccountState", null, 2, null);
    }

    @Override // org.ton.p044tl.TlDecoder
    public LiteServerGetAccountState decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new LiteServerGetAccountState(TonNodeBlockIdExt.Companion.decode(reader), LiteServerAccountId.Companion.decode(reader));
    }

    @Override // org.ton.p044tl.TlEncoder
    public void encode(TlWriter writer, LiteServerGetAccountState value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        TonNodeBlockIdExt.Companion.encode(writer, (TlWriter) value.getId());
        LiteServerAccountId.Companion.encode(writer, (TlWriter) value.getAccount());
    }
}
