package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputStickeredMediaDocument extends TLRPC$InputStickeredMedia {
    public static int constructor = 70813275;

    /* renamed from: id */
    public TLRPC$InputDocument f1570id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1570id = TLRPC$InputDocument.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1570id.serializeToStream(abstractSerializedData);
    }
}
