.class public Lcom/iMe/ui/topics/TopicView;
.super Landroid/widget/FrameLayout;
.source "TopicView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/topics/TopicView$Companion;
    }
.end annotation


# instance fields
.field private final iconSize:I

.field private final iconView$delegate:Lkotlin/Lazy;

.field private isActive:Z

.field private final nameTextView$delegate:Lkotlin/Lazy;

.field private final ovalLayout$delegate:Lkotlin/Lazy;

.field public position:I

.field private topic:Lcom/iMe/storage/domain/model/topics/TopicModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/topics/TopicView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/topics/TopicView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/iMe/ui/topics/TopicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput p4, p0, Lcom/iMe/ui/topics/TopicView;->iconSize:I

    .line 41
    new-instance p1, Lcom/iMe/ui/topics/TopicView$ovalLayout$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicView$ovalLayout$2;-><init>(Lcom/iMe/ui/topics/TopicView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicView;->ovalLayout$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lcom/iMe/ui/topics/TopicView$iconView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicView$iconView$2;-><init>(Lcom/iMe/ui/topics/TopicView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicView;->iconView$delegate:Lkotlin/Lazy;

    .line 43
    new-instance p1, Lcom/iMe/ui/topics/TopicView$nameTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicView$nameTextView$2;-><init>(Lcom/iMe/ui/topics/TopicView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicView;->nameTextView$delegate:Lkotlin/Lazy;

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->init()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/16 p4, 0x18

    .line 28
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/ui/topics/TopicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$initIconView(Lcom/iMe/ui/topics/TopicView;)Landroid/widget/ImageView;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->initIconView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initNameTextView(Lcom/iMe/ui/topics/TopicView;)Landroid/widget/TextView;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->initNameTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initOvalLayout(Lcom/iMe/ui/topics/TopicView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->initOvalLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method private final getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicView;->iconView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getNameTextView()Landroid/widget/TextView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicView;->nameTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getOvalLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicView;->ovalLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final init()V
    .locals 9

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 152
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getOvalLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 153
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getOvalLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p0, Lcom/iMe/ui/topics/TopicView;->iconSize:I

    const/16 v3, 0x10

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getOvalLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    iget v3, p0, Lcom/iMe/ui/topics/TopicView;->iconSize:I

    const/4 v2, -0x2

    const/16 v4, 0x10

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getOvalLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, -0x2

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final initIconView()Landroid/widget/ImageView;
    .locals 2

    .line 162
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 163
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final initNameTextView()Landroid/widget/TextView;
    .locals 3

    .line 166
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v2, 0x0

    .line 169
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v2, 0x3dcccccd    # 0.1f

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initOvalLayout()Landroid/widget/LinearLayout;
    .locals 2

    .line 158
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object v0
.end method


# virtual methods
.method public final getIconSize()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/iMe/ui/topics/TopicView;->iconSize:I

    return v0
.end method

.method public final getTopic()Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicView;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-object v0
.end method

.method public final setActive(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/iMe/ui/topics/TopicView;->isActive:Z

    .line 64
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicView;->updateColors()V

    return-void
.end method

.method public final setArchive(ZZ)V
    .locals 2

    .line 110
    iput-boolean p2, p0, Lcom/iMe/ui/topics/TopicView;->isActive:Z

    .line 111
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 112
    sget v0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_archive:I

    goto :goto_0

    .line 113
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->main_list:I

    .line 111
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(\n     \u2026tring.main_list\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 116
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_custom_forward_switch_archive:I

    goto :goto_1

    .line 117
    :cond_1
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_custom_forward_switch_main:I

    .line 115
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicView;->updateColors()V

    return-void
.end method

.method public final setDialogType(Lcom/iMe/fork/enums/DialogType;Z)V
    .locals 2

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput-boolean p2, p0, Lcom/iMe/ui/topics/TopicView;->isActive:Z

    .line 103
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/iMe/fork/enums/DialogType;->getNameResId()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(dialogType.nameResId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/iMe/fork/enums/DialogType;->getIconResId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicView;->updateColors()V

    return-void
.end method

.method public final setFilterItem(Lcom/iMe/model/common/FilterItem;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->Companion:Lcom/iMe/storage/domain/model/topics/TopicModel$Companion;

    invoke-virtual {p1}, Lcom/iMe/model/common/FilterItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/topics/TopicModel$Companion;->createMockupWithTitle(Ljava/lang/String;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/model/common/FilterItem;->isSelected()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/iMe/ui/topics/TopicView;->setTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;Z)V

    return-void
.end method

.method public final setHorizontalMargins(II)V
    .locals 7

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getOvalLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins$default(Landroid/view/View;IIIIILjava/lang/Object;)V

    return-void
.end method

.method public final setMessagesContextMenu(ZZ)V
    .locals 2

    .line 124
    iput-boolean p2, p0, Lcom/iMe/ui/topics/TopicView;->isActive:Z

    if-eqz p1, :cond_0

    .line 125
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_message_header:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->MediaTab:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 126
    :goto_0
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 128
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_settings_chat:I

    goto :goto_1

    .line 129
    :cond_1
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_cloud_filter_image:I

    .line 127
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicView;->updateColors()V

    return-void
.end method

.method public final setTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/iMe/ui/topics/TopicView;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-void
.end method

.method public final setTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;Z)V
    .locals 9

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/iMe/ui/topics/TopicView;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 73
    iput-boolean p2, p0, Lcom/iMe/ui/topics/TopicView;->isActive:Z

    .line 74
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p2, v0, v2

    const-string v0, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->topics_title_notopic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "getInternalString(R.string.topics_title_notopic)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v5, v4, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto/16 :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0, v2, v3, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object p2

    if-nez p2, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v5, v4, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p2, v5, v4, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/topics/TopicInfo;->getIconResId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 86
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/topics/TopicInfo;->component2()I

    move-result v6

    invoke-virtual {p2}, Lcom/iMe/ui/topics/TopicInfo;->component3()I

    move-result p2

    if-eqz v6, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "getInternalString(title)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_3
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-nez p1, :cond_4

    .line 91
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v5, v4, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_4
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v5, v4, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicView;->updateColors()V

    return-void
.end method

.method public final updateColors()V
    .locals 4

    .line 135
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getOvalLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 136
    iget-boolean v2, p0, Lcom/iMe/ui/topics/TopicView;->isActive:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    goto :goto_0

    .line 137
    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 135
    :goto_0
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    iget-boolean v2, p0, Lcom/iMe/ui/topics/TopicView;->isActive:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    const/16 v2, 0x6e

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iMe/ui/topics/TopicView;->isActive:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v2, p0, Lcom/iMe/ui/topics/TopicView;->isActive:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    goto :goto_3

    :cond_3
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_3
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
