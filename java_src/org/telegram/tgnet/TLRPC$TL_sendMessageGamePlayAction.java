package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_sendMessageGamePlayAction extends TLRPC$SendMessageAction {
    public static int constructor = -580219064;

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
    }
}
