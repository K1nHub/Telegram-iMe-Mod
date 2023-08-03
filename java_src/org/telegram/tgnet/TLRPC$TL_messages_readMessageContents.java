package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes4.dex */
public class TLRPC$TL_messages_readMessageContents extends TLObject {
    public static int constructor = 916930423;

    /* renamed from: id */
    public ArrayList<Integer> f1623id = new ArrayList<>();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_messages_affectedMessages.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1623id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            abstractSerializedData.writeInt32(this.f1623id.get(i).intValue());
        }
    }
}
