package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_notificationSoundRingtone extends TLRPC$NotificationSound {

    /* renamed from: id */
    public long f1720id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1720id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(-9666487);
        abstractSerializedData.writeInt64(this.f1720id);
    }
}
