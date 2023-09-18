package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_updateStoryID extends TLRPC$Update {
    public static int constructor = 468923833;

    /* renamed from: id */
    public int f1678id;
    public long random_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1678id = abstractSerializedData.readInt32(z);
        this.random_id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.f1678id);
        abstractSerializedData.writeInt64(this.random_id);
    }
}
