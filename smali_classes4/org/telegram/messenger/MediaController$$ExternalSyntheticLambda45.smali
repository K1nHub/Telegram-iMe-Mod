.class public final synthetic Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda45;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda45;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda45;->INSTANCE:Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda45;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-static {p1, p2}, Lorg/telegram/messenger/MediaController;->$r8$lambda$pniXHUwox-sXJ_hEU5c1_A7iAoY(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/MediaController$PhotoEntry;)I

    move-result p1

    return p1
.end method
