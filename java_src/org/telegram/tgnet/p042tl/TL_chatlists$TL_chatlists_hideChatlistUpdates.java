package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Bool;
/* renamed from: org.telegram.tgnet.tl.TL_chatlists$TL_chatlists_hideChatlistUpdates */
/* loaded from: classes5.dex */
public class TL_chatlists$TL_chatlists_hideChatlistUpdates extends TLObject {
    public TL_chatlists$TL_inputChatlistDialogFilter chatlist;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1726252795);
        this.chatlist.serializeToStream(abstractSerializedData);
    }
}
