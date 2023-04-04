package com.iMe.storage.data.utils.extentions;

import android.util.Base64;
import com.iMe.storage.data.utils.crypto.AESUtil;
import java.io.UnsupportedEncodingException;
import java.security.SecureRandom;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.util.encoders.Hex;
import timber.log.Timber;
/* compiled from: CryptoExt.kt */
/* loaded from: classes3.dex */
public final class CryptoExtKt {
    public static final String aesEncrypt(String textToEncrypt, String password) throws Exception {
        Intrinsics.checkNotNullParameter(textToEncrypt, "textToEncrypt");
        Intrinsics.checkNotNullParameter(password, "password");
        AESUtil aESUtil = AESUtil.INSTANCE;
        byte[] bytes = textToEncrypt.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return AESUtil.encrypt$default(aESUtil, Base64.encodeToString(bytes, 0), password, 0, 4, null);
    }

    public static final String aesDecrypt(String textToDecrypt, String password) throws UnsupportedEncodingException, InvalidCipherTextException, AESUtil.DecryptionException {
        Intrinsics.checkNotNullParameter(textToDecrypt, "textToDecrypt");
        Intrinsics.checkNotNullParameter(password, "password");
        byte[] decode = Base64.decode(AESUtil.decrypt$default(AESUtil.INSTANCE, textToDecrypt, password, 0, 4, null), 0);
        Intrinsics.checkNotNullExpressionValue(decode, "decode(AESUtil.decrypt(t…assword), Base64.DEFAULT)");
        return new String(decode, Charsets.UTF_8);
    }

    public static final String safeAesDecrypt(String textToDecrypt, String password) {
        Intrinsics.checkNotNullParameter(textToDecrypt, "textToDecrypt");
        Intrinsics.checkNotNullParameter(password, "password");
        try {
            byte[] decode = Base64.decode(AESUtil.decrypt$default(AESUtil.INSTANCE, textToDecrypt, password, 0, 4, null), 0);
            Intrinsics.checkNotNullExpressionValue(decode, "decode(AESUtil.decrypt(t…assword), Base64.DEFAULT)");
            return new String(decode, Charsets.UTF_8);
        } catch (Exception e) {
            Timber.m4e(e);
            return "";
        }
    }

    public static final String randomString() {
        byte[] bArr = new byte[32];
        new SecureRandom().nextBytes(bArr);
        byte[] encode = Hex.encode(bArr);
        Intrinsics.checkNotNullExpressionValue(encode, "encode(bytes)");
        return new String(encode, Charsets.UTF_8);
    }
}
