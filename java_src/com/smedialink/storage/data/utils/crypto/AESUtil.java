package com.smedialink.storage.data.utils.crypto;

import com.google.android.exoplayer2.DefaultLoadControl;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.apache.commons.codec.binary.Base64;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.modes.OFBBlockCipher;
import org.bouncycastle.crypto.paddings.BlockCipherPadding;
import org.bouncycastle.crypto.paddings.ISO10126d2Padding;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* compiled from: AESUtil.kt */
/* loaded from: classes3.dex */
public final class AESUtil {
    public static final AESUtil INSTANCE = new AESUtil();

    private AESUtil() {
    }

    public static /* synthetic */ String encrypt$default(AESUtil aESUtil, String str, String str2, int i, int i2, Object obj) throws Exception {
        if ((i2 & 4) != 0) {
            i = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS;
        }
        return aESUtil.encrypt(str, str2, i);
    }

    public final String encrypt(String str, String str2, int i) throws Exception {
        return encryptWithSetMode(str, str2, i, 0, new ISO10126d2Padding());
    }

    public static /* synthetic */ String decrypt$default(AESUtil aESUtil, String str, String str2, int i, int i2, Object obj) throws UnsupportedEncodingException, InvalidCipherTextException, DecryptionException {
        if ((i2 & 4) != 0) {
            i = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS;
        }
        return aESUtil.decrypt(str, str2, i);
    }

    public final String decrypt(String str, String str2, int i) throws UnsupportedEncodingException, InvalidCipherTextException, DecryptionException {
        return decryptWithSetMode(str, str2, i, 0, new ISO10126d2Padding());
    }

    public final String decryptWithSetMode(String str, String str2, int i, int i2, BlockCipherPadding blockCipherPadding) throws InvalidCipherTextException, UnsupportedEncodingException, DecryptionException {
        BlockCipher oFBBlockCipher;
        BufferedBlockCipher bufferedBlockCipher;
        if (str2 != null) {
            if (str == null) {
                throw new Exception("Cipher text null");
            }
            Charset charset = Charsets.UTF_8;
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            byte[] cipherData = Base64.decodeBase64(bytes);
            Intrinsics.checkNotNullExpressionValue(cipherData, "cipherData");
            byte[] copyOfRange = copyOfRange(cipherData, 0, 16);
            byte[] copyOfRange2 = copyOfRange(cipherData, 16, cipherData.length);
            PKCS5S2ParametersGenerator pKCS5S2ParametersGenerator = new PKCS5S2ParametersGenerator();
            char[] charArray = str2.toCharArray();
            Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
            pKCS5S2ParametersGenerator.init(PBEParametersGenerator.PKCS5PasswordToUTF8Bytes(charArray), copyOfRange, i);
            CipherParameters generateDerivedParameters = pKCS5S2ParametersGenerator.generateDerivedParameters(256);
            Intrinsics.checkNotNull(generateDerivedParameters, "null cannot be cast to non-null type org.bouncycastle.crypto.params.KeyParameter");
            ParametersWithIV parametersWithIV = new ParametersWithIV((KeyParameter) generateDerivedParameters, copyOfRange);
            if (i2 == 0) {
                oFBBlockCipher = new CBCBlockCipher(new AESEngine());
            } else {
                oFBBlockCipher = new OFBBlockCipher(new AESEngine(), 128);
            }
            if (blockCipherPadding != null) {
                bufferedBlockCipher = new PaddedBufferedBlockCipher(oFBBlockCipher, blockCipherPadding);
            } else {
                bufferedBlockCipher = new BufferedBlockCipher(oFBBlockCipher);
            }
            bufferedBlockCipher.reset();
            bufferedBlockCipher.init(false, parametersWithIV);
            byte[] bArr = new byte[bufferedBlockCipher.getOutputSize(copyOfRange2.length)];
            int processBytes = bufferedBlockCipher.processBytes(copyOfRange2, 0, copyOfRange2.length, bArr, 0);
            int doFinal = processBytes + bufferedBlockCipher.doFinal(bArr, processBytes);
            byte[] bArr2 = new byte[doFinal];
            System.arraycopy(bArr, 0, bArr2, 0, doFinal);
            String str3 = new String(bArr2, charset);
            if (str3.length() == 0) {
                throw new DecryptionException("Decrypted string is empty.");
            }
            return str3;
        }
        throw new Exception("Password null");
    }

    private final byte[] copyOfRange(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        return bArr2;
    }

    private final String encryptWithSetMode(String str, String str2, int i, int i2, BlockCipherPadding blockCipherPadding) throws Exception {
        BlockCipher oFBBlockCipher;
        BufferedBlockCipher bufferedBlockCipher;
        if (str2 != null) {
            if (str == null) {
                throw new Exception("Clear text null");
            }
            byte[] bArr = new byte[16];
            new SecureRandom().nextBytes(bArr);
            Charset charset = Charsets.UTF_8;
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            PKCS5S2ParametersGenerator pKCS5S2ParametersGenerator = new PKCS5S2ParametersGenerator();
            char[] charArray = str2.toCharArray();
            Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
            pKCS5S2ParametersGenerator.init(PBEParametersGenerator.PKCS5PasswordToUTF8Bytes(charArray), bArr, i);
            CipherParameters generateDerivedParameters = pKCS5S2ParametersGenerator.generateDerivedParameters(256);
            Intrinsics.checkNotNull(generateDerivedParameters, "null cannot be cast to non-null type org.bouncycastle.crypto.params.KeyParameter");
            ParametersWithIV parametersWithIV = new ParametersWithIV((KeyParameter) generateDerivedParameters, bArr);
            if (i2 == 0) {
                oFBBlockCipher = new CBCBlockCipher(new AESEngine());
            } else {
                oFBBlockCipher = new OFBBlockCipher(new AESEngine(), 128);
            }
            if (blockCipherPadding != null) {
                bufferedBlockCipher = new PaddedBufferedBlockCipher(oFBBlockCipher, blockCipherPadding);
            } else {
                bufferedBlockCipher = new BufferedBlockCipher(oFBBlockCipher);
            }
            bufferedBlockCipher.reset();
            bufferedBlockCipher.init(true, parametersWithIV);
            byte[] cipherData = cipherData(bufferedBlockCipher, bytes);
            int length = cipherData.length;
            byte[] bArr2 = new byte[16 + length];
            System.arraycopy(bArr, 0, bArr2, 0, 16);
            System.arraycopy(cipherData, 0, bArr2, 16, length);
            byte[] raw = Base64.encodeBase64(bArr2);
            Intrinsics.checkNotNullExpressionValue(raw, "raw");
            return new String(raw, charset);
        }
        throw new Exception("Password null");
    }

    private final byte[] cipherData(BufferedBlockCipher bufferedBlockCipher, byte[] bArr) {
        int i;
        byte[] bArr2 = new byte[bufferedBlockCipher.getOutputSize(bArr.length)];
        int processBytes = bufferedBlockCipher.processBytes(bArr, 0, bArr.length, bArr2, 0);
        try {
            i = bufferedBlockCipher.doFinal(bArr2, processBytes);
        } catch (InvalidCipherTextException e) {
            e.printStackTrace();
            i = -1;
        }
        int i2 = processBytes + i;
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr2, 0, bArr3, 0, i2);
        return bArr3;
    }

    /* compiled from: AESUtil.kt */
    /* loaded from: classes3.dex */
    public static final class DecryptionException extends Exception {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DecryptionException(String message) {
            super(message);
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }
}
