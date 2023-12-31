package org.telegram.tgnet;
/* loaded from: classes5.dex */
public abstract class TLRPC$Audio extends TLObject {
    public long access_hash;
    public int date;
    public int dc_id;
    public int duration;

    /* renamed from: id */
    public long f1597id;

    /* renamed from: iv */
    public byte[] f1598iv;
    public byte[] key;
    public String mime_type;
    public int size;
    public long user_id;

    public static TLRPC$Audio TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$Audio tLRPC$Audio;
        switch (i) {
            case -945003370:
                tLRPC$Audio = new TLRPC$TL_audio_layer45() { // from class: org.telegram.tgnet.TLRPC$TL_audio_old2
                    @Override // org.telegram.tgnet.TLRPC$TL_audio_layer45, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.f1597id = abstractSerializedData2.readInt64(z2);
                        this.access_hash = abstractSerializedData2.readInt64(z2);
                        this.user_id = abstractSerializedData2.readInt32(z2);
                        this.date = abstractSerializedData2.readInt32(z2);
                        this.duration = abstractSerializedData2.readInt32(z2);
                        this.mime_type = abstractSerializedData2.readString(z2);
                        this.size = abstractSerializedData2.readInt32(z2);
                        this.dc_id = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_audio_layer45, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(-945003370);
                        abstractSerializedData2.writeInt64(this.f1597id);
                        abstractSerializedData2.writeInt64(this.access_hash);
                        abstractSerializedData2.writeInt32((int) this.user_id);
                        abstractSerializedData2.writeInt32(this.date);
                        abstractSerializedData2.writeInt32(this.duration);
                        abstractSerializedData2.writeString(this.mime_type);
                        abstractSerializedData2.writeInt32(this.size);
                        abstractSerializedData2.writeInt32(this.dc_id);
                    }
                };
                break;
            case -102543275:
                tLRPC$Audio = new TLRPC$TL_audio_layer45();
                break;
            case 1114908135:
                tLRPC$Audio = new TLRPC$TL_audio_layer45() { // from class: org.telegram.tgnet.TLRPC$TL_audio_old
                    @Override // org.telegram.tgnet.TLRPC$TL_audio_layer45, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.f1597id = abstractSerializedData2.readInt64(z2);
                        this.access_hash = abstractSerializedData2.readInt64(z2);
                        this.user_id = abstractSerializedData2.readInt32(z2);
                        this.date = abstractSerializedData2.readInt32(z2);
                        this.duration = abstractSerializedData2.readInt32(z2);
                        this.size = abstractSerializedData2.readInt32(z2);
                        this.dc_id = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_audio_layer45, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(1114908135);
                        abstractSerializedData2.writeInt64(this.f1597id);
                        abstractSerializedData2.writeInt64(this.access_hash);
                        abstractSerializedData2.writeInt32((int) this.user_id);
                        abstractSerializedData2.writeInt32(this.date);
                        abstractSerializedData2.writeInt32(this.duration);
                        abstractSerializedData2.writeInt32(this.size);
                        abstractSerializedData2.writeInt32(this.dc_id);
                    }
                };
                break;
            case 1431655926:
                tLRPC$Audio = new TLRPC$TL_audio_layer45() { // from class: org.telegram.tgnet.TLRPC$TL_audioEncrypted
                    @Override // org.telegram.tgnet.TLRPC$TL_audio_layer45, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.f1597id = abstractSerializedData2.readInt64(z2);
                        this.access_hash = abstractSerializedData2.readInt64(z2);
                        this.user_id = abstractSerializedData2.readInt32(z2);
                        this.date = abstractSerializedData2.readInt32(z2);
                        this.duration = abstractSerializedData2.readInt32(z2);
                        this.size = abstractSerializedData2.readInt32(z2);
                        this.dc_id = abstractSerializedData2.readInt32(z2);
                        this.key = abstractSerializedData2.readByteArray(z2);
                        this.f1598iv = abstractSerializedData2.readByteArray(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_audio_layer45, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(1431655926);
                        abstractSerializedData2.writeInt64(this.f1597id);
                        abstractSerializedData2.writeInt64(this.access_hash);
                        abstractSerializedData2.writeInt32((int) this.user_id);
                        abstractSerializedData2.writeInt32(this.date);
                        abstractSerializedData2.writeInt32(this.duration);
                        abstractSerializedData2.writeInt32(this.size);
                        abstractSerializedData2.writeInt32(this.dc_id);
                        abstractSerializedData2.writeByteArray(this.key);
                        abstractSerializedData2.writeByteArray(this.f1598iv);
                    }
                };
                break;
            case 1483311320:
                tLRPC$Audio = new TLRPC$Audio() { // from class: org.telegram.tgnet.TLRPC$TL_audioEmpty_layer45
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.f1597id = abstractSerializedData2.readInt64(z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(1483311320);
                        abstractSerializedData2.writeInt64(this.f1597id);
                    }
                };
                break;
            default:
                tLRPC$Audio = null;
                break;
        }
        if (tLRPC$Audio == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in Audio", Integer.valueOf(i)));
        }
        if (tLRPC$Audio != null) {
            tLRPC$Audio.readParams(abstractSerializedData, z);
        }
        return tLRPC$Audio;
    }
}
