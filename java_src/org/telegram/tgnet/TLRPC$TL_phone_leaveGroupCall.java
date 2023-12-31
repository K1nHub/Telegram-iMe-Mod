package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_phone_leaveGroupCall extends TLObject {
    public TLRPC$TL_inputGroupCall call;
    public int source;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1342404601);
        this.call.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.source);
    }
}
