.class public final Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;
.super Ljava/lang/Object;
.source "TabBotMediaAnswerItem.kt"

# interfaces
.implements Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion;


# instance fields
.field private final contentType:Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;

.field private final media:Lorg/telegram/tgnet/TLRPC$BotInlineResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->Companion:Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->contentType:Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;

    .line 9
    iput-object p2, p0, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->media:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    invoke-virtual {p0}, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->getContentType()Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->getContentType()Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->media:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object p1, p1, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->media:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getContentType()Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->contentType:Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;

    return-object v0
.end method

.method public final getMedia()Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->media:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->getContentType()Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->media:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TabBotMediaAnswerItem(contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->getContentType()Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->media:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
