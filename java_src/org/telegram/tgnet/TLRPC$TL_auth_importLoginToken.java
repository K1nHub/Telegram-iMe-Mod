package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_auth_importLoginToken extends TLObject {
    public byte[] token;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$auth_LoginToken.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1783866140);
        abstractSerializedData.writeByteArray(this.token);
    }
}
