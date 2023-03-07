package org.web3j.crypto;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.jcajce.provider.digest.Keccak$DigestKeccak;
import org.web3j.compat.Compat;
import org.web3j.utils.Numeric;
/* loaded from: classes6.dex */
public class Hash {
    public static String sha3(String str) {
        return Numeric.toHexString(sha3(Numeric.hexStringToByteArray(str)));
    }

    public static byte[] sha3(byte[] bArr, int i, int i2) {
        Keccak$DigestKeccak keccak$DigestKeccak = new Keccak$DigestKeccak() { // from class: org.bouncycastle.jcajce.provider.digest.Keccak$Digest256
        };
        keccak$DigestKeccak.update(bArr, i, i2);
        return keccak$DigestKeccak.digest();
    }

    public static byte[] sha3(byte[] bArr) {
        return sha3(bArr, 0, bArr.length);
    }

    public static String sha3String(String str) {
        return Numeric.toHexString(sha3(str.getBytes(Compat.UTF_8)));
    }

    public static byte[] sha256(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA-256").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Couldn't find a SHA-256 provider", e);
        }
    }

    public static byte[] hmacSha512(byte[] bArr, byte[] bArr2) {
        HMac hMac = new HMac(new SHA512Digest());
        hMac.init(new KeyParameter(bArr));
        hMac.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[64];
        hMac.doFinal(bArr3, 0);
        return bArr3;
    }

    public static byte[] sha256hash160(byte[] bArr) {
        byte[] sha256 = sha256(bArr);
        RIPEMD160Digest rIPEMD160Digest = new RIPEMD160Digest();
        rIPEMD160Digest.update(sha256, 0, sha256.length);
        byte[] bArr2 = new byte[20];
        rIPEMD160Digest.doFinal(bArr2, 0);
        return bArr2;
    }
}
