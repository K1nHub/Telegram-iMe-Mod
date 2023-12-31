package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_updateChannelAvailableMessages extends TLRPC$Update {
    public int available_min_id;
    public long channel_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.channel_id = abstractSerializedData.readInt64(z);
        this.available_min_id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1304443240);
        abstractSerializedData.writeInt64(this.channel_id);
        abstractSerializedData.writeInt32(this.available_min_id);
    }
}
