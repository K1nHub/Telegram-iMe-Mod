package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLRPC$InputChannel;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_inputMediaAreaChannelPost */
/* loaded from: classes5.dex */
public class TL_stories$TL_inputMediaAreaChannelPost extends TL_stories$MediaArea {
    public TLRPC$InputChannel channel;
    public int msg_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.coordinates = TL_stories$TL_mediaAreaCoordinates.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.channel = TLRPC$InputChannel.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.msg_id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(577893055);
        this.coordinates.serializeToStream(abstractSerializedData);
        this.channel.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.msg_id);
    }
}
