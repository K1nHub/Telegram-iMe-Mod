package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messageReplyHeader extends TLRPC$MessageReplyHeader {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        this.reply_to_scheduled = (readInt32 & 4) != 0;
        this.forum_topic = (readInt32 & 8) != 0;
        this.quote = (readInt32 & 512) != 0;
        if ((readInt32 & 16) != 0) {
            this.reply_to_msg_id = abstractSerializedData.readInt32(z);
        }
        if ((this.flags & 1) != 0) {
            this.reply_to_peer_id = TLRPC$Peer.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 32) != 0) {
            this.reply_from = TLRPC$MessageFwdHeader.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 256) != 0) {
            this.reply_media = TLRPC$MessageMedia.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
        if ((this.flags & 2) != 0) {
            this.reply_to_top_id = abstractSerializedData.readInt32(z);
        }
        if ((this.flags & 64) != 0) {
            this.quote_text = abstractSerializedData.readString(z);
        }
        if ((this.flags & 128) != 0) {
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
                this.quote_entities.add(TLdeserialize);
            }
        }
        if ((this.flags & 1024) != 0) {
            this.quote_offset = abstractSerializedData.readInt32(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1346631205);
        int i = this.reply_to_scheduled ? this.flags | 4 : this.flags & (-5);
        this.flags = i;
        int i2 = this.forum_topic ? i | 8 : i & (-9);
        this.flags = i2;
        int i3 = this.quote ? i2 | 512 : i2 & (-513);
        this.flags = i3;
        abstractSerializedData.writeInt32(i3);
        if ((this.flags & 16) != 0) {
            abstractSerializedData.writeInt32(this.reply_to_msg_id);
        }
        if ((this.flags & 1) != 0) {
            this.reply_to_peer_id.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 32) != 0) {
            this.reply_from.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 256) != 0) {
            this.reply_media.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 2) != 0) {
            abstractSerializedData.writeInt32(this.reply_to_top_id);
        }
        if ((this.flags & 64) != 0) {
            abstractSerializedData.writeString(this.quote_text);
        }
        if ((this.flags & 128) != 0) {
            abstractSerializedData.writeInt32(481674261);
            int size = this.quote_entities.size();
            abstractSerializedData.writeInt32(size);
            for (int i4 = 0; i4 < size; i4++) {
                this.quote_entities.get(i4).serializeToStream(abstractSerializedData);
            }
        }
        if ((this.flags & 1024) != 0) {
            abstractSerializedData.writeInt32(this.quote_offset);
        }
    }
}
