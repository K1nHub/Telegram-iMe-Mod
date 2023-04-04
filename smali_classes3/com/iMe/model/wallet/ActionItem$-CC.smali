.class public final synthetic Lcom/iMe/model/wallet/ActionItem$-CC;
.super Ljava/lang/Object;
.source "ActionItem.kt"


# direct methods
.method public static $default$getTitle(Lcom/iMe/model/wallet/ActionItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lcom/iMe/model/wallet/ActionItem;

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lcom/iMe/model/wallet/ActionItem;->getTitleString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/iMe/model/wallet/ActionItem;->getTitle()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {p0}, Lcom/iMe/model/wallet/ActionItem;->getTitleString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    :goto_2
    return-object p1
.end method
