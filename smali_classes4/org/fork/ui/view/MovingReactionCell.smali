.class public final Lorg/fork/ui/view/MovingReactionCell;
.super Landroid/widget/FrameLayout;
.source "MovingReactionCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/view/MovingReactionCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMovingReactionCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MovingReactionCell.kt\norg/fork/ui/view/MovingReactionCell\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,181:1\n1#2:182\n254#3,2:183\n*S KotlinDebug\n*F\n+ 1 MovingReactionCell.kt\norg/fork/ui/view/MovingReactionCell\n*L\n149#1:183,2\n*E\n"
.end annotation


# instance fields
.field private final deleteImageView$delegate:Lkotlin/Lazy;

.field private final editText$delegate:Lkotlin/Lazy;

.field private final emojiTextView$delegate:Lkotlin/Lazy;

.field private emojiValue:Ljava/lang/String;

.field private final linkIconShow:Z

.field private final linkImageView$delegate:Lkotlin/Lazy;

.field private final moveImageView$delegate:Lkotlin/Lazy;

.field private needDivider:Z

.field private showNextButton:Z

.field private urlButton:Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

.field private final valueTextView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/view/MovingReactionCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/view/MovingReactionCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean p2, p0, Lorg/fork/ui/view/MovingReactionCell;->linkIconShow:Z

    .line 35
    new-instance p1, Lorg/fork/ui/view/MovingReactionCell$linkImageView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/MovingReactionCell$linkImageView$2;-><init>(Lorg/fork/ui/view/MovingReactionCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->linkImageView$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lorg/fork/ui/view/MovingReactionCell$deleteImageView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/MovingReactionCell$deleteImageView$2;-><init>(Lorg/fork/ui/view/MovingReactionCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->deleteImageView$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lorg/fork/ui/view/MovingReactionCell$editText$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/MovingReactionCell$editText$2;-><init>(Lorg/fork/ui/view/MovingReactionCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->editText$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-direct {p1, p2, p2, v0, p2}, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->urlButton:Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    .line 43
    new-instance p1, Lorg/fork/ui/view/MovingReactionCell$valueTextView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/MovingReactionCell$valueTextView$2;-><init>(Lorg/fork/ui/view/MovingReactionCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->valueTextView$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p1, Lorg/fork/ui/view/MovingReactionCell$moveImageView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/MovingReactionCell$moveImageView$2;-><init>(Lorg/fork/ui/view/MovingReactionCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->moveImageView$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lorg/fork/ui/view/MovingReactionCell$emojiTextView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/MovingReactionCell$emojiTextView$2;-><init>(Lorg/fork/ui/view/MovingReactionCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->emojiTextView$delegate:Lkotlin/Lazy;

    const-string p1, "windowBackgroundWhite"

    .line 49
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 50
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->setupViews()V

    return-void
.end method

.method public static final synthetic access$initDeleteImageView(Lorg/fork/ui/view/MovingReactionCell;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->initDeleteImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initEditText(Lorg/fork/ui/view/MovingReactionCell;)Lorg/fork/ui/view/MovingReactionCell$initEditText$1;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->initEditText()Lorg/fork/ui/view/MovingReactionCell$initEditText$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initEmojiTextView(Lorg/fork/ui/view/MovingReactionCell;)Landroid/widget/TextView;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->initEmojiTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initLinkImageView(Lorg/fork/ui/view/MovingReactionCell;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->initLinkImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initMoveImageView(Lorg/fork/ui/view/MovingReactionCell;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->initMoveImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initValueTextView(Lorg/fork/ui/view/MovingReactionCell;)Landroid/widget/TextView;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->initValueTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getEmojiTextView()Landroid/widget/TextView;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/fork/ui/view/MovingReactionCell;->emojiTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getMoveImageView()Landroid/widget/ImageView;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/fork/ui/view/MovingReactionCell;->moveImageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getValueTextView()Landroid/widget/TextView;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/fork/ui/view/MovingReactionCell;->valueTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initDeleteImageView()Landroid/widget/ImageView;
    .locals 4

    .line 136
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 138
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "stickers_menu"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 141
    sget v1, Lorg/telegram/messenger/R$drawable;->delete:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initEditText()Lorg/fork/ui/view/MovingReactionCell$initEditText$1;
    .locals 3

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/view/MovingReactionCell$initEditText$1;

    invoke-direct {v1, p0, v0}, Lorg/fork/ui/view/MovingReactionCell$initEditText$1;-><init>(Lorg/fork/ui/view/MovingReactionCell;Landroid/content/Context;)V

    .line 108
    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 109
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const v0, 0x800005

    goto :goto_0

    :cond_0
    const v0, 0x800003

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {v1}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 112
    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    or-int/lit16 v0, v0, 0x4000

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 113
    sget v0, Lorg/telegram/messenger/R$string;->chat_reaction_enter_the_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 114
    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    const-string v0, "windowBackgroundWhiteBlackText"

    .line 115
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const-string v0, "windowBackgroundWhiteHintText"

    .line 116
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-object v1
.end method

.method private final initEmojiTextView()Landroid/widget/TextView;
    .locals 3

    .line 153
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const/16 v1, 0x11

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "chat_messagePanelText"

    .line 157
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-object v0
.end method

.method private final initLinkImageView()Landroid/widget/ImageView;
    .locals 5

    .line 144
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 147
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "windowBackgroundWhiteBlueHeader"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 149
    invoke-virtual {p0}, Lorg/fork/ui/view/MovingReactionCell;->getLinkIconShow()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 254
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_link:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initMoveImageView()Landroid/widget/ImageView;
    .locals 4

    .line 119
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 121
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "stickers_menu"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 124
    sget v1, Lorg/telegram/messenger/R$drawable;->poll_reorder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initValueTextView()Landroid/widget/TextView;
    .locals 3

    .line 127
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const v1, 0x800003

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 131
    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_link_not_added:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "windowBackgroundWhiteGrayText2"

    .line 132
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final setupViews()V
    .locals 9

    .line 163
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->getMoveImageView()Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lorg/fork/ui/view/MovingReactionCell;->linkIconShow:Z

    if-eqz v1, :cond_0

    const v1, 0x800003

    const v4, 0x800003

    goto :goto_0

    :cond_0
    const v1, 0x800013

    const v4, 0x800013

    :goto_0
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/16 v2, 0x30

    const/16 v3, 0x30

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-boolean v0, p0, Lorg/fork/ui/view/MovingReactionCell;->linkIconShow:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lorg/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    const v3, 0x800013

    const/16 v4, 0x3a

    const/4 v5, 0x2

    const/16 v6, 0x6f

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x2

    const v3, 0x800033

    const/16 v4, 0x3e

    const/16 v5, 0x24

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 168
    :cond_1
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->getEmojiTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x10

    const/16 v4, 0x3e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :goto_1
    invoke-virtual {p0}, Lorg/fork/ui/view/MovingReactionCell;->getLinkImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0x30

    const v3, 0x800005

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {p0}, Lorg/fork/ui/view/MovingReactionCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x30

    iget-boolean v3, p0, Lorg/fork/ui/view/MovingReactionCell;->linkIconShow:Z

    if-eqz v3, :cond_2

    const v3, 0x800005

    goto :goto_2

    :cond_2
    const v3, 0x800015

    :goto_2
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final addUrlAddress(Ljava/lang/String;)V
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/fork/ui/view/MovingReactionCell;->urlButton:Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;->setUrl(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lorg/fork/ui/view/MovingReactionCell;->getLinkImageView()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string v1, "stickers_menu"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final getDeleteImageView()Landroid/widget/ImageView;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/fork/ui/view/MovingReactionCell;->deleteImageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/fork/ui/view/MovingReactionCell;->editText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method public final getEmojiValue()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/fork/ui/view/MovingReactionCell;->emojiValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkIconShow()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lorg/fork/ui/view/MovingReactionCell;->linkIconShow:Z

    return v0
.end method

.method public final getLinkImageView()Landroid/widget/ImageView;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/fork/ui/view/MovingReactionCell;->linkImageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getShowNextButton()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/fork/ui/view/MovingReactionCell;->showNextButton:Z

    return v0
.end method

.method public final getUrlButton()Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/fork/ui/view/MovingReactionCell;->urlButton:Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    return-object v0
.end method

.method public final isEmojiButton()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/fork/ui/view/MovingReactionCell;->emojiValue:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-boolean v0, p0, Lorg/fork/ui/view/MovingReactionCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42780000    # 62.0f

    .line 91
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v5, v0, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x42800000    # 64.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p0, Lorg/fork/ui/view/MovingReactionCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setEmoji(Ljava/lang/String;Z)V
    .locals 4

    .line 73
    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->emojiValue:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->getEmojiTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->getEmojiTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iput-boolean p2, p0, Lorg/fork/ui/view/MovingReactionCell;->needDivider:Z

    xor-int/lit8 p1, p2, 0x1

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public final setEmojiValue(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->emojiValue:Ljava/lang/String;

    return-void
.end method

.method public final setShowNextButton(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lorg/fork/ui/view/MovingReactionCell;->showNextButton:Z

    return-void
.end method

.method public final setUrlButton(Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->urlButton:Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    return-void
.end method

.method public final updateUrlButton(Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;)V
    .locals 5

    const-string v0, "urlButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lorg/fork/ui/view/MovingReactionCell;->urlButton:Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    .line 57
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lorg/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->chat_reaction_enter_the_title:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 60
    :cond_1
    invoke-direct {p0}, Lorg/fork/ui/view/MovingReactionCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    sget v3, Lorg/telegram/messenger/R$string;->chat_reaction_link_not_added:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lorg/fork/ui/view/MovingReactionCell;->getLinkImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "windowBackgroundWhiteBlueHeader"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_5
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "stickers_menu"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    invoke-virtual {p0}, Lorg/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
