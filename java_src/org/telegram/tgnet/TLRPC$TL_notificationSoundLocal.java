package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_notificationSoundLocal extends TLRPC$NotificationSound {
    public String data;
    public String title;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.title = abstractSerializedData.readString(z);
        this.data = abstractSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-2096391452);
        abstractSerializedData.writeString(this.title);
        abstractSerializedData.writeString(this.data);
    }
}
