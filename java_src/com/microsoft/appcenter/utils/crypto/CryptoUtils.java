package com.microsoft.appcenter.utils.crypto;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import com.microsoft.appcenter.utils.AppCenterLog;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.cert.CertificateExpiredException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Date;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
/* loaded from: classes4.dex */
public class CryptoUtils {
    static final ICryptoFactory DEFAULT_CRYPTO_FACTORY = new ICryptoFactory() { // from class: com.microsoft.appcenter.utils.crypto.CryptoUtils.1
        @Override // com.microsoft.appcenter.utils.crypto.CryptoUtils.ICryptoFactory
        public IKeyGenerator getKeyGenerator(String algorithm, String provider) throws Exception {
            final KeyGenerator keyGenerator = KeyGenerator.getInstance(algorithm, provider);
            return new IKeyGenerator(this) { // from class: com.microsoft.appcenter.utils.crypto.CryptoUtils.1.1
                @Override // com.microsoft.appcenter.utils.crypto.CryptoUtils.IKeyGenerator
                public void init(AlgorithmParameterSpec parameters) throws Exception {
                    keyGenerator.init(parameters);
                }

                @Override // com.microsoft.appcenter.utils.crypto.CryptoUtils.IKeyGenerator
                public void generateKey() {
                    keyGenerator.generateKey();
                }
            };
        }

        @Override // com.microsoft.appcenter.utils.crypto.CryptoUtils.ICryptoFactory
        public ICipher getCipher(String transformation, String provider) throws Exception {
            final Cipher cipher;
            if (provider != null) {
                cipher = Cipher.getInstance(transformation, provider);
            } else {
                cipher = Cipher.getInstance(transformation);
            }
            return new ICipher(this) { // from class: com.microsoft.appcenter.utils.crypto.CryptoUtils.1.2
                @Override // com.microsoft.appcenter.utils.crypto.CryptoUtils.ICipher
                public void init(int opMode, Key key) throws Exception {
                    cipher.init(opMode, key);
                }

                @Override // com.microsoft.appcenter.utils.crypto.CryptoUtils.ICipher
                public void init(int opMode, Key key, AlgorithmParameterSpec params) throws Exception {
                    cipher.init(opMode, key, params);
                }

                @Override // com.microsoft.appcenter.utils.crypto.CryptoUtils.ICipher
                public byte[] doFinal(byte[] input) throws Exception {
                    return cipher.doFinal(input);
                }

                @Override // com.microsoft.appcenter.utils.crypto.CryptoUtils.ICipher
                public byte[] doFinal(byte[] input, int inputOffset, int inputLength) throws Exception {
                    return cipher.doFinal(input, inputOffset, inputLength);
                }

                @Override // com.microsoft.appcenter.utils.crypto.CryptoUtils.ICipher
                public byte[] getIV() {
                    return cipher.getIV();
                }

                @Override // com.microsoft.appcenter.utils.crypto.CryptoUtils.ICipher
                public int getBlockSize() {
                    return cipher.getBlockSize();
                }
            };
        }
    };
    private static CryptoUtils sInstance;
    private final int mApiLevel;
    private final Context mContext;
    private final ICryptoFactory mCryptoFactory;
    private final Map<String, CryptoHandlerEntry> mCryptoHandlers;
    private final KeyStore mKeyStore;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface ICipher {
        byte[] doFinal(byte[] input) throws Exception;

        byte[] doFinal(byte[] input, int inputOffset, int inputLength) throws Exception;

        int getBlockSize();

        byte[] getIV();

        void init(int opMode, Key key) throws Exception;

        void init(int opMode, Key key, AlgorithmParameterSpec params) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface ICryptoFactory {
        ICipher getCipher(String algorithm, String provider) throws Exception;

        IKeyGenerator getKeyGenerator(String algorithm, String provider) throws Exception;
    }

    /* loaded from: classes4.dex */
    interface IKeyGenerator {
        void generateKey();

        void init(AlgorithmParameterSpec parameters) throws Exception;
    }

    private CryptoUtils(Context context) {
        this(context, DEFAULT_CRYPTO_FACTORY, Build.VERSION.SDK_INT);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    CryptoUtils(android.content.Context r3, com.microsoft.appcenter.utils.crypto.CryptoUtils.ICryptoFactory r4, int r5) {
        /*
            r2 = this;
            java.lang.String r0 = "AppCenter"
            r2.<init>()
            java.util.LinkedHashMap r1 = new java.util.LinkedHashMap
            r1.<init>()
            r2.mCryptoHandlers = r1
            android.content.Context r3 = r3.getApplicationContext()
            r2.mContext = r3
            r2.mCryptoFactory = r4
            r2.mApiLevel = r5
            r3 = 0
            java.lang.String r4 = "AndroidKeyStore"
            java.security.KeyStore r4 = java.security.KeyStore.getInstance(r4)     // Catch: java.lang.Exception -> L22
            r4.load(r3)     // Catch: java.lang.Exception -> L21
            goto L28
        L21:
            r3 = r4
        L22:
            java.lang.String r4 = "Cannot use secure keystore on this device."
            com.microsoft.appcenter.utils.AppCenterLog.error(r0, r4)
            r4 = r3
        L28:
            r2.mKeyStore = r4
            if (r4 == 0) goto L46
            r3 = 23
            if (r5 < r3) goto L46
            com.microsoft.appcenter.utils.crypto.CryptoAesAndEtmHandler r3 = new com.microsoft.appcenter.utils.crypto.CryptoAesAndEtmHandler     // Catch: java.lang.Exception -> L41
            r3.<init>()     // Catch: java.lang.Exception -> L41
            r2.registerHandler(r3)     // Catch: java.lang.Exception -> L41
            com.microsoft.appcenter.utils.crypto.CryptoAesHandler r3 = new com.microsoft.appcenter.utils.crypto.CryptoAesHandler     // Catch: java.lang.Exception -> L41
            r3.<init>()     // Catch: java.lang.Exception -> L41
            r2.registerHandler(r3)     // Catch: java.lang.Exception -> L41
            goto L46
        L41:
            java.lang.String r3 = "Cannot use modern encryption on this device."
            com.microsoft.appcenter.utils.AppCenterLog.error(r0, r3)
        L46:
            if (r4 == 0) goto L56
            com.microsoft.appcenter.utils.crypto.CryptoRsaHandler r3 = new com.microsoft.appcenter.utils.crypto.CryptoRsaHandler     // Catch: java.lang.Exception -> L51
            r3.<init>()     // Catch: java.lang.Exception -> L51
            r2.registerHandler(r3)     // Catch: java.lang.Exception -> L51
            goto L56
        L51:
            java.lang.String r3 = "Cannot use old encryption on this device."
            com.microsoft.appcenter.utils.AppCenterLog.error(r0, r3)
        L56:
            com.microsoft.appcenter.utils.crypto.CryptoNoOpHandler r3 = new com.microsoft.appcenter.utils.crypto.CryptoNoOpHandler
            r3.<init>()
            java.util.Map<java.lang.String, com.microsoft.appcenter.utils.crypto.CryptoUtils$CryptoHandlerEntry> r4 = r2.mCryptoHandlers
            java.lang.String r5 = r3.getAlgorithm()
            com.microsoft.appcenter.utils.crypto.CryptoUtils$CryptoHandlerEntry r0 = new com.microsoft.appcenter.utils.crypto.CryptoUtils$CryptoHandlerEntry
            r1 = 0
            r0.<init>(r1, r3)
            r4.put(r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.appcenter.utils.crypto.CryptoUtils.<init>(android.content.Context, com.microsoft.appcenter.utils.crypto.CryptoUtils$ICryptoFactory, int):void");
    }

    public static CryptoUtils getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new CryptoUtils(context);
        }
        return sInstance;
    }

    private void registerHandler(CryptoHandler handler) throws Exception {
        int i = 0;
        String alias = getAlias(handler, 0);
        String alias2 = getAlias(handler, 1);
        Date creationDate = this.mKeyStore.getCreationDate(alias);
        Date creationDate2 = this.mKeyStore.getCreationDate(alias2);
        if (creationDate2 != null && creationDate2.after(creationDate)) {
            i = 1;
            alias = alias2;
        }
        if (this.mCryptoHandlers.isEmpty() && !this.mKeyStore.containsAlias(alias)) {
            AppCenterLog.debug("AppCenter", "Creating alias: " + alias);
            handler.generateKey(this.mCryptoFactory, alias, this.mContext);
        }
        AppCenterLog.debug("AppCenter", "Using " + alias);
        this.mCryptoHandlers.put(handler.getAlgorithm(), new CryptoHandlerEntry(i, handler));
    }

    private String getAlias(CryptoHandler handler, int index) {
        return "appcenter." + index + "." + handler.getAlgorithm();
    }

    private KeyStore.Entry getKeyStoreEntry(CryptoHandlerEntry handlerEntry) throws Exception {
        return getKeyStoreEntry(handlerEntry.mCryptoHandler, handlerEntry.mAliasIndex);
    }

    private KeyStore.Entry getKeyStoreEntry(CryptoHandler cryptoHandler, int aliasIndex) throws Exception {
        if (this.mKeyStore == null) {
            return null;
        }
        return this.mKeyStore.getEntry(getAlias(cryptoHandler, aliasIndex), null);
    }

    public String encrypt(String data) {
        if (data == null) {
            return null;
        }
        try {
            CryptoHandlerEntry next = this.mCryptoHandlers.values().iterator().next();
            CryptoHandler cryptoHandler = next.mCryptoHandler;
            try {
                String encodeToString = Base64.encodeToString(cryptoHandler.encrypt(this.mCryptoFactory, this.mApiLevel, getKeyStoreEntry(next), data.getBytes("UTF-8")), 0);
                return cryptoHandler.getAlgorithm() + ":" + encodeToString;
            } catch (InvalidKeyException e) {
                if (!(e.getCause() instanceof CertificateExpiredException) && !"android.security.keystore.KeyExpiredException".equals(e.getClass().getName())) {
                    throw e;
                }
                AppCenterLog.debug("AppCenter", "Alias expired: " + next.mAliasIndex);
                int i = next.mAliasIndex ^ 1;
                next.mAliasIndex = i;
                String alias = getAlias(cryptoHandler, i);
                if (this.mKeyStore.containsAlias(alias)) {
                    AppCenterLog.debug("AppCenter", "Deleting alias: " + alias);
                    this.mKeyStore.deleteEntry(alias);
                }
                AppCenterLog.debug("AppCenter", "Creating alias: " + alias);
                cryptoHandler.generateKey(this.mCryptoFactory, alias, this.mContext);
                return encrypt(data);
            }
        } catch (Exception unused) {
            AppCenterLog.error("AppCenter", "Failed to encrypt data.");
            return data;
        }
    }

    public DecryptedData decrypt(String data) {
        if (data == null) {
            return new DecryptedData(null, null);
        }
        String[] split = data.split(":");
        CryptoHandlerEntry cryptoHandlerEntry = split.length == 2 ? this.mCryptoHandlers.get(split[0]) : null;
        CryptoHandler cryptoHandler = cryptoHandlerEntry == null ? null : cryptoHandlerEntry.mCryptoHandler;
        if (cryptoHandler == null) {
            AppCenterLog.error("AppCenter", "Failed to decrypt data.");
            return new DecryptedData(data, null);
        }
        try {
            try {
                return getDecryptedData(cryptoHandler, cryptoHandlerEntry.mAliasIndex, split[1]);
            } catch (Exception unused) {
                return getDecryptedData(cryptoHandler, cryptoHandlerEntry.mAliasIndex ^ 1, split[1]);
            }
        } catch (Exception unused2) {
            AppCenterLog.error("AppCenter", "Failed to decrypt data.");
            return new DecryptedData(data, null);
        }
    }

    private DecryptedData getDecryptedData(CryptoHandler cryptoHandler, int aliasIndex, String data) throws Exception {
        String str = new String(cryptoHandler.decrypt(this.mCryptoFactory, this.mApiLevel, getKeyStoreEntry(cryptoHandler, aliasIndex), Base64.decode(data, 0)), "UTF-8");
        return new DecryptedData(str, cryptoHandler != this.mCryptoHandlers.values().iterator().next().mCryptoHandler ? encrypt(str) : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class CryptoHandlerEntry {
        int mAliasIndex;
        final CryptoHandler mCryptoHandler;

        CryptoHandlerEntry(int aliasIndex, CryptoHandler cryptoHandler) {
            this.mAliasIndex = aliasIndex;
            this.mCryptoHandler = cryptoHandler;
        }
    }

    /* loaded from: classes4.dex */
    public static class DecryptedData {
        final String mDecryptedData;
        final String mNewEncryptedData;

        public DecryptedData(String decryptedData, String newEncryptedData) {
            this.mDecryptedData = decryptedData;
            this.mNewEncryptedData = newEncryptedData;
        }

        public String getDecryptedData() {
            return this.mDecryptedData;
        }

        public String getNewEncryptedData() {
            return this.mNewEncryptedData;
        }
    }
}
