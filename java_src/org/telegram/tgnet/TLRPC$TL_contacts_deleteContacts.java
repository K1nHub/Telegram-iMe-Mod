package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class TLRPC$TL_contacts_deleteContacts extends TLObject {

    /* renamed from: id */
    public ArrayList<TLRPC$InputUser> f1651id = new ArrayList<>();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(157945344);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1651id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            this.f1651id.get(i).serializeToStream(abstractSerializedData);
        }
    }
}
