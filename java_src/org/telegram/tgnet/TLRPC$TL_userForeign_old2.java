package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_userForeign_old2 extends TLRPC$User {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1751id = abstractSerializedData.readInt32(z);
        this.first_name = abstractSerializedData.readString(z);
        this.last_name = abstractSerializedData.readString(z);
        this.username = abstractSerializedData.readString(z);
        this.access_hash = abstractSerializedData.readInt64(z);
        this.photo = TLRPC$UserProfilePhoto.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.status = TLRPC$UserStatus.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(123533224);
        abstractSerializedData.writeInt32((int) this.f1751id);
        abstractSerializedData.writeString(this.first_name);
        abstractSerializedData.writeString(this.last_name);
        abstractSerializedData.writeString(this.username);
        abstractSerializedData.writeInt64(this.access_hash);
        this.photo.serializeToStream(abstractSerializedData);
        this.status.serializeToStream(abstractSerializedData);
    }
}
