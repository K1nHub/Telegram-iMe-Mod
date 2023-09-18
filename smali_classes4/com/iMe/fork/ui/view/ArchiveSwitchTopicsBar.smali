.class public final Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;
.super Landroid/widget/LinearLayout;
.source "ArchiveSwitchTopicsBar.kt"


# instance fields
.field private final archiveTopic$delegate:Lkotlin/Lazy;

.field private currentArchive:Z

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

.field private final mainTopic$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$8PhbH0j9-y00zEcukRezt_gDa6c(Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;ZLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->initTopic$lambda$1$lambda$0(Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;ZLandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
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

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    iput-boolean p2, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->currentArchive:Z

    .line 12
    iput-object p3, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->delegate:Lkotlin/jvm/functions/Function1;

    .line 16
    new-instance p1, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar$mainTopic$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar$mainTopic$2;-><init>(Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->mainTopic$delegate:Lkotlin/Lazy;

    .line 17
    new-instance p1, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar$archiveTopic$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar$archiveTopic$2;-><init>(Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->archiveTopic$delegate:Lkotlin/Lazy;

    const/16 p1, 0x11

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 22
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->getMainTopic()Lcom/iMe/ui/topics/TopicView;

    move-result-object p1

    const/4 p2, -0x2

    const/4 p3, -0x1

    .line 23
    invoke-static {p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->getArchiveTopic()Lcom/iMe/ui/topics/TopicView;

    move-result-object p1

    .line 27
    invoke-static {p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->updateSelectedTopicAndColors()V

    return-void
.end method

.method public static final synthetic access$initTopic(Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;Z)Lcom/iMe/ui/topics/TopicView;
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->initTopic(Z)Lcom/iMe/ui/topics/TopicView;

    move-result-object p0

    return-object p0
.end method

.method private final getArchiveTopic()Lcom/iMe/ui/topics/TopicView;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->archiveTopic$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/topics/TopicView;

    return-object v0
.end method

.method private final getMainTopic()Lcom/iMe/ui/topics/TopicView;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->mainTopic$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/topics/TopicView;

    return-object v0
.end method

.method private final initTopic(Z)Lcom/iMe/ui/topics/TopicView;
    .locals 8

    .line 43
    new-instance v7, Lcom/iMe/ui/topics/TopicView;

    .line 44
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

    .line 43
    invoke-direct/range {v0 .. v6}, Lcom/iMe/ui/topics/TopicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    new-instance v0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;Z)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v7
.end method

.method private static final initTopic$lambda$1$lambda$0(Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;ZLandroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-boolean p2, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->currentArchive:Z

    if-ne p2, p1, :cond_0

    return-void

    .line 51
    :cond_0
    iput-boolean p1, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->currentArchive:Z

    .line 52
    iget-object p2, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->delegate:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->updateSelectedTopicAndColors()V

    return-void
.end method


# virtual methods
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

    .line 12
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->delegate:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final updateSelectedTopicAndColors()V
    .locals 4

    .line 35
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->getMainTopic()Lcom/iMe/ui/topics/TopicView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->currentArchive:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/iMe/ui/topics/TopicView;->setArchive(ZZ)V

    .line 36
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->getArchiveTopic()Lcom/iMe/ui/topics/TopicView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->currentArchive:Z

    invoke-virtual {v0, v2, v1}, Lcom/iMe/ui/topics/TopicView;->setArchive(ZZ)V

    return-void
.end method
