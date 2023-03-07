.class public final synthetic Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda44;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda44;-><init>()V

    sput-object v0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda44;->INSTANCE:Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda44;

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

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->$r8$lambda$QCRk1QaSiNQhFGvRYKy2X3N5bzo(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
