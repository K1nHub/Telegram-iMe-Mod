.class public Lcom/smedialink/ui/topics/TopicView;
.super Landroid/widget/LinearLayout;
.source "TopicView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/topics/TopicView$Companion;
    }
.end annotation


# instance fields
.field private archive:Ljava/lang/Boolean;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private dialogType:Lorg/fork/enums/DialogType;

.field private final iconSize:I

.field private final iconView$delegate:Lkotlin/Lazy;

.field private isActive:Z

.field private isFilter:Ljava/lang/Boolean;

.field private messagesContextMenu:Ljava/lang/Boolean;

.field private final nameTextView$delegate:Lkotlin/Lazy;

.field public position:I

.field private topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/topics/TopicView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/topics/TopicView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/smedialink/ui/topics/TopicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput p4, p0, Lcom/smedialink/ui/topics/TopicView;->iconSize:I

    .line 42
    new-instance p1, Lcom/smedialink/ui/topics/TopicView$iconView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/topics/TopicView$iconView$2;-><init>(Lcom/smedialink/ui/topics/TopicView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicView;->iconView$delegate:Lkotlin/Lazy;

    .line 43
    new-instance p1, Lcom/smedialink/ui/topics/TopicView$nameTextView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/topics/TopicView$nameTextView$2;-><init>(Lcom/smedialink/ui/topics/TopicView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicView;->nameTextView$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 p1, 0x11

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 54
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->init()V

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

    .line 29
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/topics/TopicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$initIconView(Lcom/smedialink/ui/topics/TopicView;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->initIconView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initNameTextView(Lcom/smedialink/ui/topics/TopicView;)Landroid/widget/TextView;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->initNameTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->iconView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getNameTextView()Landroid/widget/TextView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->nameTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final init()V
    .locals 8

    const/16 v0, 0xa

    .line 164
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 165
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 166
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/smedialink/ui/topics/TopicView;->iconSize:I

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    iget v2, p0, Lcom/smedialink/ui/topics/TopicView;->iconSize:I

    const/4 v1, -0x2

    const/16 v3, 0x11

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final initIconView()Landroid/widget/ImageView;
    .locals 2

    .line 170
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 171
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final initNameTextView()Landroid/widget/TextView;
    .locals 3

    .line 174
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v2, 0x3dcccccd    # 0.1f

    .line 178
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method


# virtual methods
.method public final getIconSize()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/smedialink/ui/topics/TopicView;->iconSize:I

    return v0
.end method

.method public final getTopic()Lcom/smedialink/storage/domain/model/topics/TopicModel;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/smedialink/ui/topics/TopicView;->iconSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v6, v0

    iget v0, p0, Lcom/smedialink/ui/topics/TopicView;->iconSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/smedialink/ui/topics/TopicView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final setActive(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/smedialink/ui/topics/TopicView;->isActive:Z

    .line 66
    invoke-virtual {p0}, Lcom/smedialink/ui/topics/TopicView;->updateColors()V

    return-void
.end method

.method public final setArchive(ZZ)V
    .locals 2

    .line 107
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->archive:Ljava/lang/Boolean;

    .line 108
    iput-boolean p2, p0, Lcom/smedialink/ui/topics/TopicView;->isActive:Z

    .line 109
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 110
    sget v0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_archive:I

    goto :goto_0

    .line 111
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->main_list:I

    .line 109
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(\n     \u2026tring.main_list\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 114
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_custom_forward_switch_archive:I

    goto :goto_1

    .line 115
    :cond_1
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_custom_forward_switch_main:I

    .line 113
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-virtual {p0}, Lcom/smedialink/ui/topics/TopicView;->updateColors()V

    return-void
.end method

.method public final setDialogType(Lorg/fork/enums/DialogType;Z)V
    .locals 2

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicView;->dialogType:Lorg/fork/enums/DialogType;

    .line 100
    iput-boolean p2, p0, Lcom/smedialink/ui/topics/TopicView;->isActive:Z

    .line 101
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Lorg/fork/enums/DialogType;->getNameResId()I

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

    .line 102
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lorg/fork/enums/DialogType;->getIconResId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    invoke-virtual {p0}, Lcom/smedialink/ui/topics/TopicView;->updateColors()V

    return-void
.end method

.method public final setFilterItem(Lcom/smedialink/model/common/FilterItem;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->isFilter:Ljava/lang/Boolean;

    .line 61
    sget-object v0, Lcom/smedialink/storage/domain/model/topics/TopicModel;->Companion:Lcom/smedialink/storage/domain/model/topics/TopicModel$Companion;

    invoke-virtual {p1}, Lcom/smedialink/model/common/FilterItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel$Companion;->createMockupWithTitle(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/model/common/FilterItem;->isSelected()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/smedialink/ui/topics/TopicView;->setTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;Z)V

    return-void
.end method

.method public final setMessagesContextMenu(ZZ)V
    .locals 2

    .line 121
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->messagesContextMenu:Ljava/lang/Boolean;

    .line 122
    iput-boolean p2, p0, Lcom/smedialink/ui/topics/TopicView;->isActive:Z

    if-eqz p1, :cond_0

    .line 123
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_message_header:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->MediaTab:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 124
    :goto_0
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 126
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_settings_chat:I

    goto :goto_1

    .line 127
    :cond_1
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_cloud_filter_image:I

    .line 125
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    invoke-virtual {p0}, Lcom/smedialink/ui/topics/TopicView;->updateColors()V

    return-void
.end method

.method public final setTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicView;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    return-void
.end method

.method public final setTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;Z)V
    .locals 6

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicView;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 71
    iput-boolean p2, p0, Lcom/smedialink/ui/topics/TopicView;->isActive:Z

    .line 72
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    const-string p2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->topics_title_notopic:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.string.topics_title_notopic)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    goto/16 :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object p2

    if-nez p2, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 81
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/topic/TopicExtKt;->info(Lcom/smedialink/storage/data/repository/topics/Topic;)Lcom/smedialink/ui/topics/TopicInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/topics/TopicInfo;->getIconResId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/model/topic/TopicExtKt;->info(Lcom/smedialink/storage/data/repository/topics/Topic;)Lcom/smedialink/ui/topics/TopicInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/topics/TopicInfo;->component2()I

    move-result v1

    invoke-virtual {v0}, Lcom/smedialink/ui/topics/TopicInfo;->component3()I

    move-result v0

    if-eqz v1, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getInternalString(title)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_3
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide p1

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 89
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    goto :goto_0

    .line 91
    :cond_4
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/smedialink/ui/topics/TopicView;->updateColors()V

    return-void
.end method

.method public final updateColors()V
    .locals 7

    .line 134
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->messagesContextMenu:Ljava/lang/Boolean;

    const-string v1, "chats_actionBackground"

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->archive:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->isFilter:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->dialogType:Lorg/fork/enums/DialogType;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/smedialink/common/TelegramThemeKeys$Common;->buildDialogTypeActiveBackgroundKey(Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$color;->fork_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_3

    .line 139
    :cond_3
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    const-string v0, "iMe_dialogs_userTopicActiveBackground"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicView;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v1

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/smedialink/common/TelegramThemeKeys$Dialog;->buildTopicActiveBackgroundKey(Lcom/smedialink/storage/data/repository/topics/Topic;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_9
    return-void

    .line 134
    :cond_a
    :goto_2
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 145
    :goto_3
    iget-object v1, p0, Lcom/smedialink/ui/topics/TopicView;->backgroundPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/smedialink/ui/topics/TopicView;->isActive:Z

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    const-string v0, "iMe_dialogs_topicInactiveBackground"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smedialink/ui/topics/TopicView;->isActive:Z

    const-string v2, "iMe_dialogs_topicActiveText"

    const/4 v3, -0x1

    if-eqz v1, :cond_c

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_c
    const/4 v1, -0x1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v4, p0, Lcom/smedialink/ui/topics/TopicView;->isActive:Z

    if-eqz v4, :cond_d

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    :cond_d
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
