package org.telegram.tgnet;

import android.graphics.Path;
import org.telegram.messenger.SvgHelper;
/* loaded from: classes5.dex */
public class TLRPC$TL_photoPathSize extends TLRPC$PhotoSize {
    public Path svgPath;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.type = abstractSerializedData.readString(z);
        byte[] readByteArray = abstractSerializedData.readByteArray(z);
        this.bytes = readByteArray;
        this.f1633h = 50;
        this.f1634w = 50;
        this.svgPath = SvgHelper.doPath(SvgHelper.decompress(readByteArray));
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-668906175);
        abstractSerializedData.writeString(this.type);
        abstractSerializedData.writeByteArray(this.bytes);
    }
}
