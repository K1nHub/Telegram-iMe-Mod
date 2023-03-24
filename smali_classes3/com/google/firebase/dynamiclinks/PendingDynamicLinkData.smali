.class public Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;
.super Ljava/lang/Object;
.source "PendingDynamicLinkData.java"


# instance fields
.field private final dynamicLinkData:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;


# direct methods
.method public constructor <init>(Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->dynamicLinkData:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->getClickTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->setClickTimestamp(J)V

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->dynamicLinkData:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    .line 55
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkUTMParams;

    invoke-direct {v0, p1}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkUTMParams;-><init>(Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V

    return-void
.end method


# virtual methods
.method public getLink()Landroid/net/Uri;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->dynamicLinkData:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method
