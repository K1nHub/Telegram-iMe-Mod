package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_videoSize extends TLRPC$VideoSize {
    public static int constructor = -567037804;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.flags = abstractSerializedData.readInt32(z);
        this.type = abstractSerializedData.readString(z);
        this.f1581w = abstractSerializedData.readInt32(z);
        this.f1580h = abstractSerializedData.readInt32(z);
        this.size = abstractSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.video_start_ts = abstractSerializedData.readDouble(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.flags);
        abstractSerializedData.writeString(this.type);
        abstractSerializedData.writeInt32(this.f1581w);
        abstractSerializedData.writeInt32(this.f1580h);
        abstractSerializedData.writeInt32(this.size);
        if ((this.flags & 1) != 0) {
            abstractSerializedData.writeDouble(this.video_start_ts);
        }
    }
}
