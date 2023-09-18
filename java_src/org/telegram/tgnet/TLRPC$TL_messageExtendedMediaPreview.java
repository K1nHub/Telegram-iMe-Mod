package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_messageExtendedMediaPreview extends TLRPC$MessageExtendedMedia {
    public static int constructor = -1386050360;
    public int flags;

    /* renamed from: h */
    public int f1612h;
    public TLRPC$PhotoSize thumb;
    public int video_duration;

    /* renamed from: w */
    public int f1613w;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        if ((readInt32 & 1) != 0) {
            this.f1613w = abstractSerializedData.readInt32(z);
        }
        if ((this.flags & 1) != 0) {
            this.f1612h = abstractSerializedData.readInt32(z);
        }
        if ((this.flags & 2) != 0) {
            this.thumb = TLRPC$PhotoSize.TLdeserialize(0L, 0L, 0L, abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 4) != 0) {
            this.video_duration = abstractSerializedData.readInt32(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            abstractSerializedData.writeInt32(this.f1613w);
        }
        if ((this.flags & 1) != 0) {
            abstractSerializedData.writeInt32(this.f1612h);
        }
        if ((this.flags & 2) != 0) {
            this.thumb.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 4) != 0) {
            abstractSerializedData.writeInt32(this.video_duration);
        }
    }
}
