.class public final Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;
.super Ljava/lang/Object;
.source "OpusLibrary.java"


# static fields
.field private static final LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

.field private static cryptoType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "goog.exo.opus"

    .line 27
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary$1;

    const-string v1, "opusV2JNI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary$1;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    const/4 v0, 0x1

    .line 38
    sput v0, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->cryptoType:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->opusGetVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 59
    sget-object v0, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static native opusGetVersion()Ljava/lang/String;
.end method

.method public static native opusIsSecureDecodeSupported()Z
.end method

.method public static varargs setLibraries(I[Ljava/lang/String;)V
    .locals 0

    .line 53
    sput p0, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->cryptoType:I

    .line 54
    sget-object p0, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/LibraryLoader;->setLibraries([Ljava/lang/String;)V

    return-void
.end method

.method public static supportsCryptoType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    .line 70
    sget v1, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->cryptoType:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
