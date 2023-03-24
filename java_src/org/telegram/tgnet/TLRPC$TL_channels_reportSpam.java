package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes4.dex */
public class TLRPC$TL_channels_reportSpam extends TLObject {
    public static int constructor = -196443371;
    public TLRPC$InputChannel channel;

    /* renamed from: id */
    public ArrayList<Integer> f1544id = new ArrayList<>();
    public TLRPC$InputPeer participant;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.channel.serializeToStream(abstractSerializedData);
        this.participant.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(481674261);
        int size = this.f1544id.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            abstractSerializedData.writeInt32(this.f1544id.get(i).intValue());
        }
    }
}
