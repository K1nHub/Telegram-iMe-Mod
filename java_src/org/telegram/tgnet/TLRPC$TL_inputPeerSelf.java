package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputPeerSelf extends TLRPC$InputPeer {
    public static int constructor = 2107670217;

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
    }
}
