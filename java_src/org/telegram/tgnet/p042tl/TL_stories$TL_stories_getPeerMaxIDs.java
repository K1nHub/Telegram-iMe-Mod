package org.telegram.tgnet.p042tl;

import java.util.ArrayList;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Vector;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_stories_getPeerMaxIDs */
/* loaded from: classes5.dex */
public class TL_stories$TL_stories_getPeerMaxIDs extends TLObject {

    /* renamed from: id */
    public ArrayList<TLRPC$InputPeer> f1775id = new ArrayList<>();

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
        abstractSerializedData.writeInt32(1398375363);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1775id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            this.f1775id.get(i).serializeToStream(abstractSerializedData);
        }
    }
}
