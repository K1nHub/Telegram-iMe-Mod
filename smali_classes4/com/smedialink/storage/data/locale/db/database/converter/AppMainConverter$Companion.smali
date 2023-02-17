.class public final Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;
.super Ljava/lang/Object;
.source "AppMainConverter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppMainConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppMainConverter.kt\ncom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion\n+ 2 GsonExt.kt\ncom/smedialink/storage/data/utils/extentions/GsonExtKt\n*L\n1#1,29:1\n25#2,2:30\n25#2,2:32\n*S KotlinDebug\n*F\n+ 1 AppMainConverter.kt\ncom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion\n*L\n15#1:30,2\n23#1:32,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertIntListToString(Ljava/util/List;)Ljava/lang/String;
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

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->access$getGson$cp()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(list)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final convertLongListToString(Ljava/util/List;)Ljava/lang/String;
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

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->access$getGson$cp()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(list)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final convertStringToIntList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->access$getGson$cp()Lcom/google/gson/Gson;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion$convertStringToIntList$$inlined$fromJsonTokenType$1;

    invoke-direct {v1}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion$convertStringToIntList$$inlined$fromJsonTokenType$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final convertStringToLongList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->access$getGson$cp()Lcom/google/gson/Gson;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion$convertStringToLongList$$inlined$fromJsonTokenType$1;

    invoke-direct {v1}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter$Companion$convertStringToLongList$$inlined$fromJsonTokenType$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
