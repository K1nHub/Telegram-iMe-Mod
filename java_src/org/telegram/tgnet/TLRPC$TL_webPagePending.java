package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_webPagePending extends TLRPC$WebPage {
    public static int constructor = -981018084;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1649id = abstractSerializedData.readInt64(z);
        this.date = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1649id);
        abstractSerializedData.writeInt32(this.date);
    }
}
