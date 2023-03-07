.class public Lcom/google/firebase/firestore/remote/FirestoreChannel;
.super Ljava/lang/Object;
.source "FirestoreChannel.java"


# static fields
.field private static final RESOURCE_PREFIX_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final X_GOOG_API_CLIENT_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile clientLanguage:Ljava/lang/String;


# instance fields
.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private final callProvider:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

.field private final credentialsProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

.field private final metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

.field private final resourcePrefixValue:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ThFui-hvcsrVGYxlBtcTH5vVbvE(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->lambda$runBidiStreamingRpc$0([Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v1, "x-goog-api-client"

    .line 47
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    sput-object v1, Lcom/google/firebase/firestore/remote/FirestoreChannel;->X_GOOG_API_CLIENT_HEADER:Lio/grpc/Metadata$Key;

    const-string v1, "google-cloud-resource-prefix"

    .line 50
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->RESOURCE_PREFIX_HEADER:Lio/grpc/Metadata$Key;

    const-string v0, "gl-java/"

    .line 55
    sput-object v0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->clientLanguage:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue;Landroid/content/Context;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/core/DatabaseInfo;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 77
    iput-object p5, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

    .line 78
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->credentialsProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    .line 80
    new-instance p5, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;

    invoke-direct {p5, p3}, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;-><init>(Lcom/google/firebase/firestore/auth/CredentialsProvider;)V

    .line 81
    new-instance p3, Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue;Landroid/content/Context;Lcom/google/firebase/firestore/core/DatabaseInfo;Lio/grpc/CallCredentials;)V

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->callProvider:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    .line 83
    invoke-virtual {p4}, Lcom/google/firebase/firestore/core/DatabaseInfo;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 86
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "projects/%s/databases/%s"

    .line 85
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->resourcePrefixValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/remote/FirestoreChannel;)Lcom/google/firebase/firestore/util/AsyncQueue;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    return-object p0
.end method

.method private getGoogApiClientValue()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 290
    sget-object v1, Lcom/google/firebase/firestore/remote/FirestoreChannel;->clientLanguage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "23.0.4"

    aput-object v2, v0, v1

    const-string v1, "%s fire/%s grpc/"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$runBidiStreamingRpc$0([Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 109
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/ClientCall;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 111
    aget-object p3, p1, v0

    new-instance v1, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;[Lio/grpc/ClientCall;)V

    .line 149
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->requestHeaders()Lio/grpc/Metadata;

    move-result-object v2

    .line 111
    invoke-virtual {p3, v1, v2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 151
    invoke-interface {p2}, Lcom/google/firebase/firestore/remote/IncomingStreamObserver;->onOpen()V

    .line 155
    aget-object p1, p1, v0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/grpc/ClientCall;->request(I)V

    return-void
.end method

.method private requestHeaders()Lio/grpc/Metadata;
    .locals 3

    .line 295
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 296
    sget-object v1, Lcom/google/firebase/firestore/remote/FirestoreChannel;->X_GOOG_API_CLIENT_HEADER:Lio/grpc/Metadata$Key;

    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->getGoogApiClientValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 298
    sget-object v1, Lcom/google/firebase/firestore/remote/FirestoreChannel;->RESOURCE_PREFIX_HEADER:Lio/grpc/Metadata$Key;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->resourcePrefixValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 299
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

    if-eqz v1, :cond_0

    .line 300
    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;->updateMetadata(Lio/grpc/Metadata;)V

    :cond_0
    return-object v0
.end method

.method public static setClientLanguage(Ljava/lang/String;)V
    .locals 0

    .line 286
    sput-object p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->clientLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public invalidateToken()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->credentialsProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/auth/CredentialsProvider;->invalidateToken()V

    return-void
.end method

.method runBidiStreamingRpc(Lio/grpc/MethodDescriptor;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;)Lio/grpc/ClientCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lcom/google/firebase/firestore/remote/IncomingStreamObserver<",
            "TRespT;>;)",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lio/grpc/ClientCall;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 104
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->callProvider:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->createClientCall(Lio/grpc/MethodDescriptor;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 106
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 107
    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;)V

    .line 106
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 158
    new-instance p2, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;

    invoke-direct {p2, p0, v0, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/android/gms/tasks/Task;)V

    return-object p2
.end method
