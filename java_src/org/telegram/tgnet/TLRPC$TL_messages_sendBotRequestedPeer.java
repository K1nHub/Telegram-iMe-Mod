package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_sendBotRequestedPeer extends TLObject {
    public int button_id;
    public int msg_id;
    public TLRPC$InputPeer peer;
    public ArrayList<TLRPC$InputPeer> requested_peers = new ArrayList<>();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1850552224);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.msg_id);
        abstractSerializedData.writeInt32(this.button_id);
        abstractSerializedData.writeInt32(481674261);
        int size = this.requested_peers.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            this.requested_peers.get(i).serializeToStream(abstractSerializedData);
        }
    }
}
