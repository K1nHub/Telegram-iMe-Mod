package org.telegram.tgnet;
/* loaded from: classes5.dex */
public abstract class TLRPC$Video extends TLObject {
    public long access_hash;
    public String caption;
    public int date;
    public int dc_id;
    public int duration;

    /* renamed from: h */
    public int f1753h;

    /* renamed from: id */
    public long f1754id;

    /* renamed from: iv */
    public byte[] f1755iv;
    public byte[] key;
    public String mime_type;
    public int size;
    public TLRPC$PhotoSize thumb;
    public long user_id;

    /* renamed from: w */
    public int f1756w;

    public static TLRPC$Video TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$Video tLRPC$Video;
        switch (i) {
            case -1056548696:
                tLRPC$Video = new TLRPC$Video() { // from class: org.telegram.tgnet.TLRPC$TL_videoEmpty_layer45
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.f1754id = abstractSerializedData2.readInt64(z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(-1056548696);
                        abstractSerializedData2.writeInt64(this.f1754id);
                    }
                };
                break;
            case -291550643:
                tLRPC$Video = new TLRPC$TL_video_layer45() { // from class: org.telegram.tgnet.TLRPC$TL_video_old3
                    @Override // org.telegram.tgnet.TLRPC$TL_video_layer45, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.f1754id = abstractSerializedData2.readInt64(z2);
                        this.access_hash = abstractSerializedData2.readInt64(z2);
                        this.user_id = abstractSerializedData2.readInt32(z2);
                        this.date = abstractSerializedData2.readInt32(z2);
                        this.duration = abstractSerializedData2.readInt32(z2);
                        this.size = abstractSerializedData2.readInt32(z2);
                        this.thumb = TLRPC$PhotoSize.TLdeserialize(0L, 0L, 0L, abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        this.dc_id = abstractSerializedData2.readInt32(z2);
                        this.f1756w = abstractSerializedData2.readInt32(z2);
                        this.f1753h = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_video_layer45, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(-291550643);
                        abstractSerializedData2.writeInt64(this.f1754id);
                        abstractSerializedData2.writeInt64(this.access_hash);
                        abstractSerializedData2.writeInt32((int) this.user_id);
                        abstractSerializedData2.writeInt32(this.date);
                        abstractSerializedData2.writeInt32(this.duration);
                        abstractSerializedData2.writeInt32(this.size);
                        this.thumb.serializeToStream(abstractSerializedData2);
                        abstractSerializedData2.writeInt32(this.dc_id);
                        abstractSerializedData2.writeInt32(this.f1756w);
                        abstractSerializedData2.writeInt32(this.f1753h);
                    }
                };
                break;
            case -148338733:
                tLRPC$Video = new TLRPC$TL_video_layer45();
                break;
            case 948937617:
                tLRPC$Video = new TLRPC$TL_video_layer45() { // from class: org.telegram.tgnet.TLRPC$TL_video_old2
                    @Override // org.telegram.tgnet.TLRPC$TL_video_layer45, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.f1754id = abstractSerializedData2.readInt64(z2);
                        this.access_hash = abstractSerializedData2.readInt64(z2);
                        this.user_id = abstractSerializedData2.readInt32(z2);
                        this.date = abstractSerializedData2.readInt32(z2);
                        this.caption = abstractSerializedData2.readString(z2);
                        this.duration = abstractSerializedData2.readInt32(z2);
                        this.mime_type = abstractSerializedData2.readString(z2);
                        this.size = abstractSerializedData2.readInt32(z2);
                        this.thumb = TLRPC$PhotoSize.TLdeserialize(0L, 0L, 0L, abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        this.dc_id = abstractSerializedData2.readInt32(z2);
                        this.f1756w = abstractSerializedData2.readInt32(z2);
                        this.f1753h = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_video_layer45, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(948937617);
                        abstractSerializedData2.writeInt64(this.f1754id);
                        abstractSerializedData2.writeInt64(this.access_hash);
                        abstractSerializedData2.writeInt32((int) this.user_id);
                        abstractSerializedData2.writeInt32(this.date);
                        abstractSerializedData2.writeString(this.caption);
                        abstractSerializedData2.writeInt32(this.duration);
                        abstractSerializedData2.writeString(this.mime_type);
                        abstractSerializedData2.writeInt32(this.size);
                        this.thumb.serializeToStream(abstractSerializedData2);
                        abstractSerializedData2.writeInt32(this.dc_id);
                        abstractSerializedData2.writeInt32(this.f1756w);
                        abstractSerializedData2.writeInt32(this.f1753h);
                    }
                };
                break;
            case 1431655763:
                tLRPC$Video = new TLRPC$TL_video_layer45() { // from class: org.telegram.tgnet.TLRPC$TL_videoEncrypted
                    @Override // org.telegram.tgnet.TLRPC$TL_video_layer45, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.f1754id = abstractSerializedData2.readInt64(z2);
                        this.access_hash = abstractSerializedData2.readInt64(z2);
                        this.user_id = abstractSerializedData2.readInt32(z2);
                        this.date = abstractSerializedData2.readInt32(z2);
                        this.caption = abstractSerializedData2.readString(z2);
                        this.duration = abstractSerializedData2.readInt32(z2);
                        this.size = abstractSerializedData2.readInt32(z2);
                        this.thumb = TLRPC$PhotoSize.TLdeserialize(0L, 0L, 0L, abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        this.dc_id = abstractSerializedData2.readInt32(z2);
                        this.f1756w = abstractSerializedData2.readInt32(z2);
                        this.f1753h = abstractSerializedData2.readInt32(z2);
                        this.key = abstractSerializedData2.readByteArray(z2);
                        this.f1755iv = abstractSerializedData2.readByteArray(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_video_layer45, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(1431655763);
                        abstractSerializedData2.writeInt64(this.f1754id);
                        abstractSerializedData2.writeInt64(this.access_hash);
                        abstractSerializedData2.writeInt32((int) this.user_id);
                        abstractSerializedData2.writeInt32(this.date);
                        abstractSerializedData2.writeString(this.caption);
                        abstractSerializedData2.writeInt32(this.duration);
                        abstractSerializedData2.writeInt32(this.size);
                        this.thumb.serializeToStream(abstractSerializedData2);
                        abstractSerializedData2.writeInt32(this.dc_id);
                        abstractSerializedData2.writeInt32(this.f1756w);
                        abstractSerializedData2.writeInt32(this.f1753h);
                        abstractSerializedData2.writeByteArray(this.key);
                        abstractSerializedData2.writeByteArray(this.f1755iv);
                    }
                };
                break;
            case 1510253727:
                tLRPC$Video = new TLRPC$TL_video_layer45() { // from class: org.telegram.tgnet.TLRPC$TL_video_old
                    @Override // org.telegram.tgnet.TLRPC$TL_video_layer45, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.f1754id = abstractSerializedData2.readInt64(z2);
                        this.access_hash = abstractSerializedData2.readInt64(z2);
                        this.user_id = abstractSerializedData2.readInt32(z2);
                        this.date = abstractSerializedData2.readInt32(z2);
                        this.caption = abstractSerializedData2.readString(z2);
                        this.duration = abstractSerializedData2.readInt32(z2);
                        this.size = abstractSerializedData2.readInt32(z2);
                        this.thumb = TLRPC$PhotoSize.TLdeserialize(0L, 0L, 0L, abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        this.dc_id = abstractSerializedData2.readInt32(z2);
                        this.f1756w = abstractSerializedData2.readInt32(z2);
                        this.f1753h = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_video_layer45, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(1510253727);
                        abstractSerializedData2.writeInt64(this.f1754id);
                        abstractSerializedData2.writeInt64(this.access_hash);
                        abstractSerializedData2.writeInt32((int) this.user_id);
                        abstractSerializedData2.writeInt32(this.date);
                        abstractSerializedData2.writeString(this.caption);
                        abstractSerializedData2.writeInt32(this.duration);
                        abstractSerializedData2.writeInt32(this.size);
                        this.thumb.serializeToStream(abstractSerializedData2);
                        abstractSerializedData2.writeInt32(this.dc_id);
                        abstractSerializedData2.writeInt32(this.f1756w);
                        abstractSerializedData2.writeInt32(this.f1753h);
                    }
                };
                break;
            default:
                tLRPC$Video = null;
                break;
        }
        if (tLRPC$Video == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in Video", Integer.valueOf(i)));
        }
        if (tLRPC$Video != null) {
            tLRPC$Video.readParams(abstractSerializedData, z);
        }
        return tLRPC$Video;
    }
}
