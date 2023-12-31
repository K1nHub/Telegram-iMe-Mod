package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Updates;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_stories_activateStealthMode */
/* loaded from: classes5.dex */
public class TL_stories$TL_stories_activateStealthMode extends TLObject {
    public int flags;
    public boolean future;
    public boolean past;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(1471926630);
        int i = this.past ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.future ? i | 2 : i & (-3);
        this.flags = i2;
        abstractSerializedData.writeInt32(i2);
    }
}
