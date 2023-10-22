package org.telegram.tgnet;
/* loaded from: classes5.dex */
public class TLRPC$TL_notificationSoundRingtone extends TLRPC$NotificationSound {
    public static int constructor = -9666487;

    /* renamed from: id */
    public long f1723id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.f1723id = abstractSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeInt64(this.f1723id);
    }
}
