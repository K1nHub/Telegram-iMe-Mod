package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputChatPhoto extends TLRPC$InputChatPhoto {

    /* renamed from: id */
    public TLRPC$InputPhoto f1665id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1665id = TLRPC$InputPhoto.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1991004873);
        this.f1665id.serializeToStream(abstractSerializedData);
    }
}
