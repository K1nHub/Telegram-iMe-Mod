package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_savedDialogsNotModified extends TLRPC$messages_SavedDialogs {
    public int count;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.count = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1071681560);
        abstractSerializedData.writeInt32(this.count);
    }
}
