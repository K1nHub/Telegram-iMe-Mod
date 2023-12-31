package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_restrictionReason extends TLObject {
    public String platform;
    public String reason;
    public String text;

    public static TLRPC$TL_restrictionReason TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (-797791052 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_restrictionReason", Integer.valueOf(i)));
            }
            return null;
        }
        TLRPC$TL_restrictionReason tLRPC$TL_restrictionReason = new TLRPC$TL_restrictionReason();
        tLRPC$TL_restrictionReason.readParams(abstractSerializedData, z);
        return tLRPC$TL_restrictionReason;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.platform = abstractSerializedData.readString(z);
        this.reason = abstractSerializedData.readString(z);
        this.text = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-797791052);
        abstractSerializedData.writeString(this.platform);
        abstractSerializedData.writeString(this.reason);
        abstractSerializedData.writeString(this.text);
    }
}
