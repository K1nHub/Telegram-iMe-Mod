.class public final Lcom/google/android/gms/internal/firebase_ml/zzii;
.super Ljava/lang/Object;


# static fields
.field private static final zzaaa:Lcom/google/android/gms/internal/firebase_ml/zzih;

.field private static final zzaab:Lcom/google/android/gms/internal/firebase_ml/zzih;

.field private static final zzaac:Lcom/google/android/gms/internal/firebase_ml/zzih;

.field private static final zzaad:Lcom/google/android/gms/internal/firebase_ml/zzih;

.field private static final zzaae:Lcom/google/android/gms/internal/firebase_ml/zzih;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzik;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzik;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzii;->zzaaa:Lcom/google/android/gms/internal/firebase_ml/zzih;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzik;

    const-string v1, "-_.!~*\'()@:$&,;="

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzik;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzii;->zzaab:Lcom/google/android/gms/internal/firebase_ml/zzih;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzik;

    const-string v1, "-_.!~*\'()@:$&,;=+/?"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzik;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzii;->zzaac:Lcom/google/android/gms/internal/firebase_ml/zzih;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzik;

    const-string v1, "-_.!~*\'():$&,;="

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzik;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzii;->zzaad:Lcom/google/android/gms/internal/firebase_ml/zzih;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzik;

    const-string v1, "-_.!~*\'()@:$,;/?:"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzik;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzii;->zzaae:Lcom/google/android/gms/internal/firebase_ml/zzih;

    return-void
.end method

.method public static zzao(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzii;->zzaaa:Lcom/google/android/gms/internal/firebase_ml/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzih;->zzan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzaq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzii;->zzaab:Lcom/google/android/gms/internal/firebase_ml/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzih;->zzan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzar(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzii;->zzaac:Lcom/google/android/gms/internal/firebase_ml/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzih;->zzan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzas(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzii;->zzaad:Lcom/google/android/gms/internal/firebase_ml/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzih;->zzan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzii;->zzaae:Lcom/google/android/gms/internal/firebase_ml/zzih;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzih;->zzan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
