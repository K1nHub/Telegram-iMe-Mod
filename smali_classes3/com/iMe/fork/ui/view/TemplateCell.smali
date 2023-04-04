.class public final Lcom/iMe/fork/ui/view/TemplateCell;
.super Landroid/widget/LinearLayout;
.source "TemplateCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/TemplateCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateCell.kt\ncom/iMe/fork/ui/view/TemplateCell\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,124:1\n177#2,2:125\n262#2,2:127\n*S KotlinDebug\n*F\n+ 1 TemplateCell.kt\ncom/iMe/fork/ui/view/TemplateCell\n*L\n44#1:125,2\n63#1:127,2\n*E\n"
.end annotation


# instance fields
.field private final avatarView$delegate:Lkotlin/Lazy;

.field private final goToMessageButton$delegate:Lkotlin/Lazy;

.field private final sendButton$delegate:Lkotlin/Lazy;

.field private final subtitleTextView$delegate:Lkotlin/Lazy;

.field private template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

.field private final titleContainer$delegate:Lkotlin/Lazy;

.field private final titleTextView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$CdNjANKTiR3oPdr2Nr6OKhWPpm0(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Lcom/iMe/storage/domain/model/templates/TemplateModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/view/TemplateCell;->bind$lambda$2(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Lcom/iMe/storage/domain/model/templates/TemplateModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_MrqXXPsejl2dK_9vje75EmXrnE(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Lcom/iMe/storage/domain/model/templates/TemplateModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/view/TemplateCell;->bind$lambda$3(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Lcom/iMe/storage/domain/model/templates/TemplateModel;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/TemplateCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/TemplateCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Lcom/iMe/fork/ui/view/TemplateCell$avatarView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TemplateCell$avatarView$2;-><init>(Lcom/iMe/fork/ui/view/TemplateCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplateCell;->avatarView$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lcom/iMe/fork/ui/view/TemplateCell$titleContainer$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TemplateCell$titleContainer$2;-><init>(Lcom/iMe/fork/ui/view/TemplateCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplateCell;->titleContainer$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/iMe/fork/ui/view/TemplateCell$titleTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TemplateCell$titleTextView$2;-><init>(Lcom/iMe/fork/ui/view/TemplateCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplateCell;->titleTextView$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p1, Lcom/iMe/fork/ui/view/TemplateCell$subtitleTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TemplateCell$subtitleTextView$2;-><init>(Lcom/iMe/fork/ui/view/TemplateCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplateCell;->subtitleTextView$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/iMe/fork/ui/view/TemplateCell$goToMessageButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TemplateCell$goToMessageButton$2;-><init>(Lcom/iMe/fork/ui/view/TemplateCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplateCell;->goToMessageButton$delegate:Lkotlin/Lazy;

    .line 41
    new-instance p1, Lcom/iMe/fork/ui/view/TemplateCell$sendButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TemplateCell$sendButton$2;-><init>(Lcom/iMe/fork/ui/view/TemplateCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplateCell;->sendButton$delegate:Lkotlin/Lazy;

    const/4 p1, 0x6

    .line 44
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 177
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    const/16 p1, 0x10

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getAvatarView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    const/16 v0, 0x28

    const/16 v1, 0x28

    const/16 v2, 0x10

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getTitleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getGoToMessageButton()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x28

    const/16 v1, 0x28

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getSendButton()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x28

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$initAvatarView(Lcom/iMe/fork/ui/view/TemplateCell;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->initAvatarView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initGoToMessageButton(Lcom/iMe/fork/ui/view/TemplateCell;)Landroid/widget/ImageView;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->initGoToMessageButton()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSendButton(Lcom/iMe/fork/ui/view/TemplateCell;)Landroid/widget/ImageView;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->initSendButton()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSubtitleTextView(Lcom/iMe/fork/ui/view/TemplateCell;)Landroid/widget/TextView;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->initSubtitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleContainer(Lcom/iMe/fork/ui/view/TemplateCell;)Landroid/widget/LinearLayout;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->initTitleContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleTextView(Lcom/iMe/fork/ui/view/TemplateCell;)Landroid/widget/TextView;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->initTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private static final bind$lambda$2(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Lcom/iMe/storage/domain/model/templates/TemplateModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "$templatesDelegate"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$template"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getMessageId()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressGoToMessage(I)V

    return-void
.end method

.method private static final bind$lambda$3(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Lcom/iMe/storage/domain/model/templates/TemplateModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "$templatesDelegate"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$template"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 71
    invoke-interface {p0, p1, p2}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressSendMessage(Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V

    return-void
.end method

.method private final getAvatarView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplateCell;->avatarView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method private final getGoToMessageButton()Landroid/widget/ImageView;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplateCell;->goToMessageButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getSendButton()Landroid/widget/ImageView;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplateCell;->sendButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getSubtitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplateCell;->subtitleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitleContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplateCell;->titleContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplateCell;->titleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initAvatarView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 2

    .line 78
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initGoToMessageButton()Landroid/widget/ImageView;
    .locals 4

    .line 103
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 104
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v1, "listSelectorSDK21"

    .line 105
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chat_messagePanelIcons"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 107
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initSendButton()Landroid/widget/ImageView;
    .locals 4

    .line 110
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v1, "listSelectorSDK21"

    .line 112
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chat_messagePanelSend"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 114
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_send:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initSubtitleTextView()Landroid/widget/TextView;
    .locals 2

    .line 96
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x14

    .line 98
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const-string v1, "windowBackgroundWhiteGrayText"

    .line 100
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private final initTitleContainer()Landroid/widget/LinearLayout;
    .locals 3

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getSubtitleTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private final initTitleTextView()Landroid/widget/TextView;
    .locals 2

    .line 86
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 88
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 89
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x14

    .line 91
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 93
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method


# virtual methods
.method public final bind(Lcom/iMe/storage/domain/model/templates/TemplateModel;Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V
    .locals 6

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templatesDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplateCell;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 56
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getAvatarView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getMessageId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    invoke-virtual {v0, v5, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getSubtitleTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 62
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    sget-object v2, Lcom/iMe/fork/enums/TemplatesSortingType;->USAGE:Lcom/iMe/fork/enums/TemplatesSortingType;

    const/16 v3, 0x20

    if-ne v1, v2, :cond_2

    .line 63
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getUsageRating()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 262
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/telegram/messenger/R$string;->chat_template_subtitle_sent:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getUsageRating()I

    move-result v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Times"

    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 66
    :cond_2
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lorg/telegram/messenger/R$string;->chat_template_subtitle_created_at:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getCreationDate()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateCallLog(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_2
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getGoToMessageButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/view/TemplateCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/iMe/fork/ui/view/TemplateCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Lcom/iMe/storage/domain/model/templates/TemplateModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplateCell;->getSendButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/view/TemplateCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lcom/iMe/fork/ui/view/TemplateCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Lcom/iMe/storage/domain/model/templates/TemplateModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getTemplate()Lcom/iMe/storage/domain/model/templates/TemplateModel;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplateCell;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    return-object v0
.end method

.method public final setTemplate(Lcom/iMe/storage/domain/model/templates/TemplateModel;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplateCell;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    return-void
.end method
