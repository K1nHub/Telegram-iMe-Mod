package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_stories_exportStoryLink extends TLObject {
    public static int constructor = 2072899360;

    /* renamed from: id */
    public int f1741id;
    public TLRPC$InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$TL_exportedStoryLink.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        this.peer.serializeToStream(abstractSerializedData);
        abstractSerializedData.writeInt32(this.f1741id);
    }
}
