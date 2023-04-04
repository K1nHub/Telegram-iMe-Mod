.class public final Lcom/iMe/bots/data/model/BotType$Companion;
.super Ljava/lang/Object;
.source "BotType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/bots/data/model/BotType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotType.kt\ncom/iMe/bots/data/model/BotType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,24:1\n1#2:25\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/bots/data/model/BotType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolveById(Ljava/lang/String;)Lcom/iMe/bots/data/model/BotType;
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "holidays"

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/iMe/bots/data/model/BotType;->HOLIDAYS:Lcom/iMe/bots/data/model/BotType;

    goto :goto_0

    :cond_0
    const-string v0, "recent"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/iMe/bots/data/model/BotType;->RECENT:Lcom/iMe/bots/data/model/BotType;

    goto :goto_0

    .line 20
    :cond_1
    sget-object p1, Lcom/iMe/bots/data/model/BotType;->NEURO:Lcom/iMe/bots/data/model/BotType;

    :goto_0
    return-object p1
.end method

.method public final resolveByName(Ljava/lang/String;)Lcom/iMe/bots/data/model/BotType;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/iMe/bots/data/model/BotType;->values()[Lcom/iMe/bots/data/model/BotType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lcom/iMe/bots/data/model/BotType;->NEURO:Lcom/iMe/bots/data/model/BotType;

    :cond_2
    return-object v3
.end method
