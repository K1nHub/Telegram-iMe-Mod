package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_messageReplyStoryHeader extends TLRPC$MessageReplyHeader {
    public static int constructor = -1667711039;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.user_id = abstractSerializedData.readInt64(z);
        this.story_id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.user_id);
        abstractSerializedData.writeInt32(this.story_id);
    }
}
