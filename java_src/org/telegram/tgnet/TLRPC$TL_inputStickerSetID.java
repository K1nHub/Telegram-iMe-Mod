package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputStickerSetID extends TLRPC$InputStickerSet {
    public static int constructor = -1645763991;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1541id = abstractSerializedData.readInt64(z);
        this.access_hash = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1541id);
        abstractSerializedData.writeInt64(this.access_hash);
    }
}
