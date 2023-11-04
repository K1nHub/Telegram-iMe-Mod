package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_photoCachedSize extends TLRPC$PhotoSize {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.type = abstractSerializedData.readString(z);
        this.f1634w = abstractSerializedData.readInt32(z);
        this.f1633h = abstractSerializedData.readInt32(z);
        this.bytes = abstractSerializedData.readByteArray(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(35527382);
        abstractSerializedData.writeString(this.type);
        abstractSerializedData.writeInt32(this.f1634w);
        abstractSerializedData.writeInt32(this.f1633h);
        abstractSerializedData.writeByteArray(this.bytes);
    }
}
