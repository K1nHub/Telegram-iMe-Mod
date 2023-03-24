package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_messages_updateDialogFilter extends TLObject {
    public static int constructor = 450142282;
    public TLRPC$TL_dialogFilter filter;
    public int flags;

    /* renamed from: id */
    public int f1611id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.flags);
        abstractSerializedData.writeInt32(this.f1611id);
        if ((this.flags & 1) != 0) {
            this.filter.serializeToStream(abstractSerializedData);
        }
    }
}
