package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public abstract class TLRPC$MessageReplyHeader extends TLObject {
    public int flags;
    public boolean forum_topic;
    public boolean quote;
    public ArrayList<TLRPC$MessageEntity> quote_entities = new ArrayList<>();
    public int quote_offset;
    public String quote_text;
    public TLRPC$MessageFwdHeader reply_from;
    public TLRPC$MessageMedia reply_media;
    public int reply_to_msg_id;
    public TLRPC$Peer reply_to_peer_id;
    public long reply_to_random_id;
    public boolean reply_to_scheduled;
    public int reply_to_top_id;
    public int story_id;
    public long user_id;

    public static TLRPC$MessageReplyHeader TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$MessageReplyHeader tLRPC$TL_messageReplyStoryHeader;
        switch (i) {
            case -1667711039:
                tLRPC$TL_messageReplyStoryHeader = new TLRPC$TL_messageReplyStoryHeader();
                break;
            case -1495959709:
                tLRPC$TL_messageReplyStoryHeader = new TLRPC$TL_messageReplyHeader() { // from class: org.telegram.tgnet.TLRPC$TL_messageReplyHeader_layer165
                    @Override // org.telegram.tgnet.TLRPC$TL_messageReplyHeader, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        int readInt32 = abstractSerializedData2.readInt32(z2);
                        this.flags = readInt32;
                        this.reply_to_scheduled = (readInt32 & 4) != 0;
                        this.forum_topic = (readInt32 & 8) != 0;
                        this.reply_to_msg_id = abstractSerializedData2.readInt32(z2);
                        if ((this.flags & 1) != 0) {
                            this.reply_to_peer_id = TLRPC$Peer.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.reply_to_top_id = abstractSerializedData2.readInt32(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_messageReplyHeader, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(-1495959709);
                        int i2 = this.reply_to_scheduled ? this.flags | 4 : this.flags & (-5);
                        this.flags = i2;
                        int i3 = this.forum_topic ? i2 | 8 : i2 & (-9);
                        this.flags = i3;
                        abstractSerializedData2.writeInt32(i3);
                        abstractSerializedData2.writeInt32(this.reply_to_msg_id);
                        if ((this.flags & 1) != 0) {
                            this.reply_to_peer_id.serializeToStream(abstractSerializedData2);
                        }
                        if ((this.flags & 2) != 0) {
                            abstractSerializedData2.writeInt32(this.reply_to_top_id);
                        }
                    }
                };
                break;
            case -1346631205:
                tLRPC$TL_messageReplyStoryHeader = new TLRPC$TL_messageReplyHeader();
                break;
            case 1029445267:
                tLRPC$TL_messageReplyStoryHeader = new TLRPC$TL_messageReplyHeader() { // from class: org.telegram.tgnet.TLRPC$TL_messageReplyHeader_layer165_2
                    @Override // org.telegram.tgnet.TLRPC$TL_messageReplyHeader, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        int readInt32 = abstractSerializedData2.readInt32(z2);
                        this.flags = readInt32;
                        this.reply_to_scheduled = (readInt32 & 4) != 0;
                        this.forum_topic = (readInt32 & 8) != 0;
                        if ((readInt32 & 16) != 0) {
                            this.reply_to_msg_id = abstractSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 1) != 0) {
                            this.reply_to_peer_id = TLRPC$Peer.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.reply_from = TLRPC$MessageFwdHeader.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.reply_to_top_id = abstractSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 64) != 0) {
                            this.quote_text = abstractSerializedData2.readString(z2);
                        }
                        if ((this.flags & 128) != 0) {
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
                                this.quote_entities.add(TLdeserialize);
                            }
                        }
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_messageReplyHeader, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(1029445267);
                        int i2 = this.reply_to_scheduled ? this.flags | 4 : this.flags & (-5);
                        this.flags = i2;
                        int i3 = this.forum_topic ? i2 | 8 : i2 & (-9);
                        this.flags = i3;
                        abstractSerializedData2.writeInt32(i3);
                        if ((this.flags & 16) != 0) {
                            abstractSerializedData2.writeInt32(this.reply_to_msg_id);
                        }
                        if ((this.flags & 1) != 0) {
                            this.reply_to_peer_id.serializeToStream(abstractSerializedData2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.reply_from.serializeToStream(abstractSerializedData2);
                        }
                        if ((this.flags & 2) != 0) {
                            abstractSerializedData2.writeInt32(this.reply_to_top_id);
                        }
                        if ((this.flags & 64) != 0) {
                            abstractSerializedData2.writeString(this.quote_text);
                        }
                        if ((this.flags & 128) != 0) {
                            abstractSerializedData2.writeInt32(481674261);
                            int size = this.quote_entities.size();
                            abstractSerializedData2.writeInt32(size);
                            for (int i4 = 0; i4 < size; i4++) {
                                this.quote_entities.get(i4).serializeToStream(abstractSerializedData2);
                            }
                        }
                    }
                };
                break;
            case 1860946621:
                tLRPC$TL_messageReplyStoryHeader = new TLRPC$TL_messageReplyHeader() { // from class: org.telegram.tgnet.TLRPC$TL_messageReplyHeader_layer166
                    @Override // org.telegram.tgnet.TLRPC$TL_messageReplyHeader, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        int readInt32 = abstractSerializedData2.readInt32(z2);
                        this.flags = readInt32;
                        this.reply_to_scheduled = (readInt32 & 4) != 0;
                        this.forum_topic = (readInt32 & 8) != 0;
                        this.quote = (readInt32 & 512) != 0;
                        if ((readInt32 & 16) != 0) {
                            this.reply_to_msg_id = abstractSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 1) != 0) {
                            this.reply_to_peer_id = TLRPC$Peer.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.reply_from = TLRPC$MessageFwdHeader.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.reply_media = TLRPC$MessageMedia.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.reply_to_top_id = abstractSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 64) != 0) {
                            this.quote_text = abstractSerializedData2.readString(z2);
                        }
                        if ((this.flags & 128) != 0) {
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
                                this.quote_entities.add(TLdeserialize);
                            }
                        }
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_messageReplyHeader, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(1860946621);
                        int i2 = this.reply_to_scheduled ? this.flags | 4 : this.flags & (-5);
                        this.flags = i2;
                        int i3 = this.forum_topic ? i2 | 8 : i2 & (-9);
                        this.flags = i3;
                        int i4 = this.quote ? i3 | 512 : i3 & (-513);
                        this.flags = i4;
                        abstractSerializedData2.writeInt32(i4);
                        if ((this.flags & 16) != 0) {
                            abstractSerializedData2.writeInt32(this.reply_to_msg_id);
                        }
                        if ((this.flags & 1) != 0) {
                            this.reply_to_peer_id.serializeToStream(abstractSerializedData2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.reply_from.serializeToStream(abstractSerializedData2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.reply_media.serializeToStream(abstractSerializedData2);
                        }
                        if ((this.flags & 2) != 0) {
                            abstractSerializedData2.writeInt32(this.reply_to_top_id);
                        }
                        if ((this.flags & 64) != 0) {
                            abstractSerializedData2.writeString(this.quote_text);
                        }
                        if ((this.flags & 128) != 0) {
                            abstractSerializedData2.writeInt32(481674261);
                            int size = this.quote_entities.size();
                            abstractSerializedData2.writeInt32(size);
                            for (int i5 = 0; i5 < size; i5++) {
                                this.quote_entities.get(i5).serializeToStream(abstractSerializedData2);
                            }
                        }
                    }
                };
                break;
            default:
                tLRPC$TL_messageReplyStoryHeader = null;
                break;
        }
        if (tLRPC$TL_messageReplyStoryHeader == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in MessageReplyHeader", Integer.valueOf(i)));
        }
        if (tLRPC$TL_messageReplyStoryHeader != null) {
            tLRPC$TL_messageReplyStoryHeader.readParams(abstractSerializedData, z);
        }
        return tLRPC$TL_messageReplyStoryHeader;
    }
}
