package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputFileBig extends TLRPC$InputFile {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1620id = abstractSerializedData.readInt64(z);
        this.parts = abstractSerializedData.readInt32(z);
        this.name = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-95482955);
        abstractSerializedData.writeInt64(this.f1620id);
        abstractSerializedData.writeInt32(this.parts);
        abstractSerializedData.writeString(this.name);
    }
}
