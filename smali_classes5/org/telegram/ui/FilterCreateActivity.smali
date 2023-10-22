.class public Lorg/telegram/ui/FilterCreateActivity;
.super Lcom/iMe/ui/base/mvp/JavaMvpFragment;
.source "FilterCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;,
        Lorg/telegram/ui/FilterCreateActivity$NewSpan;,
        Lorg/telegram/ui/FilterCreateActivity$ColorImageSpan;,
        Lorg/telegram/ui/FilterCreateActivity$LinkCell;,
        Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;,
        Lorg/telegram/ui/FilterCreateActivity$ButtonCell;,
        Lorg/telegram/ui/FilterCreateActivity$ListAdapter;,
        Lorg/telegram/ui/FilterCreateActivity$ItemInner;,
        Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

.field private createLinkCell:Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;

.field private creatingNew:Z

.field private doNotCloseWhenSave:Z

.field private doneCallback:Lcom/iMe/fork/utils/Callbacks$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lorg/telegram/messenger/MessagesController$DialogFilter;",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation
.end field

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private excludeExpanded:Z

.field private filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field private hasUserChanged:Z

.field private includeExpanded:Z

.field private invites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;",
            ">;"
        }
    .end annotation
.end field

.field private isAutoTopic:Z

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/FilterCreateActivity$ItemInner;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingInvites:Z

.field private nameChangedManually:Z

.field private nameRow:I

.field private newAlwaysShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private newFilterFlags:I

.field private newFilterName:Ljava/lang/String;

.field private newFilterSettings:Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

.field private newNeverShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

.field private oldItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/FilterCreateActivity$ItemInner;",
            ">;"
        }
    .end annotation
.end field

.field private pollEditTextCellWrapper:Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

.field private requestingInvitesReqId:I

.field private saveHintView:Lorg/telegram/ui/Components/HintView;

.field shiftDp:F

.field private showBulletinOnResume:Ljava/lang/Runnable;

.field private showedUpdateBulletin:Z

.field private topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

.field private topicNewIcon:Lcom/iMe/storage/data/repository/topics/Topic;

.field private final type:Lcom/iMe/fork/enums/FilterActivityType;


