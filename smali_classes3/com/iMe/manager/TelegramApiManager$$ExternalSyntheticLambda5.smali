.class public final synthetic Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/iMe/manager/TelegramApiManager;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;

    iput-object p3, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4

    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iget-object v1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;

    iget-object v2, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/iMe/manager/TelegramApiManager;->$r8$lambda$OD3kCisIitLo77xs7erm_PSoqYk(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
