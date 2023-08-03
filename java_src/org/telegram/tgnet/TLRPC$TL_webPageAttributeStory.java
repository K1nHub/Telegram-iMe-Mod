package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_webPageAttributeStory extends TLRPC$WebPageAttribute {

    /* renamed from: id */
    public int f1673id;
    public TLRPC$StoryItem storyItem;
    public long user_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.flags = abstractSerializedData.readInt32(z);
        this.user_id = abstractSerializedData.readInt64(z);
        this.f1673id = abstractSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.storyItem = TLRPC$StoryItem.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        if (this.storyItem != null) {
            this.flags |= 1;
        } else {
            this.flags &= -2;
        }
        abstractSerializedData.writeInt32(-1818605967);
        abstractSerializedData.writeInt32(this.flags);
        abstractSerializedData.writeInt64(this.user_id);
        abstractSerializedData.writeInt32(this.f1673id);
        if ((this.flags & 1) != 0) {
            this.storyItem.serializeToStream(abstractSerializedData);
        }
    }
}
