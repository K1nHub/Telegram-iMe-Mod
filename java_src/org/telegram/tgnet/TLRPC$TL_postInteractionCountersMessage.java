package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_postInteractionCountersMessage extends TLRPC$PostInteractionCounters {
    public int forwards;
    public int msg_id;
    public int reactions;
    public int views;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.msg_id = abstractSerializedData.readInt32(z);
        this.views = abstractSerializedData.readInt32(z);
        this.forwards = abstractSerializedData.readInt32(z);
        this.reactions = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-419066241);
        abstractSerializedData.writeInt32(this.msg_id);
        abstractSerializedData.writeInt32(this.views);
        abstractSerializedData.writeInt32(this.forwards);
        abstractSerializedData.writeInt32(this.reactions);
    }
}
