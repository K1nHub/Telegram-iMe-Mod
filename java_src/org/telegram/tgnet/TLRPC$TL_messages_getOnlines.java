package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_getOnlines extends TLObject {
    public TLRPC$InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_chatOnlines.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1848369232);
        this.peer.serializeToStream(abstractSerializedData);
    }
}
