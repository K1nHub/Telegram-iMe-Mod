.class public final Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;
.super Landroid/widget/LinearLayout;
.source "MediaSwitchTopicsBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar$Companion;
    }
.end annotation


# instance fields
.field private currentMessagesContextMenu:Z

.field private final delegate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaTopic$delegate:Lkotlin/Lazy;

.field private final messagesTopic$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$ZFCklK4sUWOR73l2J_MN1FAyAOk(Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;ZLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->initTopic$lambda$1$lambda$0(Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;ZLandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    iput-boolean p2, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->currentMessagesContextMenu:Z

    .line 13
    iput-object p3, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->delegate:Lkotlin/jvm/functions/Function1;

    .line 17
    new-instance p1, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar$mediaTopic$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar$mediaTopic$2;-><init>(Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->mediaTopic$delegate:Lkotlin/Lazy;

    .line 18
    new-instance p1, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar$messagesTopic$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar$messagesTopic$2;-><init>(Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->messagesTopic$delegate:Lkotlin/Lazy;

    const/16 p1, 0x11

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 23
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->getMessagesTopic()Lcom/iMe/ui/topics/TopicView;

    move-result-object p1

    const/4 v0, -0x2

    const/16 v1, 0x18

    const/16 v2, 0x8

    const/4 v5, 0x6

    const/16 v4, 0x8

    move v3, v5

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->getMediaTopic()Lcom/iMe/ui/topics/TopicView;

    move-result-object p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->updateSelectedTopicAndColors()V

    return-void
.end method

.method public static final synthetic access$initTopic(Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;Z)Lcom/iMe/ui/topics/TopicView;
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->initTopic(Z)Lcom/iMe/ui/topics/TopicView;

    move-result-object p0

    return-object p0
.end method

.method private final getMediaTopic()Lcom/iMe/ui/topics/TopicView;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->mediaTopic$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/topics/TopicView;

    return-object v0
.end method

.method private final getMessagesTopic()Lcom/iMe/ui/topics/TopicView;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->messagesTopic$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/topics/TopicView;

    return-object v0
.end method

.method private final initTopic(Z)Lcom/iMe/ui/topics/TopicView;
    .locals 8

    .line 39
    new-instance v7, Lcom/iMe/ui/topics/TopicView;

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 39
    invoke-direct/range {v0 .. v6}, Lcom/iMe/ui/topics/TopicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    new-instance v0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;Z)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v7
.end method

.method private static final initTopic$lambda$1$lambda$0(Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;ZLandroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-boolean p2, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->currentMessagesContextMenu:Z

    if-ne p2, p1, :cond_0

    return-void

    .line 47
    :cond_0
    iput-boolean p1, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->currentMessagesContextMenu:Z

    .line 48
    iget-object p2, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->delegate:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->updateSelectedTopicAndColors()V

    return-void
.end method


# virtual methods
.method public final getCurrentMessagesContextMenu()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->currentMessagesContextMenu:Z

    return v0
.end method

.method public final getDelegate()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->delegate:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setCurrentMessagesContextMenu(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->currentMessagesContextMenu:Z

    return-void
.end method

.method public final updateSelectedTopicAndColors()V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->getMessagesTopic()Lcom/iMe/ui/topics/TopicView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->currentMessagesContextMenu:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/iMe/ui/topics/TopicView;->setMessagesContextMenu(ZZ)V

    .line 32
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->getMediaTopic()Lcom/iMe/ui/topics/TopicView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;->currentMessagesContextMenu:Z

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/iMe/ui/topics/TopicView;->setMessagesContextMenu(ZZ)V

    return-void
.end method
