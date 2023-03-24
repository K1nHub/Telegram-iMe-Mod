package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_contacts_block extends TLObject {
    public static int constructor = 1758204945;

    /* renamed from: id */
    public TLRPC$InputPeer f1547id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1547id.serializeToStream(abstractSerializedData);
    }
}
