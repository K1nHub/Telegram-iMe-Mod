package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messageActionGeoProximityReached extends TLRPC$MessageAction {
    public int distance;
    public TLRPC$Peer from_id;
    public TLRPC$Peer to_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.from_id = TLRPC$Peer.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.to_id = TLRPC$Peer.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.distance = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1730095465);
        this.from_id.serializeToStream(abstractSerializedData);
        this.to_id.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.distance);
    }
}
