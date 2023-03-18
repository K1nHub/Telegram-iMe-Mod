.class final Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BotInfoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/shop/BotInfoActivity;->observeBotAnalog(Lcom/smedialink/bots/domain/model/ShopItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/domain/model/ShopItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $currentBot:Lcom/smedialink/bots/domain/model/ShopItem;

.field final synthetic this$0:Lcom/smedialink/ui/shop/BotInfoActivity;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/shop/BotInfoActivity;Lcom/smedialink/bots/domain/model/ShopItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1;->this$0:Lcom/smedialink/ui/shop/BotInfoActivity;

    iput-object p2, p0, Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1;->$currentBot:Lcom/smedialink/bots/domain/model/ShopItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 254
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;)V"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1;->this$0:Lcom/smedialink/ui/shop/BotInfoActivity;

    const-string v1, "items"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1;->$currentBot:Lcom/smedialink/bots/domain/model/ShopItem;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/smedialink/bots/domain/model/ShopItem;

    .line 256
    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/ShopItem;->getLanguage()Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v6

    sget-object v7, Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v4, :cond_2

    if-ne v6, v3, :cond_1

    .line 261
    invoke-virtual {v5}, Lcom/smedialink/bots/domain/model/ShopItem;->getBotId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/ShopItem;->getBotId()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "_eng"

    const-string v8, ""

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 258
    :cond_2
    invoke-virtual {v5}, Lcom/smedialink/bots/domain/model/ShopItem;->getBotId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/ShopItem;->getBotId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_eng"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_0
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 255
    :goto_1
    check-cast v2, Lcom/smedialink/bots/domain/model/ShopItem;

    invoke-static {v0, v2}, Lcom/smedialink/ui/shop/BotInfoActivity;->access$setBotAnalog$p(Lcom/smedialink/ui/shop/BotInfoActivity;Lcom/smedialink/bots/domain/model/ShopItem;)V

    .line 265
    iget-object p1, p0, Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1;->this$0:Lcom/smedialink/ui/shop/BotInfoActivity;

    invoke-static {p1}, Lcom/smedialink/ui/shop/BotInfoActivity;->access$getBotAnalog$p(Lcom/smedialink/ui/shop/BotInfoActivity;)Lcom/smedialink/bots/domain/model/ShopItem;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1;->this$0:Lcom/smedialink/ui/shop/BotInfoActivity;

    .line 266
    invoke-static {v0}, Lcom/smedialink/ui/shop/BotInfoActivity;->access$getBotAnalogLanguage$p(Lcom/smedialink/ui/shop/BotInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getLanguage()Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object p1

    sget-object v1, Lcom/smedialink/ui/shop/BotInfoActivity$observeBotAnalog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v4, :cond_6

    if-ne p1, v3, :cond_5

    .line 268
    sget p1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_info_supported_language_en:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 267
    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_info_supported_language_ru:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 266
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method
