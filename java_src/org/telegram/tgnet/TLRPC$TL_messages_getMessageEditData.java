package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_messages_getMessageEditData extends TLObject {
    public static int constructor = -39416522;

    /* renamed from: id */
    public int f1583id;
    public TLRPC$InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_messages_messageEditData.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1583id);
    }
}
