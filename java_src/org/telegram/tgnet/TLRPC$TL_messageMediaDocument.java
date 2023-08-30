package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_messageMediaDocument extends TLRPC$MessageMedia {
    public static int constructor = 1291114285;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        this.nopremium = (readInt32 & 8) != 0;
        this.spoiler = (readInt32 & 16) != 0;
        if ((readInt32 & 1) != 0) {
            this.document = TLRPC$Document.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 32) != 0) {
            this.alt_document = TLRPC$Document.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 4) != 0) {
            this.ttl_seconds = abstractSerializedData.readInt32(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        int i = this.nopremium ? this.flags | 8 : this.flags & (-9);
        this.flags = i;
        int i2 = this.spoiler ? i | 16 : i & (-17);
        this.flags = i2;
        abstractSerializedData.writeInt32(i2);
        if ((this.flags & 1) != 0) {
            this.document.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 32) != 0) {
            this.alt_document.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 4) != 0) {
            abstractSerializedData.writeInt32(this.ttl_seconds);
        }
    }
}
