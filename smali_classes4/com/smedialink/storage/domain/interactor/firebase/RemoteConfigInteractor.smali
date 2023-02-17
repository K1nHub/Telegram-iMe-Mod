.class public final Lcom/smedialink/storage/domain/interactor/firebase/RemoteConfigInteractor;
.super Ljava/lang/Object;
.source "RemoteConfigInteractor.kt"


# instance fields
.field private final remoteConfigRepository:Lcom/smedialink/storage/domain/repository/firebase/RemoteConfigRepository;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/repository/firebase/RemoteConfigRepository;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "remoteConfigRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/firebase/RemoteConfigInteractor;->remoteConfigRepository:Lcom/smedialink/storage/domain/repository/firebase/RemoteConfigRepository;

    .line 10
    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/firebase/RemoteConfigInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method
