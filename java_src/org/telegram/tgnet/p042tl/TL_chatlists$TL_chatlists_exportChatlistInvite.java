package org.telegram.tgnet.p042tl;

import java.util.ArrayList;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
/* renamed from: org.telegram.tgnet.tl.TL_chatlists$TL_chatlists_exportChatlistInvite */
/* loaded from: classes5.dex */
public class TL_chatlists$TL_chatlists_exportChatlistInvite extends TLObject {
    public TL_chatlists$TL_inputChatlistDialogFilter chatlist;
    public ArrayList<TLRPC$InputPeer> peers = new ArrayList<>();
    public String title;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TL_chatlists$TL_chatlists_exportedChatlistInvite.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-2072885362);
        this.chatlist.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeString(this.title);
        abstractSerializedData.writeInt32(481674261);
        int size = this.peers.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            this.peers.get(i).serializeToStream(abstractSerializedData);
        }
    }
}
