package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_storyItemSkipped extends TLRPC$StoryItem {
    public static int constructor = -5388013;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        this.close_friends = (readInt32 & 256) != 0;
        this.f1566id = abstractSerializedData.readInt32(z);
        this.date = abstractSerializedData.readInt32(z);
        this.expire_date = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        int i = this.close_friends ? this.flags | 256 : this.flags & (-257);
        this.flags = i;
        abstractSerializedData.writeInt32(i);
        abstractSerializedData.writeInt32(this.f1566id);
        abstractSerializedData.writeInt32(this.date);
        abstractSerializedData.writeInt32(this.expire_date);
    }
}
