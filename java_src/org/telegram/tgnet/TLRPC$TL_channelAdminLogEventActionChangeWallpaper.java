package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_channelAdminLogEventActionChangeWallpaper extends TLRPC$ChannelAdminLogEventAction {
    public TLRPC$WallPaper new_value;
    public TLRPC$WallPaper prev_value;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.prev_value = TLRPC$WallPaper.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.new_value = TLRPC$WallPaper.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(834362706);
        this.prev_value.serializeToStream(abstractSerializedData);
        this.new_value.serializeToStream(abstractSerializedData);
    }
}
