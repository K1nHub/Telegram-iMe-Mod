.class final Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAllSocial$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SocialRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->getAllSocial(Lcom/iMe/feature/profile/ProfileData;)Lio/reactivex/Observable;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $profileData:Lcom/iMe/feature/profile/ProfileData;

.field final synthetic this$0:Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;Lcom/iMe/feature/profile/ProfileData;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAllSocial$1;->this$0:Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;

    iput-object p2, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAllSocial$1;->$profileData:Lcom/iMe/feature/profile/ProfileData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAllSocial$1;->invoke(Lcom/iMe/storage/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAllSocial$1;->this$0:Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAllSocial$1;->$profileData:Lcom/iMe/feature/profile/ProfileData;

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileData;->getProfileId()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->access$saveInDb(Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;Lcom/iMe/storage/domain/model/Result;J)V

    return-void
.end method
