package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_chatEmpty extends TLRPC$Chat {
    public static int constructor = 693512293;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1433id = abstractSerializedData.readInt64(z);
        this.title = "DELETED";
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1433id);
    }
}
