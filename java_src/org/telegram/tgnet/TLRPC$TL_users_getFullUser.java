package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_users_getFullUser extends TLObject {
    public static int constructor = -1240508136;

    /* renamed from: id */
    public TLRPC$InputUser f1635id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_users_userFull.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1635id.serializeToStream(abstractSerializedData);
    }
}
