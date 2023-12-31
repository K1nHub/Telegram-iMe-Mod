package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_stories_getStoryViewsList */
/* loaded from: classes5.dex */
public class TL_stories$TL_stories_getStoryViewsList extends TLObject {
    public int flags;

    /* renamed from: id */
    public int f1774id;
    public boolean just_contacts;
    public int limit;
    public String offset;
    public TLRPC$InputPeer peer;

    /* renamed from: q */
    public String f1775q;
    public boolean reactions_first;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TL_stories$TL_stories_storyViewsList.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(2127707223);
        int i = this.just_contacts ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.reactions_first ? i | 4 : i & (-5);
        this.flags = i2;
        abstractSerializedData.writeInt32(i2);
        this.peer.serializeToStream(abstractSerializedData);
        if ((this.flags & 2) != 0) {
            abstractSerializedData.writeString(this.f1775q);
        }
        abstractSerializedData.writeInt32(this.f1774id);
        abstractSerializedData.writeString(this.offset);
        abstractSerializedData.writeInt32(this.limit);
    }
}
