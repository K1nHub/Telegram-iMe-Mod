package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_channelAdminLogEventActionChangeBackgroundEmoji extends TLRPC$ChannelAdminLogEventAction {
    public long new_value;
    public long prev_value;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.prev_value = abstractSerializedData.readInt64(z);
        this.new_value = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1147126836);
        abstractSerializedData.writeInt64(this.prev_value);
        abstractSerializedData.writeInt64(this.new_value);
    }
}
