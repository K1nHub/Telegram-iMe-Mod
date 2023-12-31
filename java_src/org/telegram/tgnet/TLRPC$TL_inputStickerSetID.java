package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputStickerSetID extends TLRPC$InputStickerSet {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1625id = abstractSerializedData.readInt64(z);
        this.access_hash = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1645763991);
        abstractSerializedData.writeInt64(this.f1625id);
        abstractSerializedData.writeInt64(this.access_hash);
    }
}
