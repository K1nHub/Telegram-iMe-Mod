package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputCheckPasswordSRP extends TLRPC$InputCheckPasswordSRP {
    public static int constructor = -763367294;

    /* renamed from: A */
    public byte[] f1488A;

    /* renamed from: M1 */
    public byte[] f1489M1;
    public long srp_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.srp_id = abstractSerializedData.readInt64(z);
        this.f1488A = abstractSerializedData.readByteArray(z);
        this.f1489M1 = abstractSerializedData.readByteArray(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.srp_id);
        abstractSerializedData.writeByteArray(this.f1488A);
        abstractSerializedData.writeByteArray(this.f1489M1);
    }
}
