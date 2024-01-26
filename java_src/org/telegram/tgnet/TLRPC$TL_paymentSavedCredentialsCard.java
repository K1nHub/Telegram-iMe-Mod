package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_paymentSavedCredentialsCard extends TLObject {

    /* renamed from: id */
    public String f1729id;
    public String title;

    public static TLRPC$TL_paymentSavedCredentialsCard TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (-842892769 != i) {
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
        this.f1729id = abstractSerializedData.readString(z);
        this.title = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-842892769);
        abstractSerializedData.writeString(this.f1729id);
        abstractSerializedData.writeString(this.title);
    }
}
