.class public final synthetic Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$1:Lcom/iMe/manager/TelegramApiManager;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda8;->f$1:Lcom/iMe/manager/TelegramApiManager;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda8;->f$1:Lcom/iMe/manager/TelegramApiManager;

    invoke-static {v0, v1, p1}, Lcom/iMe/manager/TelegramApiManager;->$r8$lambda$NYbKcg_3xRQqFE7e7Tkt1eGej7g(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
