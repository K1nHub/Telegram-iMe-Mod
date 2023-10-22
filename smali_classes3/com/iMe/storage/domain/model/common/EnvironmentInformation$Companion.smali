.class public final Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion;
.super Ljava/lang/Object;
.source "EnvironmentInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/common/EnvironmentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getAvailableEnvironments$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAvailableEnvironments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/common/EnvironmentInformation;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->access$getAvailableEnvironments$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
