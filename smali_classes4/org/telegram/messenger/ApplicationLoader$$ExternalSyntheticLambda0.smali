.class public final synthetic Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    return-void
.end method
