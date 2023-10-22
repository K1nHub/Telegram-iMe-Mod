.class public final Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;
.super Landroid/widget/FrameLayout;
.source "FormattingMessagesKeyboardContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;,
        Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFormattingMessagesKeyboardContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormattingMessagesKeyboardContainer.kt\ncom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,694:1\n766#2:695\n857#2,2:696\n766#2:698\n857#2,2:699\n1855#2,2:701\n1855#2,2:709\n177#3,2:703\n177#3,2:705\n341#3:707\n359#3:708\n*S KotlinDebug\n*F\n+ 1 FormattingMessagesKeyboardContainer.kt\ncom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer\n*L\n223#1:695\n223#1:696,2\n224#1:698\n224#1:699,2\n261#1:701,2\n452#1:709,2\n278#1:703,2\n317#1:705,2\n647#1:707\n649#1:708\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;

.field private static final listTextStyleSpanFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bigButtons$delegate:Lkotlin/Lazy;

.field private final boldButton$delegate:Lkotlin/Lazy;

.field private final buttonDefaultColor:I

.field private final buttonPressedColor:I

.field private final buttonTextColor:I

.field private final clearLink$delegate:Lkotlin/Lazy;

.field private final formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

.field private final iconLink$delegate:Lkotlin/Lazy;

.field private final italicButton$delegate:Lkotlin/Lazy;

.field private final linkContainer$delegate:Lkotlin/Lazy;

.field private final linkText$delegate:Lkotlin/Lazy;

.field private final listener:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;

.field private final messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

.field private final monoButton$delegate:Lkotlin/Lazy;

.field private final pastLink$delegate:Lkotlin/Lazy;

.field private final smallButtons$delegate:Lkotlin/Lazy;

.field private final spoilerButton$delegate:Lkotlin/Lazy;

.field private final strikeButton$delegate:Lkotlin/Lazy;

.field private final textColorPast:I

.field private final titleColor:I

.field private final titleFormat$delegate:Lkotlin/Lazy;

.field private final titleLink$delegate:Lkotlin/Lazy;

.field private final underlineButton$delegate:Lkotlin/Lazy;

