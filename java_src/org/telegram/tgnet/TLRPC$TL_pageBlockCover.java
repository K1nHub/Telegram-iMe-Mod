package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_pageBlockCover extends TLRPC$PageBlock {
    public TLRPC$PageBlock cover;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.cover = TLRPC$PageBlock.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(972174080);
        this.cover.serializeToStream(abstractSerializedData);
    }
}
