.class public final synthetic Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;

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

    check-cast p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    check-cast p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    invoke-static {p1, p2}, Lorg/telegram/messenger/SharedConfig;->$r8$lambda$K1X-l4vRXrWWRPEci20ckE1evgE(Lorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I

    move-result p1

    return p1
.end method
