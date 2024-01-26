package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputCheckPasswordSRP extends TLRPC$InputCheckPasswordSRP {

    /* renamed from: A */
    public byte[] f1666A;

    /* renamed from: M1 */
    public byte[] f1667M1;
    public long srp_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.srp_id = abstractSerializedData.readInt64(z);
        this.f1666A = abstractSerializedData.readByteArray(z);
        this.f1667M1 = abstractSerializedData.readByteArray(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-763367294);
        abstractSerializedData.writeInt64(this.srp_id);
        abstractSerializedData.writeByteArray(this.f1666A);
        abstractSerializedData.writeByteArray(this.f1667M1);
    }
}
