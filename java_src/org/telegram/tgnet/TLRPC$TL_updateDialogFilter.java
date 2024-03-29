package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_updateDialogFilter extends TLRPC$Update {
    public TLRPC$DialogFilter filter;
    public int flags;

    /* renamed from: id */
    public int f1742id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.flags = abstractSerializedData.readInt32(z);
        this.f1742id = abstractSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.filter = TLRPC$DialogFilter.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(654302845);
        abstractSerializedData.writeInt32(this.flags);
        abstractSerializedData.writeInt32(this.f1742id);
        if ((this.flags & 1) != 0) {
            this.filter.serializeToStream(abstractSerializedData);
        }
    }
}
