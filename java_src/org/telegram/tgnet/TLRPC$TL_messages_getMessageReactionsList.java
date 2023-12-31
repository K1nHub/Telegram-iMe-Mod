package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_getMessageReactionsList extends TLObject {
    public int flags;

    /* renamed from: id */
    public int f1697id;
    public int limit;
    public String offset;
    public TLRPC$InputPeer peer;
    public TLRPC$Reaction reaction;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_messages_messageReactionsList.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1176190792);
        abstractSerializedData.writeInt32(this.flags);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1697id);
        if ((this.flags & 1) != 0) {
            this.reaction.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 2) != 0) {
            abstractSerializedData.writeString(this.offset);
        }
        abstractSerializedData.writeInt32(this.limit);
    }
}
