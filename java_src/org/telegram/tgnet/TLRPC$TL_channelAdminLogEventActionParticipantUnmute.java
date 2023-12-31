package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_channelAdminLogEventActionParticipantUnmute extends TLRPC$ChannelAdminLogEventAction {
    public TLRPC$TL_groupCallParticipant participant;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.participant = TLRPC$TL_groupCallParticipant.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-431740480);
        this.participant.serializeToStream(abstractSerializedData);
    }
}
