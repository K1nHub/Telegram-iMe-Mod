package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_auth_loginToken extends TLRPC$auth_LoginToken {
    public static int constructor = 1654593920;
    public int expires;
    public byte[] token;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.expires = abstractSerializedData.readInt32(z);
        this.token = abstractSerializedData.readByteArray(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.expires);
        abstractSerializedData.writeByteArray(this.token);
    }
}