# direct methods
.method public static synthetic $r8$lambda$-XTafjmbbG_RdDWDpL4p1Vgcwi0(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$saveFilterToServer$27(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1BqSoDvi9tuCOc2S6aa2kzBSQgc(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$updateRows$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$39PT932iWKkeZOVQBoHsA-Kdlrg(Lorg/telegram/ui/FilterCreateActivity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$onUpdate$31(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Ev0GnOlqsMf4VwZrnAJaJvjkaY(Lorg/telegram/ui/FilterCreateActivity;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$updateRows$3(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ZinwknOr1JbfQFJebEjyChkN8E(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->lambda$processDone$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$8rp96sC60S26ymMcT7M8bGnkMu0(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$updateRows$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$913S11J_N-nJPXGzxvnj8nOKBBQ(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$createView$11(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FH5XHOLUEQz3A44OK9Cnhft6lEk(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$updateRows$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lmzq5jiwQ3mnZnVuV46xlJZDYOw(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$updateRows$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LtGGpRCCGa1oWnd3Xe3tjZOErWw(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$updateRows$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NAPUreCC5lijiTmbAcrhkv057mI(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$checkDiscard$21(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OGdEG2ErcmILtvNoo0EXxef9ch4(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$deleteFolder$17(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OKu8tD388KQ6QSyVxy5mqG8_42U(Lorg/telegram/ui/FilterCreateActivity;ZLjava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FilterCreateActivity;->lambda$selectChatsFor$20(ZLjava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q2NfD8TMWacAyTCM7bqc2Oy4838(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FilterCreateActivity;->lambda$createView$10(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$V9qqIAT_olvQ88vjfeS9CHYbdNY(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$checkDiscard$23(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WR7AjC0YFZ0-B-gUwlxAQWiZaF4(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$checkDiscard$22(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z0TfYExAzBQ8Sg-c6sLrCybE1Pk(Lorg/telegram/ui/FilterCreateActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$save$26(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a1zX4rvWV2JXEmyvsYRaodLOjdw(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$onClickCreateLink$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aa4EzkJjX0nYFLo-AWvHVqnL99U(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->deleteFolder(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bCJA19rbyc6jQ8lZGmCVtiXjOzk(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$onClickCreateLink$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bL2uH1AYffNP1RhRVut17riAqew(Lorg/telegram/ui/FilterCreateActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$deleteFolder$16(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgIaLN-C-XLpZ9Kug2nRbiiX1ZM(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static/range {p0 .. p14}, Lorg/telegram/ui/FilterCreateActivity;->lambda$saveFilterToServer$29(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$emwL2u5lHyxEvPAtrw5ziH6_L9U(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static/range {p0 .. p12}, Lorg/telegram/ui/FilterCreateActivity;->lambda$saveFilterToServer$28(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$if6aSg5asskCQl4LKI4yorSGyJw(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->onDelete(Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$liIRqUoiI_Dnch1-1Z0EQNLWzOM(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$loadInvites$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-NRgRzgxbm14myaNVZqYhUyDJ8(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->lambda$onClickCreateLink$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$mQZknJkAclhQGBHt-iT-klDauHQ(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->lambda$getThemeDescriptions$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$nWmMYqu1Cub_anE3-MeGKtJMviY(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$loadInvites$1(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oUxLIOY8emBgUP77ekUf0HpvNEE(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$onClickCreateLink$12(Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qav9n3qjUniBxyzGxaVZjcMxVpw(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/FilterCreateActivity$ItemInner;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$createView$9(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ryBIHMND-JdV5IkjrKkhPlpTKaE(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->onEdit(Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$taEjQoxQZngKnTZICyD6973q1sY(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FilterCreateActivity;->lambda$deleteFolder$18(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v-hldTGwdn2-J-9_U3eacfUcU-Y(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$deleteFolder$19(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wTwFg9kXM1JczH3_j3gZ6zAvoVo(Lorg/telegram/ui/FilterCreateActivity;Lcom/iMe/storage/domain/model/filters/FilterIcon;Lcom/iMe/storage/data/repository/topics/Topic;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$showIconSelectAlert$0(Lcom/iMe/storage/domain/model/filters/FilterIcon;Lcom/iMe/storage/data/repository/topics/Topic;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x-2OPcRopWYl6hPOTIeCF9000M0(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/FilterCreateActivity$ItemInner;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FilterCreateActivity;->lambda$showRemoveAlert$24(Lorg/telegram/ui/FilterCreateActivity$ItemInner;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 131
    sget-object v5, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/iMe/fork/enums/FilterActivityType;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 254
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 6

    .line 136
    sget-object v5, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessagesController$DialogFilter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 141
    sget-object v5, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessagesController$DialogFilter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/iMe/fork/enums/FilterActivityType;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/base/mvp/JavaMvpFragment;-><init>()V

    const/4 v5, -0x1

    .line 186
    iput v5, v0, Lorg/telegram/ui/FilterCreateActivity;->nameRow:I

    .line 212
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    .line 365
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/FilterCreateActivity;->oldItems:Ljava/util/ArrayList;

    .line 366
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    const/high16 v5, -0x3f600000    # -5.0f

    .line 491
    iput v5, v0, Lorg/telegram/ui/FilterCreateActivity;->shiftDp:F

    .line 264
    iput-object v4, v0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    .line 265
    sget-object v5, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    if-nez p3, :cond_2

    .line 267
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 268
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 269
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_1

    .line 271
    invoke-virtual {v15, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 273
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lorg/telegram/messenger/MessagesController;->isArchivedDialog(J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 274
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_1
    new-instance v3, Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/fork/controller/ForkTopicsController;->calcNextId()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/fork/controller/ForkTopicsController;->calcNextOrder()I

    move-result v12

    const/4 v13, 0x0

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object v7, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v7 .. v17}, Lcom/iMe/storage/domain/model/topics/TopicModel;-><init>(JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 281
    iput-boolean v6, v0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    goto :goto_1

    .line 283
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/FilterCreateActivity;->isAutoTopic:Z

    move-object/from16 v3, p3

    .line 285
    :goto_1
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/iMe/storage/data/repository/topics/Topic;

    .line 286
    new-instance v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController$DialogFilter;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 287
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 288
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 290
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    .line 293
    new-instance v1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 294
    iput-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-void

    .line 298
    :cond_3
    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez v1, :cond_5

    .line 300
    new-instance v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController$DialogFilter;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v3, 0x2

    .line 301
    iput v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    .line 302
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersById:Landroid/util/SparseArray;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 303
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    add-int/2addr v3, v6

    iput v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    goto :goto_2

    .line 305
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const-string v3, ""

    iput-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 306
    iput-boolean v6, v0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    .line 308
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v3}, Lcom/iMe/fork/controller/FiltersController;->getSettings(I)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getCopy()Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    .line 309
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    .line 310
    iget v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iput v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 313
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 315
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    .line 316
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->clone()Lorg/telegram/messenger/support/LongSparseIntArray;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/fork/enums/FilterActivityType;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/FilterCreateActivity;)Z
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->setTextLeft(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/FilterCreateActivity;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/FilterCreateActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/storage/data/repository/topics/Topic;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/iMe/storage/data/repository/topics/Topic;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/FilterCreateActivity;)Lorg/telegram/messenger/MessagesController$DialogFilter;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->onDelete(Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->processDone()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/FilterCreateActivity;)Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->createLinkCell:Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;)Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->createLinkCell:Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->showIconSelectAlert()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/FilterCreateActivity;Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;)Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/FilterCreateActivity;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/FilterCreateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/FilterCreateActivity;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lorg/telegram/ui/FilterCreateActivity;->nameChangedManually:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->nameRow:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/FilterCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method public static canAddToFolder(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x3

    .line 736
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private canCreateLink()Z
    .locals 3

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST_ADMIN:I

    or-int/2addr v1, v2

    not-int v1, v1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkDiscard()Z
    .locals 4

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 977
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 978
    iget-boolean v1, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    if-eqz v1, :cond_2

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->topic_create_discard_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->FilterDiscardNewTitle:I

    const-string v3, "FilterDiscardNewTitle"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 980
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->topic_create_discard_message:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->FilterDiscardNewAlert:I

    const-string v2, "FilterDiscardNewAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 981
    sget v1, Lorg/telegram/messenger/R$string;->FilterDiscardNewSave:I

    const-string v2, "FilterDiscardNewSave"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_3

    .line 983
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->FilterDiscardTitle:I

    const-string v2, "FilterDiscardTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 984
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_3

    sget v1, Lorg/telegram/messenger/R$string;->topic_edit_discard_message:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->FilterDiscardAlert:I

    const-string v2, "FilterDiscardAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 985
    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v2, "ApplyTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 987
    :goto_3
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 988
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private checkDoneButton(Z)V
    .locals 5

    .line 1305
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc

    if-gt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1307
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v4, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/FilterCreateActivity;->isAutoTopic:Z

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    if-eqz v0, :cond_5

    .line 1312
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    .line 1313
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    if-nez v0, :cond_4

    .line 1314
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->hasChanges()Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1317
    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_6

    return-void

    .line 1320
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    .line 1322
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_7

    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v2

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_8

    .line 1324
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1325
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_c

    move v3, v1

    goto :goto_6

    :cond_c
    move v3, v2

    :goto_6
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1326
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    move v1, v2

    :goto_7
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :goto_8
    return-void
.end method

.method private deleteFolder(Landroid/view/View;)V
    .locals 3

    .line 787
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->showForDeletion(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    .line 792
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v1, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->topics_remove:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->FilterDelete:I

    const-string v2, "FilterDelete"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->topics_remove_alert:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->FilterDeleteAlert:I

    const-string v1, "FilterDeleteAlert"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 795
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 796
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v1, "Delete"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 826
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 827
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 828
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 830
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private fillFilterName()V
    .locals 5

    .line 928
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->nameChangedManually:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 931
    :cond_0
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int v2, v0, v1

    and-int v3, v2, v1

    const-string v4, ""

    if-ne v3, v1, :cond_2

    .line 934
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 935
    sget v0, Lorg/telegram/messenger/R$string;->FilterNameUnread:I

    const-string v1, "FilterNameUnread"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 936
    :cond_1
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 937
    sget v0, Lorg/telegram/messenger/R$string;->FilterNameNonMuted:I

    const-string v1, "FilterNameNonMuted"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 939
    :cond_2
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    and-int v1, v2, v0

    if-eqz v1, :cond_3

    not-int v0, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 942
    sget v0, Lorg/telegram/messenger/R$string;->FilterContacts:I

    const-string v1, "FilterContacts"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 944
    :cond_3
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    and-int v1, v2, v0

    if-eqz v1, :cond_4

    not-int v0, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 947
    sget v0, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    const-string v1, "FilterNonContacts"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 949
    :cond_4
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    and-int v1, v2, v0

    if-eqz v1, :cond_5

    not-int v0, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 952
    sget v0, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v1, "FilterGroups"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 954
    :cond_5
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    and-int v1, v2, v0

    if-eqz v1, :cond_6

    not-int v0, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 957
    sget v0, Lorg/telegram/messenger/R$string;->FilterBots:I

    const-string v1, "FilterBots"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 959
    :cond_6
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    and-int v1, v2, v0

    if-eqz v1, :cond_7

    not-int v0, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 962
    sget v0, Lorg/telegram/messenger/R$string;->FilterChannels:I

    const-string v1, "FilterChannels"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_8

    .line 965
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_8

    goto :goto_1

    :cond_8
    move-object v4, v0

    .line 968
    :goto_1
    iput-object v4, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/FilterCreateActivity;->nameRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 971
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->adapter:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private hasChanges()Z
    .locals 5

    const/4 v0, 0x0

    .line 1254
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 1256
    iput-boolean v2, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 1258
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1259
    iput-boolean v2, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 1261
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    if-nez v0, :cond_3

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1265
    iput-boolean v2, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 1267
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1270
    iput-boolean v2, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 1274
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v1, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_4

    .line 1275
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/iMe/storage/data/repository/topics/Topic;

    if-eq v0, v1, :cond_7

    return v2

    .line 1278
    :cond_4
    sget-object v1, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_7

    .line 1279
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/FiltersController;->getSettings(I)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getCopy()Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v0

    .line 1280
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v3

    if-eq v1, v3, :cond_5

    return v2

    .line 1283
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getFabs()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getFabs()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1285
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_6

    return v2

    .line 1288
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1289
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1290
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 1295
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 1298
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iget v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    if-eq v0, v1, :cond_9

    return v2

    .line 1301
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    return v0
.end method

.method public static hideNew(I)V
    .locals 3

    .line 2198
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$21(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 981
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$22(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 985
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$23(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 987
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;IFF)V
    .locals 1

    .line 556
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 559
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    if-nez p2, :cond_1

    return-void

    .line 563
    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$3700(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Landroid/view/View$OnClickListener;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 564
    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$3700(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 565
    :cond_2
    iget p4, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_3

    .line 566
    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 567
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$3600(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Z

    move-result p4

    invoke-direct {p0, p2, p3, p1, p4}, Lorg/telegram/ui/FilterCreateActivity;->showRemoveAlert(Lorg/telegram/ui/FilterCreateActivity$ItemInner;Ljava/lang/CharSequence;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    if-ne p4, v0, :cond_5

    .line 569
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/FilterCreateActivity$ItemInner;)V

    .line 575
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 576
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/FilterCreateActivity;->save(ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 578
    :cond_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    if-eq p4, v0, :cond_8

    const/4 v0, 0x4

    if-ne p4, v0, :cond_6

    .line 580
    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$2200(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)I

    move-result p4

    sget v0, Lorg/telegram/messenger/R$drawable;->msg2_link2:I

    if-ne p4, v0, :cond_6

    goto :goto_0

    .line 582
    :cond_6
    iget p1, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_9

    .line 585
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    invoke-virtual {p1, p3}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->checkEditTextTouch(F)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 588
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->getPollEditTextCell()Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object p1

    .line 590
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 591
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_1

    .line 581
    :cond_8
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->onClickCreateLink(Landroid/view/View;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;I)Z
    .locals 2

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 599
    :cond_0
    instance-of v1, p1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v1, :cond_1

    .line 600
    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 601
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$3600(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Z

    move-result v1

    invoke-direct {p0, p2, v0, p1, v1}, Lorg/telegram/ui/FilterCreateActivity;->showRemoveAlert(Lorg/telegram/ui/FilterCreateActivity$ItemInner;Ljava/lang/CharSequence;Ljava/lang/Object;Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private synthetic lambda$createView$9(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)V
    .locals 2

    .line 570
    new-instance v0, Lorg/telegram/ui/FilterChatlistActivity;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$2300(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/FilterChatlistActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V

    .line 571
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/FilterChatlistActivity;->setOnEdit(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 572
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/FilterChatlistActivity;->setOnDelete(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 573
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$deleteFolder$16(Ljava/lang/Boolean;)V
    .locals 0

    .line 789
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$deleteFolder$17(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 816
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 819
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 821
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->removeFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 822
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesStorage;->deleteDialogFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 823
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$deleteFolder$18(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 813
    new-instance p2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$deleteFolder$19(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 798
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object p2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne p1, p2, :cond_0

    .line 799
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ForkTopicsController;->removeTopicFilterDialogs(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    .line 800
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 805
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 806
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 807
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 808
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 811
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;-><init>()V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->id:I

    .line 813
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$30()V
    .locals 5

    .line 1759
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_3

    .line 1760
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1762
    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1764
    instance-of v4, v3, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    if-eqz v4, :cond_0

    .line 1765
    check-cast v3, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    invoke-virtual {v3}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->updateColors()V

    goto :goto_1

    .line 1766
    :cond_0
    instance-of v4, v3, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    if-eqz v4, :cond_1

    .line 1767
    check-cast v3, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    invoke-virtual {v3}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->updateColors()V

    goto :goto_1

    .line 1769
    :cond_1
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_2

    .line 1770
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$loadInvites$1(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->loadingInvites:Z

    .line 341
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedInvites;

    if-eqz v1, :cond_0

    .line 342
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedInvites;

    .line 343
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedInvites;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 344
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedInvites;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    .line 349
    :cond_0
    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->requestingInvitesReqId:I

    return-void
.end method

.method private synthetic lambda$loadInvites$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 339
    new-instance p2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClickCreateLink$12(Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;)V
    .locals 0

    .line 697
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;->invite:Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->onEdit(Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V

    return-void
.end method

.method private synthetic lambda$onClickCreateLink$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 685
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/telegram/ui/FilterCreateActivity;->processErrors(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/BulletinFactory;)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 688
    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->hideNew(I)V

    .line 690
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->loadRemoteFilters(Z)V

    .line 691
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;

    .line 692
    new-instance p1, Lorg/telegram/ui/FilterChatlistActivity;

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;->invite:Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/FilterChatlistActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V

    .line 693
    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/FilterChatlistActivity;->setOnEdit(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 694
    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/FilterChatlistActivity;->setOnDelete(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 695
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 697
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClickCreateLink$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 683
    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClickCreateLink$15()V
    .locals 9

    .line 658
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->updateFilterDialogs(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 661
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 662
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 664
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 665
    invoke-static {v4}, Lorg/telegram/ui/FilterCreateActivity;->canAddToFolder(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 666
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    .line 672
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 673
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x4

    iget v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 677
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 678
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportChatlistInvite;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportChatlistInvite;-><init>()V

    .line 679
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatlistDialogFilter;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatlistDialogFilter;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportChatlistInvite;->chatlist:Lorg/telegram/tgnet/TLRPC$TL_inputChatlistDialogFilter;

    .line 680
    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatlistDialogFilter;->filter_id:I

    .line 681
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportChatlistInvite;->peers:Ljava/util/ArrayList;

    const-string v0, ""

    .line 682
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportChatlistInvite;->title:Ljava/lang/String;

    .line 683
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    .line 701
    :cond_4
    new-instance v0, Lorg/telegram/ui/FilterChatlistActivity;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/FilterChatlistActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V

    .line 702
    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/FilterChatlistActivity;->setOnEdit(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 703
    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/FilterChatlistActivity;->setOnDelete(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 704
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_2
    return-void
.end method

.method private synthetic lambda$onUpdate$31(ZI)V
    .locals 3

    .line 2354
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2355
    sget v1, Lorg/telegram/messenger/R$raw;->folder_in:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->folder_out:I

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "FolderLinkAddedChats"

    .line 2357
    invoke-static {v2, p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "FolderLinkRemovedChats"

    .line 2358
    invoke-static {v2, p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->FolderLinkChatlistUpdate:I

    const-string v2, "FolderLinkChatlistUpdate"

    .line 2359
    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2354
    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 p2, 0x1388

    .line 2360
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$processDone$25()V
    .locals 7

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->doneCallback:Lcom/iMe/fork/utils/Callbacks$Callback2;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/FiltersController;->addOrEditFilterSettings(Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;)V

    .line 1080
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->doNotCloseWhenSave:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1081
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->doNotCloseWhenSave:Z

    .line 1082
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    const/16 v3, 0x14

    .line 1083
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1084
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v5, v1, v3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    const-wide/16 v5, 0xdc

    invoke-virtual {v4, v0, v2, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJ)V

    return-void

    .line 1087
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$save$26(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    .line 1094
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 1095
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    .line 1096
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    iput v2, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    const/4 v1, 0x1

    .line 1097
    invoke-direct {p0, v1}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    .line 1099
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 1102
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$saveFilterToServer$27(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 2

    .line 1174
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p1

    .line 1175
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ge p1, p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$saveFilterToServer$28(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1233
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1236
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1238
    :cond_0
    :goto_0
    invoke-static/range {p2 .. p12}, Lorg/telegram/ui/FilterCreateActivity;->processAddFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-eqz p12, :cond_2

    .line 1240
    invoke-interface {p12}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$saveFilterToServer$29(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 15

    .line 1229
    new-instance v14, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda22;

    move-object v0, v14

    move v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda22;-><init>(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$selectChatsFor$20(ZLjava/util/ArrayList;I)V
    .locals 4

    .line 869
    iput p3, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 871
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->onUpdate(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 872
    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    move p1, p3

    .line 873
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 874
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 876
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 877
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result p2

    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_3

    .line 878
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 879
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 882
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 885
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 887
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, p3

    :goto_3
    if-ge v0, p2, :cond_5

    .line 888
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 891
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-direct {p0, p3, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->onUpdate(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 892
    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    move p1, p3

    .line 893
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 894
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 899
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->fillFilterName()V

    .line 900
    invoke-direct {p0, p3}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    .line 901
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    return-void
.end method

.method private synthetic lambda$showIconSelectAlert$0(Lcom/iMe/storage/domain/model/filters/FilterIcon;Lcom/iMe/storage/data/repository/topics/Topic;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->setIcon(Lcom/iMe/storage/domain/model/filters/FilterIcon;)V

    .line 168
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/filter/FilterIconExtKt;->iconInfo(Lcom/iMe/storage/domain/model/filters/FilterIcon;)Lcom/iMe/ui/folder/FilterIconInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/folder/FilterIconInfo;->getOutlinedIcon()I

    move-result v1

    :cond_0
    invoke-virtual {p2, v1}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->setIcon(I)V

    goto :goto_0

    .line 170
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/iMe/storage/data/repository/topics/Topic;

    .line 171
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/topics/TopicInfo;->getIconResId()I

    move-result v1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->setIcon(I)V

    :goto_0
    const/4 p1, 0x0

    .line 173
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    return-void
.end method

.method private synthetic lambda$showRemoveAlert$24(Lorg/telegram/ui/FilterCreateActivity$ItemInner;ZLandroid/content/DialogInterface;I)V
    .locals 2

    .line 1022
    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$3500(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)I

    move-result p3

    if-lez p3, :cond_0

    .line 1023
    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$3500(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 1025
    iget-object p3, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$2100(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1027
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->fillFilterName()V

    .line 1028
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    const/4 p1, 0x1

    .line 1029
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 1032
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/FilterCreateActivity;->onUpdate(ZI)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateRows$3(Ljava/util/Set;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->setFabs(Ljava/util/Set;)V

    .line 387
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    const/4 p1, 0x0

    .line 388
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$4(Landroid/view/View;)V
    .locals 3

    .line 385
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getFabs()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;-><init>(Landroid/content/Context;Ljava/util/Set;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$updateRows$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 394
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->selectChatsFor(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$6(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 421
    iput-boolean p1, p0, Lorg/telegram/ui/FilterCreateActivity;->includeExpanded:Z

    .line 422
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    return-void
.end method

.method private synthetic lambda$updateRows$7(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 430
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->selectChatsFor(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 449
    iput-boolean p1, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeExpanded:Z

    .line 450
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    return-void
.end method

.method private onClickCreateLink(Landroid/view/View;)V
    .locals 2

    .line 632
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 633
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->shiftDp:F

    neg-float v0, v0

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->shiftDp:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 634
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    const/4 p1, 0x1

    .line 635
    iput-boolean p1, p0, Lorg/telegram/ui/FilterCreateActivity;->doNotCloseWhenSave:Z

    .line 636
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->showSaveHint()V

    return-void

    .line 639
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->canCreateLink()Z

    move-result v0

    if-nez v0, :cond_5

    .line 640
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->shiftDp:F

    neg-float v0, v0

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->shiftDp:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 641
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 642
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 643
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->FilterInviteErrorEmptyName:I

    const-string v1, "FilterInviteErrorEmptyName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 644
    :cond_1
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST_ADMIN:I

    or-int/2addr v0, v1

    not-int v0, v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    .line 645
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 646
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->FilterInviteErrorTypesExcluded:I

    const-string v1, "FilterInviteErrorTypesExcluded"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 648
    :cond_2
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->FilterInviteErrorTypes:I

    const-string v1, "FilterInviteErrorTypes"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 650
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 651
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->FilterInviteErrorEmpty:I

    const-string v1, "FilterInviteErrorEmpty"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 653
    :cond_4
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->FilterInviteErrorExcluded:I

    const-string v1, "FilterInviteErrorExcluded"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 657
    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/FilterCreateActivity;->save(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private onDelete(Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 745
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 746
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    .line 747
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_4

    .line 754
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 756
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 757
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v0, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 760
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    :cond_4
    return-void
.end method

.method private onEdit(Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 770
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 771
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    .line 772
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 781
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 783
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    return-void
.end method

.method private onUpdate(ZI)V
    .locals 1

    .line 2347
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->showedUpdateBulletin:Z

    if-eqz v0, :cond_0

    return-void

    .line 2351
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isMyChatlist()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2352
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->showedUpdateBulletin:Z

    .line 2353
    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/FilterCreateActivity;ZI)V

    iput-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->showBulletinOnResume:Ljava/lang/Runnable;

    .line 2362
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2363
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->showBulletinOnResume:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 2364
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->showBulletinOnResume:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private onUpdate(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    move v1, v0

    move v2, v1

    .line 838
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 839
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v3, v1

    .line 843
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 844
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 849
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 851
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v0

    move v3, v2

    :cond_6
    :goto_2
    if-eqz p1, :cond_8

    if-lez v3, :cond_7

    if-le v3, v2, :cond_7

    const/4 p1, 0x1

    .line 855
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/FilterCreateActivity;->onUpdate(ZI)V

    goto :goto_3

    :cond_7
    if-lez v2, :cond_9

    .line 857
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/FilterCreateActivity;->onUpdate(ZI)V

    goto :goto_3

    :cond_8
    if-lez v3, :cond_9

    .line 860
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/FilterCreateActivity;->onUpdate(ZI)V

    :cond_9
    :goto_3
    return-void
.end method

.method private static processAddFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessagesController$DialogFilter;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;ZZZZ",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1108
    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    if-ne v0, p1, :cond_0

    if-eqz p7, :cond_1

    :cond_0
    const/4 p7, -0x1

    .line 1109
    iput p7, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->pendingUnreadCount:I

    if-eqz p8, :cond_1

    .line 1111
    iput p7, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->unreadCount:I

    .line 1114
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1115
    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 1116
    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    .line 1117
    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    if-eqz p5, :cond_2

    .line 1119
    invoke-virtual {p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p0, p6}, Lorg/telegram/messenger/MessagesController;->addFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;Z)V

    goto :goto_0

    .line 1121
    :cond_2
    invoke-virtual {p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/MessagesController;->onFilterUpdate(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 1123
    :goto_0
    invoke-virtual {p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p6, p2}, Lorg/telegram/messenger/MessagesStorage;->saveDialogFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;ZZ)V

    if-eqz p6, :cond_4

    .line 1125
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;-><init>()V

    .line 1126
    invoke-virtual {p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    .line 1127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_1
    if-ge p2, p3, :cond_3

    .line 1128
    iget-object p4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;->order:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget p5, p5, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1130
    :cond_3
    invoke-virtual {p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    if-eqz p10, :cond_5

    .line 1133
    invoke-interface {p10}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method private processDone()V
    .locals 4

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->saveHintView:Lorg/telegram/ui/Components/HintView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    .line 1046
    iput-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->saveHintView:Lorg/telegram/ui/Components/HintView;

    .line 1049
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v3, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v3, :cond_3

    .line 1050
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->isAutoTopic:Z

    if-nez v0, :cond_1

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->setName(Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/iMe/storage/data/repository/topics/Topic;

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->setIcon(Lcom/iMe/storage/data/repository/topics/Topic;)V

    .line 1054
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    .line 1055
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1056
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1057
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1058
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    .line 1060
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1061
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1062
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1063
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1064
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v0, v2}, Lcom/iMe/fork/controller/ForkTopicsController;->addOrEditTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    .line 1065
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1066
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->doneCallback:Lcom/iMe/fork/utils/Callbacks$Callback2;

    if-eqz v0, :cond_2

    .line 1068
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-interface {v0, v1, v2}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 1073
    :cond_3
    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/FilterCreateActivity;->save(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static processErrors(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/BulletinFactory;)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    .line 2748
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 2751
    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "INVITE_PEERS_TOO_MUCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2752
    new-instance p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto/16 :goto_0

    .line 2753
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PEERS_LIST_EMPTY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2754
    sget p0, Lorg/telegram/messenger/R$string;->FolderLinkNoChatsError:I

    const-string p1, "FolderLinkNoChatsError"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_0

    .line 2755
    :cond_2
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "USER_CHANNELS_TOO_MUCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2756
    sget p0, Lorg/telegram/messenger/R$string;->FolderLinkOtherAdminLimitError:I

    const-string p1, "FolderLinkOtherAdminLimitError"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_0

    .line 2757
    :cond_3
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "CHANNELS_TOO_MUCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2758
    new-instance p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto/16 :goto_0

    .line 2759
    :cond_4
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "INVITES_TOO_MUCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2760
    new-instance p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto/16 :goto_0

    .line 2761
    :cond_5
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "CHATLISTS_TOO_MUCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2762
    new-instance p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_0

    .line 2763
    :cond_6
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "INVITE_SLUG_EXPIRED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2764
    sget p0, Lorg/telegram/messenger/R$string;->NoFolderFound:I

    const-string p1, "NoFolderFound"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 2765
    :cond_7
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "FILTER_INCLUDE_TOO_MUCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2766
    new-instance p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_0

    .line 2767
    :cond_8
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "DIALOG_FILTERS_TOO_MUCH"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 2768
    new-instance p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_0

    .line 2770
    :cond_9
    sget p0, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string p1, "UnknownError"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_a
    :goto_0
    return v0
.end method

.method private save(ZLjava/lang/Runnable;)V
    .locals 13

    .line 1092
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-boolean v6, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    iget-boolean v8, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    new-instance v12, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda15;

    invoke-direct {v12, p0, p2}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/FilterCreateActivity;Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    const/4 v9, 0x1

    move v10, p1

    move-object v11, p0

    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessagesController$DialogFilter;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/messenger/support/LongSparseIntArray;",
            "ZZZZZ",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p5

    if-eqz p11, :cond_15

    .line 1138
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p10, :cond_1

    .line 1143
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual/range {p11 .. p11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1144
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1145
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1149
    :goto_0
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;-><init>()V

    .line 1150
    iget v4, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->id:I

    .line 1151
    iget v4, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->flags:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->flags:I

    .line 1152
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;-><init>()V

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->filter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    .line 1153
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->contacts:Z

    .line 1154
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->non_contacts:Z

    .line 1155
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->groups:Z

    .line 1156
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->broadcasts:Z

    .line 1157
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_6

    move v6, v5

    goto :goto_5

    :cond_6
    move v6, v2

    :goto_5
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->bots:Z

    .line 1158
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    and-int v6, p1, v6

    if-eqz v6, :cond_7

    move v6, v5

    goto :goto_6

    :cond_7
    move v6, v2

    :goto_6
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_muted:Z

    .line 1159
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int v6, p1, v6

    if-eqz v6, :cond_8

    move v6, v5

    goto :goto_7

    :cond_8
    move v6, v2

    :goto_7
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_read:Z

    .line 1160
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    and-int v6, p1, v6

    if-eqz v6, :cond_9

    move v6, v5

    goto :goto_8

    :cond_9
    move v6, v2

    :goto_8
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_archived:Z

    .line 1161
    iget v6, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->id:I

    move-object/from16 v13, p2

    .line 1162
    iput-object v13, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->title:Ljava/lang/String;

    .line 1163
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    .line 1164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v7

    if-eqz v7, :cond_c

    .line 1166
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v7

    move v8, v2

    :goto_9
    if-ge v8, v7, :cond_b

    .line 1167
    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v9

    .line 1168
    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_a

    .line 1171
    :cond_a
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1173
    :cond_b
    new-instance v7, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda23;

    invoke-direct {v7, v0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/support/LongSparseIntArray;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_c
    move v7, v2

    :goto_b
    if-ge v7, v1, :cond_14

    if-nez v7, :cond_d

    .line 1189
    iget-object v8, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->filter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$DialogFilter;->include_peers:Ljava/util/ArrayList;

    move-object/from16 v9, p3

    goto :goto_c

    :cond_d
    if-ne v7, v5, :cond_e

    .line 1192
    iget-object v8, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->filter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_peers:Ljava/util/ArrayList;

    move-object/from16 v9, p4

    goto :goto_c

    .line 1195
    :cond_e
    iget-object v8, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->filter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$DialogFilter;->pinned_peers:Ljava/util/ArrayList;

    move-object v9, v6

    .line 1197
    :goto_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v2

    :goto_d
    if-ge v11, v10, :cond_13

    .line 1198
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    if-nez v7, :cond_f

    .line 1199
    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v12

    if-ltz v12, :cond_f

    goto :goto_e

    .line 1202
    :cond_f
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v12

    if-nez v12, :cond_12

    const-wide/16 v17, 0x0

    cmp-long v12, v1, v17

    if-lez v12, :cond_10

    .line 1204
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 1206
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 1207
    iput-wide v1, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 1208
    iget-wide v1, v12, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v1, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 1209
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    neg-long v1, v1

    .line 1212
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 1214
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1215
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 1216
    iput-wide v1, v12, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    .line 1217
    iget-wide v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v1, v12, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 1218
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1220
    :cond_11
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 1221
    iput-wide v1, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    .line 1222
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_e
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_d

    :cond_13
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_b

    .line 1229
    :cond_14
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v11, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda30;

    move-object v0, v11

    move/from16 v1, p10

    move-object v2, v3

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object v14, v11

    move/from16 v11, p9

    move-object/from16 v16, v14

    move-object v14, v12

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda30;-><init>(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    if-nez p10, :cond_15

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p11

    .line 1244
    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/FilterCreateActivity;->processAddFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    :cond_15
    :goto_f
    return-void
.end method

.method private selectChatsFor(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    .line 866
    :goto_0
    new-instance v1, Lorg/telegram/ui/UsersSelectActivity;

    iget v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    invoke-direct {v1, p1, v0, v2}, Lorg/telegram/ui/UsersSelectActivity;-><init>(ZLjava/util/ArrayList;I)V

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/ui/UsersSelectActivity;->noChatTypes:Z

    .line 868
    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/FilterCreateActivity;Z)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/UsersSelectActivity;->setDelegate(Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;)V

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 905
    iput-boolean v0, v1, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    xor-int/2addr p1, v0

    .line 906
    iput p1, v1, Lorg/telegram/ui/UsersSelectActivity;->topicModeFilterFolderId:I

    .line 909
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private setTextLeft(Landroid/view/View;)V
    .locals 4

    .line 1332
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    if-ne p1, v0, :cond_0

    .line 1333
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->getPollEditTextCell()Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->setTextLeft(Landroid/view/View;)V

    return-void

    .line 1337
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v0, :cond_6

    .line 1338
    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1339
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    rsub-int/lit8 v0, v0, 0xc

    int-to-float v2, v0

    const v3, 0x40666668    # 3.6000004f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setText2(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    if-gez v0, :cond_2

    .line 1343
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_1

    :cond_2
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    .line 1344
    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1346
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_4

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_5
    const-string v0, ""

    .line 1348
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setText2(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private showIconSelectAlert()V
    .locals 7

    .line 165
    new-instance v6, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/iMe/storage/data/repository/topics/Topic;

    new-instance v5, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;-><init>(Landroid/app/Activity;Lcom/iMe/fork/enums/FilterActivityType;Lcom/iMe/storage/domain/model/filters/FilterIcon;Lcom/iMe/storage/data/repository/topics/Topic;Lcom/iMe/fork/utils/Callbacks$Callback2;)V

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showRemoveAlert(Lorg/telegram/ui/FilterCreateActivity$ItemInner;Ljava/lang/CharSequence;Ljava/lang/Object;Z)V
    .locals 5

    .line 995
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 997
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    .line 998
    sget p3, Lorg/telegram/messenger/R$string;->topic_remove_chat_title:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 999
    sget p3, Lorg/telegram/messenger/R$string;->topic_remove_chat_message:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {p3, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_0
    if-eqz p4, :cond_3

    .line 1002
    sget v1, Lorg/telegram/messenger/R$string;->FilterRemoveInclusionTitle:I

    const-string v2, "FilterRemoveInclusionTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1003
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1004
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveInclusionText:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string p2, "FilterRemoveInclusionText"

    invoke-static {p2, p3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1005
    :cond_1
    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p3, :cond_2

    .line 1006
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveInclusionUserText:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string p2, "FilterRemoveInclusionUserText"

    invoke-static {p2, p3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1008
    :cond_2
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveInclusionChatText:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string p2, "FilterRemoveInclusionChatText"

    invoke-static {p2, p3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1011
    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->FilterRemoveExclusionTitle:I

    const-string v2, "FilterRemoveExclusionTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1012
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1013
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveExclusionText:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string p2, "FilterRemoveExclusionText"

    invoke-static {p2, p3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1014
    :cond_4
    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p3, :cond_5

    .line 1015
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveExclusionUserText:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string p2, "FilterRemoveExclusionUserText"

    invoke-static {p2, p3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1017
    :cond_5
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveExclusionChatText:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string p2, "FilterRemoveExclusionChatText"

    invoke-static {p2, p3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1020
    :goto_0
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1021
    sget p2, Lorg/telegram/messenger/R$string;->StickersRemove:I

    const-string p3, "StickersRemove"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p1, p4}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/FilterCreateActivity$ItemInner;Z)V

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1035
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1036
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 1037
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 1039
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    return-void
.end method

.method private showSaveHint()V
    .locals 4

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->saveHintView:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 715
    :cond_0
    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$3;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/FilterCreateActivity$3;-><init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->saveHintView:Lorg/telegram/ui/Components/HintView;

    .line 726
    iget-object v0, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->saveHintView:Lorg/telegram/ui/Components/HintView;

    const/16 v1, -0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->saveHintView:Lorg/telegram/ui/Components/HintView;

    sget v1, Lorg/telegram/messenger/R$string;->FilterFinishCreating:I

    const-string v2, "FilterFinishCreating"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 730
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 731
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->saveHintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->saveHintView:Lorg/telegram/ui/Components/HintView;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    return-void
.end method

.method private updateRows()V
    .locals 1

    const/4 v0, 0x1

    .line 362
    invoke-direct {p0, v0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows(Z)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 12

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->nameRow:I

    .line 378
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->isAutoTopic:Z

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asEdit()Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->isAutoTopic:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v4, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v4, :cond_2

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->FLOATING_ACTION_BUTTON:I

    invoke-direct {v4, v5, v3}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;-><init>(IZ)V

    new-instance v5, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->whenClicked(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->create_folder_change_fab_section_description:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v5, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v4, v5, :cond_3

    sget v4, Lorg/telegram/messenger/R$string;->topic_main_chats:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    sget v4, Lorg/telegram/messenger/R$string;->FilterInclude:I

    const-string v5, "FilterInclude"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg2_chats_add:I

    sget v5, Lorg/telegram/messenger/R$string;->FilterAddChats:I

    const-string v6, "FilterAddChats"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asButton(ILjava/lang/CharSequence;Z)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->whenClicked(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v4, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    and-int/2addr v0, v4

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->FilterContacts:I

    const-string v7, "FilterContacts"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    const-string v8, "contacts"

    invoke-static {v4, v5, v8, v7}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_4
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v5, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_5

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    const-string v7, "FilterNonContacts"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    const-string v8, "non_contacts"

    invoke-static {v4, v5, v8, v7}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_5
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v5, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_6

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v7, "FilterGroups"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    const-string v8, "groups"

    invoke-static {v4, v5, v8, v7}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_6
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v5, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_7

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->FilterChannels:I

    const-string v7, "FilterChannels"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    const-string v8, "channels"

    invoke-static {v4, v5, v8, v7}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_7
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v5, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_8

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->FilterBots:I

    const-string v7, "FilterBots"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    const-string v8, "bots"

    invoke-static {v4, v5, v8, v7}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v5, "FilterShowMoreChats"

    const/16 v7, 0x8

    if-nez v0, :cond_c

    .line 413
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeExpanded:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v7, :cond_9

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_a
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    move v8, v3

    :goto_3
    if-ge v8, v0, :cond_b

    .line 415
    iget-object v9, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v4, v10, v11}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asChat(ZJ)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 417
    :cond_b
    iget-object v8, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v0, v8, :cond_c

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v8, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    iget-object v9, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    .line 419
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v5, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asButton(ILjava/lang/CharSequence;Z)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda6;

    invoke-direct {v9, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    .line 420
    invoke-virtual {v8, v9}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->whenClicked(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v8

    .line 418
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v9, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v8, v9, :cond_d

    sget v8, Lorg/telegram/messenger/R$string;->topic_add_main_chats_hint:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_d
    sget v8, Lorg/telegram/messenger/R$string;->FilterIncludeInfo:I

    const-string v10, "FilterIncludeInfo"

    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-static {v8}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v0

    if-nez v0, :cond_18

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v8, v9, :cond_e

    sget v8, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string v10, "ArchivedChats"

    goto :goto_5

    :cond_e
    sget v8, Lorg/telegram/messenger/R$string;->FilterExclude:I

    const-string v10, "FilterExclude"

    :goto_5
    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg2_chats_add:I

    iget-object v10, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v10, v9, :cond_f

    sget v9, Lorg/telegram/messenger/R$string;->FilterAddChats:I

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_f
    sget v6, Lorg/telegram/messenger/R$string;->FilterRemoveChats:I

    const-string v9, "FilterRemoveChats"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-static {v8, v6, v3}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asButton(ILjava/lang/CharSequence;Z)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v6, v8}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->whenClicked(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_10

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->FilterMuted:I

    const-string v8, "FilterMuted"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    const-string v9, "muted"

    invoke-static {v3, v6, v9, v8}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_10
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_11

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->FilterRead:I

    const-string v8, "FilterRead"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    const-string v9, "read"

    invoke-static {v3, v6, v9, v8}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_11
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_12

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->FilterArchived:I

    const-string v8, "FilterArchived"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    const-string v9, "archived"

    invoke-static {v3, v6, v9, v8}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 441
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeExpanded:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v7, :cond_13

    goto :goto_7

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_8

    :cond_14
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_8
    move v6, v3

    :goto_9
    if-ge v6, v0, :cond_15

    .line 443
    iget-object v7, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asChat(ZJ)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 445
    :cond_15
    iget-object v6, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v0, v6, :cond_16

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    iget-object v7, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    .line 447
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5, v7, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v3}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asButton(ILjava/lang/CharSequence;Z)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    .line 448
    invoke-virtual {v2, v5}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->whenClicked(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v2

    .line 446
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v5, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v2, v5, :cond_17

    sget v2, Lorg/telegram/messenger/R$string;->topic_add_archived_chats_hint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_17
    sget v2, Lorg/telegram/messenger/R$string;->FilterExcludeInfo:I

    const-string v5, "FilterExcludeInfo"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-static {v2}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v2, :cond_1c

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v2, "FilterInviteLinksHintNew"

    if-eqz v0, :cond_19

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->FilterShareFolder:I

    const-string v6, "FilterShareFolder"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asHeader(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg2_link2:I

    sget v6, Lorg/telegram/messenger/R$string;->FilterShareFolderButton:I

    const-string v7, "FilterShareFolderButton"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asButton(ILjava/lang/CharSequence;Z)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->FilterInviteLinksHintNew:I

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 465
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->FilterInviteLinks:I

    const-string v6, "FilterInviteLinks"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asHeader(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asCreateLink()Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 467
    :goto_b
    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1a

    .line 468
    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/FilterCreateActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    invoke-static {v6}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asLink(Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 470
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    .line 471
    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 472
    sget v5, Lorg/telegram/messenger/R$string;->FilterInviteLinksHintNew:I

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 473
    :cond_1b
    sget v2, Lorg/telegram/messenger/R$string;->FilterInviteLinksHint:I

    const-string v5, "FilterInviteLinksHint"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 470
    :goto_c
    invoke-static {v2}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_1c
    :goto_d
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    if-nez v0, :cond_1e

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v5, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v2, v5, :cond_1d

    sget v2, Lorg/telegram/messenger/R$string;->topics_remove:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_1d
    sget v2, Lorg/telegram/messenger/R$string;->FilterDelete:I

    const-string v5, "FilterDelete"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-static {v3, v2, v4}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asButton(ILjava/lang/CharSequence;Z)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->whenClicked(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->adapter:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    if-eqz v0, :cond_20

    if-eqz p1, :cond_1f

    .line 484
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_f

    .line 486
    :cond_1f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_20
    :goto_f
    return-void
.end method

.method public static withNew(ILjava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 6

    if-ltz p0, :cond_3

    .line 2202
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    .line 2205
    :cond_0
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez p0, :cond_1

    return-object p1

    .line 2210
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "  "

    .line 2211
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2212
    new-instance p1, Landroid/text/SpannableString;

    const-string v2, "NEW"

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v2, 0x21

    if-eqz p2, :cond_2

    .line 2214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_other_new_outline:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p2, 0x8

    .line 2215
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr v5, p2

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2216
    new-instance p2, Lorg/telegram/ui/FilterCreateActivity$ColorImageSpan;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/FilterCreateActivity$ColorImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p0

    invoke-virtual {p1, p2, v1, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 2218
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_other_new_filled:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_other_new_filled_text:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2220
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_unread:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2221
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2222
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, p2, p0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2223
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {v3, v1, v1, p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2224
    new-instance p0, Landroid/text/style/ImageSpan;

    invoke-direct {p0, v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p2

    invoke-virtual {p1, p0, v1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2227
    :goto_0
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_3
    :goto_1
    return-object p1
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    .line 1250
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    .line 495
    invoke-super {p0, p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 499
    iget-boolean v2, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 501
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v4, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v2, v4, :cond_0

    .line 502
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->topic_new:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 504
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->FilterNew:I

    const-string v5, "FilterNew"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 506
    :cond_1
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(I)V

    const/16 v4, 0x14

    .line 507
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 509
    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v6, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v5, v6, :cond_3

    .line 510
    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 511
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v6, v2, v4, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 513
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v4

    invoke-static {v4}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/ui/topics/TopicInfo;->getTitleResId()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 516
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v6, v2, v4, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 518
    :cond_4
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/FilterCreateActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/FilterCreateActivity$1;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 530
    sget v2, Lorg/telegram/messenger/R$string;->Save:I

    const-string v4, "Save"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 532
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 533
    check-cast v0, Landroid/widget/FrameLayout;

    .line 534
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 536
    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/FilterCreateActivity$2;-><init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 551
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 552
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 553
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;-><init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->adapter:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 555
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 606
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 607
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 608
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 609
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    .line 610
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 613
    invoke-direct {p0, v3}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    .line 615
    invoke-virtual {p0}, Lorg/telegram/ui/FilterCreateActivity;->loadInvites()V

    .line 617
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1756
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    new-instance v11, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda31;

    invoke-direct {v11, v0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    .line 1777
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v12, 0x1

    new-array v5, v12, [Ljava/lang/Class;

    const-class v2, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    const/4 v13, 0x0

    aput-object v2, v5, v13

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v4, v13

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move/from16 v30, v35

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v3, v13

    const-class v4, Lorg/telegram/ui/Cells/TextCell;

    aput-object v4, v3, v12

    const/4 v4, 0x2

    const-class v6, Lorg/telegram/ui/Cells/PollEditTextCell;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v3, v4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1781
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v17, 0x0

    move-object v14, v2

    move/from16 v21, v24

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v13

    sget-object v26, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v24, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v3, v13

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCell;

    aput-object v7, v6, v13

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v6

    move/from16 v31, v22

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v38, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCell;

    aput-object v7, v6, v13

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v40

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move-object/from16 v39, v6

    invoke-direct/range {v36 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCell;

    aput-object v7, v6, v13

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v6

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v29, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCell;

    aput-object v7, v6, v13

    const-string v7, "ImageView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v6

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v6, v3, v13

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v18, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    move/from16 v21, v30

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v6, v13

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v6

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v6, v13

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v35

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v6

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v4, v13

    const-string v6, "adminTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_profile_creatorIcon:I

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v4, v13

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v36

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/16 v34, 0x0

    const/16 v39, 0x0

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/UserCell;

    aput-object v4, v3, v13

    const-string v4, "nameTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell;

    aput-object v2, v5, v13

    const-string v2, "statusColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, v14

    move-object v9, v11

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell;

    aput-object v2, v5, v13

    const-string v2, "statusOnlineColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    move-object v2, v14

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v4, v13

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v17, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public loadInvites()V
    .locals 3

    .line 329
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->loadingInvites:Z

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->loadingInvites:Z

    .line 336
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatlists_getExportedInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatlists_getExportedInvites;-><init>()V

    .line 337
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChatlistDialogFilter;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChatlistDialogFilter;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatlists_getExportedInvites;->chatlist:Lorg/telegram/tgnet/TLRPC$TL_inputChatlistDialogFilter;

    .line 338
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputChatlistDialogFilter;->filter_id:I

    .line 339
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->requestingInvitesReqId:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 924
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    .line 323
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    .line 324
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 355
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 356
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->requestingInvitesReqId:I

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/FilterCreateActivity;->requestingInvitesReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 914
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 915
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->showBulletinOnResume:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 918
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setDoneCallback(Lcom/iMe/fork/utils/Callbacks$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lorg/telegram/messenger/MessagesController$DialogFilter;",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneCallback:Lcom/iMe/fork/utils/Callbacks$Callback2;

    return-void
.end method
