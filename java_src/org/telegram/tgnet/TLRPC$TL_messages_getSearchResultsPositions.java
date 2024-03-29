package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_getSearchResultsPositions extends TLObject {
    public TLRPC$MessagesFilter filter;
    public int flags;
    public int limit;
    public int offset_id;
    public TLRPC$InputPeer peer;
    public TLRPC$InputPeer saved_peer_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_messages_searchResultsPositions.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1669386480);
        abstractSerializedData.writeInt32(this.flags);
        this.peer.serializeToStream(abstractSerializedData);
        if ((this.flags & 4) != 0) {
            this.saved_peer_id.serializeToStream(abstractSerializedData);
        }
        this.filter.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.offset_id);
        abstractSerializedData.writeInt32(this.limit);
    }
}
