package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_help_hidePromoData extends TLObject {
    public TLRPC$InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(505748629);
        this.peer.serializeToStream(abstractSerializedData);
    }
}
