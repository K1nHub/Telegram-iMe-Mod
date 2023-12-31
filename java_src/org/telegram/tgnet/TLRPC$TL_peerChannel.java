package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_peerChannel extends TLRPC$Peer {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.channel_id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1566230754);
        abstractSerializedData.writeInt64(this.channel_id);
    }
}
