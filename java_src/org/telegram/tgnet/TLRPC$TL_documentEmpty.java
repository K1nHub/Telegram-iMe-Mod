package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_documentEmpty extends TLRPC$Document {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1610id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(922273905);
        abstractSerializedData.writeInt64(this.f1610id);
    }
}
