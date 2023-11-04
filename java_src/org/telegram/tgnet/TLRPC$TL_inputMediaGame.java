package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputMediaGame extends TLRPC$InputMedia {

    /* renamed from: id */
    public TLRPC$InputGame f1670id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1670id = TLRPC$InputGame.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-750828557);
        this.f1670id.serializeToStream(abstractSerializedData);
    }
}
