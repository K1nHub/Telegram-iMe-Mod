package org.telegram.tgnet;

import java.util.ArrayList;
import org.telegram.messenger.LiteMode;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_sendMedia extends TLObject {
    public boolean background;
    public boolean clear_draft;
    public ArrayList<TLRPC$MessageEntity> entities = new ArrayList<>();
    public int flags;
    public boolean invert_media;
    public TLRPC$InputMedia media;
    public String message;
    public boolean noforwards;
    public TLRPC$InputPeer peer;
    public long random_id;
    public TLRPC$ReplyMarkup reply_markup;
    public TLRPC$InputReplyTo reply_to;
    public int schedule_date;
    public TLRPC$InputPeer send_as;
    public boolean silent;
    public boolean update_stickersets_order;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1926021693);
        int i = this.silent ? this.flags | 32 : this.flags & (-33);
        this.flags = i;
        int i2 = this.background ? i | 64 : i & (-65);
        this.flags = i2;
        int i3 = this.clear_draft ? i2 | 128 : i2 & (-129);
        this.flags = i3;
        int i4 = this.noforwards ? i3 | 16384 : i3 & (-16385);
        this.flags = i4;
        int i5 = this.update_stickersets_order ? i4 | LiteMode.FLAG_CHAT_SCALE : i4 & (-32769);
        this.flags = i5;
        int i6 = this.invert_media ? i5 | 65536 : i5 & (-65537);
        this.flags = i6;
        abstractSerializedData.writeInt32(i6);
        this.peer.serializeToStream(abstractSerializedData);
        if ((this.flags & 1) != 0) {
            this.reply_to.serializeToStream(abstractSerializedData);
        }
        this.media.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeString(this.message);
        abstractSerializedData.writeInt64(this.random_id);
        if ((this.flags & 4) != 0) {
            this.reply_markup.serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 8) != 0) {
            abstractSerializedData.writeInt32(481674261);
            int size = this.entities.size();
            abstractSerializedData.writeInt32(size);
            for (int i7 = 0; i7 < size; i7++) {
                this.entities.get(i7).serializeToStream(abstractSerializedData);
            }
        }
        if ((this.flags & 1024) != 0) {
            abstractSerializedData.writeInt32(this.schedule_date);
        }
        if ((this.flags & 8192) != 0) {
            this.send_as.serializeToStream(abstractSerializedData);
        }
    }
}
