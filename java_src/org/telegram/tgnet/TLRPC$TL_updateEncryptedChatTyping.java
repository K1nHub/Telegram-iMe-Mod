package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_updateEncryptedChatTyping extends TLRPC$Update {
    public int chat_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.chat_id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(386986326);
        abstractSerializedData.writeInt32(this.chat_id);
    }
}
