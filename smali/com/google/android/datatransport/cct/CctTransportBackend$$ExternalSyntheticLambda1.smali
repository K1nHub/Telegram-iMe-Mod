.class public final synthetic Lcom/google/android/datatransport/cct/CctTransportBackend$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/datatransport/runtime/retries/RetryStrategy;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/datatransport/cct/CctTransportBackend$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/CctTransportBackend$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/CctTransportBackend$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/CctTransportBackend$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/datatransport/cct/CctTransportBackend$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldRetry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    check-cast p2, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    invoke-static {p1, p2}, Lcom/google/android/datatransport/cct/CctTransportBackend;->$r8$lambda$S-r8nBLtE2gbjrB4Xb4-7yhMlbw(Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    move-result-object p1

    return-object p1
.end method
