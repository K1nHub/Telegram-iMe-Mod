package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_userProfilePhotoEmpty extends TLRPC$UserProfilePhoto {
    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1326562017);
    }
}
