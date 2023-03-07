.class public final Lcom/smedialink/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/chat/ChatPresenter;->listenEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ChatPresenter.kt\ncom/smedialink/ui/chat/ChatPresenter\n*L\n1#1,111:1\n228#2,4:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/chat/ChatPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/chat/ChatPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;

    .line 112
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;->getChatId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/chat/ChatPresenter;->access$getChat$p(Lcom/smedialink/ui/chat/ChatPresenter;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 113
    iget-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    sget-object v0, Lcom/smedialink/common/TelegramConstants;->INSTANCE:Lcom/smedialink/common/TelegramConstants;

    invoke-static {p1}, Lcom/smedialink/ui/chat/ChatPresenter;->access$getChat$p(Lcom/smedialink/ui/chat/ChatPresenter;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/smedialink/ui/chat/ChatPresenter;->access$checkIsDonationEnabled(Lcom/smedialink/ui/chat/ChatPresenter;J)V

    :cond_2
    return-void
.end method
