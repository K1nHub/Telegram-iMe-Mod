package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes4.dex */
public class TLRPC$TL_auth_exportLoginToken extends TLObject {
    public static int constructor = -1210022402;
    public String api_hash;
    public int api_id;
    public ArrayList<Long> except_ids = new ArrayList<>();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$auth_LoginToken.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt32(this.api_id);
        abstractSerializedData.writeString(this.api_hash);
        abstractSerializedData.writeInt32(481674261);
        int size = this.except_ids.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            abstractSerializedData.writeInt64(this.except_ids.get(i).longValue());
        }
    }
}
