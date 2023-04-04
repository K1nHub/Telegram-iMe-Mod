package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputStickeredMediaPhoto extends TLRPC$InputStickeredMedia {
    public static int constructor = 1251549527;

    /* renamed from: id */
    public TLRPC$InputPhoto f1573id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1573id = TLRPC$InputPhoto.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1573id.serializeToStream(abstractSerializedData);
    }
}
