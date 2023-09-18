package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes6.dex */
public class TLRPC$TL_users_getStoriesMaxIDs extends TLObject {
    public static int constructor = -904087125;

    /* renamed from: id */
    public ArrayList<TLRPC$InputUser> f1680id = new ArrayList<>();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$Vector tLRPC$Vector = new TLRPC$Vector();
        int readInt32 = abstractSerializedData.readInt32(z);
        for (int i2 = 0; i2 < readInt32; i2++) {
            tLRPC$Vector.objects.add(Integer.valueOf(abstractSerializedData.readInt32(z)));
        }
        return tLRPC$Vector;
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1680id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            this.f1680id.get(i).serializeToStream(abstractSerializedData);
        }
    }
}
