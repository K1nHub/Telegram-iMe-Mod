package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_messages_searchStickerSets extends TLObject {
    public static int constructor = 896555914;
    public boolean exclude_featured;
    public int flags;
    public long hash;

    /* renamed from: q */
    public String f1609q;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$messages_FoundStickerSets.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        int i = this.exclude_featured ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        abstractSerializedData.writeInt32(i);
        abstractSerializedData.writeString(this.f1609q);
        abstractSerializedData.writeInt64(this.hash);
    }
}
