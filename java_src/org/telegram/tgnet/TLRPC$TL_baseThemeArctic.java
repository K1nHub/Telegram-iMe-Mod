package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_baseThemeArctic extends TLRPC$BaseTheme {
    public static int constructor = 1527845466;

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
    }
}
