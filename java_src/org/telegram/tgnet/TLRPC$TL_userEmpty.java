package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_userEmpty extends TLRPC$User {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1751id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-742634630);
        abstractSerializedData.writeInt64(this.f1751id);
    }
}
