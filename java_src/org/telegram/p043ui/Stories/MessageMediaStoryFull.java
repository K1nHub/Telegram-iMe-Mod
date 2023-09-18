package org.telegram.p043ui.Stories;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLRPC$StoryItem;
import org.telegram.tgnet.TLRPC$TL_messageMediaStory;
/* renamed from: org.telegram.ui.Stories.MessageMediaStoryFull */
/* loaded from: classes7.dex */
public class MessageMediaStoryFull extends TLRPC$TL_messageMediaStory {
    public static int constructor = -946147811;

    @Override // org.telegram.tgnet.TLRPC$TL_messageMediaStory, org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.user_id = abstractSerializedData.readInt64(z);
        this.f1547id = abstractSerializedData.readInt32(z);
        this.storyItem = TLRPC$StoryItem.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.via_mention = abstractSerializedData.readBool(z);
    }

    @Override // org.telegram.tgnet.TLRPC$TL_messageMediaStory, org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.user_id);
        abstractSerializedData.writeInt32(this.f1547id);
        this.storyItem.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeBool(this.via_mention);
    }
}
