package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_decryptedMessageMediaVideo extends TLRPC$DecryptedMessageMedia {
    public byte[] thumb;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.thumb = abstractSerializedData.readByteArray(z);
        this.thumb_w = abstractSerializedData.readInt32(z);
        this.thumb_h = abstractSerializedData.readInt32(z);
        this.duration = abstractSerializedData.readInt32(z);
        this.mime_type = abstractSerializedData.readString(z);
        this.f1607w = abstractSerializedData.readInt32(z);
        this.f1604h = abstractSerializedData.readInt32(z);
        this.size = abstractSerializedData.readInt32(z);
        this.key = abstractSerializedData.readByteArray(z);
        this.f1606iv = abstractSerializedData.readByteArray(z);
        this.caption = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1760785394);
        abstractSerializedData.writeByteArray(this.thumb);
        abstractSerializedData.writeInt32(this.thumb_w);
        abstractSerializedData.writeInt32(this.thumb_h);
        abstractSerializedData.writeInt32(this.duration);
        abstractSerializedData.writeString(this.mime_type);
        abstractSerializedData.writeInt32(this.f1607w);
        abstractSerializedData.writeInt32(this.f1604h);
        abstractSerializedData.writeInt32((int) this.size);
        abstractSerializedData.writeByteArray(this.key);
        abstractSerializedData.writeByteArray(this.f1606iv);
        abstractSerializedData.writeString(this.caption);
    }
}
