package org.telegram.tgnet.p042tl;

import org.telegram.messenger.LiteMode;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$PrivacyRule;
import org.telegram.tgnet.TLRPC$Reaction;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_storyItem */
/* loaded from: classes5.dex */
public class TL_stories$TL_storyItem extends TL_stories$StoryItem {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        this.pinned = (readInt32 & 32) != 0;
        this.isPublic = (readInt32 & 128) != 0;
        this.close_friends = (readInt32 & 256) != 0;
        this.min = (readInt32 & 512) != 0;
        this.noforwards = (readInt32 & 1024) != 0;
        this.edited = (readInt32 & 2048) != 0;
        this.contacts = (readInt32 & 4096) != 0;
        this.selected_contacts = (readInt32 & 8192) != 0;
        this.out = (readInt32 & 65536) != 0;
        this.f1763id = abstractSerializedData.readInt32(z);
        this.date = abstractSerializedData.readInt32(z);
        if ((this.flags & 131072) != 0) {
            this.fwd_from = TL_stories$StoryFwdHeader.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        this.expire_date = abstractSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.caption = abstractSerializedData.readString(z);
        }
        if ((this.flags & 2) != 0) {
            int readInt322 = abstractSerializedData.readInt32(z);
            if (readInt322 != 481674261) {
                if (z) {
                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt322)));
                }
                return;
            }
            int readInt323 = abstractSerializedData.readInt32(z);
            for (int i = 0; i < readInt323; i++) {
                TLRPC$MessageEntity TLdeserialize = TLRPC$MessageEntity.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
                if (TLdeserialize == null) {
                    return;
                }
                this.entities.add(TLdeserialize);
            }
        }
        this.media = TLRPC$MessageMedia.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        if ((this.flags & 16384) != 0) {
            int readInt324 = abstractSerializedData.readInt32(z);
            if (readInt324 != 481674261) {
                if (z) {
                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt324)));
                }
                return;
            }
            int readInt325 = abstractSerializedData.readInt32(z);
            for (int i2 = 0; i2 < readInt325; i2++) {
                TL_stories$MediaArea TLdeserialize2 = TL_stories$MediaArea.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
                if (TLdeserialize2 == null) {
                    return;
                }
                this.media_areas.add(TLdeserialize2);
            }
        }
        if ((this.flags & 4) != 0) {
            int readInt326 = abstractSerializedData.readInt32(z);
            if (readInt326 != 481674261) {
                if (z) {
                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt326)));
                }
                return;
            }
            int readInt327 = abstractSerializedData.readInt32(z);
            for (int i3 = 0; i3 < readInt327; i3++) {
                TLRPC$PrivacyRule TLdeserialize3 = TLRPC$PrivacyRule.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
                if (TLdeserialize3 == null) {
                    return;
                }
                this.privacy.add(TLdeserialize3);
            }
        }
        if ((this.flags & 8) != 0) {
            this.views = TL_stories$StoryViews.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
            this.sent_reaction = TLRPC$Reaction.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1352440415);
        int i = this.pinned ? this.flags | 32 : this.flags & (-33);
        this.flags = i;
        int i2 = this.isPublic ? i | 128 : i & (-129);
        this.flags = i2;
        int i3 = this.close_friends ? i2 | 256 : i2 & (-257);
        this.flags = i3;
        int i4 = this.min ? i3 | 512 : i3 & (-513);
        this.flags = i4;
        int i5 = this.noforwards ? i4 | 1024 : i4 & (-1025);
        this.flags = i5;
        int i6 = this.edited ? i5 | 2048 : i5 & (-2049);
        this.flags = i6;
        int i7 = this.contacts ? i6 | 4096 : i6 & (-4097);
        this.flags = i7;
        int i8 = this.selected_contacts ? i7 | 8192 : i7 & (-8193);
        this.flags = i8;
        int i9 = this.out ? i8 | 65536 : i8 & (-65537);
        this.flags = i9;
        abstractSerializedData.writeInt32(i9);
        abstractSerializedData.writeInt32(this.f1763id);
        abstractSerializedData.writeInt32(this.date);
        if ((this.flags & 131072) != 0) {
            this.fwd_from.serializeToStream(abstractSerializedData);
        }
        abstractSerializedData.writeInt32(this.expire_date);
        if ((this.flags & 1) != 0) {
            abstractSerializedData.writeString(this.caption);
        }
        if ((this.flags & 2) != 0) {
            abstractSerializedData.writeInt32(481674261);
            int size = this.entities.size();
            abstractSerializedData.writeInt32(size);
            for (int i10 = 0; i10 < size; i10++) {
                this.entities.get(i10).serializeToStream(abstractSerializedData);
            }
        }
        this.media.serializeToStream(abstractSerializedData);
        if ((this.flags & 16384) != 0) {
            abstractSerializedData.writeInt32(481674261);
            int size2 = this.media_areas.size();
            abstractSerializedData.writeInt32(size2);
            for (int i11 = 0; i11 < size2; i11++) {
                this.media_areas.get(i11).serializeToStream(abstractSerializedData);
            }
        }
        if ((this.flags & 4) != 0) {
            abstractSerializedData.writeInt32(481674261);
            int size3 = this.privacy.size();
            abstractSerializedData.writeInt32(size3);
            for (int i12 = 0; i12 < size3; i12++) {
                this.privacy.get(i12).serializeToStream(abstractSerializedData);
            }
        }
        if ((this.flags & 8) != 0) {
            this.views.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
            this.sent_reaction.serializeToStream(abstractSerializedData);
        }
    }
}
