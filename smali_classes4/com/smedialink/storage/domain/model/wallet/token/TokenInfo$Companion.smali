.class public final Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;
.super Ljava/lang/Object;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenInfo.kt\ncom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1088:1\n1#2:1089\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;-><init>()V

    return-void
.end method

.method private final getSupportedTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;",
            ">;"
        }
    .end annotation

    .line 1049
    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->access$getSupportedTokens$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->getSupportedTokens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    if-nez v1, :cond_3

    .line 1085
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;

    :cond_3
    return-object v1
.end method

.method public final map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1080
    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->getSupportedTokens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    if-nez v1, :cond_2

    .line 1081
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;

    :cond_2
    return-object v1
.end method
