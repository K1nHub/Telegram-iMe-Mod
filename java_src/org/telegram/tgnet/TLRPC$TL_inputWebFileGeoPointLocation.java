package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputWebFileGeoPointLocation extends TLRPC$InputWebFileLocation {
    public static int constructor = -1625153079;
    public long access_hash;
    public TLRPC$InputGeoPoint geo_point;

    /* renamed from: h */
    public int f1568h;
    public int scale;

    /* renamed from: w */
    public int f1569w;
    public int zoom;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.geo_point = TLRPC$InputGeoPoint.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.access_hash = abstractSerializedData.readInt64(z);
        this.f1569w = abstractSerializedData.readInt32(z);
        this.f1568h = abstractSerializedData.readInt32(z);
        this.zoom = abstractSerializedData.readInt32(z);
        this.scale = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.geo_point.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt64(this.access_hash);
        abstractSerializedData.writeInt32(this.f1569w);
        abstractSerializedData.writeInt32(this.f1568h);
        abstractSerializedData.writeInt32(this.zoom);
        abstractSerializedData.writeInt32(this.scale);
    }
}
