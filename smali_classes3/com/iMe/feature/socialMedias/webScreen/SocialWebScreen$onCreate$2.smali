.class final synthetic Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$onCreate$2;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "SocialWebScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;

    const/4 v1, 0x2

    const-string v4, "sideEffects"

    const-string v5, "sideEffects(Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;)V"

    const/4 v6, 0x4

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getReceiver$p(Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$onCreate$2;)Ljava/lang/Object;
    .locals 0

    .line 47
    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final invoke(Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$onCreate$2;->access$getReceiver$p(Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$onCreate$2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;

    invoke-static {v0, p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;->access$onCreate$sideEffects(Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$onCreate$2;->invoke(Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
