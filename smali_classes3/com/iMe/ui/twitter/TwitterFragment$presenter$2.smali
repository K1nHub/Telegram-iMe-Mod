.class final Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TwitterFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/twitter/TwitterFragment;-><init>(JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/twitter/TwitterPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterFragment.kt\ncom/iMe/ui/twitter/TwitterFragment$presenter$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,201:1\n56#2,6:202\n*S KotlinDebug\n*F\n+ 1 TwitterFragment.kt\ncom/iMe/ui/twitter/TwitterFragment$presenter$2\n*L\n36#1:202,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $telegramProfileId:J

.field final synthetic $twitterUserId:J

.field final synthetic $twitterUserNickname:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/twitter/TwitterFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/TwitterFragment;JJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;->this$0:Lcom/iMe/ui/twitter/TwitterFragment;

    iput-wide p2, p0, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;->$telegramProfileId:J

    iput-wide p4, p0, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;->$twitterUserId:J

    iput-object p6, p0, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;->$twitterUserNickname:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/twitter/TwitterPresenter;
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;->this$0:Lcom/iMe/ui/twitter/TwitterFragment;

    new-instance v7, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2$1;

    iget-wide v2, p0, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;->$telegramProfileId:J

    iget-wide v4, p0, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;->$twitterUserId:J

    iget-object v6, p0, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;->$twitterUserNickname:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2$1;-><init>(JJLjava/lang/String;)V

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2$invoke$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v7}, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/twitter/TwitterPresenter;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;->invoke()Lcom/iMe/ui/twitter/TwitterPresenter;

    move-result-object v0

    return-object v0
.end method