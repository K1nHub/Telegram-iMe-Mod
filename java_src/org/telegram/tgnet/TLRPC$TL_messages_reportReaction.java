package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_messages_reportReaction extends TLObject {
    public static int constructor = 1631726152;

    /* renamed from: id */
    public int f1643id;
    public TLRPC$InputPeer peer;
    public TLRPC$InputUser user_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1643id);
        this.user_id.serializeToStream(abstractSerializedData);
    }
}
