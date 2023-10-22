.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;
.super Landroid/widget/FrameLayout;
.source "StoryPrivacyBottomSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

.field private final atTop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private final button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

.field private final changelog:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private containsHeader:Z

.field private final contentView:Landroid/widget/FrameLayout;

.field private headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

.field private isActionBar:Z

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;",
            ">;"
        }
    .end annotation
.end field

.field private keyboardHeight:I

.field private keyboardMoving:Z

.field private lastSelectedType:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final oldItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;",
            ">;"
        }
    .end annotation
.end field

.field public pageType:I

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private query:Ljava/lang/String;

.field private scrolling:Z

.field private searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

.field private searchFieldAnimator:Landroid/animation/ValueAnimator;

.field private searchTranslationAnimating:Z

.field private searchTranslationAnimatingTo:F

.field private sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

.field private final selectedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedUsersByGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

.field private final underKeyboardView:Landroid/view/View;

.field private waitingForChatId:J

.field private wasKeyboardVisible:Z


# direct methods
.method public static synthetic $r8$lambda$313gyJxRIKMZOBdl1u1bCVJL0k8(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessagesStorage;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$6(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessagesStorage;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$4nge_zGJeY92r5HfQlikBiKS-lQ(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onMeasure$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$4pzvuFt5tcui1DbtpxB4UrCo4cs(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$updateSearchFieldTop$15(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$98dYP0ovHG_H2trv9DJK_1N7Ijc(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$5(JLorg/telegram/tgnet/TLRPC$ChatFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BBZrpO2CthbmLAlJEUzjzxbbbY8(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$2(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1r-Cycg1PVKTOW8-Pf71ydAbck(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->onButton1Click(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KAzwOIqyaH2uaJcVMaV2v3bggUc(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$NUYmBvuzAogb0JDlgsJTmIL2Oko(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$4(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QC-hJUuuDKH2hSBQq3Ey_7dd7fo(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$updateItems$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$RH9h1YjjTe1KORa3EcKjZOp6bi8(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onButton1Click$10(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SnL6NawytGGL-MNZaJAniYmw-ig(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$7(Landroid/content/Context;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$iJB-LRtkEr2e11WHDjO-NK3lo0o(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onButton1Click$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$j4FXeNvOlWFf3hQLeu6JIs0dAcE(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->onButton2Click(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j9XKXH0BBSmC1rMOOEPTg0omDZ4(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onButton2Click$13(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kqVjyKTB8Kr2Df_n4F7OtI41zwI(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mRs_69d4zEhs9-wnBwwArLl1O4g(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$new$3(JLorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pIaeYf70Dv8mvxOw64zlCGI_2fk(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onButton1Click$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$vckYkvnendG3R-5YPob6LJCjZws(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLjava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$selectChat$8(JLjava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wdYHyh64Z8aumdTL9VUVsHnR4Yw(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$updateSectionCell$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmh8v5yp7EaSnfwFMhADXd51fvU(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lambda$onButton1Click$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 195
    iput-object v7, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 196
    invoke-direct {v6, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    .line 969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->oldItems:Ljava/util/ArrayList;

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    const/4 v9, -0x1

    .line 1537
    iput v9, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lastSelectedType:I

    .line 198
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    .line 200
    new-instance v10, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$1;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda6;

    invoke-direct {v4, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    iput-object v10, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    .line 223
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v7, v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 224
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda17;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->setOnSearchTextChange(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 226
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    .line 227
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda9;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setOnCloseClickListener(Ljava/lang/Runnable;)V

    .line 235
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    .line 236
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/16 v1, 0x38

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v0, v12, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 v13, 0x1

    .line 237
    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    const/16 v0, 0x77

    .line 238
    invoke-static {v9, v9, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 241
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 242
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslateSelector(Z)V

    .line 243
    iget-object v14, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v15, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    iget-object v4, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda16;

    invoke-direct {v5, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Ljava/lang/Runnable;)V

    iput-object v15, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 244
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->access$802(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView;

    .line 245
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 246
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$2;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 274
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda22;

    invoke-direct {v1, v6, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 492
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v9, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$3;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    const-wide/16 v1, 0x15e

    .line 525
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 526
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 527
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 528
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 529
    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 531
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const/4 v1, -0x2

    const/16 v2, 0x37

    invoke-static {v9, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    const/16 v3, 0x20

    invoke-static {v9, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-static {v9, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    invoke-direct {v0, v6, v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    .line 536
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 537
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xa

    .line 538
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v10

    add-int/2addr v5, v10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 539
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 541
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 542
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda2;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x30

    const/16 v4, 0x57

    .line 543
    invoke-static {v9, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v2, v8, v12, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 546
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda3;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v12, -0x1

    const/16 v13, 0x30

    const/16 v14, 0x57

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 547
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->underKeyboardView:Landroid/view/View;

    .line 550
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v11, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v10, -0x1

    const/16 v11, 0x1f4

    const/16 v12, 0x57

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, -0x1f4

    .line 551
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    invoke-static {v9, v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    return-object p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$13100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->scrolling:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Landroid/widget/FrameLayout;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Cells/GraySectionCell;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    return-object p0
.end method

.method static synthetic access$8602(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimating:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method private getSearchFieldTop()F
    .locals 5

    const/16 v0, 0x96

    .line 1333
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->resultContainerHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 1334
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1335
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1336
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 1337
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateTops()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 228
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onBackPressed()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 283
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 284
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 286
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    return-void
.end method

.method private synthetic lambda$new$3(JLorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;)V
    .locals 8

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x15e

    .line 373
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_0
    if-eqz p3, :cond_5

    .line 376
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 379
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    const/4 v1, 0x0

    .line 380
    :goto_0
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 381
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 382
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 384
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v4, :cond_2

    .line 385
    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    goto :goto_1

    .line 391
    :cond_2
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    .line 393
    :cond_3
    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 394
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectChat(JLorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$4(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 371
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;J)V

    const/16 p2, 0xc8

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/MessagesController;->loadChannelParticipants(Ljava/lang/Long;Lorg/telegram/messenger/Utilities$Callback;I)V

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$5(JLorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 403
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectChat(JLorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessagesStorage;J)V
    .locals 7

    .line 366
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p2

    move-wide v1, p3

    move v3, p1

    .line 367
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfoInQueue(JZZZI)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 368
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 369
    :cond_1
    :goto_0
    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p1, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;ZJ)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$7(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 9

    if-ltz p3, :cond_25

    .line 275
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lt p3, p4, :cond_0

    goto/16 :goto_a

    .line 278
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    .line 279
    iget p4, p3, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 p5, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p4, v0, :cond_1b

    .line 280
    iget-boolean p2, p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->sendAs:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 281
    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$11000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v5

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v6, p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    new-instance v7, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda19;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 287
    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$11100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    .line 291
    :cond_1
    iget p1, p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    if-ne p1, v2, :cond_4

    .line 292
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 293
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 294
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    .line 296
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 297
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    return-void

    :cond_4
    if-ne p1, v0, :cond_7

    .line 300
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 301
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    .line 304
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 305
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    return-void

    :cond_7
    const/4 p2, 0x2

    if-ne p1, p2, :cond_9

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    if-ne p1, p2, :cond_8

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    .line 312
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 313
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    return-void

    :cond_9
    if-ne p1, v1, :cond_b

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    if-ne p1, v1, :cond_a

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    .line 320
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 321
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    return-void

    :cond_b
    if-lez p1, :cond_c

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget p2, p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 328
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->spansContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removeAllSpans(Z)V

    goto/16 :goto_5

    .line 329
    :cond_c
    iget-object p1, p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-string p2, ""

    const/4 p4, 0x0

    if-eqz p1, :cond_12

    .line 330
    iget-wide v7, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 331
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result p1

    const/16 p3, 0xc8

    if-le p1, p3, :cond_d

    .line 335
    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :catchall_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$11200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->GroupTooLarge:I

    const-string p3, "GroupTooLarge"

    .line 338
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->GroupTooLargeMessage:I

    const-string p3, "GroupTooLargeMessage"

    .line 339
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    .line 340
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_5

    .line 342
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_e

    .line 345
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 346
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p4, p2, p3, p5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 349
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSpans(Z)V

    goto/16 :goto_5

    .line 352
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$11300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$11400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 354
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz p3, :cond_10

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-eqz p3, :cond_10

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_10

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    sub-int/2addr v1, v2

    if-lt p3, v1, :cond_10

    .line 355
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-direct {p0, v7, v8, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectChat(JLorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    goto :goto_1

    .line 357
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_11

    .line 358
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 359
    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 361
    :cond_11
    iput-wide v7, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->waitingForChatId:J

    .line 362
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$11500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p3, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v0, 0x32

    .line 363
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$11600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    .line 365
    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda13;

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessagesStorage;J)V

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 407
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    .line 410
    invoke-virtual {p0, p5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    goto/16 :goto_5

    .line 413
    :cond_12
    iget-object p1, p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_1a

    .line 414
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-nez p1, :cond_13

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, p5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 417
    :cond_13
    iget-object p1, p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 418
    new-instance p1, Ljava/util/HashSet;

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 419
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 420
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 421
    :cond_14
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_15

    .line 422
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 423
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    .line 424
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 425
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 428
    :cond_15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 429
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v1, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    .line 431
    :cond_16
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 432
    :cond_17
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 433
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 434
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 435
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 436
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 439
    :cond_18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_19

    .line 441
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    .line 443
    invoke-virtual {p0, p5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 445
    :cond_19
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v1, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 447
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 448
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 449
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSpans(Z)V

    .line 451
    :cond_1a
    :goto_5
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 452
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->scrollToBottom()V

    goto/16 :goto_a

    :cond_1b
    const/4 p1, 0x7

    if-ne p4, p1, :cond_25

    .line 455
    instance-of p1, p2, Lorg/telegram/ui/Cells/TextCell;

    if-nez p1, :cond_1c

    return-void

    .line 458
    :cond_1c
    check-cast p2, Lorg/telegram/ui/Cells/TextCell;

    .line 459
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 460
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result p1

    iput-boolean p1, p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    .line 461
    iget p1, p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    const/16 p3, 0x1388

    if-nez p1, :cond_21

    .line 462
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8002(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)Z

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    if-ne p1, v1, :cond_1d

    move p5, v2

    .line 464
    :cond_1d
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 465
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$11800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->ic_save_to_gallery:I

    if-eqz p5, :cond_1e

    .line 466
    sget p4, Lorg/telegram/messenger/R$string;->StoryEnabledScreenshotsShare:I

    goto :goto_6

    :cond_1e
    sget p4, Lorg/telegram/messenger/R$string;->StoryEnabledScreenshots:I

    :goto_6
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 467
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 468
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_a

    .line 470
    :cond_1f
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$11900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->passcode_lock_close:I

    if-eqz p5, :cond_20

    .line 471
    sget p4, Lorg/telegram/messenger/R$string;->StoryDisabledScreenshotsShare:I

    goto :goto_7

    :cond_20
    sget p4, Lorg/telegram/messenger/R$string;->StoryDisabledScreenshots:I

    :goto_7
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 472
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 473
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_a

    .line 476
    :cond_21
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8102(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)Z

    .line 477
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object p2, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    .line 478
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 479
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p4

    invoke-static {p1, p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/R$raw;->msg_story_keep:I

    if-eqz p2, :cond_22

    .line 480
    sget p2, Lorg/telegram/messenger/R$string;->StoryChannelEnableKeep:I

    goto :goto_8

    :cond_22
    sget p2, Lorg/telegram/messenger/R$string;->StoryEnableKeep:I

    :goto_8
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 481
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 482
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_a

    .line 484
    :cond_23
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p4

    invoke-static {p1, p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/R$raw;->fire_on:I

    if-eqz p2, :cond_24

    .line 485
    sget p2, Lorg/telegram/messenger/R$string;->StoryChannelDisableKeep:I

    goto :goto_9

    :cond_24
    sget p2, Lorg/telegram/messenger/R$string;->StoryDisableKeep:I

    :goto_9
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 486
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 487
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_25
    :goto_a
    return-void
.end method

.method private synthetic lambda$onButton1Click$10(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 771
    new-instance p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onButton1Click$11()V
    .locals 1

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    .line 843
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$10701(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    return-void
.end method

.method private synthetic lambda$onButton1Click$12()V
    .locals 2

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void
.end method

.method private synthetic lambda$onButton1Click$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;)V
    .locals 6

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    if-eqz p1, :cond_3

    .line 774
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$10800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object p1

    move v0, v1

    .line 775
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 776
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_0

    goto :goto_2

    .line 780
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 781
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    if-eq v3, v4, :cond_2

    .line 782
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    or-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_1
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v3, v3, -0x5

    :goto_1
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 783
    invoke-virtual {p2, v2, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 789
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$10900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 791
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 792
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    :goto_3
    return-void
.end method

.method private synthetic lambda$onButton2Click$13(Ljava/util/ArrayList;)V
    .locals 4

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$10500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onMeasure$17()V
    .locals 1

    const/4 v0, 0x0

    .line 1687
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardMoving:Z

    return-void
.end method

.method private synthetic lambda$selectChat$8(JLjava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 681
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p5, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 683
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p5, p2, p3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 685
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSpans(Z)V

    .line 686
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    .line 687
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 688
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    .line 689
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->scrollToBottom()V

    return-void
.end method

.method private synthetic lambda$updateItems$14()V
    .locals 2

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void
.end method

.method private synthetic lambda$updateSearchFieldTop$15(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$updateSectionCell$16(Landroid/view/View;)V
    .locals 5

    .line 1513
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1514
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v1, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1516
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1517
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1518
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1, v2, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 1521
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1522
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1523
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1524
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->spansContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removeAllSpans(Z)V

    .line 1525
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 1526
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    return-void
.end method

.method private match(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Z
    .locals 5

    .line 1266
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1269
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    const-string v3, " "

    if-eqz v0, :cond_6

    .line 1270
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 1271
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1272
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1275
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1276
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 1279
    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    if-eqz p1, :cond_c

    move v0, v2

    .line 1281
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 1282
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1283
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v4, :cond_3

    goto :goto_1

    .line 1286
    :cond_3
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1287
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v1

    .line 1292
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_c

    .line 1293
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1294
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1295
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    .line 1298
    :cond_7
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1299
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    .line 1302
    :cond_8
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    if-eqz p1, :cond_c

    move v0, v2

    .line 1304
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 1305
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1306
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v4, :cond_9

    goto :goto_4

    .line 1309
    :cond_9
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1310
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    return v1

    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    :goto_5
    return v1

    :cond_c
    return v2
.end method

.method private onButton1Click(Landroid/view/View;)V
    .locals 4

    .line 758
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 761
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    .line 762
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 763
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 764
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 766
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 768
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_editCloseFriends;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_editCloseFriends;-><init>()V

    .line 769
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_editCloseFriends;->id:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 770
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 771
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    :cond_3
    const/4 p1, 0x2

    const/4 v2, 0x3

    if-nez v0, :cond_8

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 799
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p1

    .line 800
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 801
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 802
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 803
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 804
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 805
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-ne v0, p1, :cond_5

    .line 806
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    goto :goto_0

    .line 807
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 808
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p1

    .line 809
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 810
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 811
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 812
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 813
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 815
    :cond_6
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 817
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 819
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    if-ne v0, p1, :cond_a

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 823
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 826
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 827
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    goto/16 :goto_1

    :cond_a
    if-ne v0, v2, :cond_e

    .line 830
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 831
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p1

    .line 832
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 835
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 836
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    .line 837
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 838
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 839
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 840
    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 846
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p1

    .line 847
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 850
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 851
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 852
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    goto :goto_1

    :cond_e
    const/4 p1, 0x6

    if-ne v0, p1, :cond_f

    .line 855
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {p1, v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p1

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/StoriesController;->updateBlockedUsers(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 863
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    .line 865
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    :goto_1
    return-void
.end method

.method private onButton2Click(Landroid/view/View;)V
    .locals 4

    .line 870
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    .line 871
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 872
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    goto :goto_0

    .line 874
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    .line 875
    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6302(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 879
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :goto_0
    return-void
.end method

.method private selectChat(JLorg/telegram/tgnet/TLRPC$ChatParticipants;)V
    .locals 12

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 655
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 656
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-eqz p3, :cond_4

    .line 657
    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 658
    :goto_2
    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 659
    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 660
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 661
    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v8, :cond_3

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v10, 0xbdb28

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-eqz v8, :cond_3

    if-eqz v2, :cond_2

    .line 662
    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v7, :cond_2

    .line 663
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 665
    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 671
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 672
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 v2, 0x0

    const-string v3, "Cancel"

    if-eqz p3, :cond_5

    .line 673
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string p2, "All group members are not in your contact list."

    .line 674
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 675
    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 676
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_5

    .line 678
    :cond_5
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {p3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " members are not in your contact list"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " contacts"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;JLjava/util/ArrayList;)V

    invoke-virtual {p3, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 691
    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 692
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_5

    .line 695
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, p3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    .line 699
    :cond_7
    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSpans(Z)V

    .line 700
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    .line 701
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 702
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->scrollToBottom()V

    :goto_5
    return-void
.end method

.method private updateHeaderTop()V
    .locals 7

    .line 1381
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    if-nez v0, :cond_0

    .line 1382
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    move v2, v1

    .line 1389
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 1390
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1391
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_1

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    .line 1397
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->isActionBar:Z

    if-eq v2, v1, :cond_5

    .line 1398
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->isActionBar:Z

    .line 1399
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2, v1, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1401
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateSearchFieldTop()V
    .locals 5

    .line 1349
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->getSearchFieldTop()F

    move-result v0

    .line 1350
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->scrolling:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardMoving:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1357
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimating:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimatingTo:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    :cond_1
    const/4 v1, 0x1

    .line 1358
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimating:Z

    .line 1359
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    .line 1360
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1361
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1363
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getTranslationY()F

    move-result v4

    aput v4, v2, v3

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimatingTo:F

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    .line 1364
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1351
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchTranslationAnimating:Z

    .line 1352
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 1353
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1354
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchFieldAnimator:Landroid/animation/ValueAnimator;

    .line 1356
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setTranslationY(F)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateSectionCell(Z)V
    .locals 3

    .line 1508
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    if-nez v0, :cond_0

    return-void

    .line 1511
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1512
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v0, Lorg/telegram/messenger/R$string;->UsersDeselectAll:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1530
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/String;)V

    goto :goto_0

    .line 1532
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private updateSpans(Z)V
    .locals 12

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    .line 708
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 709
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3402(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 711
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3502(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 714
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 715
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 716
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 719
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 720
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 721
    invoke-virtual {v6}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 722
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 726
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move v7, v4

    .line 728
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 729
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 730
    invoke-virtual {v8}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-nez v8, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_4
    if-nez v7, :cond_4

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_7

    .line 739
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    goto :goto_5

    .line 741
    :cond_7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    :goto_5
    move-object v8, v5

    if-nez v8, :cond_8

    goto :goto_2

    .line 746
    :cond_8
    new-instance v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 747
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 752
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 753
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->spansContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->updateSpans(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method public applyBlocklist(Z)V
    .locals 5

    .line 940
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    .line 946
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 947
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 948
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 949
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 951
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 952
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 955
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 960
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 961
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    .line 962
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    :cond_4
    return-void
.end method

.method public atTop()Z
    .locals 2

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bind(I)V
    .locals 7

    .line 903
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 908
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 909
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 911
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_2

    .line 913
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    move v3, v1

    .line 914
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 915
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 918
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 920
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 921
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x6

    if-ne p1, v2, :cond_5

    .line 923
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->applyBlocklist(Z)V

    .line 925
    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->reversedLayout:Z

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 926
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSpans(Z)V

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->setText(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    if-nez p1, :cond_7

    const/16 p1, 0x8

    goto :goto_3

    :cond_7
    move p1, v1

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 929
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->scrollToBottom()V

    const/4 p1, 0x0

    .line 930
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    .line 931
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    .line 932
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    .line 933
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 934
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->scrollToTop()V

    .line 935
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    const/4 p1, -0x1

    .line 936
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lastSelectedType:I

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 641
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 642
    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1

    .line 643
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->waitingForChatId:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x15e

    .line 646
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    const/4 p2, 0x0

    .line 647
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 p2, -0x1

    .line 648
    iput-wide p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->waitingForChatId:J

    .line 649
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectChat(JLorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public getTypeOn(Landroid/view/MotionEvent;)I
    .locals 5

    .line 1639
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v1, -0x1

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 1642
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1646
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 1647
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_1

    .line 1650
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    .line 1651
    iget v2, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->sendAs:Z

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1654
    :cond_3
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x64

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    .line 1655
    :goto_0
    iget p1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1736
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1737
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$10000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1704
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1707
    :cond_0
    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 1708
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->isDeleting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1709
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$9902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 1710
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->spansContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 1711
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    .line 1712
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1713
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1714
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1715
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1716
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 1717
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1718
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1721
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1722
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 1723
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    goto :goto_1

    .line 1725
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$9900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$9900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$9902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 1729
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$9902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 1730
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->startDeleteAnimation()V

    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1742
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1743
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$10100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1697
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$9001(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$9101(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    .line 1672
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1673
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x38

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :goto_0
    add-int/2addr p2, v0

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1674
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->wasKeyboardVisible:Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$9200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p2

    if-eq p1, p2, :cond_8

    .line 1675
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->getSearchFieldTop()F

    move-result p1

    .line 1676
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$9300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x96

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->resultContainerHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 1677
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->scrollToTopSmoothly()V

    .line 1679
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 p2, 0x0

    if-nez p1, :cond_5

    .line 1680
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$9400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    move v0, p2

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->setTranslationY(F)V

    .line 1681
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->underKeyboardView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$9500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    int-to-float p2, p2

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4

    .line 1683
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$9600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    neg-int v0, v0

    :goto_2
    int-to-float v0, v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->translateY(FF)V

    .line 1684
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->underKeyboardView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$9700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    goto :goto_3

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    neg-int v0, v0

    :goto_3
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x1

    .line 1685
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardMoving:Z

    .line 1686
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->underKeyboardView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1688
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1690
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$9800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->wasKeyboardVisible:Z

    .line 1692
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1320
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1323
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1324
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 1632
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public scrollToTopSmoothly()V
    .locals 4

    .line 1625
    new-instance v0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;IF)V

    const/4 v1, 0x1

    .line 1626
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    const/16 v1, 0x38

    .line 1627
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    .line 1628
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public top()F
    .locals 5

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 885
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 886
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 887
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 888
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    .line 889
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpg-float v4, v3, v0

    if-gez v4, :cond_3

    .line 891
    invoke-static {v0, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    goto :goto_3

    .line 893
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_2

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    :goto_2
    add-float/2addr v0, v1

    return v0

    .line 895
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_3

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public updateButton(Z)V
    .locals 7

    .line 1405
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const-string v1, "StoryPrivacyButtonSave"

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 1406
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1408
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 1412
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonPost:I

    const-string v3, "StoryPrivacyButtonPost"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1435
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_2
    const-string v5, "StoryPrivacyButtonSaveCloseFriends"

    if-ne v0, v3, :cond_3

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1439
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1440
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonSaveCloseFriends:I

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1442
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_3
    const/4 v6, 0x3

    if-ne v0, v6, :cond_6

    .line 1444
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3402(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    move-result v0

    .line 1446
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1447
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1448
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    if-gtz v0, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    invoke-virtual {v1, v5, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hide(ZZ)V

    .line 1449
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1450
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-lez v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1451
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_6
    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1454
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1455
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1456
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    goto :goto_3

    .line 1459
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonExcludeContacts:I

    const-string v3, "StoryPrivacyButtonExcludeContacts"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1462
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_8
    const/4 v6, 0x5

    if-ne v0, v6, :cond_9

    .line 1464
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1467
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1468
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_9
    const/4 v6, 0x6

    if-ne v0, v6, :cond_c

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryPrivacyButtonSaveCloseFriends:I

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    .line 1474
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesController;->blocklistFull:Z

    if-eqz v1, :cond_a

    .line 1475
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    goto :goto_5

    .line 1477
    :cond_a
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getBlocklistCount()I

    .line 1478
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-ge v4, p1, :cond_b

    .line 1479
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 1480
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->changelog:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1481
    iget-object p1, v0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1494
    :cond_b
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    :cond_c
    const/4 v5, 0x4

    if-ne v0, v5, :cond_d

    .line 1496
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3502(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    move-result v0

    .line 1498
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1499
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 1500
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->buttonContainer:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;

    invoke-virtual {v1, v4, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hide(ZZ)V

    .line 1501
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 1502
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 1503
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->button2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_d
    :goto_6
    return-void
.end method

.method public updateCheckboxes(Z)V
    .locals 9

    .line 1540
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 1541
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1543
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1546
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 1554
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1555
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1558
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1559
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 1562
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lastSelectedType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1563
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    goto :goto_2

    .line 1560
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->lastSelectedType:I

    .line 1561
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 1567
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1569
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_d

    .line 1570
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    if-eqz v3, :cond_c

    .line 1572
    iget v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    if-lez v5, :cond_9

    .line 1573
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v5

    iget v6, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    if-ne v5, v6, :cond_8

    goto :goto_4

    :cond_8
    move v4, v1

    :goto_4
    iput-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    .line 1574
    iput-boolean v1, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    goto :goto_6

    .line 1575
    :cond_9
    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_b

    .line 1576
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    if-nez v5, :cond_a

    .line 1577
    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    iput-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    goto :goto_6

    .line 1578
    :cond_b
    iget-object v4, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_c

    .line 1579
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    .line 1580
    iput-boolean v1, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    :cond_c
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    move v0, v1

    .line 1585
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 1586
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1587
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    if-eqz v3, :cond_14

    .line 1588
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-ltz v5, :cond_14

    .line 1589
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    if-nez v3, :cond_e

    goto :goto_a

    .line 1592
    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    .line 1593
    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    .line 1594
    iget-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    if-nez v5, :cond_10

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    move v5, v1

    goto :goto_9

    :cond_10
    :goto_8
    move v5, v4

    :goto_9
    invoke-virtual {v2, v5, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setChecked(ZZ)V

    .line 1595
    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_12

    .line 1596
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v3

    const/16 v5, 0xc8

    if-le v3, v5, :cond_11

    const v6, 0x3e99999a    # 0.3f

    :cond_11
    invoke-virtual {v2, v6, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setCheckboxAlpha(FZ)V

    goto :goto_a

    .line 1598
    :cond_12
    iget-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    if-eqz v5, :cond_13

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    if-nez v3, :cond_13

    const/high16 v6, 0x3f000000    # 0.5f

    :cond_13
    invoke-virtual {v2, v6, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setCheckboxAlpha(FZ)V

    :cond_14
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1603
    :cond_15
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    return-void
.end method

.method public updateItems(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 973
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(ZZ)V

    return-void
.end method

.method public updateItems(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 976
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 977
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->oldItems:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 979
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 982
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/16 v6, 0x96

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_1c

    .line 984
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    .line 985
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 987
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController;->sendAs:Ljava/util/ArrayList;

    .line 989
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v12

    const v13, 0x7fffffff

    if-eqz v12, :cond_3

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v11, :cond_3

    .line 990
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    .line 991
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 992
    sget v12, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertEditTitle:I

    const-string v14, "StoryPrivacyAlertEditTitle"

    invoke-static {v14, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 993
    :cond_1
    sget v12, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertTitle:I

    const-string v14, "StoryPrivacyAlertTitle"

    invoke-static {v14, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 994
    :goto_0
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v14

    if-eq v14, v13, :cond_2

    .line 995
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v14

    div-int/lit16 v14, v14, 0xe10

    new-array v15, v10, [Ljava/lang/Object;

    const-string v2, "StoryPrivacyAlertSubtitle"

    invoke-static {v2, v14, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 996
    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertSubtitleProfile:I

    const-string v14, "StoryPrivacyAlertSubtitleProfile"

    invoke-static {v14, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 990
    :goto_1
    invoke-static {v12, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v11

    goto/16 :goto_7

    .line 999
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->StoryPrivacyPublishAs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeaderCell(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_7

    instance-of v12, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    if-eqz v12, :cond_4

    goto/16 :goto_3

    .line 1003
    :cond_4
    instance-of v12, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    if-eqz v12, :cond_5

    .line 1004
    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v14, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1005
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1, v10, v10}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSendAs()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1006
    :cond_5
    instance-of v12, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v12, :cond_6

    .line 1007
    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v14, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1008
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1, v10}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSendAs()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v1, v10

    goto :goto_5

    .line 1010
    :cond_6
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    if-eqz v2, :cond_8

    .line 1011
    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v14, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1012
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1, v10}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSendAs()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1001
    :cond_7
    :goto_3
    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1002
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1, v10, v10}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSendAs()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    move v1, v11

    :goto_5
    const/4 v2, 0x0

    .line 1015
    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    if-eqz v1, :cond_9

    move v12, v11

    goto :goto_6

    :cond_9
    move v12, v8

    .line 1016
    :goto_6
    iput v12, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    .line 1017
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_a

    .line 1019
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v12, Lorg/telegram/messenger/R$string;->StoryPrivacyWhoCanView:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeaderCell(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_7
    if-eqz v1, :cond_18

    .line 1023
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v12

    if-ne v12, v5, :cond_b

    move v12, v11

    goto :goto_8

    :cond_b
    move v12, v10

    :goto_8
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v14

    invoke-static {v5, v12, v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asType(IZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    if-ne v2, v11, :cond_e

    .line 1025
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v11, :cond_c

    .line 1026
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iput-object v2, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_9

    .line 1028
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 1029
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v15, v11, :cond_d

    .line 1030
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iput-object v2, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1036
    :cond_e
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v12

    if-ne v12, v8, :cond_f

    move v12, v11

    goto :goto_a

    :cond_f
    move v12, v10

    :goto_a
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v8, v12, v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asType(IZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v11, :cond_10

    .line 1038
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iput-object v2, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1040
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1041
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v14

    if-ne v14, v11, :cond_11

    move v14, v11

    goto :goto_b

    :cond_11
    move v14, v10

    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v11, v14, v15}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asType(IZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v11, :cond_12

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_12

    .line 1043
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iput-object v2, v14, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1045
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v12

    if-ne v12, v4, :cond_13

    move v12, v11

    goto :goto_c

    :cond_13
    move v12, v10

    :goto_c
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v14

    invoke-static {v4, v12, v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asType(IZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    if-ne v2, v11, :cond_16

    .line 1047
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v11, :cond_14

    .line 1048
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iput-object v2, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_d

    .line 1050
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 1051
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v15, v11, :cond_15

    .line 1052
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iput-object v2, v12, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1058
    :cond_16
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController;->getBlocklistCount()I

    move-result v2

    .line 1059
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    if-gtz v2, :cond_17

    const-string v2, "StoryBlockListEmpty"

    .line 1061
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_17
    new-array v14, v10, [Ljava/lang/Object;

    const-string v15, "StoryBlockList"

    .line 1062
    invoke-static {v15, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_e
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v15, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda7;

    invoke-direct {v15, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 1068
    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$7900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    .line 1059
    invoke-static {v2, v14, v10, v15, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1072
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->StoryAllowScreenshots:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v12

    invoke-static {v5, v10, v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asCheck(Ljava/lang/CharSequence;IZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    if-eqz v1, :cond_19

    sget v5, Lorg/telegram/messenger/R$string;->StoryKeep:I

    goto :goto_f

    :cond_19
    sget v5, Lorg/telegram/messenger/R$string;->StoryKeepChannel:I

    :goto_f
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v12

    invoke-static {v5, v11, v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asCheck(Ljava/lang/CharSequence;IZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    const-string v1, "StoryKeepInfo"

    goto :goto_10

    :cond_1a
    const-string v1, "StoryKeepChannelInfo"

    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v5

    if-ne v5, v13, :cond_1b

    const v5, 0x15180

    goto :goto_11

    :cond_1b
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v5

    :goto_11
    div-int/lit16 v5, v5, 0xe10

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v1, v5, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    :cond_1c
    const/16 v2, 0x20

    if-ne v1, v11, :cond_1d

    .line 1077
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertCloseFriendsTitle:I

    const-string v12, "StoryPrivacyAlertCloseFriendsTitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1079
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v7, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1080
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    .line 1083
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1084
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 1086
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1088
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertCloseFriendsSubtitle:I

    const-string v12, "StoryPrivacyAlertCloseFriendsSubtitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1090
    iput-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto/16 :goto_13

    :cond_1d
    if-ne v1, v8, :cond_1e

    .line 1092
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertExcludedContactsTitle:I

    const-string v12, "StoryPrivacyAlertExcludedContactsTitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1094
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v7, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1095
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    .line 1098
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1099
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 1101
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1103
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertExcludedContactsSubtitle:I

    const-string v12, "StoryPrivacyAlertExcludedContactsSubtitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1105
    iput-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto/16 :goto_13

    :cond_1e
    if-ne v1, v4, :cond_1f

    .line 1107
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertSelectContactsTitle:I

    const-string v12, "StoryPrivacyAlertSelectContactsTitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1109
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v7, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1110
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    .line 1113
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1114
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 1116
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1118
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertSelectContactsSubtitle:I

    const-string v12, "StoryPrivacyAlertSelectContactsSubtitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1120
    iput-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto/16 :goto_13

    :cond_1f
    if-ne v1, v3, :cond_20

    .line 1122
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertAsMessageTitle:I

    const-string v12, "StoryPrivacyAlertAsMessageTitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1124
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v7, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1125
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    .line 1128
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1129
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 1131
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1133
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertAsMessageSubtitle:I

    const-string v12, "StoryPrivacyAlertAsMessageSubtitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1135
    iput-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto/16 :goto_13

    :cond_20
    const/4 v5, 0x6

    if-ne v1, v5, :cond_21

    .line 1137
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertBlocklistTitle:I

    const-string v12, "StoryPrivacyAlertBlocklistTitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1139
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v7, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1140
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    .line 1143
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1144
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 1146
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1148
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertBlocklistSubtitle:I

    const-string v12, "StoryPrivacyAlertBlocklistSubtitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1150
    iput-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto :goto_13

    :cond_21
    const/4 v5, 0x4

    if-ne v1, v5, :cond_22

    .line 1152
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertExcludeFromEveryoneTitle:I

    const-string v12, "StoryPrivacyAlertExcludeFromEveryoneTitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->setCloseImageVisible(Z)V

    .line 1154
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->headerView:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v7, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1155
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPad()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asHeader()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    .line 1158
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1159
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSearchField()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 1161
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asSection()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1163
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v5, Lorg/telegram/messenger/R$string;->StoryPrivacyAlertExcludeFromEveryoneSubtitle:I

    const-string v12, "StoryPrivacyAlertExcludeFromEveryoneSubtitle"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSectionCell(Z)V

    .line 1165
    iput-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->containsHeader:Z

    goto :goto_13

    :cond_22
    :goto_12
    move v1, v7

    .line 1168
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v11

    .line 1169
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eqz v5, :cond_42

    .line 1171
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->query:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1173
    iget v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-ne v12, v3, :cond_23

    .line 1174
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_17

    .line 1176
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    if-eq v12, v11, :cond_25

    if-ne v12, v8, :cond_24

    goto :goto_14

    :cond_24
    move v12, v10

    goto :goto_15

    :cond_25
    :goto_14
    move v12, v11

    :goto_15
    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v13

    if-eqz v13, :cond_27

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eq v13, v4, :cond_26

    const/4 v4, 0x6

    if-ne v13, v4, :cond_27

    :cond_26
    move v4, v11

    goto :goto_16

    :cond_27
    move v4, v10

    :goto_16
    invoke-static {v3, v12, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;ZZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 1178
    :goto_17
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    invoke-static {v4, v12, v13}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v4

    if-nez v2, :cond_33

    if-nez p1, :cond_2b

    .line 1181
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move v12, v10

    .line 1182
    :goto_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_2b

    .line 1183
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLObject;

    .line 1185
    instance-of v14, v13, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v14, :cond_28

    .line 1186
    move-object v14, v13

    check-cast v14, Lorg/telegram/tgnet/TLRPC$User;

    .line 1187
    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-wide v10, v14, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_19

    .line 1188
    :cond_28
    instance-of v10, v13, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v10, :cond_29

    .line 1189
    move-object v10, v13

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1190
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-wide v14, v10, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_19

    :cond_29
    const/4 v10, 0x0

    :goto_19
    if-eqz v10, :cond_2a

    .line 1193
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_18

    :cond_2b
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1197
    :goto_1a
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_34

    .line 1198
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLObject;

    .line 1199
    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v13, :cond_2f

    .line 1200
    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    .line 1201
    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-wide v14, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2c

    .line 1202
    iget-wide v14, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    const/4 v14, 0x1

    goto :goto_1b

    :cond_2c
    const/4 v14, 0x0

    .line 1203
    :goto_1b
    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v12, v13, v14}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eq v13, v8, :cond_2e

    const/4 v14, 0x4

    if-ne v13, v14, :cond_2d

    goto :goto_1c

    :cond_2d
    const/4 v13, 0x0

    goto :goto_1d

    :cond_2e
    :goto_1c
    const/4 v13, 0x1

    :goto_1d
    invoke-virtual {v12, v13}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v1, v12

    goto :goto_20

    .line 1206
    :cond_2f
    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v13, :cond_32

    .line 1207
    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1208
    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-wide v6, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v12, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v6

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eq v7, v8, :cond_31

    const/4 v12, 0x4

    if-ne v7, v12, :cond_30

    goto :goto_1e

    :cond_30
    const/4 v7, 0x0

    goto :goto_1f

    :cond_31
    :goto_1e
    const/4 v7, 0x1

    :goto_1f
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    :goto_20
    add-int/lit8 v11, v11, 0x1

    :cond_32
    add-int/lit8 v10, v10, 0x1

    const/16 v6, 0x96

    const/4 v7, 0x0

    goto/16 :goto_1a

    :cond_33
    const/4 v11, 0x0

    :cond_34
    const/4 v6, 0x0

    .line 1214
    :goto_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3e

    .line 1215
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLObject;

    if-nez v2, :cond_35

    .line 1216
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->atTop:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3a

    :cond_35
    invoke-direct {v0, v7, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->match(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_36

    goto :goto_25

    .line 1219
    :cond_36
    instance-of v10, v7, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v10, :cond_3b

    .line 1220
    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    .line 1221
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsers:Ljava/util/ArrayList;

    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_37

    .line 1222
    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    const/4 v12, 0x1

    goto :goto_22

    :cond_37
    const/4 v12, 0x0

    .line 1223
    :goto_22
    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v7, v10, v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v7

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-eq v10, v8, :cond_39

    const/4 v12, 0x4

    if-ne v10, v12, :cond_38

    goto :goto_23

    :cond_38
    const/4 v10, 0x0

    goto :goto_24

    :cond_39
    :goto_23
    const/4 v10, 0x1

    :goto_24
    invoke-virtual {v7, v10}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v1, v7

    add-int/lit8 v11, v11, 0x1

    :cond_3a
    :goto_25
    const/4 v13, 0x4

    goto :goto_28

    .line 1226
    :cond_3b
    instance-of v10, v7, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v10, :cond_3a

    .line 1227
    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1228
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->selectedUsersByGroup:Ljava/util/HashMap;

    iget-wide v13, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v7, v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v7

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v13, 0x4

    if-eq v12, v8, :cond_3d

    if-ne v12, v13, :cond_3c

    goto :goto_26

    :cond_3c
    const/4 v12, 0x0

    goto :goto_27

    :cond_3d
    :goto_26
    const/4 v12, 0x1

    :goto_27
    invoke-virtual {v7, v12}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v1, v7

    add-int/lit8 v11, v11, 0x1

    :goto_28
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_21

    :cond_3e
    if-eqz v2, :cond_42

    if-nez v11, :cond_3f

    .line 1235
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asNoUsers()Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x96

    .line 1236
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1239
    :cond_3f
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_41

    .line 1240
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->keyboardHeight:I

    goto :goto_29

    :cond_40
    const/4 v10, 0x0

    :goto_29
    add-int/2addr v2, v10

    goto :goto_2a

    .line 1242
    :cond_41
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v2, v3

    const/16 v3, 0x2a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    :goto_2a
    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_42

    .line 1245
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    float-to-int v2, v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->asPadding(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_42
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1251
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_43
    if-eqz p2, :cond_45

    .line 1254
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    if-eqz v1, :cond_45

    if-eqz p1, :cond_44

    .line 1255
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result v1

    if-eqz v1, :cond_44

    .line 1256
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->oldItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2b

    .line 1258
    :cond_44
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1262
    :cond_45
    :goto_2b
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public updateTops()V
    .locals 0

    .line 1328
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSearchFieldTop()V

    .line 1329
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateHeaderTop()V

    return-void
.end method
