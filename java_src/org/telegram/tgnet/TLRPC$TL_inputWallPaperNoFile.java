package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputWallPaperNoFile extends TLRPC$InputWallPaper {
    public static int constructor = -1770371538;

    /* renamed from: id */
    public long f1574id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1574id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1574id);
    }
}
