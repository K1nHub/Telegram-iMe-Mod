package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_inputMediaStory extends TLRPC$InputMedia {
    public static int constructor = -1702447729;

    /* renamed from: id */
    public int f1594id;
    public TLRPC$InputUser user_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.user_id = TLRPC$InputUser.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.f1594id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.user_id.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1594id);
    }
}
