package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_stats_getStoryStats */
/* loaded from: classes5.dex */
public class TL_stories$TL_stats_getStoryStats extends TLObject {
    public boolean dark;
    public int flags;

    /* renamed from: id */
    public int f1771id;
    public TLRPC$InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TL_stories$TL_stats_storyStats.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(927985472);
        int i = this.dark ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        abstractSerializedData.writeInt32(i);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1771id);
    }
}
