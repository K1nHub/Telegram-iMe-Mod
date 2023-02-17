.class public final Lcom/trustwallet/walletconnect/WCCipherKt;
.super Ljava/lang/Object;
.source "WCCipher.kt"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final MAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$getCIPHER_ALGORITHM$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/trustwallet/walletconnect/WCCipherKt;->CIPHER_ALGORITHM:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMAC_ALGORITHM$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/trustwallet/walletconnect/WCCipherKt;->MAC_ALGORITHM:Ljava/lang/String;

    return-object v0
.end method
