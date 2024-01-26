package org.ton.api.tonnode;

import kotlin.jvm.internal.Intrinsics;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TonNodeBlockIdExt.kt */
/* loaded from: classes6.dex */
public final class TonNodeBlockIdExtTlConstructor extends TlConstructor<TonNodeBlockIdExt> {
    public static final TonNodeBlockIdExtTlConstructor INSTANCE = new TonNodeBlockIdExtTlConstructor();

    private TonNodeBlockIdExtTlConstructor() {
        super("tonNode.blockIdExt workchain:int shard:long seqno:int root_hash:int256 file_hash:int256 = tonNode.BlockIdExt", null, 2, null);
    }

    @Override // org.ton.p045tl.TlDecoder
    public TonNodeBlockIdExt decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new TonNodeBlockIdExt(reader.readInt(), reader.readLong(), reader.readInt(), reader.readRaw(32), reader.readRaw(32));
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encode(TlWriter writer, TonNodeBlockIdExt value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.writeInt(value.getWorkchain());
        writer.writeLong(value.getShard());
        writer.writeInt(value.getSeqno());
        writer.writeRaw(value.rootHash().toByteArray());
        writer.writeRaw(value.fileHash().toByteArray());
    }
}
