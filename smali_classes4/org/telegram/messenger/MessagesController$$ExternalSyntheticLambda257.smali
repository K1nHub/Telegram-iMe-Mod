.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;->INSTANCE:Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;

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

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$0uny0OAYJ6VML8VtZxIAh1RB5AI(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I

    move-result p1

    return p1
.end method
