package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_videoSize_layer127 extends TLRPC$TL_videoSize {
    @Override // org.telegram.tgnet.TLRPC$TL_videoSize, org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.flags = abstractSerializedData.readInt32(z);
        this.type = abstractSerializedData.readString(z);
        this.location = TLRPC$FileLocation.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.f1758w = abstractSerializedData.readInt32(z);
        this.f1757h = abstractSerializedData.readInt32(z);
        this.size = abstractSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.video_start_ts = abstractSerializedData.readDouble(z);
        }
    }

    @Override // org.telegram.tgnet.TLRPC$TL_videoSize, org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-399391402);
        abstractSerializedData.writeInt32(this.flags);
        abstractSerializedData.writeString(this.type);
        this.location.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1758w);
        abstractSerializedData.writeInt32(this.f1757h);
        abstractSerializedData.writeInt32(this.size);
        if ((this.flags & 1) != 0) {
            abstractSerializedData.writeDouble(this.video_start_ts);
        }
    }
}
