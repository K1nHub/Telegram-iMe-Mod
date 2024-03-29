package org.telegram.tgnet;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class TLRPC$TL_messageMediaGiveaway extends TLRPC$MessageMedia {
    public ArrayList<Long> channels = new ArrayList<>();
    public ArrayList<String> countries_iso2 = new ArrayList<>();
    public int months;
    public boolean only_new_subscribers;
    public String prize_description;
    public int quantity;
    public int until_date;
    public boolean winners_are_visible;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        this.only_new_subscribers = (readInt32 & 1) != 0;
        this.winners_are_visible = (readInt32 & 4) != 0;
        int readInt322 = abstractSerializedData.readInt32(z);
        if (readInt322 != 481674261) {
            if (z) {
                throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt322)));
            }
            return;
        }
        int readInt323 = abstractSerializedData.readInt32(z);
        for (int i = 0; i < readInt323; i++) {
            this.channels.add(Long.valueOf(abstractSerializedData.readInt64(z)));
        }
        if ((this.flags & 2) != 0) {
            int readInt324 = abstractSerializedData.readInt32(z);
            if (readInt324 != 481674261) {
                if (z) {
                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(readInt324)));
                }
                return;
            }
            int readInt325 = abstractSerializedData.readInt32(z);
            for (int i2 = 0; i2 < readInt325; i2++) {
                this.countries_iso2.add(abstractSerializedData.readString(z));
            }
        }
        if ((this.flags & 8) != 0) {
            this.prize_description = abstractSerializedData.readString(z);
        }
        this.quantity = abstractSerializedData.readInt32(z);
        this.months = abstractSerializedData.readInt32(z);
        this.until_date = abstractSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-626162256);
        int i = this.only_new_subscribers ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.winners_are_visible ? i | 4 : i & (-5);
        this.flags = i2;
        abstractSerializedData.writeInt32(i2);
        abstractSerializedData.writeInt32(481674261);
        int size = this.channels.size();
        abstractSerializedData.writeInt32(size);
        for (int i3 = 0; i3 < size; i3++) {
            abstractSerializedData.writeInt64(this.channels.get(i3).longValue());
        }
        if ((this.flags & 2) != 0) {
            abstractSerializedData.writeInt32(481674261);
            int size2 = this.countries_iso2.size();
            abstractSerializedData.writeInt32(size2);
            for (int i4 = 0; i4 < size2; i4++) {
                abstractSerializedData.writeString(this.countries_iso2.get(i4));
            }
        }
        if ((this.flags & 8) != 0) {
            abstractSerializedData.writeString(this.prize_description);
        }
        abstractSerializedData.writeInt32(this.quantity);
        abstractSerializedData.writeInt32(this.months);
        abstractSerializedData.writeInt32(this.until_date);
    }
}
