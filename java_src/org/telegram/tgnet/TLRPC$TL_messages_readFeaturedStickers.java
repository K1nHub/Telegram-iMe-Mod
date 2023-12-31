package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_readFeaturedStickers extends TLObject {

    /* renamed from: id */
    public ArrayList<Long> f1705id = new ArrayList<>();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1527873830);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1705id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            abstractSerializedData.writeInt64(this.f1705id.get(i).longValue());
        }
    }
}
