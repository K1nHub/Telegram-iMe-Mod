package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messages_checkHistoryImport extends TLObject {
    public String import_head;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_messages_historyImportParsed.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1140726259);
        abstractSerializedData.writeString(this.import_head);
    }
}
