package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputFile extends TLRPC$InputFile {
    public static int constructor = -181407105;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1618id = abstractSerializedData.readInt64(z);
        this.parts = abstractSerializedData.readInt32(z);
        this.name = abstractSerializedData.readString(z);
        this.md5_checksum = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1618id);
        abstractSerializedData.writeInt32(this.parts);
        abstractSerializedData.writeString(this.name);
        abstractSerializedData.writeString(this.md5_checksum);
    }
}
