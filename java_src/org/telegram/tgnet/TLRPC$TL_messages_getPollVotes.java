package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_messages_getPollVotes extends TLObject {
    public static int constructor = -1200736242;
    public int flags;

    /* renamed from: id */
    public int f1595id;
    public int limit;
    public String offset;
    public byte[] option;
    public TLRPC$InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_messages_votesList.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.flags);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1595id);
        if ((this.flags & 1) != 0) {
            abstractSerializedData.writeByteArray(this.option);
        }
        if ((this.flags & 2) != 0) {
            abstractSerializedData.writeString(this.offset);
        }
        abstractSerializedData.writeInt32(this.limit);
    }
}
