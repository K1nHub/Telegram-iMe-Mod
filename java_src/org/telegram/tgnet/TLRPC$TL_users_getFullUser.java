package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_users_getFullUser extends TLObject {

    /* renamed from: id */
    public TLRPC$InputUser f1745id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_users_userFull.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1240508136);
        this.f1745id.serializeToStream(abstractSerializedData);
    }
}
