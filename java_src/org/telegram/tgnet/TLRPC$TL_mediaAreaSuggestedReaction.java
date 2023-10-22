package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_mediaAreaSuggestedReaction extends TLRPC$MediaArea {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        this.dark = (readInt32 & 1) != 0;
        this.flipped = (readInt32 & 2) != 0;
        this.coordinates = TLRPC$TL_mediaAreaCoordinates.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.reaction = TLRPC$Reaction.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(340088945);
        int i = this.dark ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.flipped ? i | 2 : i & (-3);
        this.flags = i2;
        abstractSerializedData.writeInt32(i2);
        this.coordinates.serializeToStream(abstractSerializedData);
        this.reaction.serializeToStream(abstractSerializedData);
    }
}
