package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_votesList extends TLObject {
    public int count;
    public int flags;
    public String next_offset;
    public ArrayList<TLRPC$MessagePeerVote> votes = new ArrayList<>();
    public ArrayList<TLRPC$Chat> chats = new ArrayList<>();
    public ArrayList<TLRPC$User> users = new ArrayList<>();

    public static TLRPC$TL_messages_votesList TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (1218005070 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_messages_votesList", Integer.valueOf(i)));
            }
            return null;
        }
        TLRPC$TL_messages_votesList tLRPC$TL_messages_votesList = new TLRPC$TL_messages_votesList();
        tLRPC$TL_messages_votesList.readParams(abstractSerializedData, z);
        return tLRPC$TL_messages_votesList;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.flags = abstractSerializedData.readInt32(z);
        this.count = abstractSerializedData.readInt32(z);
        int readInt32 = abstractSerializedData.readInt32(z);
        if (readInt32 != 481674261) {
            if (z) {
                throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt32)));
            }
            return;
        }
        int readInt322 = abstractSerializedData.readInt32(z);
        for (int i = 0; i < readInt322; i++) {
            TLRPC$MessagePeerVote TLdeserialize = TLRPC$MessagePeerVote.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
            if (TLdeserialize == null) {
                return;
            }
            this.votes.add(TLdeserialize);
        }
        int readInt323 = abstractSerializedData.readInt32(z);
        if (readInt323 != 481674261) {
            if (z) {
                throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt323)));
            }
            return;
        }
        int readInt324 = abstractSerializedData.readInt32(z);
        for (int i2 = 0; i2 < readInt324; i2++) {
            TLRPC$Chat TLdeserialize2 = TLRPC$Chat.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
            if (TLdeserialize2 == null) {
                return;
            }
            this.chats.add(TLdeserialize2);
        }
        int readInt325 = abstractSerializedData.readInt32(z);
        if (readInt325 != 481674261) {
            if (z) {
                throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt325)));
            }
            return;
        }
        int readInt326 = abstractSerializedData.readInt32(z);
        for (int i3 = 0; i3 < readInt326; i3++) {
            TLRPC$User TLdeserialize3 = TLRPC$User.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
            if (TLdeserialize3 == null) {
                return;
            }
            this.users.add(TLdeserialize3);
        }
        if ((this.flags & 1) != 0) {
            this.next_offset = abstractSerializedData.readString(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1218005070);
        abstractSerializedData.writeInt32(this.flags);
        abstractSerializedData.writeInt32(this.count);
        abstractSerializedData.writeInt32(481674261);
        int size = this.votes.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            this.votes.get(i).serializeToStream(abstractSerializedData);
        }
        abstractSerializedData.writeInt32(481674261);
        int size2 = this.chats.size();
        abstractSerializedData.writeInt32(size2);
        for (int i2 = 0; i2 < size2; i2++) {
            this.chats.get(i2).serializeToStream(abstractSerializedData);
        }
        abstractSerializedData.writeInt32(481674261);
        int size3 = this.users.size();
        abstractSerializedData.writeInt32(size3);
        for (int i3 = 0; i3 < size3; i3++) {
            this.users.get(i3).serializeToStream(abstractSerializedData);
        }
        if ((this.flags & 1) != 0) {
            abstractSerializedData.writeString(this.next_offset);
        }
    }
}
