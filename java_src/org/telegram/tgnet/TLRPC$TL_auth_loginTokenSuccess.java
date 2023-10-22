package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_auth_loginTokenSuccess extends TLRPC$auth_LoginToken {
    public static int constructor = 957176926;
    public TLRPC$auth_Authorization authorization;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.authorization = TLRPC$auth_Authorization.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.authorization.serializeToStream(abstractSerializedData);
    }
}
