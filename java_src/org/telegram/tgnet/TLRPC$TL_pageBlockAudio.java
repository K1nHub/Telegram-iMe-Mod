package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_pageBlockAudio extends TLRPC$PageBlock {
    public long audio_id;
    public TLRPC$TL_pageCaption caption;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.audio_id = abstractSerializedData.readInt64(z);
        this.caption = TLRPC$TL_pageCaption.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-2143067670);
        abstractSerializedData.writeInt64(this.audio_id);
        this.caption.serializeToStream(abstractSerializedData);
    }
}
