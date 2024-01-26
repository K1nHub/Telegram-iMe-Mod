package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_stories_getStoryViewsList */
/* loaded from: classes5.dex */
public class TL_stories$TL_stories_getStoryViewsList extends TLObject {
    public int flags;
    public boolean forwards_first;

    /* renamed from: id */
    public int f1778id;
    public boolean just_contacts;
    public int limit;
    public String offset;
    public TLRPC$InputPeer peer;

    /* renamed from: q */
    public String f1779q;
    public boolean reactions_first;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TL_stories$StoryViewsList.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(2127707223);
        int i = this.just_contacts ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.reactions_first ? i | 4 : i & (-5);
        this.flags = i2;
        int i3 = this.forwards_first ? i2 | 8 : i2 & (-9);
        this.flags = i3;
        abstractSerializedData.writeInt32(i3);
        this.peer.serializeToStream(abstractSerializedData);
        if ((this.flags & 2) != 0) {
            abstractSerializedData.writeString(this.f1779q);
        }
        abstractSerializedData.writeInt32(this.f1778id);
        abstractSerializedData.writeString(this.offset);
        abstractSerializedData.writeInt32(this.limit);
    }
}
