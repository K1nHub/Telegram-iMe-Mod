package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputBotAppID extends TLRPC$InputBotApp {
    public static int constructor = -1457472134;
    public long access_hash;

    /* renamed from: id */
    public long f1663id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1663id = abstractSerializedData.readInt64(z);
        this.access_hash = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1663id);
        abstractSerializedData.writeInt64(this.access_hash);
    }
}
