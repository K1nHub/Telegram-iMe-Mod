package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_photos_updateProfilePhoto extends TLObject {
    public static int constructor = 1926525996;

    /* renamed from: id */
    public TLRPC$InputPhoto f1625id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_photos_photo.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1625id.serializeToStream(abstractSerializedData);
    }
}
