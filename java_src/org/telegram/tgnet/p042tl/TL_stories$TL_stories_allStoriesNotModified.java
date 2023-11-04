package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_stories_allStoriesNotModified */
/* loaded from: classes5.dex */
public class TL_stories$TL_stories_allStoriesNotModified extends TL_stories$stories_AllStories {
    public int flags;
    public String state;
    public TL_stories$TL_storiesStealthMode stealth_mode;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.flags = abstractSerializedData.readInt32(z);
        this.state = abstractSerializedData.readString(z);
        this.stealth_mode = TL_stories$TL_storiesStealthMode.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(291044926);
        abstractSerializedData.writeInt32(this.flags);
        abstractSerializedData.writeString(this.state);
        this.stealth_mode.serializeToStream(abstractSerializedData);
    }
}
