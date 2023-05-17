package org.telegram.messenger;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.KeyPermanentlyInvalidatedException;
import android.util.Base64;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import org.telegram.messenger.support.fingerprint.FingerprintManagerCompat;
import timber.log.Timber;
/* loaded from: classes4.dex */
public class FingerprintController {
    private static final String KEY_ALIAS = "tmessages_passcode";
    private static Cipher cipher;
    private static Boolean hasChangedFingerprints;
    private static KeyPairGenerator keyPairGenerator;
    private static KeyStore keyStore;

    public static boolean createCipher() {
        try {
            cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
            Timber.m6e(e);
            return false;
        }
    }

    public static Cipher getCipher() {
        return cipher;
    }

    public static String encode(String str) {
        try {
            initEncodeCipher();
            return Base64.encodeToString(cipher.doFinal(str.getBytes()), 2);
        } catch (Exception e) {
            Timber.m6e(e);
            return null;
        }
    }

    public static String decode(String str, Cipher cipher2) {
        try {
            return new String(cipher2.doFinal(Base64.decode(str, 2)));
        } catch (Exception e) {
            Timber.m6e(e);
            return null;
        }
    }

    public static void initDecodeCipher() {
        try {
            cipher.init(2, keyStore.getKey(KEY_ALIAS, null));
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }

    private static void initEncodeCipher() {
        try {
            PublicKey publicKey = keyStore.getCertificate(KEY_ALIAS).getPublicKey();
            cipher.init(1, KeyFactory.getInstance(publicKey.getAlgorithm()).generatePublic(new X509EncodedKeySpec(publicKey.getEncoded())), new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA1, PSource.PSpecified.DEFAULT));
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }

    private static KeyStore getKeyStore() {
        KeyStore keyStore2 = keyStore;
        if (keyStore2 != null) {
            return keyStore2;
        }
        try {
            KeyStore keyStore3 = KeyStore.getInstance("AndroidKeyStore");
            keyStore = keyStore3;
            keyStore3.load(null);
            return keyStore;
        } catch (Exception e) {
            FileLog.m49e(e);
            return null;
        }
    }

    private static KeyPairGenerator getKeyPairGenerator() {
        KeyPairGenerator keyPairGenerator2 = keyPairGenerator;
        if (keyPairGenerator2 != null) {
            return keyPairGenerator2;
        }
        try {
            KeyPairGenerator keyPairGenerator3 = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
            keyPairGenerator = keyPairGenerator3;
            return keyPairGenerator3;
        } catch (Exception e) {
            FileLog.m49e(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void generateNewKey(final boolean z) {
        KeyPairGenerator keyPairGenerator2 = getKeyPairGenerator();
        if (keyPairGenerator2 != null) {
            try {
                Locale locale = Locale.getDefault();
                setLocale(Locale.ENGLISH);
                keyPairGenerator2.initialize(new KeyGenParameterSpec.Builder(KEY_ALIAS, 3).setDigests("SHA-256", "SHA-512").setEncryptionPaddings("OAEPPadding").setUserAuthenticationRequired(true).build());
                keyPairGenerator2.generateKeyPair();
                setLocale(locale);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FingerprintController$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FingerprintController.lambda$generateNewKey$0(z);
                    }
                });
            } catch (InvalidAlgorithmParameterException e) {
                FileLog.m49e(e);
            } catch (Exception e2) {
                if (e2.getClass().getName().equals("android.security.KeyStoreException")) {
                    return;
                }
                FileLog.m49e(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$generateNewKey$0(boolean z) {
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didGenerateFingerprintKeyPair, Boolean.valueOf(z));
    }

    public static void deleteInvalidKey() {
        try {
            getKeyStore().deleteEntry(KEY_ALIAS);
        } catch (KeyStoreException e) {
            FileLog.m49e(e);
        }
        hasChangedFingerprints = null;
        checkKeyReady(false);
    }

    public static void checkKeyReady() {
        checkKeyReady(true);
    }

    public static void checkKeyReady(final boolean z) {
        if (!isKeyReady() && AndroidUtilities.isKeyguardSecure() && FingerprintManagerCompat.from(ApplicationLoader.applicationContext).isHardwareDetected() && FingerprintManagerCompat.from(ApplicationLoader.applicationContext).hasEnrolledFingerprints()) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FingerprintController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FingerprintController.generateNewKey(z);
                }
            });
        }
    }

    public static boolean isKeyReady() {
        try {
            return getKeyStore().containsAlias(KEY_ALIAS);
        } catch (KeyStoreException e) {
            FileLog.m49e(e);
            return false;
        }
    }

    public static boolean checkDeviceFingerprintsChanged() {
        Boolean bool = hasChangedFingerprints;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding").init(2, keyStore.getKey(KEY_ALIAS, null));
            hasChangedFingerprints = Boolean.FALSE;
            return false;
        } catch (KeyPermanentlyInvalidatedException unused) {
            hasChangedFingerprints = Boolean.TRUE;
            return true;
        } catch (Exception e) {
            FileLog.m49e(e);
            hasChangedFingerprints = Boolean.FALSE;
            return false;
        }
    }

    private static void setLocale(Locale locale) {
        Locale.setDefault(locale);
        Resources resources = ApplicationLoader.applicationContext.getResources();
        Configuration configuration = resources.getConfiguration();
        configuration.setLocale(locale);
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }
}
