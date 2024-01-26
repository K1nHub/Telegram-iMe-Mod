package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class TLRPC$TL_contacts_setBlocked extends TLObject {
    public int flags;

    /* renamed from: id */
    public ArrayList<TLRPC$InputPeer> f1653id = new ArrayList<>();
    public int limit;
    public boolean my_stories_from;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1798939530);
        int i = this.my_stories_from ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        abstractSerializedData.writeInt32(i);
        abstractSerializedData.writeInt32(481674261);
        abstractSerializedData.writeInt32(this.f1653id.size());
        for (int i2 = 0; i2 < this.f1653id.size(); i2++) {
            this.f1653id.get(i2).serializeToStream(abstractSerializedData);
        }
        abstractSerializedData.writeInt32(this.limit);
    }
}
