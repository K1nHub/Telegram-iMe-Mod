package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputMediaAreaVenue extends TLRPC$MediaArea {
    public long query_id;
    public String result_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.coordinates = TLRPC$TL_mediaAreaCoordinates.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
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
