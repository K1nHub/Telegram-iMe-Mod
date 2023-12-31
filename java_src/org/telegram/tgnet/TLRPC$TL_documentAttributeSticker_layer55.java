package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_documentAttributeSticker_layer55 extends TLRPC$TL_documentAttributeSticker {
    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeSticker, org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.alt = abstractSerializedData.readString(z);
        this.stickerset = TLRPC$InputStickerSet.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeSticker, org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(978674434);
        abstractSerializedData.writeString(this.alt);
        this.stickerset.serializeToStream(abstractSerializedData);
    }
}
