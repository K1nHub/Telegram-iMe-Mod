package org.telegram.tgnet.p042tl;

import java.util.ArrayList;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_premium_applyBoost */
/* loaded from: classes5.dex */
public class TL_stories$TL_premium_applyBoost extends TLObject {
    public static int constructor = 1803396934;
    public int flags;
    public TLRPC$InputPeer peer;
    public ArrayList<Integer> slots = new ArrayList<>();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TL_stories$TL_premium_myBoosts.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            abstractSerializedData.writeInt32(481674261);
            int size = this.slots.size();
            abstractSerializedData.writeInt32(size);
            for (int i = 0; i < size; i++) {
                abstractSerializedData.writeInt32(this.slots.get(i).intValue());
            }
        }
        this.peer.serializeToStream(abstractSerializedData);
    }
}
