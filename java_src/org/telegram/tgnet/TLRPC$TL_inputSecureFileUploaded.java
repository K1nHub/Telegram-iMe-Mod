package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputSecureFileUploaded extends TLRPC$InputSecureFile {
    public byte[] file_hash;

    /* renamed from: id */
    public long f1675id;
    public String md5_checksum;
    public int parts;
    public byte[] secret;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1675id = abstractSerializedData.readInt64(z);
        this.parts = abstractSerializedData.readInt32(z);
        this.md5_checksum = abstractSerializedData.readString(z);
        this.file_hash = abstractSerializedData.readByteArray(z);
        this.secret = abstractSerializedData.readByteArray(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(859091184);
        abstractSerializedData.writeInt64(this.f1675id);
        abstractSerializedData.writeInt32(this.parts);
        abstractSerializedData.writeString(this.md5_checksum);
        abstractSerializedData.writeByteArray(this.file_hash);
        abstractSerializedData.writeByteArray(this.secret);
    }
}
