package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_saveDefaultSendAs extends TLObject {
    public TLRPC$InputPeer peer;
    public TLRPC$InputPeer send_as;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-855777386);
        this.peer.serializeToStream(abstractSerializedData);
        this.send_as.serializeToStream(abstractSerializedData);
    }
}
