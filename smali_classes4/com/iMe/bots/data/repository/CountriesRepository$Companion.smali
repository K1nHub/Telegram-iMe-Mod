.class public final Lcom/iMe/bots/data/repository/CountriesRepository$Companion;
.super Ljava/lang/Object;
.source "CountriesRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/bots/data/repository/CountriesRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/bots/data/repository/CountriesRepository$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/iMe/bots/data/repository/CountriesRepository;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/iMe/bots/data/repository/CountriesRepository;->access$getINSTANCE$cp()Lcom/iMe/bots/data/repository/CountriesRepository;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Lcom/iMe/bots/data/repository/CountriesRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/iMe/bots/data/repository/CountriesRepository;->Companion:Lcom/iMe/bots/data/repository/CountriesRepository$Companion;

    new-instance v1, Lcom/iMe/bots/data/repository/CountriesRepository;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/iMe/bots/data/repository/CountriesRepository;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lcom/iMe/bots/data/repository/CountriesRepository;->access$setINSTANCE$cp(Lcom/iMe/bots/data/repository/CountriesRepository;)V

    .line 16
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 18
    :cond_0
    :goto_0
    invoke-static {}, Lcom/iMe/bots/data/repository/CountriesRepository;->access$getINSTANCE$cp()Lcom/iMe/bots/data/repository/CountriesRepository;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getRUSSIAN_PHONE_CODES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/iMe/bots/data/repository/CountriesRepository;->access$getRUSSIAN_PHONE_CODES$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getRUSSIAN_REGIONS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/iMe/bots/data/repository/CountriesRepository;->access$getRUSSIAN_REGIONS$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final isRussia(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/bots/data/repository/CountriesRepository$Companion;->getRUSSIAN_PHONE_CODES()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/iMe/bots/data/repository/CountriesRepository$Companion;->getRUSSIAN_REGIONS()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method
