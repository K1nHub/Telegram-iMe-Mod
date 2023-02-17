.class public final synthetic Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/manager/TelegramApiManager;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/manager/TelegramApiManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/manager/TelegramApiManager;

    iput-object p2, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/manager/TelegramApiManager;

    iget-object v1, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/smedialink/manager/TelegramApiManager;->$r8$lambda$WKSpraVEv1highxEfVzMJu2VOHE(Lcom/smedialink/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method
