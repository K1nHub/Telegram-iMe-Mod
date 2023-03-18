package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_photoStrippedSize extends TLRPC$PhotoSize {
    public static int constructor = -525288402;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.type = abstractSerializedData.readString(z);
        this.bytes = abstractSerializedData.readByteArray(z);
        this.f1529h = 50;
        this.f1530w = 50;
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeString(this.type);
        abstractSerializedData.writeByteArray(this.bytes);
    }
}
