package org.telegram.tgnet.p042tl;

import java.util.ArrayList;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Updates;
/* renamed from: org.telegram.tgnet.tl.TL_chatlists$TL_chatlists_joinChatlistUpdates */
/* loaded from: classes5.dex */
public class TL_chatlists$TL_chatlists_joinChatlistUpdates extends TLObject {
    public TL_chatlists$TL_inputChatlistDialogFilter chatlist;
    public ArrayList<TLRPC$InputPeer> peers = new ArrayList<>();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-527828747);
        this.chatlist.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(481674261);
        int size = this.peers.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            this.peers.get(i).serializeToStream(abstractSerializedData);
        }
    }
}
