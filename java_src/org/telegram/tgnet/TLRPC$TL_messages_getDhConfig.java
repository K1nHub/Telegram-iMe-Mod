package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_getDhConfig extends TLObject {
    public int random_length;
    public int version;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$messages_DhConfig.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(651135312);
        abstractSerializedData.writeInt32(this.version);
        abstractSerializedData.writeInt32(this.random_length);
    }
}
