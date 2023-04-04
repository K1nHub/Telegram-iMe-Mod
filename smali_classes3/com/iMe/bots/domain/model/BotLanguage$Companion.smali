.class public final Lcom/iMe/bots/domain/model/BotLanguage$Companion;
.super Ljava/lang/Object;
.source "BotLanguage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/bots/domain/model/BotLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotLanguage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotLanguage.kt\ncom/iMe/bots/domain/model/BotLanguage$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,11:1\n1#2:12\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/bots/domain/model/BotLanguage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(Ljava/lang/String;)Lcom/iMe/bots/domain/model/BotLanguage;
    .locals 4

    const-string v0, "langCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/iMe/bots/domain/model/BotLanguage;->values()[Lcom/iMe/bots/domain/model/BotLanguage;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/BotLanguage;->getLangCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_3

    .line 9
    sget-object v1, Lcom/iMe/bots/domain/model/BotLanguage;->RU:Lcom/iMe/bots/domain/model/BotLanguage;

    :cond_3
    return-object v1
.end method
