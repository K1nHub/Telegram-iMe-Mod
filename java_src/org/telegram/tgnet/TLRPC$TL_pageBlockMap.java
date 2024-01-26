package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_pageBlockMap extends TLRPC$PageBlock {
    public TLRPC$TL_pageCaption caption;
    public TLRPC$GeoPoint geo;

    /* renamed from: h */
    public int f1725h;

    /* renamed from: w */
    public int f1726w;
    public int zoom;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.geo = TLRPC$GeoPoint.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.zoom = abstractSerializedData.readInt32(z);
        this.f1726w = abstractSerializedData.readInt32(z);
        this.f1725h = abstractSerializedData.readInt32(z);
        this.caption = TLRPC$TL_pageCaption.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1538310410);
        this.geo.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.zoom);
        abstractSerializedData.writeInt32(this.f1726w);
        abstractSerializedData.writeInt32(this.f1725h);
        this.caption.serializeToStream(abstractSerializedData);
    }
}
