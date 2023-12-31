package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_updateDialogUnreadMark extends TLRPC$Update {
    public int flags;
    public TLRPC$DialogPeer peer;
    public boolean unread;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        this.unread = (readInt32 & 1) != 0;
        this.peer = TLRPC$DialogPeer.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-513517117);
        int i = this.unread ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        abstractSerializedData.writeInt32(i);
        this.peer.serializeToStream(abstractSerializedData);
    }
}
