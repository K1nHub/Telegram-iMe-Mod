package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_phone_confirmCall extends TLObject {
    public byte[] g_a;
    public long key_fingerprint;
    public TLRPC$TL_inputPhoneCall peer;
    public TLRPC$TL_phoneCallProtocol protocol;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_phone_phoneCall.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(788404002);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeByteArray(this.g_a);
        abstractSerializedData.writeInt64(this.key_fingerprint);
        this.protocol.serializeToStream(abstractSerializedData);
    }
}
