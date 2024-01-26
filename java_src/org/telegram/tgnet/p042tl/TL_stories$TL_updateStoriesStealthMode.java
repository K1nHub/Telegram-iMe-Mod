package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLRPC$Update;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_updateStoriesStealthMode */
/* loaded from: classes5.dex */
public class TL_stories$TL_updateStoriesStealthMode extends TLRPC$Update {
    public TL_stories$TL_storiesStealthMode stealth_mode;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.stealth_mode = TL_stories$TL_storiesStealthMode.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(738741697);
        this.stealth_mode.serializeToStream(abstractSerializedData);
    }
}
