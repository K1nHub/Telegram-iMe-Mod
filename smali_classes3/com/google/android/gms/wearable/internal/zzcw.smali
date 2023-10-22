.class public final synthetic Lcom/google/android/gms/wearable/internal/zzcw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/wearable/internal/zzcw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcw;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzcw;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzcw;->zza:Lcom/google/android/gms/wearable/internal/zzcw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/DataItemBuffer;

    return-object p1
.end method
