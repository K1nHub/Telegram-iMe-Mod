package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_phone_getGroupCall extends TLObject {
    public TLRPC$TL_inputGroupCall call;
    public int limit;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_phone_groupCall.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(68699611);
        this.call.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.limit);
    }
}
