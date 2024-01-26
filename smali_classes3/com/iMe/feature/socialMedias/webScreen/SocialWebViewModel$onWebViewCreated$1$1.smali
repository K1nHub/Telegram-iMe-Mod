.class final Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SocialWebViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/orbitmvi/orbit/syntax/simple/SimpleContext<",
        "Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;",
        ">;",
        "Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1$1;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1$1;->$socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;)Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleContext<",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;",
            ">;)",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;"
        }
    .end annotation

    const-string v0, "$this$reduce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;->getState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;

    iget-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1$1;->$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1$1;->$socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->copy(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;Z)Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1$1;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;)Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;

    move-result-object p1

    return-object p1
.end method
