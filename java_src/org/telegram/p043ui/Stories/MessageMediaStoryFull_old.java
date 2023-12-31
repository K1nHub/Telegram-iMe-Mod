package org.telegram.p043ui.Stories;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLRPC$TL_messageMediaStory;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
/* renamed from: org.telegram.ui.Stories.MessageMediaStoryFull_old */
/* loaded from: classes6.dex */
public class MessageMediaStoryFull_old extends TLRPC$TL_messageMediaStory {
    public static int constructor = -946147809;

    @Override // org.telegram.tgnet.TLRPC$TL_messageMediaStory, org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.user_id = abstractSerializedData.readInt64(z);
        this.f1627id = abstractSerializedData.readInt32(z);
        this.storyItem = TL_stories$StoryItem.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLRPC$TL_messageMediaStory, org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.user_id);
        abstractSerializedData.writeInt32(this.f1627id);
        this.storyItem.serializeToStream(abstractSerializedData);
    }
}
