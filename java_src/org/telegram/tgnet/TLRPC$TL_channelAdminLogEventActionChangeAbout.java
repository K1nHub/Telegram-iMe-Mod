package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_channelAdminLogEventActionChangeAbout extends TLRPC$ChannelAdminLogEventAction {
    public String new_value;
    public String prev_value;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.prev_value = abstractSerializedData.readString(z);
        this.new_value = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1427671598);
        abstractSerializedData.writeString(this.prev_value);
        abstractSerializedData.writeString(this.new_value);
    }
}
