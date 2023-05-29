package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_contacts_unblock extends TLObject {
    public static int constructor = -1096393392;

    /* renamed from: id */
    public TLRPC$InputPeer f1483id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1483id.serializeToStream(abstractSerializedData);
    }
}
