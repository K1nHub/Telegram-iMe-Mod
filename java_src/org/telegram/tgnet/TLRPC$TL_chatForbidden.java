package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_chatForbidden extends TLRPC$Chat {
    public static int constructor = 1704108455;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1515id = abstractSerializedData.readInt64(z);
        this.title = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1515id);
        abstractSerializedData.writeString(this.title);
    }
}
