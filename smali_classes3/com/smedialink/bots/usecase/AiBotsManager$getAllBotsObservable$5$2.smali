.class final synthetic Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5$2;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "AiBotsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5;->invoke(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5$2;

    invoke-direct {v0}, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5$2;-><init>()V

    sput-object v0, Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5$2;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$getAllBotsObservable$5$2;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-class v0, Lcom/smedialink/bots/domain/model/ShopItem;

    const-string v1, "title"

    const-string v2, "getTitle()Ljava/lang/String;"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 182
    check-cast p1, Lcom/smedialink/bots/domain/model/ShopItem;

    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
