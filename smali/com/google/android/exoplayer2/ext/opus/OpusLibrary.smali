.class public final Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;
.super Ljava/lang/Object;
.source "OpusLibrary.java"


# static fields
.field private static exoMediaCryptoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.opus"

    .line 30
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->opusGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static matchesExpectedExoMediaCryptoType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;)Z"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->exoMediaCryptoType:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static native opusGetVersion()Ljava/lang/String;
.end method

.method public static native opusIsSecureDecodeSupported()Z
.end method

.method public static varargs setLibraries(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    sput-object p0, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->exoMediaCryptoType:Ljava/lang/Class;

    return-void
.end method
