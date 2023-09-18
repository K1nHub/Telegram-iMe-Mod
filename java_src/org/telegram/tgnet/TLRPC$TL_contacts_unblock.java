package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_contacts_unblock extends TLObject {
    public static int constructor = -1252994264;
    public int flags;

    /* renamed from: id */
    public TLRPC$InputPeer f1576id;
    public boolean my_stories_from;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        int i = this.my_stories_from ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        abstractSerializedData.writeInt32(i);
        this.f1576id.serializeToStream(abstractSerializedData);
    }
}
