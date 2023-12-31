.class public final Lcom/iMe/fork/ui/dialog/AccountLevelAlert;
.super Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.source "AccountLevelAlert.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/AccountLevelAlert$Companion;,
        Lcom/iMe/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountLevelAlert.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountLevelAlert.kt\ncom/iMe/fork/ui/dialog/AccountLevelAlert\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,113:1\n56#2,6:114\n13579#3,2:120\n*S KotlinDebug\n*F\n+ 1 AccountLevelAlert.kt\ncom/iMe/fork/ui/dialog/AccountLevelAlert\n*L\n31#1:114,6\n42#1:120,2\n*E\n"
.end annotation


# instance fields
.field private final accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final visibilityChangedListener:Lcom/iMe/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;


# direct methods
.method public static synthetic $r8$lambda$kU_kdKo_ELhNow_Bz5zIDNV-1BM(Lorg/telegram/ui/Cells/CheckBoxCell;Lcom/iMe/fork/ui/dialog/AccountLevelAlert;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;->lambda$5$lambda$4$lambda$3(Lorg/telegram/ui/Cells/CheckBoxCell;Lcom/iMe/fork/ui/dialog/AccountLevelAlert;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/AccountLevelAlert$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/AccountLevelAlert$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;Lcom/iMe/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "mContext"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "accountLevelInformation"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "visibilityChangedListener"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v2, v0, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;->accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    .line 27
    iput-object v3, v0, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;->visibilityChangedListener:Lcom/iMe/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;

    .line 58
    sget-object v3, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v3}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v3

    .line 61
    new-instance v4, Lcom/iMe/fork/ui/dialog/AccountLevelAlert$special$$inlined$inject$default$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v5}, Lcom/iMe/fork/ui/dialog/AccountLevelAlert$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v3, v4}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 31
    iput-object v3, v0, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;->resourceManager$delegate:Lkotlin/Lazy;

    .line 36
    sget v3, Lorg/telegram/messenger/R$string;->wallet_account_level_alert_title:I

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    .line 37
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->getLevel()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 35
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 40
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->values()[Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v3

    .line 13579
    array-length v6, v3

    move v8, v7

    :goto_0
    const/4 v9, 0x2

    if-ge v8, v6, :cond_1

    aget-object v10, v3, v8

    .line 43
    new-instance v11, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    sget v12, Lorg/telegram/messenger/R$string;->wallet_account_level_description:I

    new-array v9, v9, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v7

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->getFullDescription(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v4

    .line 44
    invoke-static {v12, v9}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    sget v9, Lorg/telegram/messenger/R$drawable;->fork_account_level_badge_20:I

    .line 51
    invoke-static {v1, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 54
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 55
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    .line 58
    invoke-virtual {v10}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->getColorResId()I

    move-result v10

    .line 56
    invoke-static {v1, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 59
    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 55
    invoke-direct {v12, v10, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_0
    move-object v9, v5

    .line 50
    :goto_1
    invoke-virtual {v11, v9, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 v9, 0x41800000    # 16.0f

    .line 63
    invoke-virtual {v11, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v9, 0x41200000    # 10.0f

    .line 64
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x30

    const/16 v15, 0x17

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/16 v18, 0xc

    .line 68
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    .line 66
    invoke-virtual {v2, v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    .line 80
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setMultiline(Z)V

    .line 82
    sget v3, Lorg/telegram/messenger/R$string;->wallet_account_level_alert_public:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v4, v0, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;->accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->isPublic()Z

    move-result v4

    .line 81
    invoke-virtual {v1, v3, v5, v4, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 87
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    const/high16 v3, 0x41c00000    # 24.0f

    .line 89
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v6, 0x41400000    # 12.0f

    .line 90
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 91
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 88
    invoke-virtual {v1, v4, v6, v3, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 94
    new-instance v3, Lcom/iMe/fork/ui/dialog/AccountLevelAlert$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lcom/iMe/fork/ui/dialog/AccountLevelAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;Lcom/iMe/fork/ui/dialog/AccountLevelAlert;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 103
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private static final lambda$5$lambda$4$lambda$3(Lorg/telegram/ui/Cells/CheckBoxCell;Lcom/iMe/fork/ui/dialog/AccountLevelAlert;Landroid/view/View;)V
    .locals 1

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 96
    iget-object p0, p1, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;->accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->isPublic()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->setPublic(Z)V

    .line 97
    iget-object p0, p1, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;->visibilityChangedListener:Lcom/iMe/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;

    iget-object p1, p1, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;->accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->isPublic()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/iMe/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;->onChanged(Z)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 24
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
