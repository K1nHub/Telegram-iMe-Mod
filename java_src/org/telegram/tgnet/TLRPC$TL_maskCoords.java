package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_maskCoords extends TLObject {

    /* renamed from: n */
    public int f1683n;

    /* renamed from: x */
    public double f1684x;

    /* renamed from: y */
    public double f1685y;
    public double zoom;

    public static TLRPC$TL_maskCoords TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (-1361650766 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_maskCoords", Integer.valueOf(i)));
            }
            return null;
        }
        TLRPC$TL_maskCoords tLRPC$TL_maskCoords = new TLRPC$TL_maskCoords();
        tLRPC$TL_maskCoords.readParams(abstractSerializedData, z);
        return tLRPC$TL_maskCoords;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1683n = abstractSerializedData.readInt32(z);
        this.f1684x = abstractSerializedData.readDouble(z);
        this.f1685y = abstractSerializedData.readDouble(z);
        this.zoom = abstractSerializedData.readDouble(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1361650766);
        abstractSerializedData.writeInt32(this.f1683n);
        abstractSerializedData.writeDouble(this.f1684x);
        abstractSerializedData.writeDouble(this.f1685y);
        abstractSerializedData.writeDouble(this.zoom);
    }
}
