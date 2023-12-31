package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
/* renamed from: org.telegram.tgnet.tl.TL_chatlists$TL_chatlists_checkChatlistInvite */
/* loaded from: classes5.dex */
public class TL_chatlists$TL_chatlists_checkChatlistInvite extends TLObject {
    public String slug;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TL_chatlists$chatlist_ChatlistInvite.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1103171583);
        abstractSerializedData.writeString(this.slug);
    }
}
