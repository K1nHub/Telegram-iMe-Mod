package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$Update;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_updateReadStories */
/* loaded from: classes5.dex */
public class TL_stories$TL_updateReadStories extends TLRPC$Update {
    public int max_id;
    public TLRPC$Peer peer;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.peer = TLRPC$Peer.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.max_id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-145845461);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.max_id);
    }
}
