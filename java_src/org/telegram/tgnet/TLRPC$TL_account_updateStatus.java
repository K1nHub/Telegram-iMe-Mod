package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_account_updateStatus extends TLObject {
    public boolean offline;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1713919532);
        abstractSerializedData.writeBool(this.offline);
    }
}
