package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLRPC$GeoPoint;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_mediaAreaGeoPoint */
/* loaded from: classes5.dex */
public class TL_stories$TL_mediaAreaGeoPoint extends TL_stories$MediaArea {
    public TLRPC$GeoPoint geo;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.coordinates = TL_stories$TL_mediaAreaCoordinates.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.geo = TLRPC$GeoPoint.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-544523486);
        this.coordinates.serializeToStream(abstractSerializedData);
        this.geo.serializeToStream(abstractSerializedData);
    }
}
