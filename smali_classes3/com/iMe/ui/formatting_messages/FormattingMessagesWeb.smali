.class public final Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;
.super Landroid/widget/LinearLayout;
.source "FormattingMessagesWeb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFormattingMessagesWeb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormattingMessagesWeb.kt\ncom/iMe/ui/formatting_messages/FormattingMessagesWeb\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,419:1\n766#2:420\n857#2,2:421\n766#2:423\n857#2,2:424\n1855#2:432\n1856#2:434\n177#3,2:426\n177#3,2:428\n177#3,2:430\n1#4:433\n*S KotlinDebug\n*F\n+ 1 FormattingMessagesWeb.kt\ncom/iMe/ui/formatting_messages/FormattingMessagesWeb\n*L\n167#1:420\n167#1:421,2\n168#1:423\n168#1:424,2\n371#1:432\n371#1:434\n216#1:426,2\n288#1:428,2\n294#1:430,2\n*E\n"
.end annotation


# instance fields
.field private final boldButton$delegate:Lkotlin/Lazy;

.field private final buttonDefaultColor:I

.field private final buttonPressedColor:I

.field private final buttonTextColor:I

.field private final chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private final closeButton$delegate:Lkotlin/Lazy;

.field private final containerButton$delegate:Lkotlin/Lazy;

.field private final formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

.field private final italicButton$delegate:Lkotlin/Lazy;

.field private final linkButton$delegate:Lkotlin/Lazy;

.field private final messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

.field private final monoButton$delegate:Lkotlin/Lazy;

.field private final separator:Landroid/view/View;

.field private final spoilerButton$delegate:Lkotlin/Lazy;

.field private final strikeButton$delegate:Lkotlin/Lazy;

.field private final textColorPast:I

