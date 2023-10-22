package org.telegram.tgnet;
/* renamed from: org.telegram.tgnet.TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow */
/* loaded from: classes5.dex */
public class C3701x72c667f extends TLRPC$PasswordKdfAlgo {
    public static int constructor = 982592842;

    /* renamed from: g */
    public int f1730g;

    /* renamed from: p */
    public byte[] f1731p;
    public byte[] salt1;
    public byte[] salt2;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
        this.salt1 = abstractSerializedData.readByteArray(z);
        this.salt2 = abstractSerializedData.readByteArray(z);
        this.f1730g = abstractSerializedData.readInt32(z);
        this.f1731p = abstractSerializedData.readByteArray(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(AbstractSerializedData abstractSerializedData) {
        abstractSerializedData.writeInt32(constructor);
        abstractSerializedData.writeByteArray(this.salt1);
        abstractSerializedData.writeByteArray(this.salt2);
        abstractSerializedData.writeInt32(this.f1730g);
        abstractSerializedData.writeByteArray(this.f1731p);
    }
}
