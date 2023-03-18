.class public final synthetic Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lio/reactivex/ObservableEmitter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda18;->f$0:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda18;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda18;->f$0:Lio/reactivex/ObservableEmitter;

    iget-object v1, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda18;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->$r8$lambda$whp1CCVjcroJ5cDg8fbmpYorqtU(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
