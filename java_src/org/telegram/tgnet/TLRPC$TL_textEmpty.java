package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_textEmpty extends TLRPC$RichText {
    public static int constructor = -599948721;

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
    }
}
