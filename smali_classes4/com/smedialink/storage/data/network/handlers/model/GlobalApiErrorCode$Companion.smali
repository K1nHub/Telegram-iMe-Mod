.class public final Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode$Companion;
.super Ljava/lang/Object;
.source "GlobalApiErrorCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalApiErrorCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalApiErrorCode.kt\ncom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Ljava/lang/String;)Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;
    .locals 5

    .line 42
    invoke-static {}, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->values()[Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

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

    sget-object v3, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->UNKNOWN:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    :cond_2
    return-object v3
.end method
