package org.ton.lite.api.liteserver.functions;

import kotlin.jvm.internal.Intrinsics;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LiteServerWaitMasterchainSeqno.kt */
/* loaded from: classes6.dex */
public final class LiteServerWaitMasterchainSeqnoTlConstructor extends TlConstructor<LiteServerWaitMasterchainSeqno> {
    public static final LiteServerWaitMasterchainSeqnoTlConstructor INSTANCE = new LiteServerWaitMasterchainSeqnoTlConstructor();

    private LiteServerWaitMasterchainSeqnoTlConstructor() {
        super("liteServer.waitMasterchainSeqno seqno:int timeout_ms:int = Object", null, 2, null);
    }

    @Override // org.ton.p044tl.TlDecoder
    public LiteServerWaitMasterchainSeqno decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new LiteServerWaitMasterchainSeqno(reader.readInt(), reader.readInt());
    }

    @Override // org.ton.p044tl.TlEncoder
    public void encode(TlWriter writer, LiteServerWaitMasterchainSeqno value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.writeInt(value.getSeqno());
        writer.writeInt(value.getTimeoutMs());
    }
}
