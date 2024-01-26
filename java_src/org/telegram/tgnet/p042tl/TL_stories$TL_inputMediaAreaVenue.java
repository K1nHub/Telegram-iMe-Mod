package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_inputMediaAreaVenue */
/* loaded from: classes5.dex */
public class TL_stories$TL_inputMediaAreaVenue extends TL_stories$MediaArea {
    public long query_id;
    public String result_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.coordinates = TL_stories$TL_mediaAreaCoordinates.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.query_id = abstractSerializedData.readInt64(z);
        this.result_id = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1300094593);
        this.coordinates.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt64(this.query_id);
        abstractSerializedData.writeString(this.result_id);
    }
}
