package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_stats_loadAsyncGraph extends TLObject {
    public static int constructor = 1646092192;
    public int flags;
    public String token;

    /* renamed from: x */
    public long f1630x;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$StatsGraph.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.flags);
        abstractSerializedData.writeString(this.token);
        if ((this.flags & 1) != 0) {
            abstractSerializedData.writeInt64(this.f1630x);
        }
    }
}
