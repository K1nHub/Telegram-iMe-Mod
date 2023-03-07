.class final Lcom/smedialink/bots/data/model/bot/NeuroBot$classifier$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NeuroBot.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/model/bot/NeuroBot;-><init>(Ljava/lang/String;Lcom/smedialink/bots/domain/ResourceFactory;ZLcom/smedialink/bots/domain/model/BotLanguage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/bots/data/model/bot/NeuroBot;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/data/model/bot/NeuroBot;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot$classifier$2;->this$0:Lcom/smedialink/bots/data/model/bot/NeuroBot;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;
    .locals 2

    .line 28
    new-instance v0, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot$classifier$2;->this$0:Lcom/smedialink/bots/data/model/bot/NeuroBot;

    invoke-virtual {v1}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;->setLocalModelName(Ljava/lang/String;)Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;->build()Lcom/google/firebase/ml/custom/FirebaseModelOptions;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->getInstance(Lcom/google/firebase/ml/custom/FirebaseModelOptions;)Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/bot/NeuroBot$classifier$2;->invoke()Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;

    move-result-object v0

    return-object v0
.end method
