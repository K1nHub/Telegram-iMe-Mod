.class public final Lcom/iMe/feature/socialMedias/auth/AuthUseCase;
.super Ljava/lang/Object;
.source "AuthUseCase.kt"


# instance fields
.field private final socialRepository:Lcom/iMe/feature/socialMedias/SocialRepository;


# direct methods
.method public constructor <init>(Lcom/iMe/feature/socialMedias/SocialRepository;)V
    .locals 1

    const-string v0, "socialRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthUseCase;->socialRepository:Lcom/iMe/feature/socialMedias/SocialRepository;

    return-void
.end method


# virtual methods
.method public final makeAuthHeader(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "authToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Authorization"

    .line 12
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final processAuthResult(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/model/twitter/SocialAuthResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/auth/AuthUseCase;->socialRepository:Lcom/iMe/feature/socialMedias/SocialRepository;

    invoke-interface {v0, p1, p2}, Lcom/iMe/feature/socialMedias/SocialRepository;->getAuthResult(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
