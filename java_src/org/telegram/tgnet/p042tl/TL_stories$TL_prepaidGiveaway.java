package org.telegram.tgnet.p042tl;

import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.TLObject;
/* renamed from: org.telegram.tgnet.tl.TL_stories$TL_prepaidGiveaway */
/* loaded from: classes5.dex */
public class TL_stories$TL_prepaidGiveaway extends TLObject {
    public static int constructor = -1303143084;
    public int date;

    /* renamed from: id */
    public long f1770id;
    public int months;
    public int quantity;

    public static TL_stories$TL_prepaidGiveaway TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        if (constructor != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_prepaidGiveaway", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_prepaidGiveaway tL_stories$TL_prepaidGiveaway = new TL_stories$TL_prepaidGiveaway();
        tL_stories$TL_prepaidGiveaway.readParams(abstractSerializedData, z);
        return tL_stories$TL_prepaidGiveaway;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1770id = abstractSerializedData.readInt64(z);
        this.months = abstractSerializedData.readInt32(z);
        this.quantity = abstractSerializedData.readInt32(z);
        this.date = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1770id);
        abstractSerializedData.writeInt32(this.months);
        abstractSerializedData.writeInt32(this.quantity);
        abstractSerializedData.writeInt32(this.date);
    }
}
