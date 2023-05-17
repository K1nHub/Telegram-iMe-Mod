package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_maskCoords extends TLObject {
    public static int constructor = -1361650766;

    /* renamed from: n */
    public int f1510n;

    /* renamed from: x */
    public double f1511x;

    /* renamed from: y */
    public double f1512y;
    public double zoom;

    public static TLRPC$TL_maskCoords TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (constructor != i) {
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
        this.f1510n = abstractSerializedData.readInt32(z);
        this.f1511x = abstractSerializedData.readDouble(z);
        this.f1512y = abstractSerializedData.readDouble(z);
        this.zoom = abstractSerializedData.readDouble(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.f1510n);
        abstractSerializedData.writeDouble(this.f1511x);
        abstractSerializedData.writeDouble(this.f1512y);
        abstractSerializedData.writeDouble(this.zoom);
    }
}
