.class public final synthetic Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/reactivex/ObservableEmitter;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda9;->f$0:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda9;->f$0:Lio/reactivex/ObservableEmitter;

    iget-object v1, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1}, Lcom/smedialink/manager/TelegramApiManager;->$r8$lambda$7r1wnCelWh61Yw19sm5FTSswcGo(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method
