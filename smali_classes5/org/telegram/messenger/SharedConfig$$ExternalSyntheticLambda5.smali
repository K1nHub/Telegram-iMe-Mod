.class public final synthetic Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda5;

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

    invoke-static {p1, p2}, Lorg/telegram/messenger/SharedConfig;->$r8$lambda$IU_2LuPX9LWiXFEp3m3SPd-1uwA(Lorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I

    move-result p1

    return p1
.end method
