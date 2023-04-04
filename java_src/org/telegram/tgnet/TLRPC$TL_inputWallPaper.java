package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputWallPaper extends TLRPC$InputWallPaper {
    public static int constructor = -433014407;
    public long access_hash;

    /* renamed from: id */
    public long f1575id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1575id = abstractSerializedData.readInt64(z);
        this.access_hash = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1575id);
        abstractSerializedData.writeInt64(this.access_hash);
    }
}
