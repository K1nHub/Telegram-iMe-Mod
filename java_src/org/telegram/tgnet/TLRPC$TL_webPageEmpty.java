package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_webPageEmpty extends TLRPC$WebPage {
    public static int constructor = -350980120;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1583id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1583id);
    }
}
