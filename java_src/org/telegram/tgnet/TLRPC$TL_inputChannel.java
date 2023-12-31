package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputChannel extends TLRPC$InputChannel {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.channel_id = abstractSerializedData.readInt64(z);
        this.access_hash = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-212145112);
        abstractSerializedData.writeInt64(this.channel_id);
        abstractSerializedData.writeInt64(this.access_hash);
    }
}
