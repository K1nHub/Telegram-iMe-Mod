package org.telegram.tgnet;
/* loaded from: classes5.dex */
public abstract class TLRPC$BotApp extends TLObject {
    public long access_hash;
    public String description;
    public TLRPC$Document document;
    public int flags;
    public long hash;

    /* renamed from: id */
    public long f1599id;
    public TLRPC$Photo photo;
    public String short_name;
    public String title;

    public static TLRPC$BotApp TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$BotApp tLRPC$BotApp = i != -1778593322 ? i != 1571189943 ? null : new TLRPC$BotApp() { // from class: org.telegram.tgnet.TLRPC$TL_botAppNotModified
            @Override // org.telegram.tgnet.TLObject
            public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                abstractSerializedData2.writeInt32(1571189943);
            }
        } : new TLRPC$BotApp() { // from class: org.telegram.tgnet.TLRPC$TL_botApp
            @Override // org.telegram.tgnet.TLObject
            public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                this.flags = abstractSerializedData2.readInt32(z2);
                this.f1599id = abstractSerializedData2.readInt64(z2);
                this.access_hash = abstractSerializedData2.readInt64(z2);
                this.short_name = abstractSerializedData2.readString(z2);
                this.title = abstractSerializedData2.readString(z2);
                this.description = abstractSerializedData2.readString(z2);
                this.photo = TLRPC$Photo.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                if ((this.flags & 1) != 0) {
                    this.document = TLRPC$Document.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                }
                this.hash = abstractSerializedData2.readInt64(z2);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                abstractSerializedData2.writeInt32(-1778593322);
                abstractSerializedData2.writeInt32(this.flags);
                abstractSerializedData2.writeInt64(this.f1599id);
                abstractSerializedData2.writeInt64(this.access_hash);
                abstractSerializedData2.writeString(this.short_name);
                abstractSerializedData2.writeString(this.title);
                abstractSerializedData2.writeString(this.description);
                this.photo.serializeToStream(abstractSerializedData2);
                if ((this.flags & 1) != 0) {
                    this.document.serializeToStream(abstractSerializedData2);
                }
                abstractSerializedData2.writeInt64(this.hash);
            }
        };
        if (tLRPC$BotApp == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in BotApp", Integer.valueOf(i)));
        }
        if (tLRPC$BotApp != null) {
            tLRPC$BotApp.readParams(abstractSerializedData, z);
        }
        return tLRPC$BotApp;
    }
}
