.class public final Lwallet/core/jni/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lwallet/core/jni/Account;->nativeHandle:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "coin",
            "derivation",
            "derivationPath",
            "publicKey",
            "extendedPublicKey"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static/range {p1 .. p6}, Lwallet/core/jni/Account;->nativeCreate(Ljava/lang/String;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/Account;->nativeHandle:J

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    .line 99
    invoke-static {p0, p1, p2}, Lwallet/core/jni/AccountPhantomReference;->register(Lwallet/core/jni/Account;J)V

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/Account;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 26
    new-instance v0, Lwallet/core/jni/Account;

    invoke-direct {v0}, Lwallet/core/jni/Account;-><init>()V

    .line 27
    iput-wide p0, v0, Lwallet/core/jni/Account;->nativeHandle:J

    .line 28
    invoke-static {v0, p0, p1}, Lwallet/core/jni/AccountPhantomReference;->register(Lwallet/core/jni/Account;J)V

    return-object v0
.end method

.method static native nativeCreate(Ljava/lang/String;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "coin",
            "derivation",
            "derivationPath",
            "publicKey",
            "extendedPublicKey"
        }
    .end annotation
.end method

.method static native nativeDelete(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method


# virtual methods
.method public native address()Ljava/lang/String;
.end method

.method public native coin()Lwallet/core/jni/CoinType;
.end method

.method public native derivation()Lwallet/core/jni/Derivation;
.end method

.method public native derivationPath()Ljava/lang/String;
.end method

.method public native extendedPublicKey()Ljava/lang/String;
.end method

.method public native publicKey()Ljava/lang/String;
.end method
