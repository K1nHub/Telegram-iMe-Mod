package org.telegram.tgnet;
/* loaded from: classes5.dex */
public abstract class TLRPC$messages_DhConfig extends TLObject {

    /* renamed from: g */
    public int f1761g;

    /* renamed from: p */
    public byte[] f1762p;
    public byte[] random;
    public int version;

    public static TLRPC$messages_DhConfig TLdeserialize(AbstractSerializedData abstractSerializedData, int i, boolean z) {
        TLRPC$messages_DhConfig tLRPC$messages_DhConfig;
        if (i == -1058912715) {
            tLRPC$messages_DhConfig = new TLRPC$messages_DhConfig() { // from class: org.telegram.tgnet.TLRPC$TL_messages_dhConfigNotModified
                @Override // org.telegram.tgnet.TLObject
                public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                    this.random = abstractSerializedData2.readByteArray(z2);
                }

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                    abstractSerializedData2.writeInt32(-1058912715);
                    abstractSerializedData2.writeByteArray(this.random);
                }
            };
        } else {
            tLRPC$messages_DhConfig = i != 740433629 ? null : new TLRPC$messages_DhConfig() { // from class: org.telegram.tgnet.TLRPC$TL_messages_dhConfig
                @Override // org.telegram.tgnet.TLObject
                public void readParams(AbstractSerializedData abstractSerializedData2, boolean z2) {
                    this.f1761g = abstractSerializedData2.readInt32(z2);
                    this.f1762p = abstractSerializedData2.readByteArray(z2);
                    this.version = abstractSerializedData2.readInt32(z2);
                    this.random = abstractSerializedData2.readByteArray(z2);
                }

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData2) {
                    abstractSerializedData2.writeInt32(740433629);
                    abstractSerializedData2.writeInt32(this.f1761g);
                    abstractSerializedData2.writeByteArray(this.f1762p);
                    abstractSerializedData2.writeInt32(this.version);
                    abstractSerializedData2.writeByteArray(this.random);
                }
            };
        }
        if (tLRPC$messages_DhConfig == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in messages_DhConfig", Integer.valueOf(i)));
        }
        if (tLRPC$messages_DhConfig != null) {
            tLRPC$messages_DhConfig.readParams(abstractSerializedData, z);
        }
        return tLRPC$messages_DhConfig;
    }
}
