package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_mediaAreaCoordinates extends TLObject {

    /* renamed from: h */
    public double f1608h;
    public double rotation;

    /* renamed from: w */
    public double f1609w;

    /* renamed from: x */
    public double f1610x;

    /* renamed from: y */
    public double f1611y;

    public static TLRPC$TL_mediaAreaCoordinates TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (64088654 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_mediaAreaCoordinates", Integer.valueOf(i)));
            }
            return null;
        }
        TLRPC$TL_mediaAreaCoordinates tLRPC$TL_mediaAreaCoordinates = new TLRPC$TL_mediaAreaCoordinates();
        tLRPC$TL_mediaAreaCoordinates.readParams(abstractSerializedData, z);
        return tLRPC$TL_mediaAreaCoordinates;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1610x = abstractSerializedData.readDouble(z);
        this.f1611y = abstractSerializedData.readDouble(z);
        this.f1609w = abstractSerializedData.readDouble(z);
        this.f1608h = abstractSerializedData.readDouble(z);
        this.rotation = abstractSerializedData.readDouble(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(64088654);
        abstractSerializedData.writeDouble(this.f1610x);
        abstractSerializedData.writeDouble(this.f1611y);
        abstractSerializedData.writeDouble(this.f1609w);
        abstractSerializedData.writeDouble(this.f1608h);
        abstractSerializedData.writeDouble(this.rotation);
    }
}
