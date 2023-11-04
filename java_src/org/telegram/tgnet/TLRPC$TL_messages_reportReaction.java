package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_reportReaction extends TLObject {

    /* renamed from: id */
    public int f1708id;
    public TLRPC$InputPeer peer;
    public TLRPC$InputUser user_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1631726152);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1708id);
        this.user_id.serializeToStream(abstractSerializedData);
    }
}
