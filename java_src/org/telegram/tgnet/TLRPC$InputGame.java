package org.telegram.tgnet;
/* loaded from: classes5.dex */
public abstract class TLRPC$InputGame extends TLObject {
    public long access_hash;
    public TLRPC$InputUser bot_id;

    /* renamed from: id */
    public long f1622id;
    public String short_name;

    public static TLRPC$InputGame TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$InputGame tLRPC$TL_inputGameShortName;
        if (i == -1020139510) {
            tLRPC$TL_inputGameShortName = new TLRPC$TL_inputGameShortName();
        } else {
            tLRPC$TL_inputGameShortName = i != 53231223 ? null : new TLRPC$InputGame() { // from class: org.telegram.tgnet.TLRPC$TL_inputGameID
                @Override // org.telegram.tgnet.TLObject
                public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                    this.f1622id = abstractSerializedData2.readInt64(z2);
                    this.access_hash = abstractSerializedData2.readInt64(z2);
                }

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                    abstractSerializedData2.writeInt32(53231223);
                    abstractSerializedData2.writeInt64(this.f1622id);
                    abstractSerializedData2.writeInt64(this.access_hash);
                }
            };
        }
        if (tLRPC$TL_inputGameShortName == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in InputGame", Integer.valueOf(i)));
        }
        if (tLRPC$TL_inputGameShortName != null) {
            tLRPC$TL_inputGameShortName.readParams(abstractSerializedData, z);
        }
        return tLRPC$TL_inputGameShortName;
    }
}
