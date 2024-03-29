package org.telegram.tgnet.p042tl;

import java.util.ArrayList;
import org.telegram.messenger.LiteMode;
import org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$PrivacyRule;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$TL_textWithEntities;
/* renamed from: org.telegram.tgnet.tl.TL_stories$StoryItem */
/* loaded from: classes5.dex */
public abstract class TL_stories$StoryItem extends TLObject {
    public String attachPath;
    public String caption;
    public boolean close_friends;
    public boolean contacts;
    public int date;
    public String detectedLng;
    public long dialogId;
    public boolean edited;
    public int expire_date;
    public int fileReference;
    public String firstFramePath;
    public int flags;
    public TL_stories$StoryFwdHeader fwd_from;

    /* renamed from: id */
    public int f1763id;
    public boolean isPublic;
    public boolean justUploaded;
    public long lastUpdateTime;
    public TLRPC$MessageMedia media;
    public int messageId;
    public int messageType;
    public boolean min;
    public boolean noforwards;
    public boolean out;
    public StoryPrivacyBottomSheet.StoryPrivacy parsedPrivacy;
    public boolean pinned;
    public boolean selected_contacts;
    public TLRPC$Reaction sent_reaction;
    public boolean translated;
    public String translatedLng;
    public TLRPC$TL_textWithEntities translatedText;
    public TL_stories$StoryViews views;
    public ArrayList<TLRPC$MessageEntity> entities = new ArrayList<>();
    public ArrayList<TL_stories$MediaArea> media_areas = new ArrayList<>();
    public ArrayList<TLRPC$PrivacyRule> privacy = new ArrayList<>();

