package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_wallPaperNoFile extends TLRPC$WallPaper {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1759id = abstractSerializedData.readInt64(z);
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        this.isDefault = (readInt32 & 2) != 0;
        this.dark = (readInt32 & 16) != 0;
        if ((readInt32 & 4) != 0) {
            this.settings = TLRPC$WallPaperSettings.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-528465642);
        abstractSerializedData.writeInt64(this.f1759id);
        int i = this.isDefault ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        int i2 = this.dark ? i | 16 : i & (-17);
        this.flags = i2;
        abstractSerializedData.writeInt32(i2);
        if ((this.flags & 4) != 0) {
            this.settings.serializeToStream(abstractSerializedData);
        }
    }
}
