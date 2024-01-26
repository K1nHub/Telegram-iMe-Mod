.class public final synthetic Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/iMe/manager/TelegramApiManager;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/manager/TelegramApiManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iget-object v1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/iMe/manager/TelegramApiManager;->$r8$lambda$ob4o_RYwa20SjcR5vzuv6p1GiLU(Lcom/iMe/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method
