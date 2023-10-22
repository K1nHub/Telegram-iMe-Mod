.class public Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl;
.super Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
.source "FirebaseDynamicLinksImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl$DynamicLinkCallbacks;,
        Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl$AbstractDynamicLinkCallbacks;,
        Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl$GetDynamicLinkImpl;
    }
.end annotation


# instance fields
.field private final analytics:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;"
        }
    .end annotation
.end field

.field private final googleApi:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl;->googleApi:Lcom/google/android/gms/common/api/GoogleApi;

    .line 77
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    .line 78
    iput-object p3, p0, Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl;->analytics:Lcom/google/firebase/inject/Provider;

    .line 80
    invoke-interface {p3}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FDL"

    const-string p2, "FDL logging failed. Add a dependency for Firebase Analytics to your app to enable logging of Dynamic Link events."

    .line 87
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;)V"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinksApi;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinksApi;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method


# virtual methods
.method public getDynamicLink(Landroid/net/Uri;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl;->googleApi:Lcom/google/android/gms/common/api/GoogleApi;

    new-instance v1, Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl$GetDynamicLinkImpl;

    iget-object v2, p0, Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl;->analytics:Lcom/google/firebase/inject/Provider;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinksImpl$GetDynamicLinkImpl;-><init>(Lcom/google/firebase/inject/Provider;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