.field private final underlineButton$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$0EAo_vwiJurT_u1odCc3P53o_Ok(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->setupListeners$lambda$10(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2PP7NxCmLkYvvzGUnINoYjfoKSI(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->setupListeners$lambda$12(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6m2GXim4ncYfWWoE6wK5IykjdRA(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->setupListeners$lambda$11(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formattingTextController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatActivityEnterView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    .line 36
    iput-object p3, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 40
    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 41
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonTextColor:I

    .line 42
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonDefaultColor:I

    .line 43
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonPressedColor:I

    .line 44
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iput p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->textColorPast:I

    .line 45
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->separator:Landroid/view/View;

    .line 46
    new-instance p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$closeButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$closeButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->closeButton$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$boldButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$boldButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->boldButton$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$italicButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$italicButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->italicButton$delegate:Lkotlin/Lazy;

    .line 49
    new-instance p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$underlineButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$underlineButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->underlineButton$delegate:Lkotlin/Lazy;

    .line 50
    new-instance p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$strikeButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$strikeButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->strikeButton$delegate:Lkotlin/Lazy;

    .line 51
    new-instance p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$monoButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$monoButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->monoButton$delegate:Lkotlin/Lazy;

    .line 52
    new-instance p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$spoilerButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$spoilerButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->spoilerButton$delegate:Lkotlin/Lazy;

    .line 53
    new-instance p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$linkButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$linkButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->linkButton$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$containerButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$containerButton$2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->containerButton$delegate:Lkotlin/Lazy;

    .line 394
    invoke-virtual {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->updateColors()V

    const/4 p1, 0x1

    .line 395
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p1, -0x1

    const/4 p3, 0x2

    const/16 v0, 0x30

    .line 396
    invoke-static {p1, p3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getContainerButton()Landroid/widget/LinearLayout;

    move-result-object p2

    const/16 p3, 0x11

    .line 399
    invoke-static {p1, p1, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 397
    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$initBoldButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)Landroid/widget/TextView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->initBoldButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initCloseButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->initCloseButton()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initContainerButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->initContainerButton()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initItalicButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)Landroid/widget/TextView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->initItalicButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initLinkButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->initLinkButton()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initMonoButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)Landroid/widget/TextView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->initMonoButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSpoilerButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->initSpoilerButton()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initStrikeButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)Landroid/widget/TextView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->initStrikeButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initUnderlineButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)Landroid/widget/TextView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->initUnderlineButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getBoldButton()Landroid/widget/TextView;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->boldButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getCloseButton()Landroid/widget/ImageView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->closeButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getContainerButton()Landroid/widget/LinearLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->containerButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getItalicButton()Landroid/widget/TextView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->italicButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getLinkButton()Landroid/widget/ImageView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->linkButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getMonoButton()Landroid/widget/TextView;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->monoButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSpoilerButton()Landroid/widget/ImageView;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->spoilerButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getStrikeButton()Landroid/widget/TextView;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->strikeButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getUnderlineButton()Landroid/widget/TextView;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->underlineButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initBoldButton()Landroid/widget/TextView;
    .locals 3

    .line 221
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 223
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "B"

    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initCloseButton()Landroid/widget/ImageView;
    .locals 2

    .line 215
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 216
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 177
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 217
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonTextColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 218
    sget v1, Lorg/telegram/messenger/R$drawable;->pip_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initContainerButton()Landroid/widget/LinearLayout;
    .locals 11

    .line 326
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 328
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 330
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getCloseButton()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x1

    .line 334
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 331
    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 329
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getBoldButton()Landroid/widget/TextView;

    move-result-object v1

    .line 346
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 348
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/4 v3, 0x0

    const/16 v4, 0x30

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    .line 342
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 340
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 353
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 362
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getItalicButton()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getMonoButton()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getSpoilerButton()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getLinkButton()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initItalicButton()Landroid/widget/TextView;
    .locals 3

    .line 230
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 232
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "I"

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "fonts/ritalic.ttf"

    .line 235
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 236
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initLinkButton()Landroid/widget/ImageView;
    .locals 2

    .line 292
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x6

    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xc

    .line 294
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 177
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0x10

    .line 295
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 296
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonTextColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 297
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_link_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initMonoButton()Landroid/widget/TextView;
    .locals 3

    .line 275
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 277
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "M"

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initSpoilerButton()Landroid/widget/ImageView;
    .locals 3

    .line 284
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 286
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x10

    .line 287
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v1, 0xc

    .line 288
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 177
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 289
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_wallet_crypto_cipher_eye:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initStrikeButton()Landroid/widget/TextView;
    .locals 7

    .line 257
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 259
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 261
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "S"

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v2}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 263
    iget v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 265
    new-instance v3, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    .line 267
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x21

    .line 264
    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 272
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initUnderlineButton()Landroid/widget/TextView;
    .locals 7

    .line 239
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 241
    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 242
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 243
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "U"

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v2}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 245
    iget v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v3, v3, 0x10

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 247
    new-instance v3, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    .line 249
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x21

    .line 246
    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 254
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final setupListeners()V
    .locals 2

    .line 301
    new-instance v0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    .line 303
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getBoldButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getItalicButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getMonoButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getSpoilerButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getLinkButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getCloseButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$10(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    iget-object p0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/iMe/fork/controller/FormattingTextController;->replaceSpans(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/View;)V

    return-void
.end method

.method private static final setupListeners$lambda$11(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p1, :cond_2

    .line 311
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 316
    :goto_1
    iget-object p0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    .line 310
    invoke-virtual {p1, v0, p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUrl(Ljava/lang/String;Lcom/iMe/fork/controller/FormattingTextController;)V

    :cond_2
    return-void
.end method

.method private static final setupListeners$lambda$12(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSelectionLength()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setShowFormattingButton(Z)V

    .line 321
    iget-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFormattingMessagesContainerWebVisible(Z)V

    .line 322
    iget-object p0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getDelegate()Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->bottomPanelTranslationYChanged(F)V

    return-void
.end method

.method private final updateTextColor(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 373
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 372
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 375
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonTextColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 376
    :cond_1
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonTextColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 378
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_6

    .line 381
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->isSingletonList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v5

    :goto_3
    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v5

    :goto_4
    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move v4, v5

    .line 379
    :goto_5
    invoke-virtual {p0, v0, v4}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->updateBackgroundButton(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 385
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iMe/fork/controller/FormattingTextController;->searchTag(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v4, v5

    .line 383
    :goto_6
    invoke-virtual {p0, v0, v4}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->updateBackgroundButton(Landroid/view/View;Z)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public final getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    return-object v0
.end method

.method public final setEnabledView(Z)V
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getBoldButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 181
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getItalicButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getMonoButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 185
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getSpoilerButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 186
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getLinkButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public final updateBackgroundButton(Landroid/view/View;Z)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    const/16 v1, 0x12

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    const/4 v3, 0x4

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_6

    .line 60
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 61
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    iget v7, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->textColorPast:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 62
    :cond_0
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 63
    move-object p2, p1

    check-cast p2, Landroid/widget/ImageView;

    iget v7, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->textColorPast:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v5, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v0, :cond_2

    .line 105
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonPressedColor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 106
    iget v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonDefaultColor:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 103
    invoke-static {v6, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_2
    const/16 p2, 0x30

    .line 97
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 99
    iget v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonPressedColor:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 100
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 96
    invoke-static {p2, v6, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 69
    :cond_3
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonPressedColor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 70
    iget v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonDefaultColor:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 67
    invoke-static {v6, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getBoldButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getItalicButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 75
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getStrikeButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getSpoilerButton()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getLinkButton()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getBoldButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getItalicButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getStrikeButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getSpoilerButton()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 84
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getLinkButton()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 90
    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 91
    iget v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonPressedColor:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 92
    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonDefaultColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 88
    invoke-static {v6, p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v3, :cond_5

    .line 110
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 111
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getMonoButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 113
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_9

    .line 115
    :cond_6
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_7

    .line 116
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    iget v7, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonTextColor:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 117
    :cond_7
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_8

    .line 118
    move-object p2, p1

    check-cast p2, Landroid/widget/ImageView;

    iget v7, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonTextColor:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 120
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq p2, v5, :cond_b

    if-eq p2, v3, :cond_a

    if-eq p2, v0, :cond_9

    .line 162
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonDefaultColor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 163
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 160
    invoke-static {v6, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 154
    :cond_9
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 156
    iget v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonDefaultColor:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 157
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 153
    invoke-static {p2, v6, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 124
    :cond_a
    iget p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonDefaultColor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 125
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 122
    invoke-static {v6, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSelectionLength()I

    move-result p2

    if-lez p2, :cond_c

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getBoldButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 129
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getItalicButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getStrikeButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getSpoilerButton()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 133
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getLinkButton()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 135
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getBoldButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 136
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getItalicButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 137
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 138
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getStrikeButton()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 139
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getSpoilerButton()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 140
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getLinkButton()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    .line 147
    :cond_b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 148
    iget v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonDefaultColor:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 149
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 145
    invoke-static {v6, p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawableLeft(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_c
    :goto_3
    iget-object p2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->formattingTextController:Lcom/iMe/fork/controller/FormattingTextController;

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object p2

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    .line 167
    invoke-virtual {v8}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getListFlags()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v5

    if-nez v9, :cond_10

    invoke-virtual {v8}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_e

    move v8, v5

    goto :goto_5

    :cond_e
    move v8, v6

    :goto_5
    if-eqz v8, :cond_f

    goto :goto_6

    :cond_f
    move v8, v6

    goto :goto_7

    :cond_10
    :goto_6
    move v8, v5

    :goto_7
    if-eqz v8, :cond_d

    .line 857
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 766
    :cond_11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    .line 168
    invoke-virtual {v8}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getListFlags()Ljava/util/List;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_12

    .line 857
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 169
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_14

    iget-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSelectionLength()I

    move-result p1

    if-lez p1, :cond_14

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 170
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getMonoButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 171
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getMonoButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_9

    .line 172
    :cond_14
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_15

    .line 173
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getMonoButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 174
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getMonoButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_15
    :goto_9
    return-void
.end method

.method public final updateColors()V
    .locals 4

    .line 190
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 191
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->separator:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelLine:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 192
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getCloseButton()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonTextColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 193
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getCloseButton()Landroid/widget/ImageView;

    move-result-object v0

    .line 195
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 196
    iget v2, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->buttonPressedColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    .line 193
    invoke-static {v3, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/view/View;

    .line 200
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getBoldButton()Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v3

    .line 201
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getItalicButton()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 202
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getUnderlineButton()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 203
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getStrikeButton()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 204
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getLinkButton()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 205
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getSpoilerButton()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 206
    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->getMonoButton()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 199
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->updateTextColor(Ljava/util/List;)V

    return-void
.end method
