.class public final synthetic Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/manager/TelegramApiManager;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda2;->f$0:Lcom/smedialink/manager/TelegramApiManager;

    iput-object p2, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3

    iget-object v0, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda2;->f$0:Lcom/smedialink/manager/TelegramApiManager;

    iget-object v1, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, v2, p1}, Lcom/smedialink/manager/TelegramApiManager;->$r8$lambda$3ZamCHoB-XF6g3aYY15NjnHFshM(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
