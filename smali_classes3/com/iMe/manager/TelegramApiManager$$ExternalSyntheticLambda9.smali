.class public final synthetic Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/iMe/manager/TelegramApiManager;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3

    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iget-object v1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1, v2, p1}, Lcom/iMe/manager/TelegramApiManager;->$r8$lambda$3fqSautlXwb4yznzJnezmkHG_8Q(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
