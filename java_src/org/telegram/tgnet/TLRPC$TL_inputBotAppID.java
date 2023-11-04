package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputBotAppID extends TLRPC$InputBotApp {
    public long access_hash;

    /* renamed from: id */
    public long f1664id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1664id = abstractSerializedData.readInt64(z);
        this.access_hash = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1457472134);
        abstractSerializedData.writeInt64(this.f1664id);
        abstractSerializedData.writeInt64(this.access_hash);
    }
}
