package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Bool;
import org.telegram.tgnet.TLRPC$InputPeer;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_stories_togglePeerStoriesHidden */
/* loaded from: classes5.dex */
public class TL_stories$TL_stories_togglePeerStoriesHidden extends TLObject {
    public boolean hidden;
    public TLRPC$InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1123805756);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeBool(this.hidden);
    }
}
