.class public final Lcom/iMe/feature/profile/ProfileUseCase;
.super Ljava/lang/Object;
.source "ProfileUseCase.kt"


# instance fields
.field private final profileRepository:Lcom/iMe/feature/profile/ProfileRepository;


# direct methods
.method public constructor <init>(Lcom/iMe/feature/profile/ProfileRepository;)V
    .locals 1

    const-string v0, "profileRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/feature/profile/ProfileUseCase;->profileRepository:Lcom/iMe/feature/profile/ProfileRepository;

    return-void
.end method


# virtual methods
.method public final saveProfile(Lcom/iMe/feature/profile/ProfileData;)V
    .locals 1

    const-string v0, "profileData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileUseCase;->profileRepository:Lcom/iMe/feature/profile/ProfileRepository;

    invoke-interface {v0, p1}, Lcom/iMe/feature/profile/ProfileRepository;->saveProfile(Lcom/iMe/feature/profile/ProfileData;)V

    return-void
.end method
