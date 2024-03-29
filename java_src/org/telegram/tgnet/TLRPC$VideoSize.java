package org.telegram.tgnet;

import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes5.dex */
public abstract class TLRPC$VideoSize extends TLObject {
    public ArrayList<Integer> background_colors = new ArrayList<>();
    public int flags;

    /* renamed from: h */
    public int f1757h;
    public TLRPC$FileLocation location;
    public int size;
    public String type;
    public double video_start_ts;

    /* renamed from: w */
    public int f1758w;

    public static TLRPC$VideoSize TLdeserialize(long j, long j2, AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$VideoSize tLRPC$TL_videoSize;
        int i2;
        switch (i) {
            case -567037804:
                tLRPC$TL_videoSize = new TLRPC$TL_videoSize();
                break;
            case -399391402:
                tLRPC$TL_videoSize = new TLRPC$TL_videoSize_layer127();
                break;
            case -128171716:
                tLRPC$TL_videoSize = new TLRPC$TL_videoSizeEmojiMarkup();
                break;
            case 228623102:
                tLRPC$TL_videoSize = new TLRPC$TL_videoSizeStickerMarkup();
                break;
            case 1130084743:
                tLRPC$TL_videoSize = new TLRPC$TL_videoSize() { // from class: org.telegram.tgnet.TLRPC$TL_videoSize_layer115
                    @Override // org.telegram.tgnet.TLRPC$TL_videoSize, org.telegram.tgnet.TLObject
                    public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                        this.type = abstractSerializedData2.readString(z2);
                        this.location = TLRPC$FileLocation.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        this.f1758w = abstractSerializedData2.readInt32(z2);
                        this.f1757h = abstractSerializedData2.readInt32(z2);
                        this.size = abstractSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLRPC$TL_videoSize, org.telegram.tgnet.TLObject
                    public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                        abstractSerializedData2.writeInt32(1130084743);
                        abstractSerializedData2.writeString(this.type);
                        this.location.serializeToStream(abstractSerializedData2);
                        abstractSerializedData2.writeInt32(this.f1758w);
                        abstractSerializedData2.writeInt32(this.f1757h);
                        abstractSerializedData2.writeInt32(this.size);
                    }
                };
                break;
            default:
                tLRPC$TL_videoSize = null;
                break;
        }
        if (tLRPC$TL_videoSize == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in VideoSize", Integer.valueOf(i)));
        }
        if (tLRPC$TL_videoSize != null) {
            tLRPC$TL_videoSize.readParams(abstractSerializedData, z);
            if (tLRPC$TL_videoSize.location == null) {
                if (!TextUtils.isEmpty(tLRPC$TL_videoSize.type) && (j != 0 || j2 != 0)) {
                    TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated = new TLRPC$TL_fileLocationToBeDeprecated();
                    tLRPC$TL_videoSize.location = tLRPC$TL_fileLocationToBeDeprecated;
                    if (i2 != 0) {
                        tLRPC$TL_fileLocationToBeDeprecated.volume_id = -j;
                        tLRPC$TL_fileLocationToBeDeprecated.local_id = tLRPC$TL_videoSize.type.charAt(0);
                    } else {
                        tLRPC$TL_fileLocationToBeDeprecated.volume_id = -j2;
                        tLRPC$TL_fileLocationToBeDeprecated.local_id = tLRPC$TL_videoSize.type.charAt(0) + 1000;
                    }
                } else {
                    tLRPC$TL_videoSize.location = new TLRPC$TL_fileLocationUnavailable();
                }
            }
        }
        return tLRPC$TL_videoSize;
    }
}
