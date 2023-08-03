package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_contacts_addContact extends TLObject {
    public static int constructor = -386636848;
    public boolean add_phone_privacy_exception;
    public String first_name;
    public int flags;

    /* renamed from: id */
    public TLRPC$InputUser f1566id;
    public String last_name;
    public String phone;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        int i = this.add_phone_privacy_exception ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        abstractSerializedData.writeInt32(i);
        this.f1566id.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeString(this.first_name);
        abstractSerializedData.writeString(this.last_name);
        abstractSerializedData.writeString(this.phone);
    }
}
