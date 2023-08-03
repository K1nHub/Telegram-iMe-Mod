.class public final synthetic Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda14;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda14;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda14;->INSTANCE:Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda14;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesStorage;->$r8$lambda$eXfIZboDnrXiBiWxx_4x9Cr9tbM(Lorg/telegram/tgnet/TLRPC$TL_userStories;)I

    move-result p1

    return p1
.end method
