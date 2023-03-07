.class public final Lcom/google/android/gms/wearable/Wearable$WearableOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/Wearable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/wearable/Wearable$WearableOptions;


# instance fields
.field private final zzb:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/Wearable$WearableOptions;

    new-instance v1, Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;-><init>(Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;)V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza:Lcom/google/android/gms/wearable/Wearable$WearableOptions;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;)Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zzb:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;Lcom/google/android/gms/wearable/zzi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;-><init>(Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$Settings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zzb:Landroid/os/Looper;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zzb:Landroid/os/Looper;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->build()Lcom/google/android/gms/common/api/GoogleApi$Settings;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/android/gms/wearable/Wearable$WearableOptions;

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    const-class v1, Lcom/google/android/gms/wearable/Wearable$WearableOptions;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
