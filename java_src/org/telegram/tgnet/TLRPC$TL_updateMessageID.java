package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_updateMessageID extends TLRPC$Update {
    public static int constructor = 1318109142;

    /* renamed from: id */
    public int f1667id;
    public long random_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1667id = abstractSerializedData.readInt32(z);
        this.random_id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.f1667id);
        abstractSerializedData.writeInt64(this.random_id);
    }
}
