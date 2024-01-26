package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_mediaAreaCoordinates */
/* loaded from: classes5.dex */
public class TL_stories$TL_mediaAreaCoordinates extends TLObject {

    /* renamed from: h */
    public double f1766h;
    public double rotation;

    /* renamed from: w */
    public double f1767w;

    /* renamed from: x */
    public double f1768x;

    /* renamed from: y */
    public double f1769y;

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
        this.f1768x = abstractSerializedData.readDouble(z);
        this.f1769y = abstractSerializedData.readDouble(z);
        this.f1767w = abstractSerializedData.readDouble(z);
        this.f1766h = abstractSerializedData.readDouble(z);
        this.rotation = abstractSerializedData.readDouble(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(64088654);
        abstractSerializedData.writeDouble(this.f1768x);
        abstractSerializedData.writeDouble(this.f1769y);
        abstractSerializedData.writeDouble(this.f1767w);
        abstractSerializedData.writeDouble(this.f1766h);
        abstractSerializedData.writeDouble(this.rotation);
    }
}
