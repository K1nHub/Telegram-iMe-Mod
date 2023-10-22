package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_webPageAttributeStory extends TLRPC$WebPageAttribute {
    public int flags;

    /* renamed from: id */
    public int f1760id;
    public TLRPC$Peer peer;
    public TLRPC$StoryItem storyItem;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.flags = abstractSerializedData.readInt32(z);
        this.peer = TLRPC$Peer.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.f1760id = abstractSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.storyItem = TLRPC$StoryItem.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(781501415);
        abstractSerializedData.writeInt32(this.flags);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1760id);
        if ((this.flags & 1) != 0) {
            this.storyItem.serializeToStream(abstractSerializedData);
        }
    }
}
