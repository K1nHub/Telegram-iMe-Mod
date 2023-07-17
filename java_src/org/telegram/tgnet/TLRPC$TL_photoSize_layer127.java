package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_photoSize_layer127 extends TLRPC$TL_photoSize {
    public static int constructor = 2009052699;

    @Override // org.telegram.tgnet.TLRPC$TL_photoSize, org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.type = abstractSerializedData.readString(z);
        this.location = TLRPC$FileLocation.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.f1546w = abstractSerializedData.readInt32(z);
        this.f1545h = abstractSerializedData.readInt32(z);
        this.size = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLRPC$TL_photoSize, org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeString(this.type);
        this.location.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1546w);
        abstractSerializedData.writeInt32(this.f1545h);
        abstractSerializedData.writeInt32(this.size);
    }
}
