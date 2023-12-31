package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_messageActionBotAllowed extends TLRPC$MessageAction {
    public TLRPC$BotApp app;
    public boolean attach_menu;
    public String domain;
    public boolean from_request;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        int readInt32 = abstractSerializedData.readInt32(z);
        this.flags = readInt32;
        this.attach_menu = (readInt32 & 2) != 0;
        this.from_request = (readInt32 & 8) != 0;
        if ((readInt32 & 1) != 0) {
            this.domain = abstractSerializedData.readString(z);
        }
        if ((this.flags & 4) != 0) {
            this.app = TLRPC$BotApp.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-988359047);
        int i = this.attach_menu ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        int i2 = this.from_request ? i | 8 : i & (-9);
        this.flags = i2;
        abstractSerializedData.writeInt32(i2);
        if ((this.flags & 1) != 0) {
            abstractSerializedData.writeString(this.domain);
        }
        if ((this.flags & 4) != 0) {
            this.app.serializeToStream(abstractSerializedData);
        }
    }
}
