package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_pageBlockAuthorDate extends TLRPC$PageBlock {
    public TLRPC$RichText author;
    public int published_date;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.author = TLRPC$RichText.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.published_date = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1162877472);
        this.author.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.published_date);
    }
}
