package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_maskCoords extends TLObject {
    public static int constructor = -1361650766;

    /* renamed from: n */
    public int f1600n;

    /* renamed from: x */
    public double f1601x;

    /* renamed from: y */
    public double f1602y;
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
        this.f1600n = abstractSerializedData.readInt32(z);
        this.f1601x = abstractSerializedData.readDouble(z);
        this.f1602y = abstractSerializedData.readDouble(z);
        this.zoom = abstractSerializedData.readDouble(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.f1600n);
        abstractSerializedData.writeDouble(this.f1601x);
        abstractSerializedData.writeDouble(this.f1602y);
        abstractSerializedData.writeDouble(this.zoom);
    }
}
