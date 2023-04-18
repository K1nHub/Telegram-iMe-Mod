.class public final Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;
.super Ljava/lang/Object;
.source "TabBotAnswerItem.kt"

# interfaces
.implements Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;


# instance fields
.field private final botId:Ljava/lang/String;

.field private final contentType:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

.field private final link:Ljava/lang/String;

.field private final phrase:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phrase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->contentType:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    .line 8
    iput-object p2, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->botId:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->phrase:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->tag:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->link:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;

    invoke-virtual {p0}, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->botId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->botId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->phrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->phrase:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->link:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->link:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBotId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->contentType:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    return-object v0
.end method

.method public final getPhrase()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->phrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->botId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->phrase:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->link:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TabBotAnswerItem(contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", botId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->botId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->phrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method