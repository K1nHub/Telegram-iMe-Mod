.class public final synthetic Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lio/reactivex/ObservableEmitter;

.field public final synthetic f$1:Lcom/iMe/manager/TelegramApiManager;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda17;->f$0:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda17;->f$1:Lcom/iMe/manager/TelegramApiManager;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda17;->f$0:Lio/reactivex/ObservableEmitter;

    iget-object v1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda17;->f$1:Lcom/iMe/manager/TelegramApiManager;

    invoke-static {v0, v1, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->$r8$lambda$WF4vc8sVD4szAtT_AcmI-OqVKNI(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method