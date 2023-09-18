package org.telegram.tgnet;
/* loaded from: classes6.dex */
public abstract class TLRPC$auth_LoginToken extends TLObject {
    public static TLRPC$auth_LoginToken TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$auth_LoginToken tLRPC$TL_auth_loginTokenMigrateTo;
        if (i == 110008598) {
            tLRPC$TL_auth_loginTokenMigrateTo = new TLRPC$TL_auth_loginTokenMigrateTo();
        } else if (i != 957176926) {
            tLRPC$TL_auth_loginTokenMigrateTo = i != 1654593920 ? null : new TLRPC$TL_auth_loginToken();
        } else {
            tLRPC$TL_auth_loginTokenMigrateTo = new TLRPC$TL_auth_loginTokenSuccess();
        }
        if (tLRPC$TL_auth_loginTokenMigrateTo == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in auth_LoginToken", Integer.valueOf(i)));
        }
        if (tLRPC$TL_auth_loginTokenMigrateTo != null) {
            tLRPC$TL_auth_loginTokenMigrateTo.readParams(abstractSerializedData, z);
        }
        return tLRPC$TL_auth_loginTokenMigrateTo;
    }
}
