package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_help_acceptTermsOfService extends TLObject {

    /* renamed from: id */
    public TLRPC$TL_dataJSON f1661id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-294455398);
        this.f1661id.serializeToStream(abstractSerializedData);
    }
}
