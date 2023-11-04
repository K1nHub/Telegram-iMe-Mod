package org.telegram.p043ui.Stories;

import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLRPC$TL_messageMediaStory;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
/* renamed from: org.telegram.ui.Stories.MessageMediaStoryFull */
/* loaded from: classes6.dex */
public class MessageMediaStoryFull extends TLRPC$TL_messageMediaStory {
    public static int constructor = -946147811;

    @Override // org.telegram.tgnet.TLRPC$TL_messageMediaStory, org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.user_id = abstractSerializedData.readInt64(z);
        this.f1627id = abstractSerializedData.readInt32(z);
        this.storyItem = TL_stories$StoryItem.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.via_mention = abstractSerializedData.readBool(z);
        this.peer = MessagesController.getInstance(UserConfig.selectedAccount).getPeer(this.user_id);
    }

    @Override // org.telegram.tgnet.TLRPC$TL_messageMediaStory, org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.user_id);
        abstractSerializedData.writeInt32(this.f1627id);
        this.storyItem.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeBool(this.via_mention);
    }
}
