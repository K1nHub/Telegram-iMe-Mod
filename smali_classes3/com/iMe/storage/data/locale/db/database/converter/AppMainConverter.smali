.class public final Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;
.super Ljava/lang/Object;
.source "AppMainConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

.field private static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    .line 12
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$getGson$cp()Lcom/google/gson/Gson;
    .locals 1

    .line 8
    sget-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final convertDateToLong(Ljava/util/Date;)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertDateToLong(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final convertIntListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertIntListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final convertLongListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertLongListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final convertLongToDate(Ljava/lang/Long;)Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertLongToDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static final convertStringListToString(Ljava/util/List;)Ljava/lang/String;
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

    sget-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertStringListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final convertStringToIntList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertStringToIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final convertStringToLongList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertStringToLongList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final convertStringToStringList(Ljava/lang/String;)Ljava/util/List;
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

    sget-object v0, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertStringToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
