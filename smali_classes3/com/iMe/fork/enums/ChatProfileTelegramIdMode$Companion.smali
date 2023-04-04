.class public final Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;
.super Ljava/lang/Object;
.source "ChatProfileTelegramIdMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatProfileTelegramIdMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatProfileTelegramIdMode.kt\ncom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,17:1\n1#2:18\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isTelegramIdMode(Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->TELEGRAM_API:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;
    .locals 5

    .line 12
    invoke-static {}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->values()[Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

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

    sget-object v3, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->TELEGRAM_API:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    :cond_2
    return-object v3
.end method
