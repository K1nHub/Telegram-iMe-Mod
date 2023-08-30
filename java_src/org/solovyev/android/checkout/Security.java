package org.solovyev.android.checkout;

import android.text.TextUtils;
import android.util.Log;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
/* loaded from: classes4.dex */
final class Security {
    public static boolean verifyPurchase(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || TextUtils.isEmpty(str3)) {
            Log.e("Billing/Security", "Purchase verification failed: missing data.");
            return false;
        }
        return verify(generatePublicKey(str), str2, str3);
    }

    public static PublicKey generatePublicKey(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str)));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e2) {
            Log.e("Billing/Security", "Invalid key specification.");
            throw new IllegalArgumentException(e2);
        } catch (Base64DecoderException e3) {
            Log.e("Billing/Security", "Base64 decoding failed.");
            throw new IllegalArgumentException(e3);
        }
    }

    public static boolean verify(PublicKey publicKey, String str, String str2) {
        try {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(publicKey);
            signature.update(str.getBytes());
            if (signature.verify(Base64.decode(str2))) {
                return true;
            }
            Log.e("Billing/Security", "Signature verification failed.");
            return false;
        } catch (InvalidKeyException unused) {
            Log.e("Billing/Security", "Invalid key specification.");
            return false;
        } catch (NoSuchAlgorithmException unused2) {
            Log.e("Billing/Security", "NoSuchAlgorithmException.");
            return false;
        } catch (SignatureException unused3) {
            Log.e("Billing/Security", "Signature exception.");
            return false;
        } catch (Base64DecoderException unused4) {
            Log.e("Billing/Security", "Base64 decoding failed.");
            return false;
        }
    }
}
