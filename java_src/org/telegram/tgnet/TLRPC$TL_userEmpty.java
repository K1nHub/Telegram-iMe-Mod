package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_userEmpty extends TLRPC$User {
    public static int constructor = -742634630;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1640id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1640id);
    }
}
