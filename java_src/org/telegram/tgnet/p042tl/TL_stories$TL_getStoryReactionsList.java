package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Reaction;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_getStoryReactionsList */
/* loaded from: classes5.dex */
public class TL_stories$TL_getStoryReactionsList extends TLObject {
    public int flags;
    public boolean forwards_first;

    /* renamed from: id */
    public int f1765id;
    public int limit;
    public String offset;
    public TLRPC$InputPeer peer;
    public TLRPC$Reaction reaction;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TL_stories$TL_storyReactionsList.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1179482081);
        int i = this.forwards_first ? this.flags | 4 : this.flags & (-5);
        this.flags = i;
        abstractSerializedData.writeInt32(i);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1765id);
        if ((this.flags & 1) != 0) {
            this.reaction.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 2) != 0) {
            abstractSerializedData.writeString(this.offset);
        }
        abstractSerializedData.writeInt32(this.limit);
    }
}
