.class final Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onRefreshPageMenuClicked$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onRefreshPageMenuClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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


# static fields
.field public static final INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onRefreshPageMenuClicked$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onRefreshPageMenuClicked$1$1;

    invoke-direct {v0}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onRefreshPageMenuClicked$1$1;-><init>()V

    sput-object v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onRefreshPageMenuClicked$1$1;->INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onRefreshPageMenuClicked$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

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

    .line 49
    invoke-virtual {p1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;->getState()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/iMe/feature/socialMedias/auth/AuthState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/feature/socialMedias/auth/AuthState;->copy$default(Lcom/iMe/feature/socialMedias/auth/AuthState;Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialType;ZILjava/lang/Object;)Lcom/iMe/feature/socialMedias/auth/AuthState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onRefreshPageMenuClicked$1$1;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;)Lcom/iMe/feature/socialMedias/auth/AuthState;

    move-result-object p1

    return-object p1
.end method
