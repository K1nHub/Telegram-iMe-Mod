package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_bots_allowSendMessage extends TLObject {
    public TLRPC$InputUser bot;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-248323089);
        this.bot.serializeToStream(abstractSerializedData);
    }
}
