package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
/* renamed from: org.telegram.tgnet.tl.TL_chatlists$TL_inputChatlistDialogFilter */
/* loaded from: classes5.dex */
public class TL_chatlists$TL_inputChatlistDialogFilter extends TLObject {
    public int filter_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.filter_id = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-203367885);
        abstractSerializedData.writeInt32(this.filter_id);
    }
}
