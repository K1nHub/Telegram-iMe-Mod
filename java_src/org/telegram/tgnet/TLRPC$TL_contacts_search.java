package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_contacts_search extends TLObject {
    public int limit;

    /* renamed from: q */
    public String f1652q;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_contacts_found.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(301470424);
        abstractSerializedData.writeString(this.f1652q);
        abstractSerializedData.writeInt32(this.limit);
    }
}
