.class final synthetic Lcom/iMe/feature/socialMedias/SocialUseCase$getSocialAuthData$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SocialUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/SocialUseCase;->getSocialAuthData(Lcom/iMe/storage/domain/model/wallet/SessionTokens;JLcom/iMe/feature/socialMedias/SocialType;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/feature/socialMedias/SocialAuthDomain;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/feature/socialMedias/SocialAuthDomain;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x1

    const-string v4, "success"

    const-string v5, "success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/feature/socialMedias/SocialAuthDomain;)Lcom/iMe/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/socialMedias/SocialAuthDomain;",
            ")",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialAuthDomain;",
            ">;"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase$getSocialAuthData$1;->invoke(Lcom/iMe/feature/socialMedias/SocialAuthDomain;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
