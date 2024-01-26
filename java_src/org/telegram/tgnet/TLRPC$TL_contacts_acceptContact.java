package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_contacts_acceptContact extends TLObject {

    /* renamed from: id */
    public TLRPC$InputUser f1648id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-130964977);
        this.f1648id.serializeToStream(abstractSerializedData);
    }
}
