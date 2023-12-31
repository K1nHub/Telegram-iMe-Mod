package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$Updates;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_stories_sendReaction */
/* loaded from: classes5.dex */
public class TL_stories$TL_stories_sendReaction extends TLObject {
    public boolean add_to_recent;
    public int flags;
    public TLRPC$InputPeer peer;
    public TLRPC$Reaction reaction;
    public int story_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(2144810674);
        int i = this.add_to_recent ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        abstractSerializedData.writeInt32(i);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.story_id);
        this.reaction.serializeToStream(abstractSerializedData);
    }
}
