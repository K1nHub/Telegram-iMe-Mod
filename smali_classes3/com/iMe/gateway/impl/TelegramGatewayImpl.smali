.class public final Lcom/iMe/gateway/impl/TelegramGatewayImpl;
.super Ljava/lang/Object;
.source "TelegramGatewayImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/gateway/TelegramGateway;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/iMe/gateway/impl/TelegramGatewayImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cutInBlocks(Ljava/lang/CharSequence;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p1, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->cutInBlocks(Ljava/lang/CharSequence;I)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "cutInBlocks(text, maxBlockSize)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .line 18
    sget-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    const-string v1, "BUILD_VERSION_STRING"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCurrentLocaleInformation()Lcom/iMe/storage/domain/model/telegram/TelegramLocaleInformation;
    .locals 5

    .line 22
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/iMe/storage/domain/model/telegram/TelegramLocaleInformation;

    .line 24
    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale.langCode"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v3, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    const-string v4, "locale.pluralLangCode"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v0

    .line 23
    invoke-direct {v1, v2, v3, v0}, Lcom/iMe/storage/domain/model/telegram/TelegramLocaleInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/gateway/impl/TelegramGatewayImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilesFixedDirectory()Ljava/io/File;
    .locals 2

    .line 40
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    const-string v1, "getFilesDirFixed()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSelectedAccountId()J
    .locals 2

    .line 34
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    return-wide v0
.end method

.method public getSelectedAccountIndex()I
    .locals 1

    .line 31
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    return v0
.end method

.method public getWalletRefreshToken()Ljava/lang/String;
    .locals 2

    .line 47
    sget-object v0, Lcom/iMe/fork/controller/ForkCommonController;->Companion:Lcom/iMe/fork/controller/ForkCommonController$Companion;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/ForkCommonController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getWalletRefreshToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasUser(J)Z
    .locals 1

    .line 64
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAppVersionRequiredUpdate(Ljava/lang/String;)V
    .locals 2

    .line 58
    sget-object v0, Lcom/iMe/fork/controller/ForkCommonController;->Companion:Lcom/iMe/fork/controller/ForkCommonController$Companion;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/ForkCommonController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ForkCommonController;->setAppVersionRequiredUpdate(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->saveConfig()V

    return-void
.end method

.method public setWalletRefreshToken(Ljava/lang/String;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/iMe/fork/controller/ForkCommonController;->Companion:Lcom/iMe/fork/controller/ForkCommonController$Companion;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/ForkCommonController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ForkCommonController;->setWalletRefreshToken(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->saveConfig()V

    return-void
.end method
