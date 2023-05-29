package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_updateDialogFilter extends TLRPC$Update {
    public static int constructor = 654302845;
    public TLRPC$DialogFilter filter;
    public int flags;

    /* renamed from: id */
    public int f1568id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.flags = abstractSerializedData.readInt32(z);
        this.f1568id = abstractSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.filter = TLRPC$DialogFilter.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.flags);
        abstractSerializedData.writeInt32(this.f1568id);
        if ((this.flags & 1) != 0) {
            this.filter.serializeToStream(abstractSerializedData);
        }
    }
}