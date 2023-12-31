package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_getInlineBotResults extends TLObject {
    public TLRPC$InputUser bot;
    public int flags;
    public TLRPC$InputGeoPoint geo_point;
    public String offset;
    public TLRPC$InputPeer peer;
    public String query;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$messages_BotResults.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1364105629);
        abstractSerializedData.writeInt32(this.flags);
        this.bot.serializeToStream(abstractSerializedData);
        this.peer.serializeToStream(abstractSerializedData);
        if ((this.flags & 1) != 0) {
            this.geo_point.serializeToStream(abstractSerializedData);
        }
        abstractSerializedData.writeString(this.query);
        abstractSerializedData.writeString(this.offset);
    }
}
