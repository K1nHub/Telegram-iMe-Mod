package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_textFixed extends TLRPC$RichText {
    public TLRPC$RichText text;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.text = TLRPC$RichText.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1816074681);
        this.text.serializeToStream(abstractSerializedData);
    }
}
