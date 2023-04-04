.class public final synthetic Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/iMe/manager/TelegramApiManager;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iget-object v1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    invoke-static {v0, v1, p1}, Lcom/iMe/manager/TelegramApiManager;->$r8$lambda$kkNdq3HzjCJGINhODZTPmubnlPQ(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
