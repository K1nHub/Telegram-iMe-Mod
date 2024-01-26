package org.telegram.tgnet.p042tl;

import java.util.ArrayList;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Bool;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$ReportReason;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_stories_report */
/* loaded from: classes5.dex */
public class TL_stories$TL_stories_report extends TLObject {

    /* renamed from: id */
    public ArrayList<Integer> f1780id = new ArrayList<>();
    public String message;
    public TLRPC$InputPeer peer;
    public TLRPC$ReportReason reason;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(421788300);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1780id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            abstractSerializedData.writeInt32(this.f1780id.get(i).intValue());
        }
        this.reason.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeString(this.message);
    }
}
