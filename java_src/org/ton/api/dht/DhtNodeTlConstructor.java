package org.ton.api.dht;

import kotlin.jvm.internal.Intrinsics;
import org.ton.api.adnl.AdnlAddressList;
import org.ton.api.pub.PublicKey;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DhtNode.kt */
/* loaded from: classes6.dex */
public final class DhtNodeTlConstructor extends TlConstructor<DhtNode> {
    public static final DhtNodeTlConstructor INSTANCE = new DhtNodeTlConstructor();

    private DhtNodeTlConstructor() {
        super("dht.node id:PublicKey addr_list:adnl.addressList version:int signature:bytes = dht.Node", null, 2, null);
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encode(TlWriter writer, DhtNode value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        PublicKey.Companion.encode(writer, (TlWriter) value.getId());
        AdnlAddressList.Companion.encode(writer, (TlWriter) value.getAddrList());
        writer.writeInt(value.getVersion());
        TlWriter.writeBytes$default(writer, value.getSignature(), 0, 0, 6, (Object) null);
    }

    @Override // org.ton.p045tl.TlDecoder
    public DhtNode decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new DhtNode(PublicKey.Companion.decode(reader), AdnlAddressList.Companion.decode(reader), reader.readInt(), reader.readBytes());
    }
}
