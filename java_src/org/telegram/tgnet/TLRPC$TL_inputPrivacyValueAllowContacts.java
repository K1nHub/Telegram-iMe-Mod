package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputPrivacyValueAllowContacts extends TLRPC$InputPrivacyRule {
    public static int constructor = 218751099;

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
    }
}
