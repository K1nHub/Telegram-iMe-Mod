.class public final Lcom/iMe/ui/shop/BotInfoActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "BotInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/shop/BotInfoActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotInfoActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotInfoActivity.kt\ncom/iMe/ui/shop/BotInfoActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,302:1\n1#2:303\n766#3:304\n857#3,2:305\n1855#3,2:307\n*S KotlinDebug\n*F\n+ 1 BotInfoActivity.kt\ncom/iMe/ui/shop/BotInfoActivity\n*L\n234#1:304\n234#1:305,2\n235#1:307,2\n*E\n"
.end annotation


# instance fields
.field private avatar:Landroid/widget/ImageView;

.field private botAnalog:Lcom/iMe/bots/domain/model/ShopItem;

.field private botAnalogLanguage:Landroid/widget/TextView;

.field private botCurrentLanguage:Landroid/widget/TextView;

.field private botDescription:Landroid/widget/TextView;

.field private botId:Ljava/lang/String;

.field private botName:Landroid/widget/TextView;

.field private button:Landroid/widget/TextView;

.field private dateAdded:Landroid/widget/TextView;

.field private dateUpdated:Landroid/widget/TextView;

.field private developerLabel:Landroid/widget/TextView;

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private installsValue:Landroid/widget/TextView;

.field private instalsLabel:Landroid/widget/TextView;

.field private layoutContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private phrasesLabel:Landroid/widget/TextView;

.field private phrasesValue:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rateLabel:Landroid/widget/TextView;

.field private ratingBar:Lme/zhanghai/android/materialratingbar/MaterialRatingBar;

.field private ratingLabel:Landroid/widget/TextView;

.field private ratingValue:Landroid/widget/TextView;

.field private rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private statsContainer:Landroid/view/View;

.field private tagsContainer:Lcom/google/android/flexbox/FlexboxLayout;

.field private themesLabel:Landroid/widget/TextView;

.field private themesValue:Landroid/widget/TextView;

.field private title:Ljava/lang/String;

.field private final userId:J


