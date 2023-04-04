.class public final Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl;
.super Ljava/lang/Object;
.source "RemoteConfigRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/firebase/RemoteConfigRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteConfigRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigRepositoryImpl.kt\ncom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,48:1\n32#2:49\n32#2:50\n32#2:51\n32#2:52\n*S KotlinDebug\n*F\n+ 1 RemoteConfigRepositoryImpl.kt\ncom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl\n*L\n22#1:49\n29#1:50\n36#1:51\n43#1:52\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "remoteConfigApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorHandler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
