package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputWallPaperNoFile extends TLRPC$InputWallPaper {

    /* renamed from: id */
    public long f1680id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1680id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1770371538);
        abstractSerializedData.writeInt64(this.f1680id);
    }
}
