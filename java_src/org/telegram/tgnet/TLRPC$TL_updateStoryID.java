package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_updateStoryID extends TLRPC$Update {

    /* renamed from: id */
    public int f1744id;
    public long random_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1744id = abstractSerializedData.readInt32(z);
        this.random_id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(468923833);
        abstractSerializedData.writeInt32(this.f1744id);
        abstractSerializedData.writeInt64(this.random_id);
    }
}
