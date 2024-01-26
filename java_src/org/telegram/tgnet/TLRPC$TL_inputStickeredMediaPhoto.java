package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputStickeredMediaPhoto extends TLRPC$InputStickeredMedia {

    /* renamed from: id */
    public TLRPC$InputPhoto f1677id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1677id = TLRPC$InputPhoto.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1251549527);
        this.f1677id.serializeToStream(abstractSerializedData);
    }
}
