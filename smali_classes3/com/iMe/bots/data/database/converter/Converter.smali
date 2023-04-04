.class public final Lcom/iMe/bots/data/database/converter/Converter;
.super Ljava/lang/Object;
.source "Converter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/bots/data/database/converter/Converter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

.field private static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/bots/data/database/converter/Converter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/bots/data/database/converter/Converter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    .line 15
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/iMe/bots/data/database/converter/Converter;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$getGson$cp()Lcom/google/gson/Gson;
    .locals 1

    .line 11
    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final fromDate(Ljava/util/Date;)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final fromMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->fromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final fromString(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->fromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final fromStrings(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->fromStrings(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final fromTimeStamp(Ljava/lang/Long;)Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->fromTimeStamp(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static final toBotLanguage(Ljava/lang/String;)Lcom/iMe/bots/domain/model/BotLanguage;
    .locals 1

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->toBotLanguage(Ljava/lang/String;)Lcom/iMe/bots/domain/model/BotLanguage;

    move-result-object p0

    return-object p0
.end method

.method public static final toBotsDbModelStatus(Ljava/lang/String;)Lcom/iMe/bots/data/model/BotStatus;
    .locals 1

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->toBotsDbModelStatus(Ljava/lang/String;)Lcom/iMe/bots/data/model/BotStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final toBotsDbModelType(Ljava/lang/String;)Lcom/iMe/bots/data/model/BotType;
    .locals 1

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->toBotsDbModelType(Ljava/lang/String;)Lcom/iMe/bots/data/model/BotType;

    move-result-object p0

    return-object p0
.end method

.method public static final toMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(Lcom/iMe/bots/data/model/BotStatus;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->toString(Lcom/iMe/bots/data/model/BotStatus;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(Lcom/iMe/bots/data/model/BotType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->toString(Lcom/iMe/bots/data/model/BotType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(Lcom/iMe/bots/domain/model/BotLanguage;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iMe/bots/data/database/converter/Converter;->Companion:Lcom/iMe/bots/data/database/converter/Converter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/bots/data/database/converter/Converter$Companion;->toString(Lcom/iMe/bots/domain/model/BotLanguage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
