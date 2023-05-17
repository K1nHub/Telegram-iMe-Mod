package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_messages_historyImport extends TLObject {
    public static int constructor = 375566091;

    /* renamed from: id */
    public long f1530id;

    public static TLRPC$TL_messages_historyImport TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (constructor != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_messages_historyImport", Integer.valueOf(i)));
            }
            return null;
        }
        TLRPC$TL_messages_historyImport tLRPC$TL_messages_historyImport = new TLRPC$TL_messages_historyImport();
        tLRPC$TL_messages_historyImport.readParams(abstractSerializedData, z);
        return tLRPC$TL_messages_historyImport;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1530id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1530id);
    }
}
