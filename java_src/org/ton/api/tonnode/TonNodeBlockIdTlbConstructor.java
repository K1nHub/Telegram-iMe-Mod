package org.ton.api.tonnode;

import kotlin.jvm.internal.Intrinsics;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: TonNodeBlockId.kt */
/* loaded from: classes6.dex */
final class TonNodeBlockIdTlbConstructor extends TlConstructor<TonNodeBlockId> {
    public static final TonNodeBlockIdTlbConstructor INSTANCE = new TonNodeBlockIdTlbConstructor();

    private TonNodeBlockIdTlbConstructor() {
        super("tonNode.blockId workchain:int shard:long seqno:int = tonNode.BlockId", null, 2, null);
    }

    @Override // org.ton.p044tl.TlDecoder
    public TonNodeBlockId decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new TonNodeBlockIdImpl(reader.readInt(), reader.readLong(), reader.readInt());
    }

    @Override // org.ton.p044tl.TlEncoder
    public void encode(TlWriter writer, TonNodeBlockId value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.writeInt(value.getWorkchain());
        writer.writeLong(value.getShard());
        writer.writeInt(value.getSeqno());
    }
}
