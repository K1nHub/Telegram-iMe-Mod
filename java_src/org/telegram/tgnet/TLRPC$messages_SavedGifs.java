package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public abstract class TLRPC$messages_SavedGifs extends TLObject {
    public ArrayList<TLRPC$Document> gifs = new ArrayList<>();
    public long hash;

    public static TLRPC$messages_SavedGifs TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$messages_SavedGifs tLRPC$messages_SavedGifs;
        if (i != -2069878259) {
            tLRPC$messages_SavedGifs = i != -402498398 ? null : new TLRPC$messages_SavedGifs() { // from class: org.telegram.tgnet.TLRPC$TL_messages_savedGifsNotModified
                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                    abstractSerializedData2.writeInt32(-402498398);
                }
            };
        } else {
            tLRPC$messages_SavedGifs = new TLRPC$messages_SavedGifs() { // from class: org.telegram.tgnet.TLRPC$TL_messages_savedGifs
                @Override // org.telegram.tgnet.TLObject
                public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                    this.hash = abstractSerializedData2.readInt64(z2);
                    int readInt32 = abstractSerializedData2.readInt32(z2);
                    if (readInt32 != 481674261) {
                        if (z2) {
                            throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt32)));
                        }
                        return;
                    }
                    int readInt322 = abstractSerializedData2.readInt32(z2);
                    for (int i2 = 0; i2 < readInt322; i2++) {
                        TLRPC$Document TLdeserialize = TLRPC$Document.TLdeserialize(abstractSerializedData2, abstractSerializedData2.readInt32(z2), z2);
                        if (TLdeserialize == null) {
                            return;
                        }
                        this.gifs.add(TLdeserialize);
                    }
                }

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                    abstractSerializedData2.writeInt32(-2069878259);
                    abstractSerializedData2.writeInt64(this.hash);
                    abstractSerializedData2.writeInt32(481674261);
                    int size = this.gifs.size();
                    abstractSerializedData2.writeInt32(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        this.gifs.get(i2).serializeToStream(abstractSerializedData2);
                    }
                }
            };
        }
        if (tLRPC$messages_SavedGifs == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in messages_SavedGifs", Integer.valueOf(i)));
        }
        if (tLRPC$messages_SavedGifs != null) {
            tLRPC$messages_SavedGifs.readParams(abstractSerializedData, z);
        }
        return tLRPC$messages_SavedGifs;
    }
}
