package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_photoSize extends TLRPC$PhotoSize {
    public static int constructor = 1976012384;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.type = abstractSerializedData.readString(z);
        this.f1563w = abstractSerializedData.readInt32(z);
        this.f1562h = abstractSerializedData.readInt32(z);
        this.size = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeString(this.type);
        abstractSerializedData.writeInt32(this.f1563w);
        abstractSerializedData.writeInt32(this.f1562h);
        abstractSerializedData.writeInt32(this.size);
    }
}
