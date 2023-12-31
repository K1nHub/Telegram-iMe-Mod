package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_updateNewEncryptedMessage extends TLRPC$Update {
    public TLRPC$EncryptedMessage message;
    public int qts;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.message = TLRPC$EncryptedMessage.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.qts = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(314359194);
        this.message.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.qts);
    }
}
