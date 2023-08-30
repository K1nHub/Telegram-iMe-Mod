package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_channelAdminLogEventActionChangeHistoryTTL extends TLRPC$ChannelAdminLogEventAction {
    public static int constructor = 1855199800;
    public int new_value;
    public int prev_value;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.prev_value = abstractSerializedData.readInt32(z);
        this.new_value = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.prev_value);
        abstractSerializedData.writeInt32(this.new_value);
    }
}
