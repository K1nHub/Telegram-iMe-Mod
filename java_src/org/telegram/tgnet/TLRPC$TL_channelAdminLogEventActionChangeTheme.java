package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_channelAdminLogEventActionChangeTheme extends TLRPC$ChannelAdminLogEventAction {
    public String new_value;
    public String prev_value;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.prev_value = abstractSerializedData.readString(z);
        this.new_value = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-26672755);
        abstractSerializedData.writeString(this.prev_value);
        abstractSerializedData.writeString(this.new_value);
    }
}
