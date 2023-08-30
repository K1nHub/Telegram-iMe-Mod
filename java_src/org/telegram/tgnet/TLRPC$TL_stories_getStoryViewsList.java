package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_stories_getStoryViewsList extends TLObject {
    public static int constructor = -111189596;
    public int flags;

    /* renamed from: id */
    public int f1676id;
    public boolean just_contacts;
    public int limit;
    public String offset;

    /* renamed from: q */
    public String f1677q;
    public boolean reactions_first;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_stories_storyViewsList.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        int i = this.just_contacts ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.reactions_first ? i | 4 : i & (-5);
        this.flags = i2;
        abstractSerializedData.writeInt32(i2);
        if ((this.flags & 2) != 0) {
            abstractSerializedData.writeString(this.f1677q);
        }
        abstractSerializedData.writeInt32(this.f1676id);
        abstractSerializedData.writeString(this.offset);
        abstractSerializedData.writeInt32(this.limit);
    }
}