.field private final view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$CfrLn_AxQb0Dhn5eHXr7GHvpSKg(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->setupListeners$lambda$20(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R_hCAdZ1LxxIh89myOmx1EbCzHA(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initMonoButton$lambda$16$lambda$15(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sf04REBcNl0VC97r8TI-SwGa3a4(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->setupListeners$lambda$19(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o7NhtaJG5Hqc2kWEEV5aDifQ4LE(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->setupListeners$lambda$22(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$owWPPpRasQ35zS5DWwF257XsY2U(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initSpoilerButton$lambda$18$lambda$17(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->Companion:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x2

    .line 681
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 682
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    .line 683
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/16 v2, 0x10

    .line 684
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x100

    .line 685
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 679
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->listTextStyleSpanFlags:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/EditTextCaption;Lcom/iMe/fork/controller/FormattingTextController;Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageEditText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formattingTextController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 51
    iput-object p3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    .line 52
    iput-object p4, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->listener:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;

    .line 56
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    .line 57
    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonTextColor:I

    .line 58
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    .line 59
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    .line 60
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->textColorPast:I

    .line 61
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$titleLink$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$titleLink$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleLink$delegate:Lkotlin/Lazy;

    .line 62
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$iconLink$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$iconLink$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->iconLink$delegate:Lkotlin/Lazy;

    .line 63
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkText$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkText$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->linkText$delegate:Lkotlin/Lazy;

    .line 64
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$pastLink$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$pastLink$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->pastLink$delegate:Lkotlin/Lazy;

    .line 65
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$clearLink$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$clearLink$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->clearLink$delegate:Lkotlin/Lazy;

    .line 66
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$titleFormat$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$titleFormat$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleFormat$delegate:Lkotlin/Lazy;

    .line 67
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$boldButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$boldButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->boldButton$delegate:Lkotlin/Lazy;

    .line 68
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$italicButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$italicButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->italicButton$delegate:Lkotlin/Lazy;

    .line 69
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$underlineButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$underlineButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->underlineButton$delegate:Lkotlin/Lazy;

    .line 70
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$strikeButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$strikeButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->strikeButton$delegate:Lkotlin/Lazy;

    .line 71
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$monoButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$monoButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->monoButton$delegate:Lkotlin/Lazy;

    .line 72
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$spoilerButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$spoilerButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->spoilerButton$delegate:Lkotlin/Lazy;

    .line 73
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$bigButtons$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$bigButtons$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->bigButtons$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$smallButtons$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$smallButtons$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->smallButtons$delegate:Lkotlin/Lazy;

    .line 75
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkContainer$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkContainer$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->linkContainer$delegate:Lkotlin/Lazy;

    .line 77
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->view:Landroid/view/View;

    .line 594
    invoke-virtual {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->updateView()V

    const/4 p1, 0x1

    .line 597
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/4 p3, -0x1

    const/16 p4, 0x30

    invoke-static {p3, p1, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 595
    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleLink()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, -0x2

    .line 601
    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    .line 599
    invoke-virtual {p0, p1, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p4, 0x8

    .line 609
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 611
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 605
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    .line 603
    invoke-virtual {p0, p1, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleFormat()Landroid/widget/TextView;

    move-result-object p1

    const/16 p4, 0x50

    .line 617
    invoke-static {p2, p2, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 615
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSmallButtons()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x3c

    .line 625
    invoke-static {p3, p2, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 623
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBigButtons()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 629
    invoke-static {p3, p2, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 627
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$getListTextStyleSpanFlags$cp()Ljava/util/List;
    .locals 1

    .line 48
    sget-object v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->listTextStyleSpanFlags:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$initBigButtons(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initBigButtons()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initBoldButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initBoldButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initClearLink(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initClearLink()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initIconLink(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initIconLink()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initItalicButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initItalicButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initLinkContainer(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initLinkContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initLinkText(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initMonoButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initMonoButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPastLink(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initPastLink()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSmallButtons(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initSmallButtons()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSpoilerButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initSpoilerButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initStrikeButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initStrikeButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleFormat(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initTitleFormat()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleLink(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initTitleLink()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initUnderlineButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initUnderlineButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getBigButtons()Landroid/widget/LinearLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->bigButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getBoldButton()Landroid/widget/TextView;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->boldButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getClearLink()Landroid/widget/ImageView;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->clearLink$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getIconLink()Landroid/widget/ImageView;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->iconLink$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getItalicButton()Landroid/widget/TextView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->italicButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getLinkContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->linkContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->linkText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    return-object v0
.end method

.method private final getMonoButton()Landroid/widget/TextView;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->monoButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getPastLink()Landroid/widget/TextView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->pastLink$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSmallButtons()Landroid/widget/LinearLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->smallButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getSpoilerButton()Landroid/widget/TextView;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->spoilerButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getStrikeButton()Landroid/widget/TextView;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->strikeButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitleFormat()Landroid/widget/TextView;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleFormat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitleLink()Landroid/widget/TextView;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleLink$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getUnderlineButton()Landroid/widget/TextView;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->underlineButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initBigButtons()Landroid/widget/LinearLayout;
    .locals 11

    .line 563
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 564
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 566
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    .line 571
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v10, 0x2

    .line 573
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 574
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v3, -0x2

    const/16 v4, 0x3c

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 567
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 565
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object v1

    .line 583
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 585
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 586
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v3, -0x2

    .line 579
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 577
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initBoldButton()Landroid/widget/TextView;
    .locals 3

    .line 326
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 328
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "B"

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 332
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initClearLink()Landroid/widget/ImageView;
    .locals 4

    .line 314
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 315
    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 316
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x8

    .line 317
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 177
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method private final initIconLink()Landroid/widget/ImageView;
    .locals 2

    .line 277
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 278
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 177
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 279
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_link_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initItalicButton()Landroid/widget/TextView;
    .locals 3

    .line 335
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 337
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 338
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "I"

    .line 339
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "fonts/ritalic.ttf"

    .line 340
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 341
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initLinkContainer()Landroid/widget/LinearLayout;
    .locals 6

    .line 486
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 487
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 489
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 490
    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 491
    iget v3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    .line 488
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 494
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getIconLink()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, -0x2

    const/16 v3, 0x28

    .line 495
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 493
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v1

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 499
    invoke-static {v4, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 497
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v1

    .line 503
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 501
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v1

    .line 507
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 505
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;
    .locals 3

    .line 282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/content/Context;)V

    const/16 v0, 0x10

    .line 291
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v0, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 292
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 293
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLines(I)V

    .line 294
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    const v0, 0x10000003

    .line 295
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 296
    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->formatting_link_hint_edit_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 297
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/16 v0, 0x14

    .line 298
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    return-object v1
.end method

.method private final initMonoButton()Landroid/widget/TextView;
    .locals 3

    .line 380
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 382
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 381
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x0

    .line 384
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 385
    sget v1, Lorg/telegram/messenger/R$string;->Mono:I

    const-string v2, "Mono"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 387
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 388
    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initMonoButton$lambda$16$lambda$15(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    iget-object p0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/iMe/fork/controller/FormattingTextController;->replaceSpans(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/View;)V

    return-void
.end method

.method private final initPastLink()Landroid/widget/TextView;
    .locals 4

    .line 301
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x104000b

    .line 302
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(android.R.string.paste)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "getDefault()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 303
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x8

    .line 307
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    .line 304
    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 310
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v2, 0x0

    .line 311
    invoke-static {v0, v3, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-object v0
.end method

.method private final initSmallButtons()Landroid/widget/LinearLayout;
    .locals 11

    .line 511
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 512
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 514
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    .line 519
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v3, -0x2

    const/16 v4, 0x3c

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 515
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 513
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x1

    .line 531
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v4, -0x2

    const/16 v5, 0x3c

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 527
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 525
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v1

    .line 543
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v4, -0x2

    .line 539
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 537
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v1

    .line 555
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 557
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v4, -0x2

    .line 551
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 549
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initSpoilerButton()Landroid/widget/TextView;
    .locals 3

    .line 391
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 393
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 394
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x0

    .line 395
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 396
    sget v1, Lorg/telegram/messenger/R$string;->Spoiler:I

    const-string v2, "Spoiler"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 398
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 399
    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initSpoilerButton$lambda$18$lambda$17(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    iget-object p0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/iMe/fork/controller/FormattingTextController;->replaceSpans(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/View;)V

    return-void
.end method

.method private final initStrikeButton()Landroid/widget/TextView;
    .locals 7

    .line 362
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 364
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 365
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 366
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "S"

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 367
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v2}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 368
    iget v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 370
    new-instance v3, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    .line 372
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x21

    .line 369
    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 375
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, ""

    .line 376
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 377
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initTitleFormat()Landroid/widget/TextView;
    .locals 3

    .line 320
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 322
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->formatting_hint_format:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initTitleLink()Landroid/widget/TextView;
    .locals 3

    .line 271
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 273
    sget v1, Lorg/telegram/messenger/R$string;->formatting_link_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initUnderlineButton()Landroid/widget/TextView;
    .locals 7

    .line 344
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 346
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 345
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 348
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "U"

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 349
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v2}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 350
    iget v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v3, v3, 0x10

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 352
    new-instance v3, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    .line 354
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x21

    .line 351
    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 359
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final setupListeners()V
    .locals 2

    .line 403
    new-instance v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    .line 405
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$19(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    iget-object p0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/iMe/fork/controller/FormattingTextController;->replaceSpans(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/View;)V

    return-void
.end method

.method private static final setupListeners$lambda$20(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 414
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 415
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {p1, v3}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->setUrl(Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result p1

    .line 422
    iget-object v3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v3}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v3}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v3

    .line 423
    iget-object v4, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v4

    .line 424
    iget-object v5, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 420
    invoke-static {v2, v3, v4, v5, v1}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    if-lez p1, :cond_0

    .line 428
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 429
    iput p1, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 430
    iget-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 431
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    .line 432
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v1

    .line 433
    iget-object v3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v3}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v0

    const/16 v3, 0x21

    .line 430
    invoke-interface {p1, v2, v1, v0, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 437
    :cond_0
    iget-object p0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getDelegate()Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    :cond_1
    return-void
.end method

.method private static final setupListeners$lambda$22(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 444
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_2

    const-string p1, ""

    .line 446
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    if-eqz v2, :cond_6

    .line 447
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v0, v3, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 449
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v2, v0, v3, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v2, "messageEditText.text"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    :try_start_0
    iget-object v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v2}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    .line 455
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v5

    .line 456
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v6

    .line 457
    iget-object v7, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 453
    invoke-static {v1, v5, v6, v7, v3}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    .line 460
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->setUrl(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result v5

    const/16 v6, 0x21

    if-lez v5, :cond_4

    .line 462
    new-instance v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v5}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 463
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result v7

    iput v7, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 465
    new-instance v7, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    .line 466
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v5

    .line 467
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v4

    .line 464
    invoke-interface {v0, v7, v5, v4, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 472
    :cond_4
    new-instance v5, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v7

    .line 474
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v4

    .line 471
    invoke-interface {v0, v5, v7, v4, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 481
    :catch_0
    :cond_5
    iget-object p0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getDelegate()Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    :cond_6
    return-void
.end method

.method private final switchMonoButton(ZF)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 243
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 244
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 245
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 246
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 248
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 250
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 251
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 252
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 253
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 254
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 255
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 256
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private final updateTextColor(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 263
    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 262
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 266
    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iMe/fork/controller/FormattingTextController;->searchTag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 264
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->updateBackgroundButton(Landroid/widget/TextView;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getListener()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->listener:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;

    return-object v0
.end method

.method public final getMessageEditText()Lorg/telegram/ui/Components/EditTextCaption;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 640
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleLink()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x32

    .line 641
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x14

    .line 642
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    .line 640
    invoke-static {v0, v2, v4, v5, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    .line 646
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 647
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 341
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    move v2, v5

    .line 648
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 649
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkContainer()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 359
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_2

    move-object v6, v7

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_2
    if-eqz v6, :cond_3

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_3
    move v6, v5

    .line 646
    :goto_2
    invoke-static {v0, v2, v4, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    .line 652
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleFormat()Landroid/widget/TextView;

    move-result-object v0

    .line 653
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0xa3

    .line 656
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 652
    invoke-static {v0, v1, v5, v5, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    .line 658
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSmallButtons()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x5a

    .line 662
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 658
    invoke-static {v0, v5, v5, v5, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    .line 664
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBigButtons()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 668
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 664
    invoke-static {v0, v5, v5, v5, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    .line 670
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setEnabledView(Z)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 84
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 86
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 88
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 635
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 636
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->listener:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;

    invoke-interface {v0, p1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;->onTranslationYChanged(F)V

    return-void
.end method

.method public final updateBackgroundButton(Landroid/widget/TextView;Z)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    const/16 v1, 0x100

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    const/4 v5, 0x4

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p2, :cond_5

    .line 137
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v8, :cond_3

    if-eq p2, v5, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    .line 171
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 172
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 169
    invoke-static {v7, p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 165
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 166
    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 163
    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 159
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 160
    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 156
    invoke-static {p2, v7, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 155
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 141
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 142
    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 139
    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 144
    invoke-direct {p0, v8, v3}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->switchMonoButton(ZF)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 151
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 152
    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 148
    invoke-static {v7, p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :goto_0
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->textColorPast:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v5, :cond_4

    .line 177
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 180
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_8

    .line 182
    :cond_5
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v8, :cond_9

    if-eq p2, v5, :cond_8

    if-eq p2, v2, :cond_7

    if-eq p2, v1, :cond_6

    .line 218
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 219
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 216
    invoke-static {v7, p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 211
    :cond_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 212
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 213
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 210
    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 204
    :cond_7
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 206
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 207
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 203
    invoke-static {p2, v7, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 202
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 185
    :cond_8
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 186
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 187
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 184
    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p2

    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    sub-int/2addr p2, v1

    if-lez p2, :cond_a

    .line 190
    invoke-direct {p0, v8, v3}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->switchMonoButton(ZF)V

    goto :goto_1

    .line 197
    :cond_9
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 198
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 199
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 195
    invoke-static {v7, p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 194
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_a
    :goto_1
    iget-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object p2

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    .line 223
    invoke-virtual {v6}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getListFlags()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v8

    if-nez v9, :cond_e

    invoke-virtual {v6}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_c

    move v6, v8

    goto :goto_3

    :cond_c
    move v6, v7

    :goto_3
    if-eqz v6, :cond_d

    goto :goto_4

    :cond_d
    move v6, v7

    goto :goto_5

    :cond_e
    :goto_4
    move v6, v8

    :goto_5
    if-eqz v6, :cond_b

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 766
    :cond_f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    .line 224
    invoke-virtual {v6}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getListFlags()Ljava/util/List;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v8

    if-eqz v6, :cond_10

    .line 857
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 225
    :cond_11
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_12

    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_12

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 226
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_7

    .line 228
    :cond_12
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v8

    if-eqz p2, :cond_13

    .line 229
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 230
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 232
    :cond_13
    :goto_7
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonTextColor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_8
    return-void
.end method

.method public final updateView()V
    .locals 5

    .line 93
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 94
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->view:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelLine:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleLink()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getIconLink()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 97
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 98
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleFormat()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 101
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->textColorPast:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 105
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v4, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 108
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 110
    :cond_3
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1, v4, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, ""

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_3
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 115
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/TextView;

    .line 120
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v4

    .line 121
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 122
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 123
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 124
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 125
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 118
    invoke-direct {p0, v0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->updateTextColor(Ljava/util/List;)V

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    .line 129
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 130
    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 131
    iget v3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    .line 128
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
