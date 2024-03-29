package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class TLRPC$TL_help_peerColors extends TLRPC$help_PeerColors {
    public ArrayList<TLRPC$TL_help_peerColorOption> colors = new ArrayList<>();
    public int hash;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.hash = abstractSerializedData.readInt32(z);
        int readInt32 = abstractSerializedData.readInt32(z);
        if (readInt32 != 481674261) {
            if (z) {
                throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt32)));
            }
            return;
        }
        int readInt322 = abstractSerializedData.readInt32(z);
        for (int i = 0; i < readInt322; i++) {
            this.colors.add(TLRPC$TL_help_peerColorOption.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z));
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(16313608);
        abstractSerializedData.writeInt32(this.hash);
        abstractSerializedData.writeInt32(481674261);
        int size = this.colors.size();
        abstractSerializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            this.colors.get(i).serializeToStream(abstractSerializedData);
        }
    }
}
