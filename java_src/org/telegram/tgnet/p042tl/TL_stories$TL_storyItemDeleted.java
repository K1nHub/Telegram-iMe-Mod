package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_storyItemDeleted */
/* loaded from: classes5.dex */
public class TL_stories$TL_storyItemDeleted extends TL_stories$StoryItem {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1763id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1374088783);
        abstractSerializedData.writeInt32(this.f1763id);
    }
}
