.class public final synthetic Lorg/telegram/ui/ChatActivity$50$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/ui/ChatActivity$50$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/ChatActivity$50$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/telegram/ui/ChatActivity$50$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lorg/telegram/ui/ChatActivity$50$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/ChatActivity$50$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setCombineMessagesEnabled(Z)V

    return-void
.end method
