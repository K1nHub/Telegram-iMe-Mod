.class public abstract Lcom/iMe/storage/domain/model/common/EnvironmentInformation;
.super Ljava/lang/Object;
.source "EnvironmentInformation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion;,
        Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Development;,
        Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Production;,
        Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Stage;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion;

.field private static final availableEnvironments$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/common/EnvironmentInformation;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final authBotId:J

.field private final authBotUsername:Ljava/lang/String;

.field private final binanceProcessUrl:Ljava/lang/String;

.field private final bscScanUrl:Ljava/lang/String;

.field private final dynamicLinksDomain:Ljava/lang/String;

.field private final environment:Lcom/iMe/storage/domain/model/common/Environment;

.field private final googleServiceOptions:Lcom/google/firebase/FirebaseOptions;

.field private final hintDefaultShowsCount:I

.field private final mainApiUrl:Ljava/lang/String;

.field private final newsBotId:J

.field private final newsBotUsername:Ljava/lang/String;

.field private final reactionBotId:J

.field private final reactionBotUsername:Ljava/lang/String;

.field private final tonConfigFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->Companion:Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion;

    .line 77
    sget-object v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;->INSTANCE:Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->availableEnvironments$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Lcom/iMe/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 8
    iput-object v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->environment:Lcom/iMe/storage/domain/model/common/Environment;

    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->googleServiceOptions:Lcom/google/firebase/FirebaseOptions;

    move-object v1, p3

    .line 10
    iput-object v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->mainApiUrl:Ljava/lang/String;

    move-object v1, p4

    .line 11
    iput-object v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->authBotUsername:Ljava/lang/String;

    move-wide v1, p5

    .line 12
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->authBotId:J

    move-object v1, p7

    .line 13
    iput-object v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->newsBotUsername:Ljava/lang/String;

    move-wide v1, p8

    .line 14
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->newsBotId:J

    move-object v1, p10

    .line 15
    iput-object v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->bscScanUrl:Ljava/lang/String;

    move-object v1, p11

    .line 16
    iput-object v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->reactionBotUsername:Ljava/lang/String;

    move-wide v1, p12

    .line 17
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->reactionBotId:J

    move-object/from16 v1, p14

    .line 18
    iput-object v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->binanceProcessUrl:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 19
    iput-object v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->tonConfigFilename:Ljava/lang/String;

    move/from16 v1, p16

    .line 20
    iput v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->hintDefaultShowsCount:I

    move-object/from16 v1, p17

    .line 21
    iput-object v1, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->dynamicLinksDomain:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;-><init>(Lcom/iMe/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAvailableEnvironments$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->availableEnvironments$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final getAvailableEnvironments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/common/EnvironmentInformation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->Companion:Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Companion;->getAvailableEnvironments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAuthBotId()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->authBotId:J

    return-wide v0
.end method

.method public final getAuthBotUsername()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->authBotUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final getBinanceProcessUrl()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->binanceProcessUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBscScanUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->bscScanUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDynamicLinksDomain()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->dynamicLinksDomain:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnvironment()Lcom/iMe/storage/domain/model/common/Environment;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->environment:Lcom/iMe/storage/domain/model/common/Environment;

    return-object v0
.end method

.method public final getGoogleServiceOptions()Lcom/google/firebase/FirebaseOptions;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->googleServiceOptions:Lcom/google/firebase/FirebaseOptions;

    return-object v0
.end method

.method public final getHintDefaultShowsCount()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->hintDefaultShowsCount:I

    return v0
.end method

.method public final getMainApiUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->mainApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewsBotId()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->newsBotId:J

    return-wide v0
.end method

.method public final getNewsBotUsername()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->newsBotUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final getReactionBotId()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->reactionBotId:J

    return-wide v0
.end method

.method public final getReactionBotUsername()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->reactionBotUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final getTonConfigFilename()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->tonConfigFilename:Ljava/lang/String;

    return-object v0
.end method
