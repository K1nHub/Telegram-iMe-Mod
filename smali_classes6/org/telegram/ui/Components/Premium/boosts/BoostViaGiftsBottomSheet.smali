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
.method public static synthetic $r8$lambda$8We5sKKzVQIiOqukYkaCx-NJOi8(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$6(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IEkDv0Fukv4kM3tfpQgIryjmJQg(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MLHY3W4D1OCJ5epDwECJlbByjsE(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$4(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MnfTARTAsxF1CzVMnHt_Vsg5dmo(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$13(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NLapZq3s-ViSPFgJrpvttPcXebk(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$loadOptions$14(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SZI40U99jCncuMY71Bx37FjNbJA(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$9(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V16pateu1LRExTxH_nLBNwDMPjQ(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$11(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VQHLaF3ehA_q8XEQV9rqPtaexgE(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$7(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WlJM342B9-QAcOgycCme9b8p7_w(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$15(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZfM-gNs9vgqlVowbJlHaPpr-uGs(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMhKLJE6kK9NUe6GZNeD32XbHXI(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aSwMJpxgrCidJlAqfKFy5SWByRE(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$0(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g7EvZpig6PfS69C644r6zIMKqTY(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$kbnTYYCKWPOVeKqww77qWkj3XzE(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$12(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qPQMXiLQ8KrYpMdpI7W9E6twq_4(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$ufksVReW1eEe0HS4Aun4SQUzZn8(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$16(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y6RXswN2sV9n0tAUNNj6o1XNMFo(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$3(Lorg/telegram/tgnet/TLRPC$Chat;)V

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

    .line 75
    invoke-direct/range {p0 .. p3}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    .line 56
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v4

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

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v13, 0x0

    if-eqz v4, :cond_0

    new-array v4, v11, [Ljava/lang/Integer;

    aput-object v16, v4, v13

    aput-object v17, v4, v15

    aput-object v14, v4, v10

    aput-object v12, v4, v6

    aput-object v8, v4, v9

    const/16 v18, 0x5

    aput-object v7, v4, v18

    const/16 v19, 0x6

    aput-object v5, v4, v19

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/16 v18, 0x5

    const/16 v19, 0x6

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v16, v4, v13

    aput-object v17, v4, v15

    aput-object v14, v4, v10

    aput-object v12, v4, v6

    aput-object v8, v4, v9

    aput-object v7, v4, v18

    aput-object v5, v4, v19

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_0
    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    .line 63
    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    iput v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    .line 64
    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_ALL:I

    iput v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    .line 65
    iput v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    .line 66
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->getThreeDaysAfterToday()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    .line 67
    iput v13, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    .line 76
    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    const v4, 0x3e99999a    # 0.3f

    .line 77
    iput v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    .line 78
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 79
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 80
    iput-boolean v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    .line 81
    iput v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    .line 82
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    .line 83
    new-instance v4, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v5, 0x15e

    .line 84
    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 85
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 87
    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 88
    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 89
    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 91
    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/16 v7, 0x44

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v5, v6, v13, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 92
    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 93
    iget-object v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 133
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v5, p4

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 134
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v7, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v4, v3, v5, v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setItems(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/SlideChooseView$Callback;Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$ChatDeleteListener;)V

    .line 144
    invoke-direct {v0, v13, v13}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 145
    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    .line 146
    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    .line 212
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

    .line 213
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->loadOptions()V

    return-void
.end method

.method private getSelectedSliderValue()I
    .locals 2

    .line 270
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

    .line 274
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

    .line 253
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

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$loadOptions$14(Ljava/util/List;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 236
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$0(ZILjava/lang/String;)V
    .locals 2

    int-to-long p1, p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 124
    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 125
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 2

    .line 94
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;

    if-eqz p3, :cond_2

    .line 95
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;

    if-eqz p3, :cond_1

    .line 96
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->getSelectedType()I

    move-result p3

    .line 97
    sget v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    if-ne p3, v0, :cond_0

    .line 98
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    if-eqz p3, :cond_2

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {p3, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;->onSelectUser(Ljava/util/List;)V

    goto :goto_0

    .line 102
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->markChecked(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 103
    iput p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    const/4 p3, 0x1

    .line 104
    invoke-direct {p0, p3, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 105
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    goto :goto_0

    .line 109
    :cond_1
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->markChecked(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 112
    :cond_2
    :goto_0
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;

    if-eqz p3, :cond_4

    .line 113
    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->getSelectedType()I

    move-result p1

    .line 114
    iget p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    if-ne p2, p1, :cond_3

    .line 115
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    if-eqz p2, :cond_3

    .line 116
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-interface {p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;->onSelectCountries(Ljava/util/List;)V

    .line 119
    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    goto :goto_1

    .line 120
    :cond_4
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/DurationCell;

    if-eqz p3, :cond_5

    .line 121
    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/DurationCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/DurationCell;->getGifCode()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    goto :goto_1

    .line 122
    :cond_5
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/DateEndCell;

    if-eqz p3, :cond_6

    .line 123
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2, p3, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showDatePicker(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    .line 127
    :cond_6
    instance-of p1, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/AddChannelCell;

    if-eqz p1, :cond_7

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    if-eqz p1, :cond_7

    .line 129
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;->onAddChat(Ljava/util/List;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$10()V
    .locals 5

    .line 200
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

.method private synthetic lambda$new$11(Ljava/lang/Void;)V
    .locals 2

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    .line 200
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    const-wide/16 v0, 0xdc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 203
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Landroid/view/View;)V
    .locals 15

    move-object v0, p0

    .line 147
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 151
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 152
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 153
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    .line 154
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 155
    iget v2, v6, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iget v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    if-ne v2, v5, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 156
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-static {v1, v2, v3, v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->checkReduceUsers(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 159
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 160
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v9, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v10, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    move-object/from16 v8, p1

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiftCode(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 172
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    iget-wide v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->prepareServerDate(J)I

    move-result v9

    .line 174
    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    if-ne v1, v2, :cond_4

    move v10, v4

    goto :goto_1

    :cond_4
    move v10, v3

    .line 175
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 176
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v11, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda13;

    move-object/from16 v1, p2

    invoke-direct {v11, p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    new-instance v12, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v12, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v12}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->launchPreparedGiveaway(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;IZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_4

    :cond_5
    move v2, v3

    .line 185
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 186
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 187
    iget v5, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iget v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    if-ne v5, v6, :cond_8

    .line 188
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-static {v1, v2, v5, v8, v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->checkReduceQuantity(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/messenger/Utilities$Callback;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 195
    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    if-ne v1, v2, :cond_7

    move v11, v4

    goto :goto_3

    :cond_7
    move v11, v3

    .line 196
    :goto_3
    iget-wide v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->prepareServerDate(J)I

    move-result v10

    .line 197
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 198
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v13, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v13, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v14, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v14, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    move-object/from16 v12, p1

    invoke-static/range {v6 .. v14}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiveAway(Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;IZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method private synthetic lambda$new$2(I)V
    .locals 1

    .line 135
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    .line 136
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result p1

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateCounter(I)V

    const/4 p1, 0x0

    .line 138
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->updateBoostCounter(I)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 142
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/Void;)V
    .locals 4

    .line 161
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    .line 162
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V
    .locals 5

    .line 179
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

.method private synthetic lambda$new$7(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Ljava/lang/Void;)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    .line 179
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    const-wide/16 v0, 0xdc

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->users:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    const/4 p1, 0x1

    .line 190
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 191
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$15(Landroid/content/DialogInterface;)V
    .locals 1

    .line 338
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setPausedStars(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$16(Landroid/content/DialogInterface;)V
    .locals 1

    .line 339
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setPausedStars(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$17()V
    .locals 5

    .line 337
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 338
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 339
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 340
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->show()V

    return-void
.end method

.method private loadOptions()V
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->loadGiftOptions(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private updateActionButton(Z)V
    .locals 3

    .line 241
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->quantity:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setStartGiveAwayStyle(IZ)V

    goto :goto_1

    .line 244
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    if-ne v0, v1, :cond_1

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setStartGiveAwayStyle(IZ)V

    goto :goto_1

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

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
    .locals 16

    move-object/from16 v0, p0

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 284
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asHeader()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSingleBoost(Ljava/lang/Object;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
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

    .line 290
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

    .line 292
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    const-string v5, "BoostingChooseRandom"

    const/4 v6, 0x1

    if-ne v2, v4, :cond_7

    .line 294
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingQuantityPrizes:I

    const-string v7, "BoostingQuantityPrizes"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v7

    invoke-static {v4, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitleWithCounter(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    iget v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    invoke-static {v4, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSlider(Ljava/util/List;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingChooseHowMany:I

    const-string v7, "BoostingChooseHowMany"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingChannelsIncludedGiveaway:I

    const-string v7, "BoostingChannelsIncludedGiveaway"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v7

    invoke-static {v4, v3, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    .line 302
    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_4

    .line 303
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    move-object v8, v4

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v9

    invoke-static {v8, v6, v9}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_4
    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v7, :cond_3

    .line 306
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v8

    invoke-static {v4, v6, v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v7, v2

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayAddPeersMax()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_6

    .line 310
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asAddChannel()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingChooseChannelsNeedToJoin:I

    const-string v7, "BoostingChooseChannelsNeedToJoin"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingEligibleUsers:I

    const-string v7, "BoostingEligibleUsers"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_ALL:I

    iget v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-static {v4, v7, v6, v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asParticipants(IIZLjava/util/List;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    iget v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-static {v4, v7, v3, v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asParticipants(IIZLjava/util/List;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingChooseLimitGiveaway:I

    const-string v7, "BoostingChooseLimitGiveaway"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingDateWhenGiveawayEnds:I

    const-string v7, "BoostingDateWhenGiveawayEnds"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-wide v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDateEnd(J)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    if-nez v2, :cond_7

    .line 320
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    if-nez v2, :cond_b

    .line 325
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingDurationOfPremium:I

    const-string v7, "BoostingDurationOfPremium"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isGiveaway()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v4

    goto :goto_2

    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    move v4, v3

    .line 327
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_b

    .line 328
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 329
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isGiveaway()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v10

    goto :goto_4

    :cond_9
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    :goto_4
    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->amount:J

    iget v13, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    iget-object v14, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v6

    if-eq v4, v15, :cond_a

    move v15, v6

    goto :goto_5

    :cond_a
    move v15, v3

    :goto_5
    invoke-static/range {v8 .. v15}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDuration(Ljava/lang/Object;IIJILjava/lang/String;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 332
    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v2

    const-string v4, "BoostingStoriesFeaturesAndTerms"

    if-nez v2, :cond_c

    sget v2, Lorg/telegram/messenger/R$string;->BoostingStoriesFeaturesAndTerms:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 333
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->quantity:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lorg/telegram/messenger/R$string;->BoostingStoriesFeaturesAndTerms:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v7, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5, v3, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    if-nez v2, :cond_d

    return-void

    :cond_d
    if-nez p2, :cond_e

    return-void

    :cond_e
    if-eqz p1, :cond_f

    .line 350
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_7

    .line 352
    :cond_f
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->notifyDataSetChanged()V

    :goto_7
    return-void
.end method


# virtual methods
.method protected createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 2

    .line 365
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->onCloseClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 358
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    if-ne v0, v1, :cond_0

    .line 359
    sget v0, Lorg/telegram/messenger/R$string;->GiftPremium:I

    const-string v1, "GiftPremium"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
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

    .line 266
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

.method public onChatsSelected(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 372
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

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

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 394
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method protected onPreDraw(Landroid/graphics/Canvas;IF)V
    .locals 0

    .line 262
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

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 379
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 380
    sget p1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    goto :goto_0

    .line 382
    :cond_0
    sget p1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    :goto_0
    const/4 p1, 0x0

    .line 384
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    const/4 p1, 0x1

    .line 385
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    .line 386
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    .line 387
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    return-void
.end method

.method public setActionListener(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    return-void
.end method

.method public setOnCloseClick(Ljava/lang/Runnable;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->onCloseClick:Ljava/lang/Runnable;

    return-void
.end method
