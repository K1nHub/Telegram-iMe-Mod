package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class TLRPC$TL_stories_getStoriesByID extends TLObject {
    public static int constructor = 1467271796;

    /* renamed from: id */
    public ArrayList<Integer> f1743id = new ArrayList<>();
    public TLRPC$InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_stories_stories.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1743id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            abstractSerializedData.writeInt32(this.f1743id.get(i).intValue());
        }
    }
}
