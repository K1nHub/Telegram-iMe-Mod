package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_inputReportReasonPornography extends TLRPC$ReportReason {
    public static int constructor = 777640226;

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
    }
}
