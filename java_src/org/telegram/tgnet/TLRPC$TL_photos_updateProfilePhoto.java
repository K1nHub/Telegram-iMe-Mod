package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_photos_updateProfilePhoto extends TLObject {
    public static int constructor = 166207545;
    public TLRPC$InputUser bot;
    public boolean fallback;
    public int flags;

    /* renamed from: id */
    public TLRPC$InputPhoto f1667id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_photos_photo.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        int i = this.fallback ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        abstractSerializedData.writeInt32(i);
        if ((this.flags & 2) != 0) {
            this.bot.serializeToStream(abstractSerializedData);
        }
        this.f1667id.serializeToStream(abstractSerializedData);
    }
}
