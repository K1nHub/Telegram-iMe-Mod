package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_auth_loginTokenMigrateTo extends TLRPC$auth_LoginToken {
    public static int constructor = 110008598;
    public int dc_id;
    public byte[] token;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.dc_id = abstractSerializedData.readInt32(z);
        this.token = abstractSerializedData.readByteArray(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.dc_id);
        abstractSerializedData.writeByteArray(this.token);
    }
}
