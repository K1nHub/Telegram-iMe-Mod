package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messageActionEmpty extends TLRPC$MessageAction {
    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-1230047312);
    }
}
