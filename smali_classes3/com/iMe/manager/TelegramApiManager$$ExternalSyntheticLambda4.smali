.class public final synthetic Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/iMe/manager/TelegramApiManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/manager/TelegramApiManager;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iput-wide p2, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;->f$1:J

    iput-object p4, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4

    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;->f$0:Lcom/iMe/manager/TelegramApiManager;

    iget-wide v1, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;->f$1:J

    iget-object v3, p0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/iMe/manager/TelegramApiManager;->$r8$lambda$zFvDNEkHnIQjt1PMEdKZ_WMHTso(Lcom/iMe/manager/TelegramApiManager;JLorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
