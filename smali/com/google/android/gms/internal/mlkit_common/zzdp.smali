.class final synthetic Lcom/google/android/gms/internal/mlkit_common/zzdp;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final zza:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzdp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdp;->zza:Lcom/google/firebase/components/ComponentFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdq;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzdo;

    .line 3
    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzdo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzdq;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzdo;)V

    return-object v0
.end method
