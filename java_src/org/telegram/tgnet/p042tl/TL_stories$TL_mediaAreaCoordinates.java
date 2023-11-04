package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_mediaAreaCoordinates */
/* loaded from: classes5.dex */
public class TL_stories$TL_mediaAreaCoordinates extends TLObject {

    /* renamed from: h */
    public double f1763h;
    public double rotation;

    /* renamed from: w */
    public double f1764w;

    /* renamed from: x */
    public double f1765x;

    /* renamed from: y */
    public double f1766y;

    public static TL_stories$TL_mediaAreaCoordinates TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (64088654 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_mediaAreaCoordinates", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_mediaAreaCoordinates tL_stories$TL_mediaAreaCoordinates = new TL_stories$TL_mediaAreaCoordinates();
        tL_stories$TL_mediaAreaCoordinates.readParams(abstractSerializedData, z);
        return tL_stories$TL_mediaAreaCoordinates;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1765x = abstractSerializedData.readDouble(z);
        this.f1766y = abstractSerializedData.readDouble(z);
        this.f1764w = abstractSerializedData.readDouble(z);
        this.f1763h = abstractSerializedData.readDouble(z);
        this.rotation = abstractSerializedData.readDouble(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(64088654);
        abstractSerializedData.writeDouble(this.f1765x);
        abstractSerializedData.writeDouble(this.f1766y);
        abstractSerializedData.writeDouble(this.f1764w);
        abstractSerializedData.writeDouble(this.f1763h);
        abstractSerializedData.writeDouble(this.rotation);
    }
}
