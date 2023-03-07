package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.exceptions.InvalidHmacException;
import com.trustwallet.walletconnect.extensions.ByteArrayKt;
import com.trustwallet.walletconnect.extensions.StringKt;
import com.trustwallet.walletconnect.models.WCEncryptionPayload;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCCipher.kt */
/* loaded from: classes3.dex */
public final class WCCipher {
    public static final WCCipher INSTANCE = new WCCipher();

    private WCCipher() {
    }

    public final WCEncryptionPayload encrypt(byte[] data, byte[] key) {
        String str;
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(key, "key");
        byte[] randomBytes = randomBytes(16);
        SecretKeySpec secretKeySpec = new SecretKeySpec(key, "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(randomBytes);
        str = WCCipherKt.CIPHER_ALGORITHM;
        Cipher cipher = Cipher.getInstance(str);
        cipher.init(1, secretKeySpec, ivParameterSpec);
        byte[] encryptedData = cipher.doFinal(data);
        Intrinsics.checkNotNullExpressionValue(encryptedData, "encryptedData");
        return new WCEncryptionPayload(ByteArrayKt.toHex(encryptedData), computeHmac(encryptedData, randomBytes, key), ByteArrayKt.toHex(randomBytes));
    }

    public final byte[] decrypt(WCEncryptionPayload payload, byte[] key) {
        String str;
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(key, "key");
        byte[] hexStringToByteArray = StringKt.hexStringToByteArray(payload.getData());
        byte[] hexStringToByteArray2 = StringKt.hexStringToByteArray(payload.getIv());
        String computeHmac = computeHmac(hexStringToByteArray, hexStringToByteArray2, key);
        String lowerCase = payload.getHmac().toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
        if (!Intrinsics.areEqual(computeHmac, lowerCase)) {
            throw new InvalidHmacException();
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(key, "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(hexStringToByteArray2);
        str = WCCipherKt.CIPHER_ALGORITHM;
        Cipher cipher = Cipher.getInstance(str);
        cipher.init(2, secretKeySpec, ivParameterSpec);
        byte[] doFinal = cipher.doFinal(hexStringToByteArray);
        Intrinsics.checkNotNullExpressionValue(doFinal, "cipher.doFinal(data)");
        return doFinal;
    }

    private final String computeHmac(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        String str;
        byte[] plus;
        String str2;
        str = WCCipherKt.MAC_ALGORITHM;
        Mac mac = Mac.getInstance(str);
        plus = ArraysKt___ArraysJvmKt.plus(bArr, bArr2);
        str2 = WCCipherKt.MAC_ALGORITHM;
        mac.init(new SecretKeySpec(bArr3, str2));
        byte[] doFinal = mac.doFinal(plus);
        Intrinsics.checkNotNullExpressionValue(doFinal, "mac.doFinal(payload)");
        return ByteArrayKt.toHex(doFinal);
    }

    private final byte[] randomBytes(int i) {
        byte[] bArr = new byte[i];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }
}
