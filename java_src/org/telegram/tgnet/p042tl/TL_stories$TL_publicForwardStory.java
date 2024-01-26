package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$PublicForward;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_publicForwardStory */
/* loaded from: classes5.dex */
public class TL_stories$TL_publicForwardStory extends TLRPC$PublicForward {
    public TLRPC$Peer peer;
    public TL_stories$StoryItem story;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.peer = TLRPC$Peer.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.story = TL_stories$StoryItem.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-302797360);
        this.peer.serializeToStream(abstractSerializedData);
        this.story.serializeToStream(abstractSerializedData);
    }
}
