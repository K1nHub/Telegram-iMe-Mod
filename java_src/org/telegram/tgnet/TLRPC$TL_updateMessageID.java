package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_updateMessageID extends TLRPC$Update {

    /* renamed from: id */
    public int f1742id;
    public long random_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1742id = abstractSerializedData.readInt32(z);
        this.random_id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1318109142);
        abstractSerializedData.writeInt32(this.f1742id);
        abstractSerializedData.writeInt64(this.random_id);
    }
}
