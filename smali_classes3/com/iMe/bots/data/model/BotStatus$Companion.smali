.class public final Lcom/iMe/bots/data/model/BotStatus$Companion;
.super Ljava/lang/Object;
.source "BotStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/bots/data/model/BotStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotStatus.kt\ncom/iMe/bots/data/model/BotStatus$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,11:1\n1282#2,2:12\n*S KotlinDebug\n*F\n+ 1 BotStatus.kt\ncom/iMe/bots/data/model/BotStatus$Companion\n*L\n8#1:12,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/bots/data/model/BotStatus$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolve(Ljava/lang/String;)Lcom/iMe/bots/data/model/BotStatus;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/iMe/bots/data/model/BotStatus;->values()[Lcom/iMe/bots/data/model/BotStatus;

    move-result-object v0

    .line 1282
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 8
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

    sget-object v3, Lcom/iMe/bots/data/model/BotStatus;->AVAILABLE:Lcom/iMe/bots/data/model/BotStatus;

    :cond_2
    return-object v3
.end method