    public static TL_stories$StoryItem TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TL_stories$StoryItem tL_stories$TL_storyItem;
        switch (i) {
            case -1352440415:
                tL_stories$TL_storyItem = new TL_stories$TL_storyItem();
                break;
            case -5388013:
                tL_stories$TL_storyItem = new TL_stories$StoryItem() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyItemSkipped
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        int readInt32 = abstractSerializedData2.readInt32(z2);
                        this.flags = readInt32;
                        this.close_friends = (readInt32 & 256) != 0;
                        this.f1763id = abstractSerializedData2.readInt32(z2);
                        this.date = abstractSerializedData2.readInt32(z2);
                        this.expire_date = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(-5388013);
                        int i2 = this.close_friends ? this.flags | 256 : this.flags & (-257);
                        this.flags = i2;
                        abstractSerializedData2.writeInt32(i2);
                        abstractSerializedData2.writeInt32(this.f1763id);
                        abstractSerializedData2.writeInt32(this.date);
                        abstractSerializedData2.writeInt32(this.expire_date);
                    }
                };
                break;
            case 1153718222:
                tL_stories$TL_storyItem = new TL_stories$TL_storyItem() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyItem_layer166
                    @Override // org.telegram.tgnet.p042tl.TL_stories$TL_storyItem, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        int readInt32 = abstractSerializedData2.readInt32(z2);
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
                        this.f1763id = abstractSerializedData2.readInt32(z2);
                        this.date = abstractSerializedData2.readInt32(z2);
                        this.expire_date = abstractSerializedData2.readInt32(z2);
                        if ((this.flags & 1) != 0) {
                            this.caption = abstractSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            int readInt322 = abstractSerializedData2.readInt32(z2);
                            if (readInt322 != 481674261) {
                                if (z2) {
                                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt322)));
                                }
                                return;
                            }
                            int readInt323 = abstractSerializedData2.readInt32(z2);
                            for (int i2 = 0; i2 < readInt323; i2++) {
                                TLRPC$MessageEntity TLdeserialize = TLRPC$MessageEntity.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                                if (TLdeserialize == null) {
                                    return;
                                }
                                this.entities.add(TLdeserialize);
                            }
                        }
                        this.media = TLRPC$MessageMedia.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 16384) != 0) {
                            int readInt324 = abstractSerializedData2.readInt32(z2);
                            if (readInt324 != 481674261) {
                                if (z2) {
                                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt324)));
                                }
                                return;
                            }
                            int readInt325 = abstractSerializedData2.readInt32(z2);
                            for (int i3 = 0; i3 < readInt325; i3++) {
                                TL_stories$MediaArea TLdeserialize2 = TL_stories$MediaArea.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                                if (TLdeserialize2 == null) {
                                    return;
                                }
                                this.media_areas.add(TLdeserialize2);
                            }
                        }
                        if ((this.flags & 4) != 0) {
                            int readInt326 = abstractSerializedData2.readInt32(z2);
                            if (readInt326 != 481674261) {
                                if (z2) {
                                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt326)));
                                }
                                return;
                            }
                            int readInt327 = abstractSerializedData2.readInt32(z2);
                            for (int i4 = 0; i4 < readInt327; i4++) {
                                TLRPC$PrivacyRule TLdeserialize3 = TLRPC$PrivacyRule.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                                if (TLdeserialize3 == null) {
                                    return;
                                }
                                this.privacy.add(TLdeserialize3);
                            }
                        }
                        if ((this.flags & 8) != 0) {
                            this.views = TL_stories$StoryViews.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
                            this.sent_reaction = TLRPC$Reaction.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.p042tl.TL_stories$TL_storyItem, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(1153718222);
                        int i2 = this.pinned ? this.flags | 32 : this.flags & (-33);
                        this.flags = i2;
                        int i3 = this.isPublic ? i2 | 128 : i2 & (-129);
                        this.flags = i3;
                        int i4 = this.close_friends ? i3 | 256 : i3 & (-257);
                        this.flags = i4;
                        int i5 = this.min ? i4 | 512 : i4 & (-513);
                        this.flags = i5;
                        int i6 = this.noforwards ? i5 | 1024 : i5 & (-1025);
                        this.flags = i6;
                        int i7 = this.edited ? i6 | 2048 : i6 & (-2049);
                        this.flags = i7;
                        int i8 = this.contacts ? i7 | 4096 : i7 & (-4097);
                        this.flags = i8;
                        int i9 = this.selected_contacts ? i8 | 8192 : i8 & (-8193);
                        this.flags = i9;
                        int i10 = this.out ? i9 | 65536 : i9 & (-65537);
                        this.flags = i10;
                        abstractSerializedData2.writeInt32(i10);
                        abstractSerializedData2.writeInt32(this.f1763id);
                        abstractSerializedData2.writeInt32(this.date);
                        abstractSerializedData2.writeInt32(this.expire_date);
                        if ((this.flags & 1) != 0) {
                            abstractSerializedData2.writeString(this.caption);
                        }
                        if ((this.flags & 2) != 0) {
                            abstractSerializedData2.writeInt32(481674261);
                            int size = this.entities.size();
                            abstractSerializedData2.writeInt32(size);
                            for (int i11 = 0; i11 < size; i11++) {
                                this.entities.get(i11).serializeToStream(abstractSerializedData2);
                            }
                        }
                        this.media.serializeToStream(abstractSerializedData2);
                        if ((this.flags & 16384) != 0) {
                            abstractSerializedData2.writeInt32(481674261);
                            int size2 = this.media_areas.size();
                            abstractSerializedData2.writeInt32(size2);
                            for (int i12 = 0; i12 < size2; i12++) {
                                this.media_areas.get(i12).serializeToStream(abstractSerializedData2);
                            }
                        }
                        if ((this.flags & 4) != 0) {
                            abstractSerializedData2.writeInt32(481674261);
                            int size3 = this.privacy.size();
                            abstractSerializedData2.writeInt32(size3);
                            for (int i13 = 0; i13 < size3; i13++) {
                                this.privacy.get(i13).serializeToStream(abstractSerializedData2);
                            }
                        }
                        if ((this.flags & 8) != 0) {
                            this.views.serializeToStream(abstractSerializedData2);
                        }
                        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
                            this.sent_reaction.serializeToStream(abstractSerializedData2);
                        }
                    }
                };
                break;
            case 1374088783:
                tL_stories$TL_storyItem = new TL_stories$TL_storyItemDeleted();
                break;
            case 1445635639:
                tL_stories$TL_storyItem = new TL_stories$TL_storyItem() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyItem_layer160
                    @Override // org.telegram.tgnet.p042tl.TL_stories$TL_storyItem, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        int readInt32 = abstractSerializedData2.readInt32(z2);
                        this.flags = readInt32;
                        this.pinned = (readInt32 & 32) != 0;
                        this.isPublic = (readInt32 & 128) != 0;
                        this.close_friends = (readInt32 & 256) != 0;
                        this.min = (readInt32 & 512) != 0;
                        this.noforwards = (readInt32 & 1024) != 0;
                        this.edited = (readInt32 & 2048) != 0;
                        this.contacts = (readInt32 & 4096) != 0;
                        this.selected_contacts = (readInt32 & 8192) != 0;
                        this.f1763id = abstractSerializedData2.readInt32(z2);
                        this.date = abstractSerializedData2.readInt32(z2);
                        this.expire_date = abstractSerializedData2.readInt32(z2);
                        if ((this.flags & 1) != 0) {
                            this.caption = abstractSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            int readInt322 = abstractSerializedData2.readInt32(z2);
                            if (readInt322 != 481674261) {
                                if (z2) {
                                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt322)));
                                }
                                return;
                            }
                            int readInt323 = abstractSerializedData2.readInt32(z2);
                            for (int i2 = 0; i2 < readInt323; i2++) {
                                TLRPC$MessageEntity TLdeserialize = TLRPC$MessageEntity.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                                if (TLdeserialize == null) {
                                    return;
                                }
                                this.entities.add(TLdeserialize);
                            }
                        }
                        this.media = TLRPC$MessageMedia.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 4) != 0) {
                            int readInt324 = abstractSerializedData2.readInt32(z2);
                            if (readInt324 != 481674261) {
                                if (z2) {
                                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt324)));
                                }
                                return;
                            }
                            int readInt325 = abstractSerializedData2.readInt32(z2);
                            for (int i3 = 0; i3 < readInt325; i3++) {
                                TLRPC$PrivacyRule TLdeserialize2 = TLRPC$PrivacyRule.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                                if (TLdeserialize2 == null) {
                                    return;
                                }
                                this.privacy.add(TLdeserialize2);
                            }
                        }
                        if ((this.flags & 8) != 0) {
                            this.views = TL_stories$StoryViews.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.p042tl.TL_stories$TL_storyItem, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(1445635639);
                        int i2 = this.pinned ? this.flags | 32 : this.flags & (-33);
                        this.flags = i2;
                        int i3 = this.isPublic ? i2 | 128 : i2 & (-129);
                        this.flags = i3;
                        int i4 = this.close_friends ? i3 | 256 : i3 & (-257);
                        this.flags = i4;
                        int i5 = this.min ? i4 | 512 : i4 & (-513);
                        this.flags = i5;
                        int i6 = this.noforwards ? i5 | 1024 : i5 & (-1025);
                        this.flags = i6;
                        int i7 = this.edited ? i6 | 2048 : i6 & (-2049);
                        this.flags = i7;
                        int i8 = this.contacts ? i7 | 4096 : i7 & (-4097);
                        this.flags = i8;
                        int i9 = this.selected_contacts ? i8 | 8192 : i8 & (-8193);
                        this.flags = i9;
                        abstractSerializedData2.writeInt32(i9);
                        abstractSerializedData2.writeInt32(this.f1763id);
                        abstractSerializedData2.writeInt32(this.date);
                        abstractSerializedData2.writeInt32(this.expire_date);
                        if ((this.flags & 1) != 0) {
                            abstractSerializedData2.writeString(this.caption);
                        }
                        if ((this.flags & 2) != 0) {
                            abstractSerializedData2.writeInt32(481674261);
                            int size = this.entities.size();
                            abstractSerializedData2.writeInt32(size);
                            for (int i10 = 0; i10 < size; i10++) {
                                this.entities.get(i10).serializeToStream(abstractSerializedData2);
                            }
                        }
                        this.media.serializeToStream(abstractSerializedData2);
                        if ((this.flags & 4) != 0) {
                            abstractSerializedData2.writeInt32(481674261);
                            int size2 = this.privacy.size();
                            abstractSerializedData2.writeInt32(size2);
                            for (int i11 = 0; i11 < size2; i11++) {
                                this.privacy.get(i11).serializeToStream(abstractSerializedData2);
                            }
                        }
                        if ((this.flags & 8) != 0) {
                            this.views.serializeToStream(abstractSerializedData2);
                        }
                    }
                };
                break;
            default:
                tL_stories$TL_storyItem = null;
                break;
        }
        if (tL_stories$TL_storyItem == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StoryItem", Integer.valueOf(i)));
        }
        if (tL_stories$TL_storyItem != null) {
            tL_stories$TL_storyItem.readParams(abstractSerializedData, z);
        }
        return tL_stories$TL_storyItem;
    }
}
