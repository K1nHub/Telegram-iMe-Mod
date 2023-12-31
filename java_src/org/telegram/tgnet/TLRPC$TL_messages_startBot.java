package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_startBot extends TLObject {
    public TLRPC$InputUser bot;
    public TLRPC$InputPeer peer;
    public long random_id;
    public String start_param;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-421563528);
        this.bot.serializeToStream(abstractSerializedData);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt64(this.random_id);
        abstractSerializedData.writeString(this.start_param);
    }
}
