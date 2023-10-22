package org.ton.lite.api.liteserver.functions;

import kotlin.jvm.internal.Intrinsics;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: LiteServerGetMasterchainInfoExt.kt */
/* loaded from: classes6.dex */
final class LiteServerGetMasterchainInfoExtTlConstructor extends TlConstructor<LiteServerGetMasterchainInfoExt> {
    public static final LiteServerGetMasterchainInfoExtTlConstructor INSTANCE = new LiteServerGetMasterchainInfoExtTlConstructor();

    private LiteServerGetMasterchainInfoExtTlConstructor() {
        super("liteServer.getMasterchainInfoExt mode:# = liteServer.MasterchainInfoExt", null, 2, null);
    }

    @Override // org.ton.p044tl.TlDecoder
    public LiteServerGetMasterchainInfoExt decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new LiteServerGetMasterchainInfoExt(reader.readInt());
    }

    @Override // org.ton.p044tl.TlEncoder
    public void encode(TlWriter writer, LiteServerGetMasterchainInfoExt value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.writeInt(value.getMode());
    }
}
