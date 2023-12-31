package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_account_saveRingtone extends TLObject {

    /* renamed from: id */
    public TLRPC$InputDocument f1637id;
    public boolean unsave;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$account_SavedRingtone.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1038768899);
        this.f1637id.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeBool(this.unsave);
    }
}
