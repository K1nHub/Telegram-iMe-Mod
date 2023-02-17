.class final synthetic Lcom/google/android/gms/internal/mlkit_common/zzdn;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final zza:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzdn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdn;->zza:Lcom/google/firebase/components/ComponentFactory;

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
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdo;

    const-class v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzdo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
