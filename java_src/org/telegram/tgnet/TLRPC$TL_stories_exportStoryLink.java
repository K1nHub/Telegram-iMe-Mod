package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_stories_exportStoryLink extends TLObject {
    public static int constructor = 384058318;

    /* renamed from: id */
    public int f1664id;
    public TLRPC$InputUser user_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_exportedStoryLink.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.user_id.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1664id);
    }
}
