package org.telegram.tgnet;
/* loaded from: classes6.dex */
public class TLRPC$TL_dialogFilterSuggested extends TLObject {
    public static int constructor = 2004110666;
    public String description;
    public TLRPC$DialogFilter filter;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.filter = TLRPC$DialogFilter.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.description = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.filter.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeString(this.description);
    }
}
