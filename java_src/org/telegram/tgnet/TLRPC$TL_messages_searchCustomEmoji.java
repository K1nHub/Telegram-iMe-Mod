package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_searchCustomEmoji extends TLObject {
    public String emoticon;
    public long hash;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$EmojiList.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(739360983);
        abstractSerializedData.writeString(this.emoticon);
        abstractSerializedData.writeInt64(this.hash);
    }
}
