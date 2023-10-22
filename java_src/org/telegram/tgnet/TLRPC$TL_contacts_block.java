package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_contacts_block extends TLObject {
    public static int constructor = 774801204;
    public int flags;

    /* renamed from: id */
    public TLRPC$InputPeer f1649id;
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
        this.f1649id.serializeToStream(abstractSerializedData);
    }
}
