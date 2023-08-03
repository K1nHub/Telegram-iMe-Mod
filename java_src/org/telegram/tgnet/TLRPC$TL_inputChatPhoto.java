package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputChatPhoto extends TLRPC$InputChatPhoto {
    public static int constructor = -1991004873;

    /* renamed from: id */
    public TLRPC$InputPhoto f1582id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1582id = TLRPC$InputPhoto.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1582id.serializeToStream(abstractSerializedData);
    }
}
