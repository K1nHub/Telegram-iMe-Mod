package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputWebFileGeoPointLocation extends TLRPC$InputWebFileLocation {
    public long access_hash;
    public TLRPC$InputGeoPoint geo_point;

    /* renamed from: h */
    public int f1681h;
    public int scale;

    /* renamed from: w */
    public int f1682w;
    public int zoom;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.geo_point = TLRPC$InputGeoPoint.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.access_hash = abstractSerializedData.readInt64(z);
        this.f1682w = abstractSerializedData.readInt32(z);
        this.f1681h = abstractSerializedData.readInt32(z);
        this.zoom = abstractSerializedData.readInt32(z);
        this.scale = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1625153079);
        this.geo_point.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt64(this.access_hash);
        abstractSerializedData.writeInt32(this.f1682w);
        abstractSerializedData.writeInt32(this.f1681h);
        abstractSerializedData.writeInt32(this.zoom);
        abstractSerializedData.writeInt32(this.scale);
    }
}
