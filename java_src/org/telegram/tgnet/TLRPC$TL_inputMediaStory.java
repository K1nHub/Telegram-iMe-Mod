package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_inputMediaStory extends TLRPC$InputMedia {
    public static int constructor = -1979852936;

    /* renamed from: id */
    public int f1671id;
    public TLRPC$InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.peer = TLRPC$InputPeer.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        this.f1671id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1671id);
    }
}
