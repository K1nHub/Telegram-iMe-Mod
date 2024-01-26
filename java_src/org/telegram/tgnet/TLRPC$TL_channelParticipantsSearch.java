package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_channelParticipantsSearch extends TLRPC$ChannelParticipantsFilter {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1601q = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(106343499);
        abstractSerializedData.writeString(this.f1601q);
    }
}
