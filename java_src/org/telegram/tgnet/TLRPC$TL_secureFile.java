package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_secureFile extends TLRPC$SecureFile {
    public long access_hash;
    public int date;
    public int dc_id;
    public byte[] file_hash;

    /* renamed from: id */
    public long f1733id;
    public byte[] secret;
    public long size;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1733id = abstractSerializedData.readInt64(z);
        this.access_hash = abstractSerializedData.readInt64(z);
        this.size = abstractSerializedData.readInt64(z);
        this.dc_id = abstractSerializedData.readInt32(z);
        this.date = abstractSerializedData.readInt32(z);
        this.file_hash = abstractSerializedData.readByteArray(z);
        this.secret = abstractSerializedData.readByteArray(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(2097791614);
        abstractSerializedData.writeInt64(this.f1733id);
        abstractSerializedData.writeInt64(this.access_hash);
        abstractSerializedData.writeInt64(this.size);
        abstractSerializedData.writeInt32(this.dc_id);
        abstractSerializedData.writeInt32(this.date);
        abstractSerializedData.writeByteArray(this.file_hash);
        abstractSerializedData.writeByteArray(this.secret);
    }
}
