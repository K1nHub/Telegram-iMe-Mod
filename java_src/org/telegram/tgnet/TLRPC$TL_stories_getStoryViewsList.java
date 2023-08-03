package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_stories_getStoryViewsList extends TLObject {
    public static int constructor = 1262182039;

    /* renamed from: id */
    public int f1658id;
    public int limit;
    public int offset_date;
    public long offset_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_stories_storyViewsList.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.f1658id);
        abstractSerializedData.writeInt32(this.offset_date);
        abstractSerializedData.writeInt64(this.offset_id);
        abstractSerializedData.writeInt32(this.limit);
    }
}
