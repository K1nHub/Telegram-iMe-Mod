package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_textImage extends TLRPC$RichText {
    public static int constructor = 136105807;
    public long document_id;

    /* renamed from: h */
    public int f1680h;

    /* renamed from: w */
    public int f1681w;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.document_id = abstractSerializedData.readInt64(z);
        this.f1681w = abstractSerializedData.readInt32(z);
        this.f1680h = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.document_id);
        abstractSerializedData.writeInt32(this.f1681w);
        abstractSerializedData.writeInt32(this.f1680h);
    }
}
