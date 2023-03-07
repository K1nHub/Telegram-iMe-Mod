.class public final synthetic Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda3;->INSTANCE:Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda3;

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

    check-cast p1, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;

    invoke-static {p1}, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->$r8$lambda$yaJLOJI3ibmSD5tnYxAKdr7AnTk(Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
