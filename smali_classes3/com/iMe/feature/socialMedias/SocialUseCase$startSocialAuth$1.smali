.class final Lcom/iMe/feature/socialMedias/SocialUseCase$startSocialAuth$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SocialUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/SocialUseCase;->startSocialAuth(Lcom/iMe/feature/socialMedias/SocialType;J)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/feature/socialMedias/SocialAuthDomain;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $profileId:J

.field final synthetic $socialType:Lcom/iMe/feature/socialMedias/SocialType;

.field final synthetic this$0:Lcom/iMe/feature/socialMedias/SocialUseCase;


# direct methods
.method constructor <init>(Lcom/iMe/feature/socialMedias/SocialUseCase;JLcom/iMe/feature/socialMedias/SocialType;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialUseCase$startSocialAuth$1;->this$0:Lcom/iMe/feature/socialMedias/SocialUseCase;

    iput-wide p2, p0, Lcom/iMe/feature/socialMedias/SocialUseCase$startSocialAuth$1;->$profileId:J

    iput-object p4, p0, Lcom/iMe/feature/socialMedias/SocialUseCase$startSocialAuth$1;->$socialType:Lcom/iMe/feature/socialMedias/SocialType;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialAuthDomain;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialUseCase$startSocialAuth$1;->this$0:Lcom/iMe/feature/socialMedias/SocialUseCase;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/SessionTokens;

    iget-wide v1, p0, Lcom/iMe/feature/socialMedias/SocialUseCase$startSocialAuth$1;->$profileId:J

    iget-object v3, p0, Lcom/iMe/feature/socialMedias/SocialUseCase$startSocialAuth$1;->$socialType:Lcom/iMe/feature/socialMedias/SocialType;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/iMe/feature/socialMedias/SocialUseCase;->getSocialAuthData(Lcom/iMe/storage/domain/model/wallet/SessionTokens;JLcom/iMe/feature/socialMedias/SocialType;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase$startSocialAuth$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
