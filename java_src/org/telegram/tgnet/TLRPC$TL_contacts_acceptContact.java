package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_contacts_acceptContact extends TLObject {
    public static int constructor = -130964977;

    /* renamed from: id */
    public TLRPC$InputUser f1578id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1578id.serializeToStream(abstractSerializedData);
    }
}
