.class public final Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;
.super Ljava/lang/Object;
.source "AppMainConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;

.field private static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    .line 11
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$getGson$cp()Lcom/google/gson/Gson;
    .locals 1

    .line 7
    sget-object v0, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->gson:Lcom/google/gson/Gson;

    return-object v0
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

    sget-object v0, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertIntListToString(Ljava/util/List;)Ljava/lang/String;

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

    sget-object v0, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertLongListToString(Ljava/util/List;)Ljava/lang/String;

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

    sget-object v0, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertStringToIntList(Ljava/lang/String;)Ljava/util/List;

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

    sget-object v0, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->Companion:Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;->convertStringToLongList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
