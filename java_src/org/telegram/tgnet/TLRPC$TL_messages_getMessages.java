package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes6.dex */
public class TLRPC$TL_messages_getMessages extends TLObject {
    public static int constructor = 1109588596;

    /* renamed from: id */
    public ArrayList<Integer> f1624id = new ArrayList<>();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$messages_Messages.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1624id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            abstractSerializedData.writeInt32(this.f1624id.get(i).intValue());
        }
    }
}
