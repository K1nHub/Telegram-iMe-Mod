package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_photoCachedSize extends TLRPC$PhotoSize {
    public static int constructor = 35527382;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.type = abstractSerializedData.readString(z);
        this.f1554w = abstractSerializedData.readInt32(z);
        this.f1553h = abstractSerializedData.readInt32(z);
        this.bytes = abstractSerializedData.readByteArray(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeString(this.type);
        abstractSerializedData.writeInt32(this.f1554w);
        abstractSerializedData.writeInt32(this.f1553h);
        abstractSerializedData.writeByteArray(this.bytes);
    }
}
