package com.microsoft.appcenter.utils.crypto;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import com.microsoft.appcenter.utils.crypto.CryptoUtils;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes4.dex */
public class CryptoAesAndEtmHandler implements CryptoHandler {
    @Override // com.microsoft.appcenter.utils.crypto.CryptoHandler
    public String getAlgorithm() {
        return "AES/CBC/PKCS7Padding/256/HmacSHA256";
    }

    @Override // com.microsoft.appcenter.utils.crypto.CryptoHandler
    public void generateKey(CryptoUtils.ICryptoFactory cryptoFactory, String alias, Context context) throws Exception {
        Calendar calendar = Calendar.getInstance();
        calendar.add(1, 1);
        CryptoUtils.IKeyGenerator keyGenerator = cryptoFactory.getKeyGenerator("HmacSHA256", "AndroidKeyStore");
        keyGenerator.init(new KeyGenParameterSpec.Builder(alias, 4).setKeyValidityForOriginationEnd(calendar.getTime()).build());
        keyGenerator.generateKey();
    }

    @Override // com.microsoft.appcenter.utils.crypto.CryptoHandler
    public byte[] encrypt(CryptoUtils.ICryptoFactory cryptoFactory, int apiLevel, KeyStore.Entry keyStoreEntry, byte[] input) throws Exception {
        SecretKey secretKey = ((KeyStore.SecretKeyEntry) keyStoreEntry).getSecretKey();
        byte[] subkey = getSubkey(secretKey, 32);
        byte[] subkey2 = getSubkey(secretKey, 16);
        CryptoUtils.ICipher cipher = cryptoFactory.getCipher("AES/CBC/PKCS7Padding", null);
        cipher.init(1, new SecretKeySpec(subkey, "AES"));
        byte[] iv = cipher.getIV();
        byte[] doFinal = cipher.doFinal(input);
        byte[] macBytes = getMacBytes(subkey2, iv, doFinal);
        ByteBuffer allocate = ByteBuffer.allocate(iv.length + 1 + 1 + macBytes.length + doFinal.length);
        allocate.put((byte) iv.length);
        allocate.put(iv);
        allocate.put((byte) macBytes.length);
        allocate.put(macBytes);
        allocate.put(doFinal);
        return allocate.array();
    }

    @Override // com.microsoft.appcenter.utils.crypto.CryptoHandler
    public byte[] decrypt(CryptoUtils.ICryptoFactory cryptoFactory, int apiLevel, KeyStore.Entry keyStoreEntry, byte[] data) throws Exception {
        ByteBuffer wrap = ByteBuffer.wrap(data);
        int i = wrap.get();
        if (i != 16) {
            throw new IllegalArgumentException("Invalid IV length.");
        }
        byte[] bArr = new byte[i];
        wrap.get(bArr);
        int i2 = wrap.get();
        if (i2 != 32) {
            throw new IllegalArgumentException("Invalid MAC length.");
        }
        byte[] bArr2 = new byte[i2];
        wrap.get(bArr2);
        byte[] bArr3 = new byte[wrap.remaining()];
        wrap.get(bArr3);
        SecretKey secretKey = ((KeyStore.SecretKeyEntry) keyStoreEntry).getSecretKey();
        byte[] subkey = getSubkey(secretKey, 32);
        if (!MessageDigest.isEqual(getMacBytes(getSubkey(secretKey, 16), bArr, bArr3), bArr2)) {
            throw new SecurityException("Could not authenticate MAC value.");
        }
        CryptoUtils.ICipher cipher = cryptoFactory.getCipher("AES/CBC/PKCS7Padding", null);
        cipher.init(2, new SecretKeySpec(subkey, "AES"), new IvParameterSpec(bArr));
        return cipher.doFinal(bArr3);
    }

    private byte[] getMacBytes(byte[] authKey, byte[] iv, byte[] cipherText) throws InvalidKeyException, NoSuchAlgorithmException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(authKey, "HmacSHA256");
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKeySpec);
        mac.update(iv);
        mac.update(cipherText);
        return mac.doFinal();
    }

    byte[] getSubkey(SecretKey secretKey, int outputDataLength) throws NoSuchAlgorithmException, InvalidKeyException {
        if (outputDataLength < 1) {
            throw new IllegalArgumentException("Output data length must be greater than zero.");
        }
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKey);
        int ceil = (int) Math.ceil(outputDataLength / mac.getMacLength());
        if (ceil > 255) {
            throw new IllegalArgumentException("Output data length must be maximum of 255 * hash-length.");
        }
        byte[] bArr = new byte[0];
        ByteBuffer allocate = ByteBuffer.allocate(outputDataLength);
        int i = 0;
        while (i < ceil) {
            mac.update(bArr);
            i++;
            mac.update((byte) i);
            bArr = mac.doFinal();
            int min = Math.min(outputDataLength, bArr.length);
            allocate.put(bArr, 0, min);
            outputDataLength -= min;
        }
        return allocate.array();
    }
}
