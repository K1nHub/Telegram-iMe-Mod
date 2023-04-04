.class public final synthetic Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/iMe/manager/TelegramApiManager;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda6;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda6;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iget-object v1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-static {v0, v1, p1}, Lcom/iMe/manager/TelegramApiManager;->$r8$lambda$gZatmZk5kN_Dns2_Xcr37jzkMrk(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
