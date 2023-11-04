package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_help_getAppChangelog extends TLObject {
    public String prev_app_version;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1877938321);
        abstractSerializedData.writeString(this.prev_app_version);
    }
}
