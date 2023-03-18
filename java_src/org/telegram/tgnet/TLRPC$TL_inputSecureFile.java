package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputSecureFile extends TLRPC$InputSecureFile {
    public static int constructor = 1399317950;
    public long access_hash;

    /* renamed from: id */
    public long f1567id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1567id = abstractSerializedData.readInt64(z);
        this.access_hash = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1567id);
        abstractSerializedData.writeInt64(this.access_hash);
    }
}
