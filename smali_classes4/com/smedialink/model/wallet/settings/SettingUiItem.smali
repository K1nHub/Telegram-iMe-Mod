.class public final Lcom/smedialink/model/wallet/settings/SettingUiItem;
.super Ljava/lang/Object;
.source "SettingUiItem.kt"


# instance fields
.field private final item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;


# direct methods
.method public constructor <init>(Lcom/smedialink/model/wallet/settings/SettingMenuItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/model/wallet/settings/SettingUiItem;->item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/settings/SettingUiItem;Lcom/smedialink/model/wallet/settings/SettingMenuItem;ILjava/lang/Object;)Lcom/smedialink/model/wallet/settings/SettingUiItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/smedialink/model/wallet/settings/SettingUiItem;->item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/model/wallet/settings/SettingUiItem;->copy(Lcom/smedialink/model/wallet/settings/SettingMenuItem;)Lcom/smedialink/model/wallet/settings/SettingUiItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/model/wallet/settings/SettingMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/settings/SettingUiItem;->item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/model/wallet/settings/SettingMenuItem;)Lcom/smedialink/model/wallet/settings/SettingUiItem;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/settings/SettingUiItem;

    invoke-direct {v0, p1}, Lcom/smedialink/model/wallet/settings/SettingUiItem;-><init>(Lcom/smedialink/model/wallet/settings/SettingMenuItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/settings/SettingUiItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/settings/SettingUiItem;

    iget-object v1, p0, Lcom/smedialink/model/wallet/settings/SettingUiItem;->item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    iget-object p1, p1, Lcom/smedialink/model/wallet/settings/SettingUiItem;->item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getDescription(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/smedialink/model/wallet/settings/SettingUiItem;->item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->getDescription()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/model/wallet/settings/SettingUiItem;->item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->getDescription()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final getItem()Lcom/smedialink/model/wallet/settings/SettingMenuItem;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/model/wallet/settings/SettingUiItem;->item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/settings/SettingUiItem;->item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingUiItem(item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/settings/SettingUiItem;->item:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
