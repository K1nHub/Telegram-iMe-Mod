package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_updateChannelMessageViews extends TLRPC$Update {
    public long channel_id;

    /* renamed from: id */
    public int f1741id;
    public int views;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.channel_id = abstractSerializedData.readInt64(z);
        this.f1741id = abstractSerializedData.readInt32(z);
        this.views = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-232346616);
        abstractSerializedData.writeInt64(this.channel_id);
        abstractSerializedData.writeInt32(this.f1741id);
        abstractSerializedData.writeInt32(this.views);
    }
}
