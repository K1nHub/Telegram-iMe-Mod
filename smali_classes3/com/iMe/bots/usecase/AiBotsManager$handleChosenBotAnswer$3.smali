.class final Lcom/iMe/bots/usecase/AiBotsManager$handleChosenBotAnswer$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/usecase/AiBotsManager;->handleChosenBotAnswer(Ljava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$handleChosenBotAnswer$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/bots/usecase/AiBotsManager$handleChosenBotAnswer$3;

    invoke-direct {v0}, Lcom/iMe/bots/usecase/AiBotsManager$handleChosenBotAnswer$3;-><init>()V

    sput-object v0, Lcom/iMe/bots/usecase/AiBotsManager$handleChosenBotAnswer$3;->INSTANCE:Lcom/iMe/bots/usecase/AiBotsManager$handleChosenBotAnswer$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager$handleChosenBotAnswer$3;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 252
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method