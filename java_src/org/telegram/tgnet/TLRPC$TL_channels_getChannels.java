package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class TLRPC$TL_channels_getChannels extends TLObject {

    /* renamed from: id */
    public ArrayList<TLRPC$InputChannel> f1643id = new ArrayList<>();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$messages_Chats.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(176122811);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1643id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            this.f1643id.get(i).serializeToStream(abstractSerializedData);
        }
    }
}
