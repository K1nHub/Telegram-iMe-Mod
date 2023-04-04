package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputMediaGame extends TLRPC$InputMedia {
    public static int constructor = -750828557;

    /* renamed from: id */
    public TLRPC$InputGame f1567id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1567id = TLRPC$InputGame.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1567id.serializeToStream(abstractSerializedData);
    }
}
