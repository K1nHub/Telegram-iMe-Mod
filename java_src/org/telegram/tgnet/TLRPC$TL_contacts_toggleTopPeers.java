package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_contacts_toggleTopPeers extends TLObject {
    public boolean enabled;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-2062238246);
        abstractSerializedData.writeBool(this.enabled);
    }
}
