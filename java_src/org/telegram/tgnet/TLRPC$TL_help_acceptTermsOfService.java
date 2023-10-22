package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_help_acceptTermsOfService extends TLObject {
    public static int constructor = -294455398;

    /* renamed from: id */
    public TLRPC$TL_dataJSON f1660id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1660id.serializeToStream(abstractSerializedData);
    }
}
