package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_updateChannelMessageForwards extends TLRPC$Update {
    public long channel_id;
    public int forwards;

    /* renamed from: id */
    public int f1740id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.channel_id = abstractSerializedData.readInt64(z);
        this.f1740id = abstractSerializedData.readInt32(z);
        this.forwards = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-761649164);
        abstractSerializedData.writeInt64(this.channel_id);
        abstractSerializedData.writeInt32(this.f1740id);
        abstractSerializedData.writeInt32(this.forwards);
    }
}
