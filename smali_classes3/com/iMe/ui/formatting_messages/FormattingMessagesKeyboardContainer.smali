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
    value = "SMAP\nFormattingMessagesKeyboardContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormattingMessagesKeyboardContainer.kt\ncom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,407:1\n766#2:408\n857#2,2:409\n1855#2,2:411\n1855#2,2:419\n177#3,2:413\n177#3,2:415\n341#3:417\n359#3:418\n*S KotlinDebug\n*F\n+ 1 FormattingMessagesKeyboardContainer.kt\ncom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer\n*L\n139#1:408\n139#1:409,2\n176#1:411,2\n325#1:419,2\n189#1:413,2\n223#1:415,2\n386#1:417\n386#1:418\n*E\n"
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

    .line 399
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

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

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iput-object p3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    iput-object p4, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->listener:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;

    .line 40
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    .line 41
    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonTextColor:I

    .line 42
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    .line 43
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    .line 44
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->textColorPast:I

    .line 45
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$titleLink$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$titleLink$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleLink$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$iconLink$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$iconLink$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->iconLink$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkText$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkText$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->linkText$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$pastLink$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$pastLink$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->pastLink$delegate:Lkotlin/Lazy;

    .line 49
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$clearLink$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$clearLink$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->clearLink$delegate:Lkotlin/Lazy;

    .line 50
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$titleFormat$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$titleFormat$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleFormat$delegate:Lkotlin/Lazy;

    .line 51
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$boldButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$boldButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->boldButton$delegate:Lkotlin/Lazy;

    .line 52
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$italicButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$italicButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->italicButton$delegate:Lkotlin/Lazy;

    .line 53
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$underlineButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$underlineButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->underlineButton$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$strikeButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$strikeButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->strikeButton$delegate:Lkotlin/Lazy;

    .line 55
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$monoButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$monoButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->monoButton$delegate:Lkotlin/Lazy;

    .line 56
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$spoilerButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$spoilerButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->spoilerButton$delegate:Lkotlin/Lazy;

    .line 57
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$bigButtons$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$bigButtons$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->bigButtons$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$smallButtons$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$smallButtons$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->smallButtons$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p2, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkContainer$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkContainer$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->linkContainer$delegate:Lkotlin/Lazy;

    .line 61
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->view:Landroid/view/View;

    .line 369
    invoke-virtual {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->updateView()V

    const/4 p1, 0x1

    .line 370
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/4 p3, -0x1

    const/16 p4, 0x30

    invoke-static {p3, p1, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleLink()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, -0x2

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p4, 0x8

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleFormat()Landroid/widget/TextView;

    move-result-object p1

    const/16 p4, 0x50

    invoke-static {p2, p2, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSmallButtons()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x3c

    invoke-static {p3, p2, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBigButtons()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p3, p2, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$getListTextStyleSpanFlags$cp()Ljava/util/List;
    .locals 1

    .line 37
    sget-object v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->listTextStyleSpanFlags:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$initBigButtons(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initBigButtons()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initBoldButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initBoldButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initClearLink(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initClearLink()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initIconLink(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initIconLink()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initItalicButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initItalicButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initLinkContainer(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initLinkContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initLinkText(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initMonoButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initMonoButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPastLink(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initPastLink()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSmallButtons(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initSmallButtons()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSpoilerButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initSpoilerButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initStrikeButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initStrikeButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleFormat(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initTitleFormat()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleLink(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initTitleLink()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initUnderlineButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initUnderlineButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getBigButtons()Landroid/widget/LinearLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->bigButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getBoldButton()Landroid/widget/TextView;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->boldButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getClearLink()Landroid/widget/ImageView;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->clearLink$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getIconLink()Landroid/widget/ImageView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->iconLink$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getItalicButton()Landroid/widget/TextView;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->italicButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getLinkContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->linkContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->linkText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    return-object v0
.end method

.method private final getMonoButton()Landroid/widget/TextView;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->monoButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getPastLink()Landroid/widget/TextView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->pastLink$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSmallButtons()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->smallButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getSpoilerButton()Landroid/widget/TextView;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->spoilerButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getStrikeButton()Landroid/widget/TextView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->strikeButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitleFormat()Landroid/widget/TextView;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleFormat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitleLink()Landroid/widget/TextView;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleLink$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getUnderlineButton()Landroid/widget/TextView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->underlineButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initBigButtons()Landroid/widget/LinearLayout;
    .locals 11

    .line 360
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 361
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 362
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v10, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v3, -0x2

    const/16 v4, 0x3c

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v3, -0x2

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initBoldButton()Landroid/widget/TextView;
    .locals 3

    .line 232
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 233
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "B"

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initClearLink()Landroid/widget/ImageView;
    .locals 4

    .line 220
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 222
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x8

    .line 223
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 177
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method private final initIconLink()Landroid/widget/ImageView;
    .locals 2

    .line 188
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 189
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 177
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_link_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initItalicButton()Landroid/widget/TextView;
    .locals 3

    .line 240
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 241
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 242
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "I"

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "fonts/ritalic.ttf"

    .line 244
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 245
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initLinkContainer()Landroid/widget/LinearLayout;
    .locals 6

    .line 343
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 345
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iget v3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getIconLink()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, -0x2

    const/16 v3, 0x28

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v1

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;
    .locals 3

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/content/Context;)V

    const/16 v0, 0x10

    .line 202
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v0, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 203
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 204
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLines(I)V

    .line 205
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    const v0, 0x10000003

    .line 206
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 207
    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->formatting_link_hint_edit_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 208
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/16 v0, 0x14

    .line 209
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    return-object v1
.end method

.method private final initMonoButton()Landroid/widget/TextView;
    .locals 3

    .line 272
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 273
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 274
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 276
    sget v1, Lorg/telegram/messenger/R$string;->Mono:I

    const-string v2, "Mono"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initMonoButton$lambda$16$lambda$15(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    iget-object p0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/iMe/fork/controller/FormattingTextController;->replaceSpans(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/View;)V

    return-void
.end method

.method private final initPastLink()Landroid/widget/TextView;
    .locals 4

    .line 212
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x104000b

    .line 213
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

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x8

    .line 215
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 216
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v2, 0x0

    .line 217
    invoke-static {v0, v3, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-object v0
.end method

.method private final initSmallButtons()Landroid/widget/LinearLayout;
    .locals 11

    .line 352
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 353
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 354
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v3, -0x2

    const/16 v4, 0x3c

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v4, -0x2

    const/16 v5, 0x3c

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v4, -0x2

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v4, -0x2

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initSpoilerButton()Landroid/widget/TextView;
    .locals 3

    .line 282
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 283
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 284
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x0

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 286
    sget v1, Lorg/telegram/messenger/R$string;->Spoiler:I

    const-string v2, "Spoiler"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 289
    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initSpoilerButton$lambda$18$lambda$17(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    iget-object p0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/iMe/fork/controller/FormattingTextController;->replaceSpans(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/View;)V

    return-void
.end method

.method private final initStrikeButton()Landroid/widget/TextView;
    .locals 7

    .line 260
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 261
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "S"

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 264
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v2}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 265
    iget v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 266
    new-instance v3, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, ""

    .line 268
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 269
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initTitleFormat()Landroid/widget/TextView;
    .locals 3

    .line 226
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->formatting_hint_format:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initTitleLink()Landroid/widget/TextView;
    .locals 3

    .line 182
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 184
    sget v1, Lorg/telegram/messenger/R$string;->formatting_link_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initUnderlineButton()Landroid/widget/TextView;
    .locals 7

    .line 248
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 249
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 250
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 251
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "U"

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v2}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 253
    iget v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v3, v3, 0x10

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 254
    new-instance v3, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 257
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final setupListeners()V
    .locals 2

    .line 293
    new-instance v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    .line 294
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
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

    .line 293
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

    .line 302
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 303
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 304
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {p1, v3}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->setUrl(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result p1

    .line 307
    iget-object v3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v3}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v3}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v3

    iget-object v4, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v4

    iget-object v5, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v1}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    if-lez p1, :cond_0

    .line 309
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 310
    iput p1, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 311
    iget-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v1

    iget-object v3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v3}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v0

    const/16 v3, 0x21

    invoke-interface {p1, v2, v1, v0, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 313
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

    .line 317
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

    .line 318
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

    .line 319
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

    .line 320
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v0, v3, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 322
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v2, v0, v3, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v2, "messageEditText.text"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
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

    .line 326
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v5

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v6

    iget-object v7, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v1, v5, v6, v7, v3}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->setUrl(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result v5

    const/16 v6, 0x21

    if-lez v5, :cond_4

    .line 329
    new-instance v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v5}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 330
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result v7

    iput v7, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 331
    new-instance v7, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v5

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v4

    invoke-interface {v0, v7, v5, v4, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 333
    :cond_4
    new-instance v5, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v7

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v4

    invoke-interface {v0, v5, v7, v4, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 338
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

    .line 156
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 158
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 159
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 160
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 161
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 162
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 163
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 165
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 166
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 167
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 168
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 169
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 170
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 171
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

    .line 177
    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 178
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

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->updateBackgroundButton(Landroid/widget/TextView;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getListener()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->listener:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;

    return-object v0
.end method

.method public final getMessageEditText()Lorg/telegram/ui/Components/EditTextCaption;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 385
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleLink()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    .line 386
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkContainer()Landroid/widget/LinearLayout;

    move-result-object v0

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

    .line 386
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

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

    .line 386
    :goto_2
    invoke-static {v0, v2, v4, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    .line 387
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleFormat()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0xa3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0, v1, v5, v5, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    .line 388
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSmallButtons()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v5, v5, v5, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    .line 389
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBigButtons()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v5, v5, v5, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    .line 390
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setEnabledView(Z)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 380
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 381
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

    .line 108
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

    .line 117
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v7, p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {p2, v7, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-direct {p0, v8, v3}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->switchMonoButton(ZF)V

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v7, p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :goto_0
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->textColorPast:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v5, :cond_4

    .line 121
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 124
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_8

    .line 126
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

    .line 137
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v7, p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 136
    :cond_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 135
    :cond_7
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {p2, v7, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 128
    :cond_8
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p2

    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    sub-int/2addr p2, v1

    if-lez p2, :cond_a

    .line 130
    invoke-direct {p0, v8, v3}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->switchMonoButton(ZF)V

    goto :goto_1

    .line 134
    :cond_9
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v7, p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
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

    .line 139
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

    .line 139
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

    .line 140
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

    .line 141
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_7

    .line 143
    :cond_12
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v8

    if-eqz p2, :cond_13

    .line 144
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 145
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 147
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

    .line 77
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->view:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelLine:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleLink()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getIconLink()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getTitleFormat()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v0

    .line 84
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

    .line 85
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->textColorPast:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 89
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

    .line 90
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v4, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 94
    :cond_3
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getClearLink()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1, v4, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getPastLink()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, ""

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_3
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 99
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->titleColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/TextView;

    .line 102
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getBoldButton()Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getItalicButton()Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getSpoilerButton()Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getMonoButton()Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->updateTextColor(Ljava/util/List;)V

    .line 103
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getLinkContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonDefaultColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iget v3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->buttonPressedColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
