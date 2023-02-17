.class final Lorg/fork/ui/dialog/SelectLanguageBottomSheet$EmptyView;
.super Landroid/widget/LinearLayout;
.source "SelectLanguageBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/dialog/SelectLanguageBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyView"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectLanguageBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectLanguageBottomSheet.kt\norg/fork/ui/dialog/SelectLanguageBottomSheet$EmptyView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,416:1\n169#2,2:417\n*S KotlinDebug\n*F\n+ 1 SelectLanguageBottomSheet.kt\norg/fork/ui/dialog/SelectLanguageBottomSheet$EmptyView\n*L\n399#1:417,2\n*E\n"
.end annotation


# instance fields
.field private final animationView:Lorg/telegram/ui/Components/RLottieImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 383
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 384
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 385
    sget v2, Lorg/telegram/messenger/R$raw;->fork_catalog_empty:I

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v2, 0x20

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 387
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 383
    iput-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$EmptyView;->animationView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 390
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    .line 391
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 392
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "windowBackgroundWhiteBlackText"

    .line 394
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 395
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 396
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 397
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 398
    sget p1, Lorg/telegram/messenger/R$string;->translation_search_language_empty:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 393
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getAnimationView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$EmptyView;->animationView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method
