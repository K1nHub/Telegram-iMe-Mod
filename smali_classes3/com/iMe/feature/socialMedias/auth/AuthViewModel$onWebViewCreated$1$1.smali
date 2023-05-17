.class final Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/iMe/feature/socialMedias/auth/AuthState;",
        ">;",
        "Lcom/iMe/feature/socialMedias/auth/AuthState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1$1;->$title:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;)Lcom/iMe/feature/socialMedias/auth/AuthState;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleContext<",
            "Lcom/iMe/feature/socialMedias/auth/AuthState;",
            ">;)",
            "Lcom/iMe/feature/socialMedias/auth/AuthState;"
        }
    .end annotation

    const-string v0, "$this$reduce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;->getState()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/iMe/feature/socialMedias/auth/AuthState;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1$1;->$title:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/feature/socialMedias/auth/AuthState;->copy$default(Lcom/iMe/feature/socialMedias/auth/AuthState;Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialType;ZILjava/lang/Object;)Lcom/iMe/feature/socialMedias/auth/AuthState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1$1;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;)Lcom/iMe/feature/socialMedias/auth/AuthState;

    move-result-object p1

    return-object p1
.end method
