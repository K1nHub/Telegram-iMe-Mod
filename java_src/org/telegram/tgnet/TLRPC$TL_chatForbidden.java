package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_chatForbidden extends TLRPC$Chat {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1602id = abstractSerializedData.readInt64(z);
        this.title = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1704108455);
        abstractSerializedData.writeInt64(this.f1602id);
        abstractSerializedData.writeString(this.title);
    }
}
