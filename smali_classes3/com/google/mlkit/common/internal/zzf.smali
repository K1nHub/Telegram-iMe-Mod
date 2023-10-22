.class final synthetic Lcom/google/mlkit/common/internal/zzf;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final zza:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zzf;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzf;->zza:Lcom/google/firebase/components/ComponentFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/Cleaner;->create()Lcom/google/mlkit/common/sdkinternal/Cleaner;

    move-result-object p1

    return-object p1
.end method
