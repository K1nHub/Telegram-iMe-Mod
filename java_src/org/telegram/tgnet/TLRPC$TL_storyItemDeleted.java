package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_storyItemDeleted extends TLRPC$StoryItem {
    public static int constructor = 1374088783;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1553id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.f1553id);
    }
}
