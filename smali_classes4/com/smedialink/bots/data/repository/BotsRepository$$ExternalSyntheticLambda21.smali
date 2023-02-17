.class public final synthetic Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda21;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda21;-><init>()V

    sput-object v0, Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda21;->INSTANCE:Lcom/smedialink/bots/data/repository/BotsRepository$$ExternalSyntheticLambda21;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/smedialink/bots/data/model/network/Response;

    invoke-static {p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->$r8$lambda$73lcz5zXYnTYSvBeV-PKnf19ihE(Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
