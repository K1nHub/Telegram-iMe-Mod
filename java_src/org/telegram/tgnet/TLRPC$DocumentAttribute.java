package org.telegram.tgnet;
/* loaded from: classes4.dex */
public abstract class TLRPC$DocumentAttribute extends TLObject {
    public String alt;
    public double duration;
    public String file_name;
    public int flags;

    /* renamed from: h */
    public int f1541h;
    public boolean mask;
    public TLRPC$TL_maskCoords mask_coords;
    public boolean nosound;
    public String performer;
    public int preload_prefix_size;
    public boolean round_message;
    public TLRPC$InputStickerSet stickerset;
    public boolean supports_streaming;
    public String title;
    public boolean voice;

    /* renamed from: w */
    public int f1542w;
    public byte[] waveform;

    public static TLRPC$DocumentAttribute TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$DocumentAttribute tLRPC$TL_documentAttributeHasStickers;
        switch (i) {
            case -1744710921:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeHasStickers();
                break;
            case -1739392570:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeAudio();
                break;
            case -1723033470:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeSticker() { // from class: org.telegram.tgnet.TLRPC$TL_documentAttributeSticker_old2
                    public static int constructor = -1723033470;

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeSticker, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.alt = abstractSerializedData2.readString(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeSticker, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(constructor);
                        abstractSerializedData2.writeString(this.alt);
                    }
                };
                break;
            case -745541182:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeVideo();
                break;
            case -556656416:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeAudio() { // from class: org.telegram.tgnet.TLRPC$TL_documentAttributeAudio_layer45
                    public static int constructor = -556656416;

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeAudio, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.duration = abstractSerializedData2.readInt32(z2);
                        this.title = abstractSerializedData2.readString(z2);
                        this.performer = abstractSerializedData2.readString(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeAudio, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(constructor);
                        abstractSerializedData2.writeInt32((int) this.duration);
                        abstractSerializedData2.writeString(this.title);
                        abstractSerializedData2.writeString(this.performer);
                    }
                };
                break;
            case -83208409:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeSticker() { // from class: org.telegram.tgnet.TLRPC$TL_documentAttributeSticker_old
                    public static int constructor = -83208409;

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeSticker, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeSticker, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(constructor);
                    }
                };
                break;
            case -48981863:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeCustomEmoji();
                break;
            case 85215461:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeAudio() { // from class: org.telegram.tgnet.TLRPC$TL_documentAttributeAudio_old
                    public static int constructor = 85215461;

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeAudio, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.duration = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeAudio, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(constructor);
                        abstractSerializedData2.writeInt32((int) this.duration);
                    }
                };
                break;
            case 250621158:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeVideo() { // from class: org.telegram.tgnet.TLRPC$TL_documentAttributeVideo_layer159
                    public static int constructor = 250621158;

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeVideo, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        int readInt32 = abstractSerializedData2.readInt32(z2);
                        this.flags = readInt32;
                        this.round_message = (readInt32 & 1) != 0;
                        this.supports_streaming = (readInt32 & 2) != 0;
                        this.duration = abstractSerializedData2.readInt32(z2);
                        this.f1542w = abstractSerializedData2.readInt32(z2);
                        this.f1541h = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeVideo, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(constructor);
                        int i2 = this.round_message ? this.flags | 1 : this.flags & (-2);
                        this.flags = i2;
                        int i3 = this.supports_streaming ? i2 | 2 : i2 & (-3);
                        this.flags = i3;
                        abstractSerializedData2.writeInt32(i3);
                        abstractSerializedData2.writeInt32((int) this.duration);
                        abstractSerializedData2.writeInt32(this.f1542w);
                        abstractSerializedData2.writeInt32(this.f1541h);
                    }
                };
                break;
            case 297109817:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeAnimated();
                break;
            case 358154344:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeFilename();
                break;
            case 978674434:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeSticker_layer55();
                break;
            case 1494273227:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeVideo() { // from class: org.telegram.tgnet.TLRPC$TL_documentAttributeVideo_layer65
                    public static int constructor = 1494273227;

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeVideo, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.duration = abstractSerializedData2.readInt32(z2);
                        this.f1542w = abstractSerializedData2.readInt32(z2);
                        this.f1541h = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_documentAttributeVideo, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(constructor);
                        abstractSerializedData2.writeInt32((int) this.duration);
                        abstractSerializedData2.writeInt32(this.f1542w);
                        abstractSerializedData2.writeInt32(this.f1541h);
                    }
                };
                break;
            case 1662637586:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeSticker();
                break;
            case 1815593308:
                tLRPC$TL_documentAttributeHasStickers = new TLRPC$TL_documentAttributeImageSize();
                break;
            default:
                tLRPC$TL_documentAttributeHasStickers = null;
                break;
        }
        if (tLRPC$TL_documentAttributeHasStickers == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in DocumentAttribute", Integer.valueOf(i)));
        }
        if (tLRPC$TL_documentAttributeHasStickers != null) {
            tLRPC$TL_documentAttributeHasStickers.readParams(abstractSerializedData, z);
        }
        return tLRPC$TL_documentAttributeHasStickers;
    }
}
