.class final synthetic Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$5$1;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "AiBotsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$5;->invoke(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$5$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$5$1;

    invoke-direct {v0}, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$5$1;-><init>()V

    sput-object v0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$5$1;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$5$1;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-class v0, Lcom/iMe/bots/domain/model/ShopItem;

    const-string v1, "priority"

    const-string v2, "getPriority()J"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 182
    check-cast p1, Lcom/iMe/bots/domain/model/ShopItem;

    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getPriority()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method