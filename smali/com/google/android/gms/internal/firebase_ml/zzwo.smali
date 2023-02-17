.class final Lcom/google/android/gms/internal/firebase_ml/zzwo;
.super Ljava/lang/Object;


# static fields
.field private static final zzbvw:Lcom/google/android/gms/internal/firebase_ml/zzwm;

.field private static final zzbvx:Lcom/google/android/gms/internal/firebase_ml/zzwm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwo;->zzsu()Lcom/google/android/gms/internal/firebase_ml/zzwm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzwo;->zzbvw:Lcom/google/android/gms/internal/firebase_ml/zzwm;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzwp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzwp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzwo;->zzbvx:Lcom/google/android/gms/internal/firebase_ml/zzwm;

    return-void
.end method

.method static zzss()Lcom/google/android/gms/internal/firebase_ml/zzwm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzwo;->zzbvw:Lcom/google/android/gms/internal/firebase_ml/zzwm;

    return-object v0
.end method

.method static zzst()Lcom/google/android/gms/internal/firebase_ml/zzwm;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzwo;->zzbvx:Lcom/google/android/gms/internal/firebase_ml/zzwm;

    return-object v0
.end method

.method private static zzsu()Lcom/google/android/gms/internal/firebase_ml/zzwm;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzwm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
