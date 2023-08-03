package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_contacts_toggleStoriesHidden extends TLObject {
    public static int constructor = 1967110245;
    public boolean hidden;

    /* renamed from: id */
    public TLRPC$InputUser f1570id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.f1570id.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeBool(this.hidden);
    }
}
