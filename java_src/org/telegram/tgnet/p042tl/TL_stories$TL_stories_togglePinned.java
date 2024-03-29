package org.telegram.tgnet.p042tl;

import java.util.ArrayList;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Vector;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_stories_togglePinned */
/* loaded from: classes5.dex */
public class TL_stories$TL_stories_togglePinned extends TLObject {

    /* renamed from: id */
    public ArrayList<Integer> f1781id = new ArrayList<>();
    public TLRPC$InputPeer peer;
    public boolean pinned;

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
        abstractSerializedData.writeInt32(-1703566865);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1781id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            abstractSerializedData.writeInt32(this.f1781id.get(i).intValue());
        }
        abstractSerializedData.writeBool(this.pinned);
    }
}
