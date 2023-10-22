.class public Lorg/telegram/messenger/FingerprintController;
.super Ljava/lang/Object;
.source "FingerprintController.java"


# static fields
.field private static final KEY_ALIAS:Ljava/lang/String; = "tmessages_passcode"

.field private static cipher:Ljavax/crypto/Cipher;

.field private static hasChangedFingerprints:Ljava/lang/Boolean;

.field private static keyPairGenerator:Ljava/security/KeyPairGenerator;

.field private static keyStore:Ljava/security/KeyStore;


# direct methods
.method public static synthetic $r8$lambda$SPmVJA5zmOQnRJSarUFwGpPSWAk(Z)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/FingerprintController;->lambda$generateNewKey$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YMLGleIODAMoYS3Pr17PvnLxOKg(Z)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/FingerprintController;->lambda$checkKeyReady$1(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDeviceFingerprintsChanged()Z
    .locals 6

    .line 200
    sget-object v0, Lorg/telegram/messenger/FingerprintController;->hasChangedFingerprints:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 204
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 205
    sget-object v3, Lorg/telegram/messenger/FingerprintController;->keyStore:Ljava/security/KeyStore;

    const-string/jumbo v4, "tmessages_passcode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 206
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lorg/telegram/messenger/FingerprintController;->hasChangedFingerprints:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 211
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 213
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lorg/telegram/messenger/FingerprintController;->hasChangedFingerprints:Ljava/lang/Boolean;

    return v0

    .line 209
    :catch_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/telegram/messenger/FingerprintController;->hasChangedFingerprints:Ljava/lang/Boolean;

    const/4 v0, 0x1

    return v0
.end method

.method public static checkKeyReady()V
    .locals 1

    const/4 v0, 0x1

    .line 180
    invoke-static {v0}, Lorg/telegram/messenger/FingerprintController;->checkKeyReady(Z)V

    return-void
.end method

.method public static checkKeyReady(Z)V
    .locals 2

    .line 184
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->isKeyReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 185
    invoke-static {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FingerprintController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FingerprintController$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static createCipher()Z
    .locals 1

    :try_start_0
    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 47
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/FingerprintController;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 50
    :goto_0
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static decode(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 72
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 75
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static deleteInvalidKey()V
    .locals 2

    .line 168
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "tmessages_passcode"

    .line 170
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 174
    sput-object v0, Lorg/telegram/messenger/FingerprintController;->hasChangedFingerprints:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 176
    invoke-static {v0}, Lorg/telegram/messenger/FingerprintController;->checkKeyReady(Z)V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 61
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->initEncodeCipher()V

    .line 62
    sget-object v0, Lorg/telegram/messenger/FingerprintController;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 63
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static generateNewKey(Z)V
    .locals 5

    .line 138
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->getKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 143
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Lorg/telegram/messenger/FingerprintController;->setLocale(Ljava/util/Locale;)V

    .line 145
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string/jumbo v3, "tmessages_passcode"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v3, "SHA-256"

    const-string v4, "SHA-512"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const-string v3, "OAEPPadding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 149
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 151
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 152
    invoke-static {v1}, Lorg/telegram/messenger/FingerprintController;->setLocale(Ljava/util/Locale;)V

    .line 154
    new-instance v0, Lorg/telegram/messenger/FingerprintController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FingerprintController$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.KeyStoreException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 156
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 56
    sget-object v0, Lorg/telegram/messenger/FingerprintController;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method private static getKeyPairGenerator()Ljava/security/KeyPairGenerator;
    .locals 2

    .line 124
    sget-object v0, Lorg/telegram/messenger/FingerprintController;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "RSA"

    const-string v1, "AndroidKeyStore"

    .line 129
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/FingerprintController;->keyPairGenerator:Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 132
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getKeyStore()Ljava/security/KeyStore;
    .locals 2

    .line 110
    sget-object v0, Lorg/telegram/messenger/FingerprintController;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 114
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/FingerprintController;->keyStore:Ljava/security/KeyStore;

    .line 115
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 116
    sget-object v0, Lorg/telegram/messenger/FingerprintController;->keyStore:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 118
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static initDecodeCipher()V
    .locals 5

    .line 82
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/FingerprintController;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    sget-object v2, Lorg/telegram/messenger/FingerprintController;->keyStore:Ljava/security/KeyStore;

    const-string/jumbo v3, "tmessages_passcode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static initEncodeCipher()V
    .locals 6

    .line 90
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/FingerprintController;->keyStore:Ljava/security/KeyStore;

    const-string/jumbo v1, "tmessages_passcode"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 92
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-256"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 93
    sget-object v2, Lorg/telegram/messenger/FingerprintController;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static isKeyReady()Z
    .locals 2

    .line 192
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    const-string/jumbo v1, "tmessages_passcode"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 194
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$checkKeyReady$1(Z)V
    .locals 0

    .line 186
    invoke-static {p0}, Lorg/telegram/messenger/FingerprintController;->generateNewKey(Z)V

    return-void
.end method

.method private static synthetic lambda$generateNewKey$0(Z)V
    .locals 4

    .line 154
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didGenerateFingerprintKeyPair:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static setLocale(Ljava/util/Locale;)V
    .locals 2

    .line 217
    invoke-static {p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 218
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 220
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 221
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method
