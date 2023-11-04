package org.ton.lite.api.liteserver;

import kotlin.jvm.internal.Intrinsics;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeZeroStateIdExt;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LiteServerMasterchainInfo.kt */
/* loaded from: classes6.dex */
public final class LiteServerMasterchainInfoTlbConstructor extends TlConstructor<LiteServerMasterchainInfo> {
    public static final LiteServerMasterchainInfoTlbConstructor INSTANCE = new LiteServerMasterchainInfoTlbConstructor();

    private LiteServerMasterchainInfoTlbConstructor() {
        super("liteServer.masterchainInfo last:tonNode.blockIdExt state_root_hash:int256 init:tonNode.zeroStateIdExt = liteServer.MasterchainInfo", null, 2, null);
    }

    @Override // org.ton.p045tl.TlDecoder
    public LiteServerMasterchainInfo decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new LiteServerMasterchainInfo(TonNodeBlockIdExt.Companion.decode(reader), reader.readRaw(32), TonNodeZeroStateIdExt.Companion.decode(reader));
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encode(TlWriter writer, LiteServerMasterchainInfo value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        TonNodeBlockIdExt.Companion.encode(writer, (TlWriter) value.getLast());
        writer.writeRaw(value.getStateRootHash());
        TonNodeZeroStateIdExt.Companion.encode(writer, (TlWriter) value.getInit());
    }
}
