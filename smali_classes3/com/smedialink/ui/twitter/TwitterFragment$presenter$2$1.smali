.class final Lcom/smedialink/ui/twitter/TwitterFragment$presenter$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TwitterFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/twitter/TwitterFragment$presenter$2;->invoke()Lcom/smedialink/ui/twitter/TwitterPresenter;
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
.field final synthetic $telegramProfileId:J

.field final synthetic $twitterUserId:J

.field final synthetic $twitterUserNickname:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Lcom/smedialink/ui/twitter/TwitterFragment$presenter$2$1;->$telegramProfileId:J

    iput-wide p3, p0, Lcom/smedialink/ui/twitter/TwitterFragment$presenter$2$1;->$twitterUserId:J

    iput-object p5, p0, Lcom/smedialink/ui/twitter/TwitterFragment$presenter$2$1;->$twitterUserNickname:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/smedialink/ui/twitter/TwitterFragment$presenter$2$1;->invoke()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    iget-wide v1, p0, Lcom/smedialink/ui/twitter/TwitterFragment$presenter$2$1;->$telegramProfileId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/smedialink/ui/twitter/TwitterFragment$presenter$2$1;->$twitterUserId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/smedialink/ui/twitter/TwitterFragment$presenter$2$1;->$twitterUserNickname:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method
