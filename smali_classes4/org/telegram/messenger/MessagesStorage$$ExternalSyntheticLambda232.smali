.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda232;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda232;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda232;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda232;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda232;->INSTANCE:Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda232;

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

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$w2xucxOhVvpxc2xmcPxh2e5bDN4(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result p1

    return p1
.end method
