package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_channelAdminLogEventActionDefaultBannedRights extends TLRPC$ChannelAdminLogEventAction {
    public TLRPC$TL_chatBannedRights new_banned_rights;
    public TLRPC$TL_chatBannedRights prev_banned_rights;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.prev_banned_rights = TLRPC$TL_chatBannedRights.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.new_banned_rights = TLRPC$TL_chatBannedRights.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(771095562);
        this.prev_banned_rights.serializeToStream(abstractSerializedData);
        this.new_banned_rights.serializeToStream(abstractSerializedData);
    }
}
