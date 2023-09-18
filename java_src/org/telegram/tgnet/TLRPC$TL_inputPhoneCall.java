package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_inputPhoneCall extends TLObject {
    public static int constructor = 506920429;
    public long access_hash;

    /* renamed from: id */
    public long f1595id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1595id = abstractSerializedData.readInt64(z);
        this.access_hash = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1595id);
        abstractSerializedData.writeInt64(this.access_hash);
    }
}
