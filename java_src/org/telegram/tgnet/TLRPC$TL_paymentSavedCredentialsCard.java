package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_paymentSavedCredentialsCard extends TLObject {
    public static int constructor = -842892769;

    /* renamed from: id */
    public String f1615id;
    public String title;

    public static TLRPC$TL_paymentSavedCredentialsCard TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (constructor != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_paymentSavedCredentialsCard", Integer.valueOf(i)));
            }
            return null;
        }
        TLRPC$TL_paymentSavedCredentialsCard tLRPC$TL_paymentSavedCredentialsCard = new TLRPC$TL_paymentSavedCredentialsCard();
        tLRPC$TL_paymentSavedCredentialsCard.readParams(abstractSerializedData, z);
        return tLRPC$TL_paymentSavedCredentialsCard;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1615id = abstractSerializedData.readString(z);
        this.title = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeString(this.f1615id);
        abstractSerializedData.writeString(this.title);
    }
}
