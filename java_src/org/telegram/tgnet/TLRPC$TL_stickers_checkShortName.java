package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_stickers_checkShortName extends TLObject {
    public String short_name;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(676017721);
        abstractSerializedData.writeString(this.short_name);
    }
}
