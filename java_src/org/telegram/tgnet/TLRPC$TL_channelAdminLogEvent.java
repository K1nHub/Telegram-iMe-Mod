package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_channelAdminLogEvent extends TLObject {
    public TLRPC$ChannelAdminLogEventAction action;
    public int date;

    /* renamed from: id */
    public long f1639id;
    public long user_id;

    public static TLRPC$TL_channelAdminLogEvent TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (531458253 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_channelAdminLogEvent", Integer.valueOf(i)));
            }
            return null;
        }
        TLRPC$TL_channelAdminLogEvent tLRPC$TL_channelAdminLogEvent = new TLRPC$TL_channelAdminLogEvent();
        tLRPC$TL_channelAdminLogEvent.readParams(abstractSerializedData, z);
        return tLRPC$TL_channelAdminLogEvent;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1639id = abstractSerializedData.readInt64(z);
        this.date = abstractSerializedData.readInt32(z);
        this.user_id = abstractSerializedData.readInt64(z);
        this.action = TLRPC$ChannelAdminLogEventAction.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(531458253);
        abstractSerializedData.writeInt64(this.f1639id);
        abstractSerializedData.writeInt32(this.date);
        abstractSerializedData.writeInt64(this.user_id);
        this.action.serializeToStream(abstractSerializedData);
    }
}
