package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_messages_faveSticker extends TLObject {
    public static int constructor = -1174420133;

    /* renamed from: id */
    public TLRPC$InputDocument f1585id;
    public boolean unfave;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1585id.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeBool(this.unfave);
    }
}
