.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda273;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda273;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda273;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda273;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda273;->INSTANCE:Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda273;

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

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    invoke-static {p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$bBeLL3quXKIaB3tAJvlgb3OPylA(Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;)I

    move-result p1

    return p1
.end method
