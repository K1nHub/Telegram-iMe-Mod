.class public final Lcom/iMe/feature/profile/ProfileSocialCell;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ProfileSocialCell.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/profile/ProfileSocialCell$Companion;,
        Lcom/iMe/feature/profile/ProfileSocialCell$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileSocialCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileSocialCell.kt\ncom/iMe/feature/profile/ProfileSocialCell\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n*L\n1#1,131:1\n56#2,6:132\n1549#3:138\n1620#3,3:139\n766#3:142\n857#3,2:143\n819#3:145\n847#3,2:146\n1864#3,2:148\n1866#3:155\n1855#3,2:156\n164#4,5:150\n*S KotlinDebug\n*F\n+ 1 ProfileSocialCell.kt\ncom/iMe/feature/profile/ProfileSocialCell\n*L\n33#1:132,6\n65#1:138\n65#1:139,3\n66#1:142\n66#1:143,2\n67#1:145\n67#1:146,2\n69#1:148,2\n69#1:155\n80#1:156,2\n74#1:150,5\n*E\n"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;

.field private final cachedImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final resource$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/feature/profile/ProfileSocialCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/profile/ProfileSocialCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/iMe/feature/profile/ProfileSocialCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/feature/profile/ProfileSocialCell$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/feature/profile/ProfileSocialCell$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileSocialCell;->resource$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileSocialCell;->cachedImageViews:Ljava/util/List;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfileSocialCell;->binding:Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;

    .line 38
    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfileSocialCell;->buildImageViews()V

    .line 40
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textTitle:Landroid/widget/TextView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textSubTitle:Landroid/widget/TextView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->buttonAdd:Landroid/widget/TextView;

    .line 44
    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfileSocialCell;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->social_cell_add_button:I

    invoke-interface {p2, p3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 48
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    const/4 v1, 0x4

    .line 45
    invoke-static {v1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p2, "lambda$1$lambda$0"

    .line 51
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/iMe/utils/CornersOutlineProviderKt;->roundCorners$default(Landroid/view/View;FILjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/feature/profile/ProfileSocialCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final buildImageViews()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 114
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x24

    .line 115
    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v3

    const/4 v4, 0x5

    if-nez v1, :cond_0

    const/4 v5, 0x2

    .line 116
    invoke-static {v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v5

    .line 117
    :goto_1
    invoke-static {v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v4

    .line 118
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    invoke-virtual {v6, v5, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 120
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    iget-object v3, p0, Lcom/iMe/feature/profile/ProfileSocialCell;->cachedImageViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v3, p0, Lcom/iMe/feature/profile/ProfileSocialCell;->binding:Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;

    iget-object v3, v3, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->linearImages:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileSocialCell;->resource$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method


# virtual methods
.method public final getBinding()Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileSocialCell;->binding:Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 27
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final updateState(Lcom/iMe/feature/profile/ProfileUiState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/profile/ProfileUiState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "profileUiState"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onNetworkClick"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onNetworkLongClick"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onAddButtonClick"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/feature/profile/ProfileUiState;->getContentState()Lcom/iMe/feature/socialMedias/ContentState;

    move-result-object v4

    sget-object v6, Lcom/iMe/feature/profile/ProfileSocialCell$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    const-string v6, "linearImages"

    const-string v7, "textSubTitle"

    const-string v8, "textTitle"

    const-string v9, "buttonAdd"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v4, v12, :cond_2

    const/4 v1, 0x2

    if-eq v4, v1, :cond_1

    const/4 v1, 0x3

    if-eq v4, v1, :cond_0

    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "updateState is not handled"

    .line 109
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 100
    :cond_0
    iget-object v1, v0, Lcom/iMe/feature/profile/ProfileSocialCell;->binding:Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;

    .line 101
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->buttonAdd:Landroid/widget/TextView;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11, v12, v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 102
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textTitle:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11, v12, v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 103
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textSubTitle:Landroid/widget/TextView;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11, v12, v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 104
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->linearImages:Landroid/widget/LinearLayout;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11, v12, v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 105
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textTitle:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/feature/profile/ProfileSocialCell;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->social_cell_not_connected:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textSubTitle:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/feature/profile/ProfileSocialCell;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->social_cell_social_networks:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 91
    :cond_1
    iget-object v1, v0, Lcom/iMe/feature/profile/ProfileSocialCell;->binding:Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;

    .line 92
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->buttonAdd:Landroid/widget/TextView;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11, v12, v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 93
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textTitle:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11, v12, v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 94
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textSubTitle:Landroid/widget/TextView;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11, v12, v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 95
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->linearImages:Landroid/widget/LinearLayout;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11, v12, v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 96
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textTitle:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/feature/profile/ProfileSocialCell;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->social_cell_not_connected:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textSubTitle:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/feature/profile/ProfileSocialCell;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->social_cell_social_networks:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 62
    :cond_2
    iget-object v4, v0, Lcom/iMe/feature/profile/ProfileSocialCell;->binding:Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/feature/profile/ProfileUiState;->getHasEditAccess()Z

    move-result v13

    xor-int/2addr v13, v12

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/feature/profile/ProfileUiState;->getNetworks()Ljava/util/List;

    move-result-object v14

    .line 1549
    new-instance v15, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v14, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 1621
    move-object/from16 v16, v14

    check-cast v16, Lcom/iMe/feature/socialMedias/SocialNetwork;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/feature/profile/ProfileUiState;->getHasEditAccess()Z

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x5ff

    const/16 v29, 0x0

    invoke-static/range {v16 .. v29}, Lcom/iMe/feature/socialMedias/SocialNetwork;->copy$default(Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/feature/socialMedias/SocialType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v14

    .line 1621
    invoke-interface {v15, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 766
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 66
    invoke-virtual/range {v16 .. v16}, Lcom/iMe/feature/socialMedias/SocialNetwork;->isActive()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 857
    invoke-interface {v5, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 819
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 847
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 67
    invoke-virtual/range {v16 .. v16}, Lcom/iMe/feature/socialMedias/SocialNetwork;->isActive()Z

    move-result v16

    if-nez v16, :cond_6

    .line 847
    invoke-interface {v10, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1865
    :cond_7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v11

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v15, 0x1

    if-gez v15, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_8
    move-object/from16 v11, v16

    check-cast v11, Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 70
    iget-object v12, v0, Lcom/iMe/feature/profile/ProfileSocialCell;->cachedImageViews:Ljava/util/List;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v11}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getIcon()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    move-object/from16 v19, v12

    invoke-static/range {v19 .. v24}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->withGlide$default(Landroid/widget/ImageView;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    move-object/from16 v25, v8

    move-object/from16 p1, v14

    const/4 v8, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 72
    invoke-static {v12, v14, v8, v15}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    const-wide/16 v20, 0x0

    .line 73
    new-instance v8, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$1$1$1$1;

    invoke-direct {v8, v1, v11}, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    const/16 v23, 0x1

    move-object/from16 v22, v8

    invoke-static/range {v19 .. v24}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 164
    new-instance v8, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$lambda$7$lambda$6$lambda$5$$inlined$safeLongClick$1;

    invoke-direct {v8, v2, v11}, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$lambda$7$lambda$6$lambda$5$$inlined$safeLongClick$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    invoke-virtual {v12, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v14, p1

    move/from16 v15, v17

    move-object/from16 v8, v25

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v25, v8

    .line 78
    iget-object v1, v0, Lcom/iMe/feature/profile/ProfileSocialCell;->cachedImageViews:Ljava/util/List;

    .line 79
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    iget-object v8, v0, Lcom/iMe/feature/profile/ProfileSocialCell;->cachedImageViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v1, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 80
    invoke-static {v2, v11, v12, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_4

    .line 82
    :cond_a
    iget-object v1, v4, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->buttonAdd:Landroid/widget/TextView;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v13, :cond_c

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v14, 0x1

    :goto_6
    invoke-static {v1, v14}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;Z)V

    .line 83
    iget-object v1, v4, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->buttonAdd:Landroid/widget/TextView;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v20, 0x0

    new-instance v2, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$1$3;

    invoke-direct {v2, v3, v10}, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$1$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v19, v1

    move-object/from16 v22, v2

    invoke-static/range {v19 .. v24}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 84
    iget-object v1, v4, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textSubTitle:Landroid/widget/TextView;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static {v1, v3, v7, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 85
    iget-object v1, v4, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->linearImages:Landroid/widget/LinearLayout;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, v7, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 86
    iget-object v1, v4, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textTitle:Landroid/widget/TextView;

    move-object/from16 v2, v25

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;Z)V

    .line 87
    iget-object v1, v4, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textTitle:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/feature/profile/ProfileSocialCell;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->social_cell_not_connected:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, v4, Lorg/telegram/messenger/databinding/ForkProfileSocialCellBinding;->textSubTitle:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/feature/profile/ProfileSocialCell;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->social_cell_social_networks:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method
