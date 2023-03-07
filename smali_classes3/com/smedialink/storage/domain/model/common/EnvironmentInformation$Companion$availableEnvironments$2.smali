.class final Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EnvironmentInformation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    .line 83
    sget-object v1, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 84
    sget-object v1, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 85
    sget-object v1, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 82
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
