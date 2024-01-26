.class final Lcom/iMe/feature/socialMedias/SocialUseCase$getAllSocials$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SocialUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/SocialUseCase;->getAllSocials(Lcom/iMe/feature/profile/ProfileData;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/feature/socialMedias/SocialDomain;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/feature/socialMedias/SocialDomain;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $profileData:Lcom/iMe/feature/profile/ProfileData;

.field final synthetic this$0:Lcom/iMe/feature/socialMedias/SocialUseCase;


# direct methods
.method constructor <init>(Lcom/iMe/feature/socialMedias/SocialUseCase;Lcom/iMe/feature/profile/ProfileData;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialUseCase$getAllSocials$1;->this$0:Lcom/iMe/feature/socialMedias/SocialUseCase;

    iput-object p2, p0, Lcom/iMe/feature/socialMedias/SocialUseCase$getAllSocials$1;->$profileData:Lcom/iMe/feature/profile/ProfileData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialUseCase$getAllSocials$1;->this$0:Lcom/iMe/feature/socialMedias/SocialUseCase;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialUseCase$getAllSocials$1;->$profileData:Lcom/iMe/feature/profile/ProfileData;

    invoke-static {v0, v1, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase;->access$updateSocialAccess(Lcom/iMe/feature/socialMedias/SocialUseCase;Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase$getAllSocials$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
