package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_privacyValueAllowCloseFriends extends TLRPC$PrivacyRule {
    public static int constructor = -135735141;

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
    }
}
