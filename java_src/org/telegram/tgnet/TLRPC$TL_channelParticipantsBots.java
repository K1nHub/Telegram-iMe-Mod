package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_channelParticipantsBots extends TLRPC$ChannelParticipantsFilter {
    public static int constructor = -1328445861;

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
    }
}
