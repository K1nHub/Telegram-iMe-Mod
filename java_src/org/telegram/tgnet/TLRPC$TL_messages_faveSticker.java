package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_faveSticker extends TLObject {

    /* renamed from: id */
    public TLRPC$InputDocument f1691id;
    public boolean unfave;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1174420133);
        this.f1691id.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeBool(this.unfave);
    }
}
