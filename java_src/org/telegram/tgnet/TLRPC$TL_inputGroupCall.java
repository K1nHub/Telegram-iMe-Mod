package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputGroupCall extends TLObject {
    public long access_hash;

    /* renamed from: id */
    public long f1668id;

    public static TLRPC$TL_inputGroupCall TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (-659913713 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_inputGroupCall", Integer.valueOf(i)));
            }
            return null;
        }
        TLRPC$TL_inputGroupCall tLRPC$TL_inputGroupCall = new TLRPC$TL_inputGroupCall();
        tLRPC$TL_inputGroupCall.readParams(abstractSerializedData, z);
        return tLRPC$TL_inputGroupCall;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1668id = abstractSerializedData.readInt64(z);
        this.access_hash = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-659913713);
        abstractSerializedData.writeInt64(this.f1668id);
        abstractSerializedData.writeInt64(this.access_hash);
    }
}
