package org.telegram.tgnet;

import com.google.android.exoplayer2.C0483C;
import org.telegram.messenger.LiteMode;
import org.telegram.tgnet.p042tl.TL_stories$PeerStories;
/* loaded from: classes5.dex */
public class TLRPC$TL_userFull extends TLRPC$UserFull {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        this.blocked = (readInt32 & 1) != 0;
        this.phone_calls_available = (readInt32 & 16) != 0;
        this.phone_calls_private = (readInt32 & 32) != 0;
        this.can_pin_message = (readInt32 & 128) != 0;
        this.has_scheduled = (readInt32 & 4096) != 0;
        this.video_calls_available = (readInt32 & 8192) != 0;
        this.voice_messages_forbidden = (1048576 & readInt32) != 0;
        this.translations_disabled = (8388608 & readInt32) != 0;
        this.stories_pinned_available = (67108864 & readInt32) != 0;
        this.blocked_my_stories_from = (134217728 & readInt32) != 0;
        this.wallpaper_overridden = (268435456 & readInt32) != 0;
        this.contact_require_premium = (536870912 & readInt32) != 0;
        this.read_dates_private = (readInt32 & 1073741824) != 0;
        this.f1752id = abstractSerializedData.readInt64(z);
        if ((this.flags & 2) != 0) {
            this.about = abstractSerializedData.readString(z);
        }
        this.settings = TLRPC$TL_peerSettings.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        if ((this.flags & 2097152) != 0) {
            this.personal_photo = TLRPC$Photo.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 4) != 0) {
            this.profile_photo = TLRPC$Photo.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 4194304) != 0) {
            this.fallback_photo = TLRPC$Photo.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        this.notify_settings = TLRPC$PeerNotifySettings.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        if ((this.flags & 8) != 0) {
            this.bot_info = TLRPC$BotInfo.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 64) != 0) {
            this.pinned_msg_id = abstractSerializedData.readInt32(z);
        }
        this.common_chats_count = abstractSerializedData.readInt32(z);
        if ((this.flags & 2048) != 0) {
            this.folder_id = abstractSerializedData.readInt32(z);
        }
        if ((this.flags & 16384) != 0) {
            this.ttl_period = abstractSerializedData.readInt32(z);
        }
        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
            this.theme_emoticon = abstractSerializedData.readString(z);
        }
        if ((this.flags & 65536) != 0) {
            this.private_forward_name = abstractSerializedData.readString(z);
        }
        if ((this.flags & 131072) != 0) {
            this.bot_group_admin_rights = TLRPC$TL_chatAdminRights.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 262144) != 0) {
            this.bot_broadcast_admin_rights = TLRPC$TL_chatAdminRights.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 524288) != 0) {
            int readInt322 = abstractSerializedData.readInt32(z);
            if (readInt322 != 481674261) {
                if (z) {
                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt322)));
                }
                return;
            }
            int readInt323 = abstractSerializedData.readInt32(z);
            for (int i = 0; i < readInt323; i++) {
                TLRPC$TL_premiumGiftOption TLdeserialize = TLRPC$TL_premiumGiftOption.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
                if (TLdeserialize == null) {
                    return;
                }
                this.premium_gifts.add(TLdeserialize);
            }
        }
        if ((this.flags & ConnectionsManager.FileTypePhoto) != 0) {
            this.wallpaper = TLRPC$WallPaper.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & ConnectionsManager.FileTypeVideo) != 0) {
            this.stories = TL_stories$PeerStories.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1179571092);
        int i = this.blocked ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.phone_calls_available ? i | 16 : i & (-17);
        this.flags = i2;
        int i3 = this.phone_calls_private ? i2 | 32 : i2 & (-33);
        this.flags = i3;
        int i4 = this.can_pin_message ? i3 | 128 : i3 & (-129);
        this.flags = i4;
        int i5 = this.has_scheduled ? i4 | 4096 : i4 & (-4097);
        this.flags = i5;
        int i6 = this.video_calls_available ? i5 | 8192 : i5 & (-8193);
        this.flags = i6;
        int i7 = this.voice_messages_forbidden ? i6 | 1048576 : i6 & (-1048577);
        this.flags = i7;
        int i8 = this.translations_disabled ? i7 | 8388608 : i7 & (-8388609);
        this.flags = i8;
        int i9 = this.stories_pinned_available ? i8 | ConnectionsManager.FileTypeFile : i8 & (-67108865);
        this.flags = i9;
        int i10 = this.blocked_my_stories_from ? i9 | C0483C.BUFFER_FLAG_FIRST_SAMPLE : i9 & (-134217729);
        this.flags = i10;
        int i11 = this.wallpaper_overridden ? i10 | 268435456 : i10 & (-268435457);
        this.flags = i11;
        int i12 = this.contact_require_premium ? i11 | 536870912 : i11 & (-536870913);
        this.flags = i12;
        int i13 = this.read_dates_private ? i12 | 1073741824 : i12 & (-1073741825);
        this.flags = i13;
        abstractSerializedData.writeInt32(i13);
        abstractSerializedData.writeInt64(this.f1752id);
        if ((this.flags & 2) != 0) {
            abstractSerializedData.writeString(this.about);
        }
        this.settings.serializeToStream(abstractSerializedData);
        if ((this.flags & 2097152) != 0) {
            this.personal_photo.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 4) != 0) {
            this.profile_photo.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 4194304) != 0) {
            this.fallback_photo.serializeToStream(abstractSerializedData);
        }
        this.notify_settings.serializeToStream(abstractSerializedData);
        if ((this.flags & 8) != 0) {
            this.bot_info.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 64) != 0) {
            abstractSerializedData.writeInt32(this.pinned_msg_id);
        }
        abstractSerializedData.writeInt32(this.common_chats_count);
        if ((this.flags & 2048) != 0) {
            abstractSerializedData.writeInt32(this.folder_id);
        }
        if ((this.flags & 16384) != 0) {
            abstractSerializedData.writeInt32(this.ttl_period);
        }
        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
            abstractSerializedData.writeString(this.theme_emoticon);
        }
        if ((this.flags & 65536) != 0) {
            abstractSerializedData.writeString(this.private_forward_name);
        }
        if ((this.flags & 131072) != 0) {
            this.bot_group_admin_rights.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 262144) != 0) {
            this.bot_broadcast_admin_rights.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 524288) != 0) {
            abstractSerializedData.writeInt32(481674261);
            int size = this.premium_gifts.size();
            abstractSerializedData.writeInt32(size);
            for (int i14 = 0; i14 < size; i14++) {
                this.premium_gifts.get(i14).serializeToStream(abstractSerializedData);
            }
        }
        if ((this.flags & ConnectionsManager.FileTypePhoto) != 0) {
            this.wallpaper.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & ConnectionsManager.FileTypeVideo) != 0) {
            this.stories.serializeToStream(abstractSerializedData);
        }
    }
}
