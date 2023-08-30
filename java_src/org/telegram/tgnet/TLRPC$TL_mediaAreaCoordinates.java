package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_mediaAreaCoordinates extends TLObject {

    /* renamed from: h */
    public double f1617h;
    public double rotation;

    /* renamed from: w */
    public double f1618w;

    /* renamed from: x */
    public double f1619x;

    /* renamed from: y */
    public double f1620y;

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
        this.f1619x = abstractSerializedData.readDouble(z);
        this.f1620y = abstractSerializedData.readDouble(z);
        this.f1618w = abstractSerializedData.readDouble(z);
        this.f1617h = abstractSerializedData.readDouble(z);
        this.rotation = abstractSerializedData.readDouble(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(64088654);
        abstractSerializedData.writeDouble(this.f1619x);
        abstractSerializedData.writeDouble(this.f1620y);
        abstractSerializedData.writeDouble(this.f1618w);
        abstractSerializedData.writeDouble(this.f1617h);
        abstractSerializedData.writeDouble(this.rotation);
    }
}
