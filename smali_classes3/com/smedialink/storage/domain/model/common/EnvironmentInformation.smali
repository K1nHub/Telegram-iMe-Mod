.class public abstract Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;
.super Ljava/lang/Object;
.source "EnvironmentInformation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion;,
        Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;,
        Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;,
        Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion;

.field private static final availableEnvironments$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final binanceProcessUrl:Ljava/lang/String;

.field private final bscScanUrl:Ljava/lang/String;

.field private final environment:Lcom/smedialink/storage/domain/model/common/Environment;

.field private final etherScanUrl:Ljava/lang/String;

.field private final fantomScanUrl:Ljava/lang/String;

.field private final googleServiceOptions:Lcom/google/firebase/FirebaseOptions;

.field private final hintDefaultShowsCount:I

.field private final mainApiUrl:Ljava/lang/String;

.field private final polygonScanUrl:Ljava/lang/String;

.field private final reactionBotId:J

.field private final reactionBotUsername:Ljava/lang/String;

.field private final tonConfigFilename:Ljava/lang/String;

.field private final tonScanUrl:Ljava/lang/String;

.field private final walletActivationBotId:J

.field private final walletActivationBotUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->Companion:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion;

    .line 81
    sget-object v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion$availableEnvironments$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->availableEnvironments$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Lcom/smedialink/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    move-object v0, p0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 8
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->environment:Lcom/smedialink/storage/domain/model/common/Environment;

    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->googleServiceOptions:Lcom/google/firebase/FirebaseOptions;

    move-object v1, p3

    .line 10
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->mainApiUrl:Ljava/lang/String;

    move-object v1, p4

    .line 11
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->walletActivationBotUsername:Ljava/lang/String;

    move-wide v1, p5

    .line 12
    iput-wide v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->walletActivationBotId:J

    move-object v1, p7

    .line 13
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->etherScanUrl:Ljava/lang/String;

    move-object v1, p8

    .line 14
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->bscScanUrl:Ljava/lang/String;

    move-object v1, p9

    .line 15
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->polygonScanUrl:Ljava/lang/String;

    move-object v1, p10

    .line 16
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->fantomScanUrl:Ljava/lang/String;

    move-object v1, p11

    .line 17
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->tonScanUrl:Ljava/lang/String;

    move-object v1, p12

    .line 18
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->reactionBotUsername:Ljava/lang/String;

    move-wide/from16 v1, p13

    .line 19
    iput-wide v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->reactionBotId:J

    move-object/from16 v1, p15

    .line 20
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->binanceProcessUrl:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 21
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->tonConfigFilename:Ljava/lang/String;

    move/from16 v1, p17

    .line 22
    iput v1, v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->hintDefaultShowsCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/smedialink/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;-><init>(Lcom/smedialink/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getAvailableEnvironments$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 7
    sget-object v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->availableEnvironments$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final getAvailableEnvironments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->Companion:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Companion;->getAvailableEnvironments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getBinanceProcessUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->binanceProcessUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBscScanUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->bscScanUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnvironment()Lcom/smedialink/storage/domain/model/common/Environment;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->environment:Lcom/smedialink/storage/domain/model/common/Environment;

    return-object v0
.end method

.method public final getEtherScanUrl()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->etherScanUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFantomScanUrl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->fantomScanUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getGoogleServiceOptions()Lcom/google/firebase/FirebaseOptions;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->googleServiceOptions:Lcom/google/firebase/FirebaseOptions;

    return-object v0
.end method

.method public final getHintDefaultShowsCount()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->hintDefaultShowsCount:I

    return v0
.end method

.method public final getMainApiUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->mainApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPolygonScanUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->polygonScanUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getReactionBotId()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->reactionBotId:J

    return-wide v0
.end method

.method public final getReactionBotUsername()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->reactionBotUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final getTonConfigFilename()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->tonConfigFilename:Ljava/lang/String;

    return-object v0
.end method

.method public final getTonScanUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->tonScanUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getWalletActivationBotId()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->walletActivationBotId:J

    return-wide v0
.end method

.method public final getWalletActivationBotUsername()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->walletActivationBotUsername:Ljava/lang/String;

    return-object v0
.end method
