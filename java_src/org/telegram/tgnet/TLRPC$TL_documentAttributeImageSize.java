package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_documentAttributeImageSize extends TLRPC$DocumentAttribute {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1613w = abstractSerializedData.readInt32(z);
        this.f1612h = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1815593308);
        abstractSerializedData.writeInt32(this.f1613w);
        abstractSerializedData.writeInt32(this.f1612h);
    }
}
