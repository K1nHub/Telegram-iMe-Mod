package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_textImage extends TLRPC$RichText {
    public long document_id;

    /* renamed from: h */
    public int f1737h;

    /* renamed from: w */
    public int f1738w;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.document_id = abstractSerializedData.readInt64(z);
        this.f1738w = abstractSerializedData.readInt32(z);
        this.f1737h = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(136105807);
        abstractSerializedData.writeInt64(this.document_id);
        abstractSerializedData.writeInt32(this.f1738w);
        abstractSerializedData.writeInt32(this.f1737h);
    }
}
