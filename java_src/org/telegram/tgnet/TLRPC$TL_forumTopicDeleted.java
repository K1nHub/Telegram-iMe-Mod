package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_forumTopicDeleted extends TLRPC$TL_forumTopic {
    @Override // org.telegram.tgnet.TLRPC$TL_forumTopic, org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1658id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLRPC$TL_forumTopic, org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(37687451);
        abstractSerializedData.writeInt32(this.f1658id);
    }
}
