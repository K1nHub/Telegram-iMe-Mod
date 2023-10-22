.class public final Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;
.super Ljava/lang/Object;
.source "AirdropInteractor.kt"


# instance fields
.field private final airdropRepository:Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "airdropRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->airdropRepository:Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;

    .line 12
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method
