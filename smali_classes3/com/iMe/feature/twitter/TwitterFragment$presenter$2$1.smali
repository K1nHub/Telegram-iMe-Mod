.class final Lcom/iMe/feature/twitter/TwitterFragment$presenter$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TwitterFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/twitter/TwitterFragment$presenter$2;->invoke()Lcom/iMe/feature/twitter/TwitterPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/koin/core/parameter/ParametersHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/feature/twitter/TwitterFragment;


# direct methods
.method constructor <init>(Lcom/iMe/feature/twitter/TwitterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterFragment$presenter$2$1;->this$0:Lcom/iMe/feature/twitter/TwitterFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/iMe/feature/twitter/TwitterFragment$presenter$2$1;->invoke()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/iMe/feature/twitter/TwitterFragment$presenter$2$1;->this$0:Lcom/iMe/feature/twitter/TwitterFragment;

    invoke-static {v1}, Lcom/iMe/feature/twitter/TwitterFragment;->access$getTelegramProfileId$p(Lcom/iMe/feature/twitter/TwitterFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/iMe/feature/twitter/TwitterFragment$presenter$2$1;->this$0:Lcom/iMe/feature/twitter/TwitterFragment;

    invoke-static {v1}, Lcom/iMe/feature/twitter/TwitterFragment;->access$getSocialNetwork$p(Lcom/iMe/feature/twitter/TwitterFragment;)Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method
