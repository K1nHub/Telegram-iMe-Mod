package org.telegram.tgnet;
/* loaded from: classes5.dex */
public abstract class TLRPC$UserStatus extends TLObject {
    public int expires;

    public static TLRPC$UserStatus TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$UserStatus tLRPC$UserStatus;
        switch (i) {
            case -496024847:
                tLRPC$UserStatus = new TLRPC$UserStatus() { // from class: org.telegram.tgnet.TLRPC$TL_userStatusRecently
                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(-496024847);
                    }
                };
                break;
            case -306628279:
                tLRPC$UserStatus = new TLRPC$UserStatus() { // from class: org.telegram.tgnet.TLRPC$TL_userStatusOnline
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.expires = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(-306628279);
                        abstractSerializedData2.writeInt32(this.expires);
                    }
                };
                break;
            case 9203775:
                tLRPC$UserStatus = new TLRPC$UserStatus() { // from class: org.telegram.tgnet.TLRPC$TL_userStatusOffline
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.expires = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(9203775);
                        abstractSerializedData2.writeInt32(this.expires);
                    }
                };
                break;
            case 129960444:
                tLRPC$UserStatus = new TLRPC$UserStatus() { // from class: org.telegram.tgnet.TLRPC$TL_userStatusLastWeek
                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(129960444);
                    }
                };
                break;
            case 164646985:
                tLRPC$UserStatus = new TLRPC$UserStatus() { // from class: org.telegram.tgnet.TLRPC$TL_userStatusEmpty
                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(164646985);
                    }
                };
                break;
            case 2011940674:
                tLRPC$UserStatus = new TLRPC$UserStatus() { // from class: org.telegram.tgnet.TLRPC$TL_userStatusLastMonth
                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(2011940674);
                    }
                };
                break;
            default:
                tLRPC$UserStatus = null;
                break;
        }
        if (tLRPC$UserStatus == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in UserStatus", Integer.valueOf(i)));
        }
        if (tLRPC$UserStatus != null) {
            tLRPC$UserStatus.readParams(abstractSerializedData, z);
        }
        return tLRPC$UserStatus;
    }
}
