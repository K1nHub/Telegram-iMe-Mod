package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_channels_updateUsername extends TLObject {
    public TLRPC$InputChannel channel;
    public String username;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(890549214);
        this.channel.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeString(this.username);
    }
}