# direct methods
.method public static synthetic $r8$lambda$6BIe_ooEn8-H7E55r12Drc1Q6ec(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity;->subscribeToBotContent$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mp2lDuw4_gs9-08FfZWXyLKekKc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity;->subscribeToBotContent$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dIO9Xm0TXE0C0_cpx8IJxRjhjpI(Lcom/iMe/ui/shop/BotInfoActivity;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/BotInfoActivity;->displayBotItem$lambda$9(Lcom/iMe/ui/shop/BotInfoActivity;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fzUhzY_NtdL9zE_1X63nTO1IAzo(Lcom/iMe/ui/shop/BotInfoActivity;Lme/zhanghai/android/materialratingbar/MaterialRatingBar;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/BotInfoActivity;->displayBotItem$lambda$5(Lcom/iMe/ui/shop/BotInfoActivity;Lme/zhanghai/android/materialratingbar/MaterialRatingBar;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$uwp_GSFnIL2lSJFzFqhYIv62ovw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity;->observeBotAnalog$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vGAgNWf_iWHgkl2YBdhgWsPx5bc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity;->observeBotAnalog$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xeeUNVye45OKpXFSzo4W9uSJlgM(Lcom/iMe/ui/shop/BotInfoActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity;->displayBotItem$lambda$4(Lcom/iMe/ui/shop/BotInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const-string p1, ""

    .line 34
    iput-object p1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botId:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->title:Ljava/lang/String;

    .line 63
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->userId:J

    .line 65
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$displayBotItem(Lcom/iMe/ui/shop/BotInfoActivity;Lcom/iMe/bots/domain/model/ShopItem;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity;->displayBotItem(Lcom/iMe/bots/domain/model/ShopItem;)V

    return-void
.end method

.method public static final synthetic access$getBotAnalog$p(Lcom/iMe/ui/shop/BotInfoActivity;)Lcom/iMe/bots/domain/model/ShopItem;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botAnalog:Lcom/iMe/bots/domain/model/ShopItem;

    return-object p0
.end method

.method public static final synthetic access$getBotAnalogLanguage$p(Lcom/iMe/ui/shop/BotInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botAnalogLanguage:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$setBotAnalog$p(Lcom/iMe/ui/shop/BotInfoActivity;Lcom/iMe/bots/domain/model/ShopItem;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botAnalog:Lcom/iMe/bots/domain/model/ShopItem;

    return-void
.end method

.method private final displayBotItem(Lcom/iMe/bots/domain/model/ShopItem;)V
    .locals 9

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0}, Lcom/iMe/ui/shop/BotInfoActivity;->showProgress(Z)V

    .line 166
    invoke-direct {p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity;->observeBotAnalog(Lcom/iMe/bots/domain/model/ShopItem;)V

    .line 167
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->button:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/iMe/ui/shop/BotInfoActivity;->avatar:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getAvatar()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botName:Landroid/widget/TextView;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botName:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botDescription:Landroid/widget/TextView;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->ratingValue:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getRating()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.1f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(this, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_2
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->ratingLabel:Landroid/widget/TextView;

    if-nez v1, :cond_6

    goto :goto_3

    .line 174
    :cond_6
    sget v3, Lorg/telegram/messenger/R$string;->plural_info_votes:I

    .line 175
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getReviews()J

    move-result-wide v4

    long-to-int v4, v4

    .line 173
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringInternal(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_3
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->themesLabel:Landroid/widget/TextView;

    if-nez v1, :cond_7

    goto :goto_4

    .line 178
    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->neurobots_store_bot_info_themes:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_4
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->phrasesLabel:Landroid/widget/TextView;

    if-nez v1, :cond_8

    goto :goto_5

    .line 180
    :cond_8
    sget v3, Lorg/telegram/messenger/R$string;->neurobots_store_bot_info_phrases:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_5
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->developerLabel:Landroid/widget/TextView;

    if-nez v1, :cond_9

    goto :goto_6

    .line 182
    :cond_9
    sget v3, Lorg/telegram/messenger/R$string;->neurobots_store_bot_info_developer:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_6
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->instalsLabel:Landroid/widget/TextView;

    if-nez v1, :cond_a

    goto :goto_7

    .line 184
    :cond_a
    sget v3, Lorg/telegram/messenger/R$string;->neurobots_store_bot_info_installs:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_7
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->themesValue:Landroid/widget/TextView;

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getThemes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_8
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->phrasesValue:Landroid/widget/TextView;

    if-nez v1, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getPhrases()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_9
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->installsValue:Landroid/widget/TextView;

    if-nez v1, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getInstalls()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_a
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->rateLabel:Landroid/widget/TextView;

    if-nez v1, :cond_e

    goto :goto_b

    :cond_e
    sget v3, Lorg/telegram/messenger/R$string;->neurobots_store_bot_info_rate:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_b
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getLanguage()Lcom/iMe/bots/domain/model/BotLanguage;

    move-result-object v1

    sget-object v3, Lcom/iMe/ui/shop/BotInfoActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_10

    const/4 v3, 0x2

    if-ne v1, v3, :cond_f

    .line 191
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_info_supported_language_en:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 190
    :cond_10
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_info_supported_language_ru:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    :goto_c
    iget-object v3, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botCurrentLanguage:Landroid/widget/TextView;

    if-nez v3, :cond_11

    goto :goto_d

    .line 194
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$string;->neurobots_store_bot_info_supported_languages:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_d
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botAnalogLanguage:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    :cond_12
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botAnalogLanguage:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    new-instance v3, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/shop/BotInfoActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_13
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getOwnRating()I

    move-result v1

    if-nez v1, :cond_16

    .line 206
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->ratingBar:Lme/zhanghai/android/materialratingbar/MaterialRatingBar;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 207
    :cond_14
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->ratingBar:Lme/zhanghai/android/materialratingbar/MaterialRatingBar;

    if-nez v0, :cond_15

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 208
    :goto_e
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->ratingBar:Lme/zhanghai/android/materialratingbar/MaterialRatingBar;

    if-eqz v0, :cond_19

    new-instance v1, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/shop/BotInfoActivity;)V

    invoke-virtual {v0, v1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setOnRatingChangeListener(Lme/zhanghai/android/materialratingbar/MaterialRatingBar$OnRatingChangeListener;)V

    goto :goto_f

    .line 218
    :cond_16
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->ratingBar:Lme/zhanghai/android/materialratingbar/MaterialRatingBar;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 219
    :cond_17
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->ratingBar:Lme/zhanghai/android/materialratingbar/MaterialRatingBar;

    if-nez v0, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getOwnRating()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 223
    :cond_19
    :goto_f
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->tagsContainer:Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 224
    :cond_1a
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 226
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->dateAdded:Landroid/widget/TextView;

    const/16 v3, 0x20

    if-nez v1, :cond_1b

    goto :goto_10

    .line 227
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$string;->neurobots_store_bot_added:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getCreated()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_10
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->dateUpdated:Landroid/widget/TextView;

    if-nez v1, :cond_1c

    goto :goto_11

    .line 229
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$string;->neurobots_store_bot_updated:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getUpdated()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    const/16 v1, 0x10

    .line 232
    invoke-static {v0, v1}, Lcom/iMe/ui/shop/util/ContextExtKt;->pxToDp(Landroid/content/Context;I)I

    move-result v1

    .line 233
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getTags()Ljava/util/List;

    move-result-object v3

    .line 766
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/iMe/bots/domain/model/SmartTag;

    .line 234
    invoke-virtual {v6}, Lcom/iMe/bots/domain/model/SmartTag;->getHidden()Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_1d

    .line 857
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1855
    :cond_1e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/bots/domain/model/SmartTag;

    .line 236
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {v3}, Lcom/iMe/bots/domain/model/SmartTag;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 238
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 240
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v5, 0x42480000    # 50.0f

    .line 241
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v5, 0x41000000    # 8.0f

    .line 243
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    .line 244
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 245
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 246
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 242
    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 248
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v3, p0, Lcom/iMe/ui/shop/BotInfoActivity;->tagsContainer:Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz v3, :cond_1f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    :cond_1f
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 251
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 252
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13

    .line 256
    :cond_20
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->button:Landroid/widget/TextView;

    if-nez v0, :cond_21

    goto :goto_15

    .line 257
    :cond_21
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getStatus()Lcom/iMe/bots/data/model/BotStatus;

    move-result-object v1

    sget-object v2, Lcom/iMe/ui/shop/BotInfoActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 263
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_action_enable:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 262
    :pswitch_1
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_action_disable:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 261
    :pswitch_2
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_status_downloading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 260
    :pswitch_3
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_action_update:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 259
    :pswitch_4
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_action_download:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 258
    :pswitch_5
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    const-string v1, "Free"

    .line 256
    :cond_22
    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_23
    :goto_15
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->button:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    new-instance v1, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/shop/BotInfoActivity;Lcom/iMe/bots/domain/model/ShopItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_24
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final displayBotItem$lambda$4(Lcom/iMe/ui/shop/BotInfoActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botAnalog:Lcom/iMe/bots/domain/model/ShopItem;

    if-eqz p1, :cond_0

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getBotId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "botId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance p1, Lcom/iMe/ui/shop/BotInfoActivity;

    invoke-direct {p1, v0}, Lcom/iMe/ui/shop/BotInfoActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_0
    return-void
.end method

.method private static final displayBotItem$lambda$5(Lcom/iMe/ui/shop/BotInfoActivity;Lme/zhanghai/android/materialratingbar/MaterialRatingBar;F)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    const/4 v0, 0x1

    .line 210
    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 211
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

    .line 212
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botId:Ljava/lang/String;

    .line 213
    iget-wide v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->userId:J

    float-to-int p0, p2

    .line 211
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/iMe/bots/usecase/AiBotsManager;->sendBotRatingEvent(Ljava/lang/String;JI)V

    return-void
.end method

.method private static final displayBotItem$lambda$9(Lcom/iMe/ui/shop/BotInfoActivity;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 269
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botButtonClicked:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private final initViewIds(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 115
    sget v1, Lorg/telegram/messenger/R$id;->bot_avatar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->avatar:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 116
    sget v1, Lorg/telegram/messenger/R$id;->bot_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botName:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 117
    sget v1, Lorg/telegram/messenger/R$id;->bot_description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botDescription:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 118
    sget v1, Lorg/telegram/messenger/R$id;->tags_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayout;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->tagsContainer:Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz p1, :cond_4

    .line 119
    sget v1, Lorg/telegram/messenger/R$id;->rating_number:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_4
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->ratingValue:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 120
    sget v1, Lorg/telegram/messenger/R$id;->rating_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_5

    :cond_5
    move-object v1, v0

    :goto_5
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->ratingLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 121
    sget v1, Lorg/telegram/messenger/R$id;->installs_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_6

    :cond_6
    move-object v1, v0

    :goto_6
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->instalsLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 122
    sget v1, Lorg/telegram/messenger/R$id;->themes_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_7

    :cond_7
    move-object v1, v0

    :goto_7
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->themesLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 123
    sget v1, Lorg/telegram/messenger/R$id;->bot_developer:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_8

    :cond_8
    move-object v1, v0

    :goto_8
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->developerLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 124
    sget v1, Lorg/telegram/messenger/R$id;->bot_current_language:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_9

    :cond_9
    move-object v1, v0

    :goto_9
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botCurrentLanguage:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 125
    sget v1, Lorg/telegram/messenger/R$id;->bot_analog_language:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_a

    :cond_a
    move-object v1, v0

    :goto_a
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botAnalogLanguage:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 126
    sget v1, Lorg/telegram/messenger/R$id;->phrases_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_b

    :cond_b
    move-object v1, v0

    :goto_b
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->phrasesLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    .line 127
    sget v1, Lorg/telegram/messenger/R$id;->installs_counter:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_c

    :cond_c
    move-object v1, v0

    :goto_c
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->installsValue:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    .line 128
    sget v1, Lorg/telegram/messenger/R$id;->themes_counter:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_d

    :cond_d
    move-object v1, v0

    :goto_d
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->themesValue:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    .line 129
    sget v1, Lorg/telegram/messenger/R$id;->phrases_counter:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_e

    :cond_e
    move-object v1, v0

    :goto_e
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->phrasesValue:Landroid/widget/TextView;

    if-eqz p1, :cond_f

    .line 130
    sget v1, Lorg/telegram/messenger/R$id;->bot_date_added:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_f

    :cond_f
    move-object v1, v0

    :goto_f
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->dateAdded:Landroid/widget/TextView;

    if-eqz p1, :cond_10

    .line 131
    sget v1, Lorg/telegram/messenger/R$id;->bot_date_updated:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_10

    :cond_10
    move-object v1, v0

    :goto_10
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->dateUpdated:Landroid/widget/TextView;

    if-eqz p1, :cond_11

    .line 132
    sget v1, Lorg/telegram/messenger/R$id;->rating:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;

    goto :goto_11

    :cond_11
    move-object v1, v0

    :goto_11
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->ratingBar:Lme/zhanghai/android/materialratingbar/MaterialRatingBar;

    if-eqz p1, :cond_12

    .line 133
    sget v1, Lorg/telegram/messenger/R$id;->bot_info_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_12

    :cond_12
    move-object v1, v0

    :goto_12
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->button:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    .line 134
    sget v1, Lorg/telegram/messenger/R$id;->textRateBot:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_13

    :cond_13
    move-object v1, v0

    :goto_13
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->rateLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_14

    .line 135
    sget v1, Lorg/telegram/messenger/R$id;->layoutContainer:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_14

    :cond_14
    move-object v1, v0

    :goto_14
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->layoutContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_15

    .line 136
    sget v1, Lorg/telegram/messenger/R$id;->progressBar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    goto :goto_15

    :cond_15
    move-object v1, v0

    :goto_15
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_16

    .line 137
    sget v0, Lorg/telegram/messenger/R$id;->stats_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_16
    iput-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->statsContainer:Landroid/view/View;

    return-void
.end method

.method private final observeBotAnalog(Lcom/iMe/bots/domain/model/ShopItem;)V
    .locals 3

    .line 274
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

    .line 275
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getInstance().currentLocaleInfo.langCode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/bots/usecase/AiBotsManager;->getAllBotsObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 276
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 277
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/iMe/ui/shop/BotInfoActivity$observeBotAnalog$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity$observeBotAnalog$1;-><init>(Lcom/iMe/ui/shop/BotInfoActivity;Lcom/iMe/bots/domain/model/ShopItem;)V

    new-instance p1, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, v1}, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/iMe/ui/shop/BotInfoActivity$observeBotAnalog$2;->INSTANCE:Lcom/iMe/ui/shop/BotInfoActivity$observeBotAnalog$2;

    .line 296
    new-instance v2, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 278
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 299
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final observeBotAnalog$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final observeBotAnalog$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showProgress(Z)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 142
    :goto_0
    iget-object v3, p0, Lcom/iMe/ui/shop/BotInfoActivity;->layoutContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 143
    :goto_1
    iget-object v3, p0, Lcom/iMe/ui/shop/BotInfoActivity;->button:Landroid/widget/TextView;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_2
    iget-object v2, p0, Lcom/iMe/ui/shop/BotInfoActivity;->progressBar:Landroid/widget/ProgressBar;

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private final subscribeToBotContent()V
    .locals 4

    .line 148
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

    .line 150
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botId:Ljava/lang/String;

    .line 151
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstance().currentLocaleInfo.langCode"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/iMe/bots/usecase/AiBotsManager;->getSingleBotObservable(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 153
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 154
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/iMe/ui/shop/BotInfoActivity$subscribeToBotContent$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/shop/BotInfoActivity$subscribeToBotContent$1;-><init>(Lcom/iMe/ui/shop/BotInfoActivity;)V

    new-instance v2, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/iMe/ui/shop/BotInfoActivity$subscribeToBotContent$2;->INSTANCE:Lcom/iMe/ui/shop/BotInfoActivity$subscribeToBotContent$2;

    .line 157
    new-instance v3, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/iMe/ui/shop/BotInfoActivity$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 155
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final subscribeToBotContent$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeToBotContent$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 90
    new-instance v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 92
    sget v0, Lorg/telegram/messenger/R$layout;->fork_bots_description_content:I

    iget-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v2, 0x0

    const-string v3, "rootContainer"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity;->initViewIds(Landroid/view/View;)V

    .line 95
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 99
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v0, Lcom/iMe/ui/shop/BotInfoActivity$createView$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/shop/BotInfoActivity$createView$1;-><init>(Lcom/iMe/ui/shop/BotInfoActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 106
    iget-object p1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->statsContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    :cond_1
    invoke-direct {p0, v4}, Lcom/iMe/ui/shop/BotInfoActivity;->showProgress(Z)V

    .line 108
    invoke-direct {p0}, Lcom/iMe/ui/shop/BotInfoActivity;->subscribeToBotContent()V

    .line 110
    iget-object p1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string p1, "fragmentView"

    .line 111
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 85
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->purchaseHelper:Lcom/iMe/ui/shop/PurchaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iMe/ui/shop/PurchaseHelper;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 68
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 70
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "botId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->botId:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/iMe/ui/shop/BotInfoActivity;->title:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 80
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method
