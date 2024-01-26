.class public Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "BoostViaGiftsBottomSheet.java"

# interfaces
.implements Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;
    }
.end annotation


# instance fields
.field private actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

.field private actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

.field private adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

.field private additionalPrize:Ljava/lang/String;

.field private final currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final giftCodeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;",
            ">;"
        }
    .end annotation
.end field

.field private final hideKeyboardRunnable:Ljava/lang/Runnable;

.field private isAdditionalPrizeSelected:Z

.field private isShowWinnersSelected:Z

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private onCloseClick:Ljava/lang/Runnable;

.field private final prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

.field private selectedBoostType:I

.field private final selectedChats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private selectedEndDate:J

.field private selectedMonths:I

.field private selectedParticipantsType:I

.field private selectedSliderIndex:I

.field private final selectedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private final sliderValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private top:I


# direct methods
.method public static synthetic $r8$lambda$05K6JN3hhi3d8XlLtKupVXeigE0(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$10(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1gy5EvXh7-qSRCJd_X30lMmqQPM(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$17(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$69rC-fE-77il5wQ5lAowcUxO1TA(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$4(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6zMKaYpQIFsP3HBvbPOq4YP8VQs(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7kA8IWLx9GzgLd_xU9uZmMDJWb4(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$1(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BepVjec4TXAxlfJUZ2WsR86jd10(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$7(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CMYyiY1RG30LltWh4QTQzeORw9o(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FwqD6V2Uo2gcj-BUY8WMgxSyZtY(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$23(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HISHGp-4L4ocO5Fb-LDeF8RSS5s(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$13(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IP2dAZXWjBCmmc7RZqP0zVEQ5GA(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$19(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JDX9siFHBwFkkbPPDO6BNo0WPkE(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$9(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XBnIsYonhmsiYfmNFHVwJuUA9Lw(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$11(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$beqa3vbbzRkc3i2Oq3BoAqHWclw(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$15(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$biD73Dj0E4QfAobZa87SSKQpBeQ(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$20(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEmxsTkm58YwtydY_ja-q46yPfA(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$loadOptions$18(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lo-xx5HJZUnaZzMM1HgkrBx3xOY(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$mB3Rrw0h2OuvyDbGrHL7_0U0v8o(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$nGx0NtIRb6rNE_xlWCJ5kO5ataM(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$2(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qWWNQXPhQbjc1b0QJOfmpEbxMVk(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$16(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rAUEfiemoaqDwUlfrC0v0rxl8yE(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$tETIOtDTXVvG1mXKgmABLkQOWPg(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$tv8VUZ3C8T2uEnruhNcPoLfvjpg(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$12(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uvaj7S583NBVLDLYpQXPVFwyrOY(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$22(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEiy_SXzMSYTnrDd9xnkXyTglTc(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$zn-cEdMuxWwgPyDnDnOyYW_iL5A(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZJLorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 80
    invoke-direct/range {p0 .. p3}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    .line 57
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v3

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    new-array v3, v11, [Ljava/lang/Integer;

    aput-object v17, v3, v13

    aput-object v16, v3, v6

    aput-object v14, v3, v10

    aput-object v12, v3, v15

    aput-object v8, v3, v9

    const/16 v18, 0x5

    aput-object v7, v3, v18

    const/16 v19, 0x6

    aput-object v5, v3, v19

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/16 v18, 0x5

    const/16 v19, 0x6

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Integer;

    aput-object v17, v3, v13

    aput-object v16, v3, v6

    aput-object v14, v3, v10

    aput-object v12, v3, v15

    aput-object v8, v3, v9

    aput-object v7, v3, v18

    aput-object v5, v3, v19

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v11

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_0
    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    .line 64
    sget v3, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    iput v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    .line 65
    sget v3, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_ALL:I

    iput v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    const/16 v3, 0xc

    .line 66
    iput v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    .line 67
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->getThreeDaysAfterToday()J

    move-result-wide v7

    iput-wide v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    .line 68
    iput v10, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    const-string v3, ""

    .line 74
    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    .line 76
    iput-boolean v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    .line 77
    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->hideKeyboardRunnable:Ljava/lang/Runnable;

    .line 81
    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    const v3, 0x3e99999a    # 0.3f

    .line 82
    iput v3, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    .line 83
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 84
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 85
    iput-boolean v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    .line 86
    iput v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    .line 88
    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v5, 0x15e

    .line 89
    invoke-virtual {v3, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 90
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    invoke-virtual {v3, v13}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 92
    invoke-virtual {v3, v13}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 93
    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 94
    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 96
    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/16 v7, 0x44

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v5, v6, v13, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 97
    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 98
    iget-object v3, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 106
    iget-object v3, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda23;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 170
    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move-wide/from16 v5, p4

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 171
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda24;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v7, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda21;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda22;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setItems(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/SlideChooseView$Callback;Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$ChatDeleteListener;Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;)V

    .line 184
    invoke-direct {v0, v13, v13}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 185
    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    .line 186
    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    .line 254
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v3, -0x1

    const/16 v4, 0x44

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->loadOptions()V

    return-void
.end method

.method private getSelectedSliderValue()I
    .locals 2

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getSelectedSliderValueWithBoosts()I
    .locals 2

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private isGiveaway()Z
    .locals 2

    .line 295
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPreparedGiveaway()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$loadOptions$18(Ljava/util/List;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 278
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$1(ZILjava/lang/String;)V
    .locals 2

    int-to-long p1, p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 161
    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 162
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Ljava/lang/Void;)V
    .locals 2

    .line 219
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    .line 220
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    const-wide/16 v0, 0xdc

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$11(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 223
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V
    .locals 13

    .line 214
    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->prepareServerDate(J)I

    move-result v6

    .line 215
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v7, v0

    .line 216
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 217
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    iget-boolean v9, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    iget-object v10, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    new-instance v11, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda19;

    invoke-direct {v11, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    new-instance v12, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v12, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    move-object v2, p1

    invoke-static/range {v2 .. v12}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->launchPreparedGiveaway(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;IZZZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->users:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    const/4 p1, 0x1

    .line 232
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 233
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    return-void
.end method

.method private synthetic lambda$new$14()V
    .locals 5

    .line 242
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$15(Ljava/lang/Void;)V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    .line 242
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    const-wide/16 v0, 0xdc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$16(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$17(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    .line 187
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 191
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 192
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 193
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    .line 194
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 195
    iget v2, v6, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iget v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    if-ne v2, v5, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 196
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-static {v1, v2, v3, v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->checkReduceUsers(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 199
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 200
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v9, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v10, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    move-object/from16 v8, p1

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiftCode(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 212
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 213
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda11;

    move-object/from16 v2, p2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showStartGiveawayDialog(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_4
    move v2, v3

    .line 227
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 228
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 229
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iget v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    if-ne v6, v7, :cond_7

    .line 230
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    new-instance v11, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    move-object v10, v5

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->checkReduceQuantity(Ljava/util/List;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/messenger/Utilities$Callback;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 237
    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    if-ne v1, v2, :cond_6

    move v11, v4

    goto :goto_2

    :cond_6
    move v11, v3

    .line 238
    :goto_2
    iget-wide v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->prepareServerDate(J)I

    move-result v10

    .line 239
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 240
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v13, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    iget-boolean v14, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    iget-object v15, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    move-object v8, v5

    move-object/from16 v12, p1

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v6 .. v17}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiveAway(Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;IZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 5

    .line 107
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 108
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;

    .line 109
    invoke-virtual {p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;->getType()I

    move-result v2

    .line 110
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v0

    .line 111
    invoke-virtual {p3, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 112
    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;->TYPE_WINNERS:I

    if-ne v2, v4, :cond_0

    .line 113
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    .line 114
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    goto :goto_0

    .line 115
    :cond_0
    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;->TYPE_ADDITION_PRIZE:I

    if-ne v2, v4, :cond_2

    .line 116
    invoke-virtual {p3, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setDivider(Z)V

    .line 117
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    .line 118
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 119
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->notifyAdditionalPrizeItem(Z)V

    .line 120
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->notifyAllVisibleTextDividers()V

    .line 121
    iget-boolean p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    if-nez p3, :cond_1

    .line 122
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->hideKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->hideKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 128
    :cond_2
    :goto_0
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;

    if-eqz p3, :cond_5

    .line 129
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;

    if-eqz p3, :cond_4

    .line 130
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->getSelectedType()I

    move-result p3

    .line 131
    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    if-ne p3, v2, :cond_3

    .line 132
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    if-eqz p3, :cond_5

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {p3, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;->onSelectUser(Ljava/util/List;)V

    goto :goto_1

    .line 136
    :cond_3
    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;

    iget-object v3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->markChecked(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 137
    iput p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    .line 138
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 139
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    goto :goto_1

    .line 143
    :cond_4
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->markChecked(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 146
    :cond_5
    :goto_1
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;

    if-eqz p3, :cond_7

    .line 147
    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->getSelectedType()I

    move-result p1

    .line 148
    iget p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    if-ne p2, p1, :cond_6

    .line 149
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    if-eqz p2, :cond_6

    .line 150
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-interface {p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;->onSelectCountries(Ljava/util/List;)V

    .line 153
    :cond_6
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    .line 154
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    goto :goto_2

    .line 155
    :cond_7
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/DurationCell;

    if-eqz p3, :cond_8

    .line 156
    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/DurationCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/DurationCell;->getGifCode()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    .line 157
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 158
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->notifyAllVisibleTextDividers()V

    goto :goto_2

    .line 159
    :cond_8
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/DateEndCell;

    if-eqz p3, :cond_9

    .line 160
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2, p3, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showDatePicker(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    .line 164
    :cond_9
    instance-of p1, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/AddChannelCell;

    if-eqz p1, :cond_a

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    if-eqz p1, :cond_a

    .line 166
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;->onAddChat(Ljava/util/List;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$3(I)V
    .locals 1

    .line 172
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    .line 173
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateCounter(I)V

    const/4 p1, 0x0

    .line 174
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 175
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->updateBoostCounter(I)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 178
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$5(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    const/4 p1, 0x0

    .line 181
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    const/4 p1, 0x1

    .line 182
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 5

    .line 202
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$7(Ljava/lang/Void;)V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    .line 202
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    const-wide/16 v0, 0xdc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 205
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V
    .locals 5

    .line 220
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$updateRows$19(Landroid/content/DialogInterface;)V
    .locals 1

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setPausedStars(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$20(Landroid/content/DialogInterface;)V
    .locals 1

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setPausedStars(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$21()V
    .locals 5

    .line 378
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 379
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 380
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 381
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$updateRows$22(Landroid/content/DialogInterface;)V
    .locals 1

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setPausedStars(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$23(Landroid/content/DialogInterface;)V
    .locals 1

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setPausedStars(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$24()V
    .locals 5

    .line 414
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 415
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 416
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 417
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->show()V

    return-void
.end method

.method private loadOptions()V
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->loadGiftOptions(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private updateActionButton(Z)V
    .locals 3

    .line 283
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->quantity:I

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setStartGiveAwayStyle(IZ)V

    goto :goto_1

    .line 286
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setStartGiveAwayStyle(IZ)V

    goto :goto_1

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setGiftPremiumStyle(IZZ)V

    :goto_1
    return-void
.end method

.method private updateRows(ZZ)V
    .locals 15

    move-object v0, p0

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 326
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 327
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asHeader()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSingleBoost(Ljava/lang/Object;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asBoost(IILjava/lang/Object;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    :cond_1
    iget v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    invoke-static {v4, v5, v7, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asBoost(IILjava/lang/Object;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    const/4 v5, 0x1

    if-ne v2, v4, :cond_8

    .line 336
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    if-nez v2, :cond_2

    .line 337
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingQuantityPrizes:I

    const-string v6, "BoostingQuantityPrizes"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitleWithCounter(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    iget v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSlider(Ljava/util/List;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingChooseHowMany:I

    const-string v6, "BoostingChooseHowMany"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingChannelsIncludedGiveaway:I

    const-string v6, "BoostingChannelsIncludedGiveaway"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->quantity:I

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-static {v4, v3, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v6

    invoke-static {v4, v3, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    .line 348
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_5

    .line 349
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    move-object v7, v4

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v8

    invoke-static {v7, v5, v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_5
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v6, :cond_4

    .line 352
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v7

    invoke-static {v4, v5, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 355
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v6, v2

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayAddPeersMax()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gez v2, :cond_7

    .line 356
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asAddChannel()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingChooseChannelsNeedToJoin:I

    const-string v6, "BoostingChooseChannelsNeedToJoin"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingEligibleUsers:I

    const-string v6, "BoostingEligibleUsers"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_ALL:I

    iget v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-static {v4, v6, v5, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asParticipants(IIZLjava/util/List;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    iget v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-static {v4, v6, v3, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asParticipants(IIZLjava/util/List;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingChooseLimitGiveaway:I

    const-string v6, "BoostingChooseLimitGiveaway"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    if-nez v2, :cond_c

    .line 366
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingDurationOfPremium:I

    const-string v6, "BoostingDurationOfPremium"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isGiveaway()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v4

    goto :goto_3

    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    move v4, v3

    .line 368
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_c

    .line 369
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 370
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isGiveaway()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v9

    goto :goto_5

    :cond_a
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    :goto_5
    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->amount:J

    iget v12, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    iget-object v13, v7, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v5

    if-eq v4, v14, :cond_b

    move v14, v5

    goto :goto_6

    :cond_b
    move v14, v3

    :goto_6
    invoke-static/range {v7 .. v14}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDuration(Ljava/lang/Object;IIJILjava/lang/String;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 374
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    const-string v4, "BoostingStoriesFeaturesAndTerms"

    if-nez v2, :cond_d

    .line 375
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->BoostingStoriesFeaturesAndTerms:I

    .line 376
    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 375
    invoke-static {v6, v7, v3, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_d
    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v6, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    if-ne v2, v6, :cond_12

    .line 387
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->BoostingGiveawayAdditionalPrizes:I

    const-string v7, "BoostingGiveawayAdditionalPrizes"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    sget v8, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;->TYPE_ADDITION_PRIZE:I

    invoke-static {v6, v7, v7, v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSwitcher(Ljava/lang/CharSequence;ZZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    if-eqz v2, :cond_10

    .line 390
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->quantity:I

    goto :goto_7

    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v2

    .line 391
    :goto_7
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asEnterPrize(I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "BoldMonths"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 393
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 394
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v3

    const-string v6, "BoostingGiveawayAdditionPrizeCountHint"

    invoke-static {v6, v2, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 396
    :cond_f
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    aput-object v9, v8, v3

    aput-object v6, v8, v5

    const-string v6, "BoostingGiveawayAdditionPrizeCountNameHint"

    invoke-static {v6, v2, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 399
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->BoostingGiveawayAdditionPrizeHint:I

    const-string v7, "BoostingGiveawayAdditionPrizeHint"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->BoostingGiveawayShowWinners:I

    const-string v7, "BoostingGiveawayShowWinners"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    sget v8, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;->TYPE_WINNERS:I

    invoke-static {v6, v7, v3, v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSwitcher(Ljava/lang/CharSequence;ZZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->BoostingGiveawayShowWinnersHint:I

    const-string v7, "BoostingGiveawayShowWinnersHint"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->BoostingDateWhenGiveawayEnds:I

    const-string v7, "BoostingDateWhenGiveawayEnds"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-wide v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDateEnd(J)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    const-string v6, "BoostingChooseRandom"

    if-nez v2, :cond_11

    .line 409
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 411
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    iget v8, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->quantity:I

    new-array v9, v3, [Ljava/lang/Object;

    .line 412
    invoke-static {v6, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/telegram/messenger/R$string;->BoostingStoriesFeaturesAndTerms:I

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v7, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 411
    invoke-static {v4, v6, v3, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_12
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    if-nez v2, :cond_13

    return-void

    :cond_13
    if-nez p2, :cond_14

    return-void

    :cond_14
    if-eqz p1, :cond_15

    .line 430
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_a

    .line 432
    :cond_15
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->notifyDataSetChanged()V

    :goto_a
    return-void
.end method


# virtual methods
.method protected createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 2

    .line 445
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->onCloseClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 438
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    if-ne v0, v1, :cond_0

    .line 439
    sget v0, Lorg/telegram/messenger/R$string;->GiftPremium:I

    const-string v1, "GiftPremium"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 440
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->BoostingStartGiveaway:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BoostingStartGiveaway"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTop()I
    .locals 4

    const/16 v0, 0x10

    .line 308
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->top:I

    iget-object v3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected needPaddingShadow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChatsSelected(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 452
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method public onCountrySelected(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_help_country;",
            ">;)V"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 474
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method protected onPreDraw(Landroid/graphics/Canvas;IF)V
    .locals 0

    .line 304
    iput p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->top:I

    return-void
.end method

.method public synthetic onShowToast(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener$-CC;->$default$onShowToast(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;Ljava/lang/String;)V

    return-void
.end method

.method public onUsersSelected(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 459
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 460
    sget p1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    goto :goto_0

    .line 462
    :cond_0
    sget p1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    :goto_0
    const/4 p1, 0x0

    .line 464
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    const/4 v0, 0x1

    .line 465
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 466
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    .line 467
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    return-void
.end method

.method public setActionListener(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    return-void
.end method

.method public setOnCloseClick(Ljava/lang/Runnable;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->onCloseClick:Ljava/lang/Runnable;

    return-void
.end method
