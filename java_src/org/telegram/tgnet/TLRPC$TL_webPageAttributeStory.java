package org.telegram.tgnet;

import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
/* loaded from: classes5.dex */
public class TLRPC$TL_webPageAttributeStory extends TLRPC$WebPageAttribute {

    /* renamed from: id */
    public int f1749id;
    public TLRPC$Peer peer;
    public TL_stories$StoryItem storyItem;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.flags = abstractSerializedData.readInt32(z);
        this.peer = TLRPC$Peer.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.f1749id = abstractSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.storyItem = TL_stories$StoryItem.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(781501415);
        abstractSerializedData.writeInt32(this.flags);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1749id);
        if ((this.flags & 1) != 0) {
            this.storyItem.serializeToStream(abstractSerializedData);
        }
    }
}
