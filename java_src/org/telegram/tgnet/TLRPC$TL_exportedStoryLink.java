package org.telegram.tgnet;
/* loaded from: classes4.dex */
public class TLRPC$TL_exportedStoryLink extends TLObject {
    public static int constructor = 1070138683;
    public String link;

    public static TLRPC$TL_exportedStoryLink TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (constructor != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_exportedStoryLink", Integer.valueOf(i)));
            }
            return null;
        }
        TLRPC$TL_exportedStoryLink tLRPC$TL_exportedStoryLink = new TLRPC$TL_exportedStoryLink();
        tLRPC$TL_exportedStoryLink.readParams(abstractSerializedData, z);
        return tLRPC$TL_exportedStoryLink;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.link = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeString(this.link);
    }
}
