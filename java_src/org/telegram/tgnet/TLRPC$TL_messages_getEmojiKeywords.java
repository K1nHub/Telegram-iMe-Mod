package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_getEmojiKeywords extends TLObject {
    public String lang_code;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_emojiKeywordsDifference.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(899735650);
        abstractSerializedData.writeString(this.lang_code);
    }
}
