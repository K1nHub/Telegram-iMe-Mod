package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_textAnchor extends TLRPC$RichText {
    public String name;
    public TLRPC$RichText text;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.text = TLRPC$RichText.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.name = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(894777186);
        this.text.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeString(this.name);
    }
}
