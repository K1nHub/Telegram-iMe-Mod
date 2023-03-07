.class public Lorg/telegram/ui/FilterCreateActivity;
.super Lcom/smedialink/ui/base/mvp/JavaMvpFragment;
.source "FilterCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/FilterCreateActivity$ListAdapter;,
        Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

.field private creatingNew:Z

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private excludeAddRow:I

.field private excludeArchivedRow:I

.field private excludeEndRow:I

.field private excludeExpanded:Z

.field private excludeHeaderRow:I

.field private excludeMutedRow:I

.field private excludeReadRow:I

.field private excludeSectionRow:I

.field private excludeShowMoreRow:I

.field private excludeStartRow:I

.field private filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field private filterFabRow:I

.field private filterFabSectionRow:I

.field private hasUserChanged:Z

.field private imageRow:I

.field private includeAddRow:I

.field private includeBotsRow:I

.field private includeChannelsRow:I

.field private includeContactsRow:I

.field private includeEndRow:I

.field private includeExpanded:Z

.field private includeGroupsRow:I

.field private includeHeaderRow:I

.field private includeNonContactsRow:I

.field private includeSectionRow:I

.field private includeShowMoreRow:I

.field private includeStartRow:I

.field private isAutoTopic:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private nameChangedManually:Z

.field private namePreSectionRow:I

.field private nameRow:I

.field private nameSectionRow:I

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

.field private newFilterSettings:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

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

.field private onDoneCallback:Lorg/fork/utils/Callbacks$Callback;

.field private pollEditTextCellWrapper:Lorg/fork/ui/view/PollEditTextCellWrapper;

.field private removeRow:I

.field private removeSectionRow:I

.field private rowCount:I

.field private topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

.field private topicNewIcon:Lcom/smedialink/storage/data/repository/topics/Topic;

.field private final type:Lorg/fork/enums/FilterActivityType;


# direct methods
.method public static synthetic $r8$lambda$1A1ENnVgpCaqDT1D-4u3S9FtVwA(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FilterCreateActivity;->lambda$createView$6(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$2y3SumCpjzlV9UkKZJny69zjmLs(Lorg/telegram/ui/FilterCreateActivity;IZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FilterCreateActivity;->lambda$showRemoveAlert$11(IZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4jkh9k54CIJFMmtN8pjW1MtCRO0(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->lambda$processDone$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$4zvR_mETpPP38a5T9-mlmpZY-nk(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static/range {p0 .. p12}, Lorg/telegram/ui/FilterCreateActivity;->lambda$saveFilterToServer$14(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6_SwPjTJH8K07R_C9zSXGlpOiUY(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$checkDiscard$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$86NEcbP8v0Z5DBmpZiXYcorQ9GU(Lorg/telegram/ui/FilterCreateActivity;Lcom/smedialink/storage/domain/model/filters/FilterIcon;Lcom/smedialink/storage/data/repository/topics/Topic;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$showIconSelectAlert$0(Lcom/smedialink/storage/domain/model/filters/FilterIcon;Lcom/smedialink/storage/data/repository/topics/Topic;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D2XeSwbEh0NA9NJ_OxIsXZ8nCo8(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$createView$7(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Gyja80LQ3qPTal-Bc39Tw74uj5Q(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$createView$3(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HbiGgIxRLsAOYpl6zP1Z5QhpEL0(Lorg/telegram/ui/FilterCreateActivity;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->lambda$createView$1(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JYaajbc7tSx4epzPJQvK2rTgRvc(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$checkDiscard$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KIlr9ZkMfrLhsN595TmUJCRyogA(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$createView$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TVER-7hr2J8euNlr0m6HcTSn82M(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static/range {p0 .. p14}, Lorg/telegram/ui/FilterCreateActivity;->lambda$saveFilterToServer$15(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fLnDPer4cU2YYcRgwIwLMdMe2rY(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$saveFilterToServer$13(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$keYOhTMao2FnUNO-mm8KE8B2s3Y(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FilterCreateActivity;->lambda$createView$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qOdR1YBnWaC37EBIvjgPM99DWJ0(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->lambda$getThemeDescriptions$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$rh62jr0zlCgjQVW2iD8kEeVedRA(Lorg/telegram/ui/FilterCreateActivity;ILjava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FilterCreateActivity;->lambda$createView$2(ILjava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3BHd7GR0GlUTagVKeYB3VY8Zo4(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->lambda$checkDiscard$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 92
    sget-object v5, Lorg/fork/enums/FilterActivityType;->FILTER:Lorg/fork/enums/FilterActivityType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;Lcom/smedialink/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lorg/fork/enums/FilterActivityType;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lorg/fork/enums/FilterActivityType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/topics/TopicModel;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/fork/enums/FilterActivityType;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 228
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;Lcom/smedialink/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lorg/fork/enums/FilterActivityType;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 6

    .line 97
    sget-object v5, Lorg/fork/enums/FilterActivityType;->FILTER:Lorg/fork/enums/FilterActivityType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;Lcom/smedialink/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lorg/fork/enums/FilterActivityType;)V

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

    .line 102
    sget-object v5, Lorg/fork/enums/FilterActivityType;->FILTER:Lorg/fork/enums/FilterActivityType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;Lcom/smedialink/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lorg/fork/enums/FilterActivityType;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;Lcom/smedialink/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lorg/fork/enums/FilterActivityType;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessagesController$DialogFilter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/smedialink/storage/domain/model/topics/TopicModel;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/fork/enums/FilterActivityType;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/base/mvp/JavaMvpFragment;-><init>()V

    const/4 v5, 0x0

    .line 172
    iput v5, v0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    .line 238
    iput-object v4, v0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    .line 239
    sget-object v5, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    if-nez p3, :cond_2

    .line 241
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 242
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 243
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_1

    .line 245
    invoke-virtual {v14, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 246
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 247
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/telegram/messenger/MessagesController;->isArchivedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_1
    new-instance v2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/controller/ForkTopicsController;->calcNextId()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/controller/ForkTopicsController;->calcNextOrder()I

    move-result v12

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object v7, v2

    move-object/from16 v16, v1

    invoke-direct/range {v7 .. v16}, Lcom/smedialink/storage/domain/model/topics/TopicModel;-><init>(JLjava/lang/String;Lcom/smedialink/storage/data/repository/topics/Topic;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 255
    iput-boolean v6, v0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    goto :goto_1

    .line 257
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/FilterCreateActivity;->isAutoTopic:Z

    move-object/from16 v2, p3

    .line 259
    :goto_1
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/smedialink/storage/data/repository/topics/Topic;

    .line 260
    new-instance v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController$DialogFilter;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 261
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 262
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    .line 267
    new-instance v1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 268
    iput-object v2, v0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    return-void

    .line 273
    :cond_3
    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez v1, :cond_5

    .line 275
    new-instance v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController$DialogFilter;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v3, 0x2

    .line 276
    iput v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    .line 277
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersById:Landroid/util/SparseArray;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 278
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    add-int/2addr v3, v6

    iput v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    goto :goto_2

    .line 280
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const-string v3, ""

    iput-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 281
    iput-boolean v6, v0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    .line 283
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v3}, Lorg/fork/controller/FiltersController;->getSettings(I)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getCopy()Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    .line 284
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    .line 285
    iget v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iput v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 288
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 290
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    .line 291
    iget-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->clone()Lorg/telegram/messenger/support/LongSparseIntArray;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/FilterCreateActivity;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/FilterCreateActivity;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/FilterCreateActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/FilterCreateActivity;)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/FilterCreateActivity;)Lcom/smedialink/storage/data/repository/topics/Topic;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/smedialink/storage/data/repository/topics/Topic;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->filterFabSectionRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->filterFabRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeHeaderRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeHeaderRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeStartRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeEndRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->processDone()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeShowMoreRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeStartRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeEndRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeShowMoreRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeContactsRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeSectionRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeNonContactsRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeGroupsRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeChannelsRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeBotsRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeMutedRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeSectionRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeReadRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->removeSectionRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->removeRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeAddRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeAddRow:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeArchivedRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/ui/view/PollEditTextCellWrapper;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lorg/fork/ui/view/PollEditTextCellWrapper;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->nameSectionRow:I

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/FilterCreateActivity;Lorg/fork/ui/view/PollEditTextCellWrapper;)Lorg/fork/ui/view/PollEditTextCellWrapper;
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lorg/fork/ui/view/PollEditTextCellWrapper;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->namePreSectionRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->imageRow:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->showIconSelectAlert()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/FilterCreateActivity;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/FilterCreateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/FilterCreateActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lorg/telegram/ui/FilterCreateActivity;->nameChangedManually:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/FilterCreateActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/FilterCreateActivity;->nameRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/FilterCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->setTextLeft(Landroid/view/View;)V

    return-void
.end method

.method private checkDiscard()Z
    .locals 3

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 667
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 668
    iget-boolean v1, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    if-eqz v1, :cond_1

    .line 669
    sget v1, Lorg/telegram/messenger/R$string;->FilterDiscardNewTitle:I

    const-string v2, "FilterDiscardNewTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 670
    sget v1, Lorg/telegram/messenger/R$string;->FilterDiscardNewAlert:I

    const-string v2, "FilterDiscardNewAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 672
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v2, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_0

    .line 673
    sget v1, Lorg/telegram/messenger/R$string;->topic_create_discard_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 674
    sget v1, Lorg/telegram/messenger/R$string;->topic_create_discard_message:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 677
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->FilterDiscardNewSave:I

    const-string v2, "FilterDiscardNewSave"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 679
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->FilterDiscardTitle:I

    const-string v2, "FilterDiscardTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 681
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v2, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_2

    .line 682
    sget v1, Lorg/telegram/messenger/R$string;->topic_edit_discard_message:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 684
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->FilterDiscardAlert:I

    const-string v2, "FilterDiscardAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 685
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v2, "ApplyTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 687
    :goto_1
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 688
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private checkDoneButton(Z)V
    .locals 5

    .line 979
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

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 981
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v4, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/FilterCreateActivity;->isAutoTopic:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_5

    .line 986
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 987
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    if-nez v0, :cond_4

    .line 988
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->hasChanges()Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 991
    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_6

    return-void

    .line 994
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    .line 996
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_8

    .line 998
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 999
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_c

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1000
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :goto_8
    return-void
.end method

.method private fillFilterName()V
    .locals 5

    .line 618
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->nameChangedManually:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 621
    :cond_0
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int v2, v0, v1

    and-int v3, v2, v1

    const-string v4, ""

    if-ne v3, v1, :cond_2

    .line 624
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 625
    sget v0, Lorg/telegram/messenger/R$string;->FilterNameUnread:I

    const-string v1, "FilterNameUnread"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 626
    :cond_1
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 627
    sget v0, Lorg/telegram/messenger/R$string;->FilterNameNonMuted:I

    const-string v1, "FilterNameNonMuted"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_2
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    and-int v1, v2, v0

    if-eqz v1, :cond_3

    not-int v0, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 632
    sget v0, Lorg/telegram/messenger/R$string;->FilterContacts:I

    const-string v1, "FilterContacts"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_3
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    and-int v1, v2, v0

    if-eqz v1, :cond_4

    not-int v0, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 637
    sget v0, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    const-string v1, "FilterNonContacts"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 639
    :cond_4
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    and-int v1, v2, v0

    if-eqz v1, :cond_5

    not-int v0, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 642
    sget v0, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v1, "FilterGroups"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 644
    :cond_5
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    and-int v1, v2, v0

    if-eqz v1, :cond_6

    not-int v0, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 647
    sget v0, Lorg/telegram/messenger/R$string;->FilterBots:I

    const-string v1, "FilterBots"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_6
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    and-int v1, v2, v0

    if-eqz v1, :cond_7

    not-int v0, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 652
    sget v0, Lorg/telegram/messenger/R$string;->FilterChannels:I

    const-string v1, "FilterChannels"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_8

    .line 655
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_8

    goto :goto_1

    :cond_8
    move-object v4, v0

    .line 658
    :goto_1
    iput-object v4, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/FilterCreateActivity;->nameRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->adapter:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private hasChanges()Z
    .locals 5

    const/4 v0, 0x0

    .line 928
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 930
    iput-boolean v2, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 932
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 933
    iput-boolean v2, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 935
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    if-nez v0, :cond_3

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 939
    iput-boolean v2, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 941
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 944
    iput-boolean v2, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    .line 948
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v1, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_4

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/smedialink/storage/data/repository/topics/Topic;

    if-eq v0, v1, :cond_7

    return v2

    .line 952
    :cond_4
    sget-object v1, Lorg/fork/enums/FilterActivityType;->FILTER:Lorg/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_7

    .line 953
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v0, v1}, Lorg/fork/controller/FiltersController;->getSettings(I)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getCopy()Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v0

    .line 954
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    move-result-object v3

    if-eq v1, v3, :cond_5

    return v2

    .line 957
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getFabs()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getFabs()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 959
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_6

    return v2

    .line 962
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 963
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 964
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 969
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 972
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iget v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    if-eq v0, v1, :cond_9

    return v2

    .line 975
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    return v0
.end method

.method private synthetic lambda$checkDiscard$10(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 687
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 677
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$9(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 685
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$createView$1(Ljava/util/Set;)V
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->setFabs(Ljava/util/Set;)V

    .line 476
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    const/4 p1, 0x0

    .line 477
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    return-void
.end method

.method private synthetic lambda$createView$2(ILjava/util/ArrayList;I)V
    .locals 4

    .line 490
    iput p3, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    .line 491
    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeAddRow:I

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    .line 492
    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 493
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 494
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 495
    iget-object p3, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 496
    iget-object p3, p0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 499
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 500
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 501
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 503
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 504
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_4

    .line 505
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v1, p3}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 506
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 509
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 512
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 514
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_4
    if-ge p3, p2, :cond_5

    .line 515
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 518
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->fillFilterName()V

    .line 519
    invoke-direct {p0, v0}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    .line 520
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 560
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 563
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 565
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->removeFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 566
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesStorage;->deleteDialogFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 567
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 557
    new-instance p2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 542
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object p2, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p1, p2, :cond_0

    .line 543
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {p1, p2}, Lorg/fork/controller/ForkTopicsController;->removeTopicFilterDialogs(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    .line 544
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 549
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 550
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 551
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 552
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 555
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;-><init>()V

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->id:I

    .line 557
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;IFF)V
    .locals 3

    .line 469
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 473
    :cond_0
    iget p4, p0, Lorg/telegram/ui/FilterCreateActivity;->filterFabRow:I

    if-ne p2, p4, :cond_1

    .line 474
    new-instance p1, Lorg/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Ljava/util/HashSet;

    iget-object p4, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {p4}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getFabs()Ljava/util/Set;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p4, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda9;

    invoke-direct {p4, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-direct {p1, p2, p3, p4}, Lorg/fork/ui/dialog/SelectFabsBottomSheet;-><init>(Landroid/content/Context;Ljava/util/Set;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 480
    :cond_1
    iget p4, p0, Lorg/telegram/ui/FilterCreateActivity;->includeShowMoreRow:I

    const/4 v0, 0x1

    if-ne p2, p4, :cond_2

    .line 481
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeExpanded:Z

    .line 482
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    goto/16 :goto_4

    .line 483
    :cond_2
    iget p4, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeShowMoreRow:I

    if-ne p2, p4, :cond_3

    .line 484
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeExpanded:Z

    .line 485
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    goto/16 :goto_4

    .line 486
    :cond_3
    iget p4, p0, Lorg/telegram/ui/FilterCreateActivity;->includeAddRow:I

    const/4 v1, 0x0

    if-eq p2, p4, :cond_a

    iget v2, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeAddRow:I

    if-ne p2, v2, :cond_4

    goto/16 :goto_1

    .line 529
    :cond_4
    iget p4, p0, Lorg/telegram/ui/FilterCreateActivity;->removeRow:I

    if-ne p2, p4, :cond_6

    .line 530
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 531
    sget p2, Lorg/telegram/messenger/R$string;->FilterDelete:I

    const-string p3, "FilterDelete"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 532
    sget p2, Lorg/telegram/messenger/R$string;->FilterDeleteAlert:I

    const-string p3, "FilterDeleteAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 534
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object p3, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p2, p3, :cond_5

    .line 535
    sget p2, Lorg/telegram/messenger/R$string;->topics_remove:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 536
    sget p2, Lorg/telegram/messenger/R$string;->topics_remove_alert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 539
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 540
    sget p2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string p3, "Delete"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 570
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 571
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 572
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_f

    const-string p2, "dialogTextRed2"

    .line 574
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 576
    :cond_6
    iget p4, p0, Lorg/telegram/ui/FilterCreateActivity;->nameRow:I

    if-ne p2, p4, :cond_8

    .line 579
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lorg/fork/ui/view/PollEditTextCellWrapper;

    invoke-virtual {p1, p3}, Lorg/fork/ui/view/PollEditTextCellWrapper;->checkEditTextTouch(F)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 582
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lorg/fork/ui/view/PollEditTextCellWrapper;

    invoke-virtual {p1}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getPollEditTextCell()Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object p1

    .line 584
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 585
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_4

    .line 586
    :cond_8
    instance-of p3, p1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz p3, :cond_f

    .line 587
    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 588
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object p1

    iget p4, p0, Lorg/telegram/ui/FilterCreateActivity;->includeSectionRow:I

    if-ge p2, p4, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, p3, p1, v0}, Lorg/telegram/ui/FilterCreateActivity;->showRemoveAlert(ILjava/lang/CharSequence;Ljava/lang/Object;Z)V

    goto :goto_4

    .line 487
    :cond_a
    :goto_1
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeAddRow:I

    if-ne p2, p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    .line 488
    :goto_2
    new-instance p3, Lorg/telegram/ui/UsersSelectActivity;

    if-ne p2, p4, :cond_c

    const/4 p4, 0x1

    goto :goto_3

    :cond_c
    const/4 p4, 0x0

    :goto_3
    iget v2, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    invoke-direct {p3, p4, p1, v2}, Lorg/telegram/ui/UsersSelectActivity;-><init>(ZLjava/util/ArrayList;I)V

    .line 489
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/FilterCreateActivity;I)V

    invoke-virtual {p3, p1}, Lorg/telegram/ui/UsersSelectActivity;->setDelegate(Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;)V

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object p4, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p1, p4, :cond_e

    .line 524
    iput-boolean v0, p3, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    .line 525
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->includeAddRow:I

    if-ne p2, p1, :cond_d

    const/4 v0, 0x0

    :cond_d
    iput v0, p3, Lorg/telegram/ui/UsersSelectActivity;->topicModeFilterFolderId:I

    .line 528
    :cond_e
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_f
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;I)Z
    .locals 4

    .line 592
    instance-of v0, p1, Lorg/telegram/ui/Cells/UserCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 593
    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 594
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object p1

    iget v2, p0, Lorg/telegram/ui/FilterCreateActivity;->includeSectionRow:I

    const/4 v3, 0x1

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, p2, v0, p1, v1}, Lorg/telegram/ui/FilterCreateActivity;->showRemoveAlert(ILjava/lang/CharSequence;Ljava/lang/Object;Z)V

    return v3

    :cond_1
    return v1
.end method

.method private synthetic lambda$getThemeDescriptions$16()V
    .locals 5

    .line 1382
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_3

    .line 1383
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1385
    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1387
    instance-of v4, v3, Lorg/fork/ui/view/FabsCell;

    if-eqz v4, :cond_0

    .line 1388
    check-cast v3, Lorg/fork/ui/view/FabsCell;

    invoke-virtual {v3}, Lorg/fork/ui/view/FabsCell;->updateColors()V

    goto :goto_1

    .line 1389
    :cond_0
    instance-of v4, v3, Lorg/fork/ui/view/PollEditTextCellWrapper;

    if-eqz v4, :cond_1

    .line 1390
    check-cast v3, Lorg/fork/ui/view/PollEditTextCellWrapper;

    invoke-virtual {v3}, Lorg/fork/ui/view/PollEditTextCellWrapper;->updateColors()V

    goto :goto_1

    .line 1392
    :cond_1
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_2

    .line 1393
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$processDone$12()V
    .locals 3

    .line 786
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 787
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static synthetic lambda$saveFilterToServer$13(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 2

    .line 850
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p1

    .line 851
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

.method private static synthetic lambda$saveFilterToServer$14(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 909
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 912
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 914
    :cond_0
    :goto_0
    invoke-static/range {p2 .. p12}, Lorg/telegram/ui/FilterCreateActivity;->processAddFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$saveFilterToServer$15(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 15

    .line 905
    new-instance v14, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda7;

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

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda7;-><init>(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showIconSelectAlert$0(Lcom/smedialink/storage/domain/model/filters/FilterIcon;Lcom/smedialink/storage/data/repository/topics/Topic;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->setIcon(Lcom/smedialink/storage/domain/model/filters/FilterIcon;)V

    .line 129
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lorg/fork/ui/view/PollEditTextCellWrapper;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/filter/FilterIconExtKt;->iconInfo(Lcom/smedialink/storage/domain/model/filters/FilterIcon;)Lcom/smedialink/ui/folder/FilterIconInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/folder/FilterIconInfo;->getOutlinedIcon()I

    move-result v1

    :cond_0
    invoke-virtual {p2, v1}, Lorg/fork/ui/view/PollEditTextCellWrapper;->setIcon(I)V

    goto :goto_0

    .line 131
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/smedialink/storage/data/repository/topics/Topic;

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lorg/fork/ui/view/PollEditTextCellWrapper;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/smedialink/utils/extentions/model/topic/TopicExtKt;->info(Lcom/smedialink/storage/data/repository/topics/Topic;)Lcom/smedialink/ui/topics/TopicInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/ui/topics/TopicInfo;->getIconResId()I

    move-result v1

    :cond_2
    invoke-virtual {p1, v1}, Lorg/fork/ui/view/PollEditTextCellWrapper;->setIcon(I)V

    :goto_0
    const/4 p1, 0x0

    .line 134
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    return-void
.end method

.method private synthetic lambda$showRemoveAlert$11(IZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 723
    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->includeContactsRow:I

    if-ne p1, p3, :cond_0

    .line 724
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    goto/16 :goto_0

    .line 725
    :cond_0
    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->includeNonContactsRow:I

    if-ne p1, p3, :cond_1

    .line 726
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    goto :goto_0

    .line 727
    :cond_1
    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->includeGroupsRow:I

    if-ne p1, p3, :cond_2

    .line 728
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    goto :goto_0

    .line 729
    :cond_2
    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->includeChannelsRow:I

    if-ne p1, p3, :cond_3

    .line 730
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    goto :goto_0

    .line 731
    :cond_3
    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->includeBotsRow:I

    if-ne p1, p3, :cond_4

    .line 732
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    goto :goto_0

    .line 733
    :cond_4
    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeArchivedRow:I

    if-ne p1, p3, :cond_5

    .line 734
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    goto :goto_0

    .line 735
    :cond_5
    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeMutedRow:I

    if-ne p1, p3, :cond_6

    .line 736
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    goto :goto_0

    .line 737
    :cond_6
    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeReadRow:I

    if-ne p1, p3, :cond_7

    .line 738
    iget p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 741
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->includeStartRow:I

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 743
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeStartRow:I

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 746
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->fillFilterName()V

    .line 747
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    const/4 p1, 0x1

    .line 748
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

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

    .line 792
    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    if-ne v0, p1, :cond_0

    if-eqz p7, :cond_1

    :cond_0
    const/4 p7, -0x1

    .line 793
    iput p7, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->pendingUnreadCount:I

    if-eqz p8, :cond_1

    .line 795
    iput p7, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->unreadCount:I

    .line 798
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 799
    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 800
    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    .line 801
    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    if-eqz p5, :cond_2

    .line 803
    invoke-virtual {p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p0, p6}, Lorg/telegram/messenger/MessagesController;->addFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;Z)V

    goto :goto_0

    .line 805
    :cond_2
    invoke-virtual {p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/MessagesController;->onFilterUpdate(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 807
    :goto_0
    invoke-virtual {p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p6, p2}, Lorg/telegram/messenger/MessagesStorage;->saveDialogFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;ZZ)V

    if-eqz p10, :cond_3

    .line 809
    invoke-interface {p10}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private processDone()V
    .locals 15

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v1, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_1

    .line 761
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->isAutoTopic:Z

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->setName(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/smedialink/storage/data/repository/topics/Topic;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->setIcon(Lcom/smedialink/storage/data/repository/topics/Topic;)V

    .line 765
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    .line 766
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 767
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 768
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 769
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 770
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 772
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 773
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 774
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 775
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v0, v1}, Lorg/fork/controller/ForkTopicsController;->addOrEditTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    .line 776
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 777
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 780
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->onDoneCallback:Lorg/fork/utils/Callbacks$Callback;

    if-eqz v0, :cond_2

    .line 781
    invoke-interface {v0}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    .line 783
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {v0, v1}, Lorg/fork/controller/FiltersController;->addOrEditFilterSettings(Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;)V

    .line 785
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/FilterCreateActivity;->newPinned:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-boolean v8, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    const/4 v9, 0x0

    iget-boolean v10, p0, Lorg/telegram/ui/FilterCreateActivity;->hasUserChanged:Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    new-instance v14, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda5;

    invoke-direct {v14, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    move-object v13, p0

    invoke-static/range {v2 .. v14}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

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

    .line 814
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p10, :cond_1

    .line 819
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual/range {p11 .. p11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 820
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 821
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 825
    :goto_0
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;-><init>()V

    .line 826
    iget v4, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->id:I

    .line 827
    iget v4, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->flags:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->flags:I

    .line 828
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;-><init>()V

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->filter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    .line 829
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->contacts:Z

    .line 830
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->non_contacts:Z

    .line 831
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->groups:Z

    .line 832
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->broadcasts:Z

    .line 833
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->bots:Z

    .line 834
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    and-int v6, p1, v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_muted:Z

    .line 835
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int v6, p1, v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    :goto_7
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_read:Z

    .line 836
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    and-int v6, p1, v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_8
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_archived:Z

    .line 837
    iget v6, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->id:I

    move-object/from16 v13, p2

    .line 838
    iput-object v13, v4, Lorg/telegram/tgnet/TLRPC$DialogFilter;->title:Ljava/lang/String;

    .line 839
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    .line 840
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 841
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v7

    if-eqz v7, :cond_c

    .line 842
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_b

    .line 843
    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v9

    .line 844
    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_a

    .line 847
    :cond_a
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 849
    :cond_b
    new-instance v7, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, v0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/support/LongSparseIntArray;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_c
    const/4 v7, 0x0

    :goto_b
    if-ge v7, v1, :cond_14

    if-nez v7, :cond_d

    .line 865
    iget-object v8, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->filter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$DialogFilter;->include_peers:Ljava/util/ArrayList;

    move-object/from16 v9, p3

    goto :goto_c

    :cond_d
    if-ne v7, v5, :cond_e

    .line 868
    iget-object v8, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->filter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_peers:Ljava/util/ArrayList;

    move-object/from16 v9, p4

    goto :goto_c

    .line 871
    :cond_e
    iget-object v8, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->filter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$DialogFilter;->pinned_peers:Ljava/util/ArrayList;

    move-object v9, v6

    .line 873
    :goto_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v10, :cond_13

    .line 874
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    if-nez v7, :cond_f

    .line 875
    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v12

    if-ltz v12, :cond_f

    goto :goto_e

    .line 878
    :cond_f
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v12

    if-nez v12, :cond_12

    const-wide/16 v17, 0x0

    cmp-long v12, v1, v17

    if-lez v12, :cond_10

    .line 880
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 882
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 883
    iput-wide v1, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 884
    iget-wide v1, v12, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v1, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 885
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    neg-long v1, v1

    .line 888
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 890
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 891
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 892
    iput-wide v1, v12, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    .line 893
    iget-wide v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v1, v12, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 894
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 896
    :cond_11
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 897
    iput-wide v1, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    .line 898
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

    .line 905
    :cond_14
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v11, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;

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

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;-><init>(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    if-nez p10, :cond_15

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

    move-object/from16 v10, p12

    .line 918
    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/FilterCreateActivity;->processAddFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    :cond_15
    :goto_f
    return-void
.end method

.method private setTextLeft(Landroid/view/View;)V
    .locals 4

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->pollEditTextCellWrapper:Lorg/fork/ui/view/PollEditTextCellWrapper;

    if-ne p1, v0, :cond_0

    .line 1007
    invoke-virtual {v0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getPollEditTextCell()Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity;->setTextLeft(Landroid/view/View;)V

    return-void

    .line 1011
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v0, :cond_6

    .line 1012
    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    rsub-int/lit8 v0, v0, 0xc

    int-to-float v2, v0

    const v3, 0x40666668    # 3.6000004f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1015
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setText2(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    if-gez v0, :cond_2

    const-string v2, "windowBackgroundWhiteRedText5"

    goto :goto_1

    :cond_2
    const-string v2, "windowBackgroundWhiteGrayText3"

    .line 1018
    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1019
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1020
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

    .line 1022
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setText2(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private showIconSelectAlert()V
    .locals 7

    .line 126
    new-instance v6, Lorg/fork/ui/dialog/SelectIconBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterSettings:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity;->topicNewIcon:Lcom/smedialink/storage/data/repository/topics/Topic;

    new-instance v5, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/fork/ui/dialog/SelectIconBottomSheet;-><init>(Landroid/app/Activity;Lorg/fork/enums/FilterActivityType;Lcom/smedialink/storage/domain/model/filters/FilterIcon;Lcom/smedialink/storage/data/repository/topics/Topic;Lorg/fork/utils/Callbacks$Callback2;)V

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showRemoveAlert(ILjava/lang/CharSequence;Ljava/lang/Object;Z)V
    .locals 5

    .line 695
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_2

    .line 697
    sget v3, Lorg/telegram/messenger/R$string;->FilterRemoveInclusionTitle:I

    const-string v4, "FilterRemoveInclusionTitle"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 698
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 699
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveInclusionText:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string v4, "FilterRemoveInclusionText"

    invoke-static {v4, p3, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 700
    :cond_0
    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p3, :cond_1

    .line 701
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveInclusionUserText:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string v4, "FilterRemoveInclusionUserText"

    invoke-static {v4, p3, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 703
    :cond_1
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveInclusionChatText:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string v4, "FilterRemoveInclusionChatText"

    invoke-static {v4, p3, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 706
    :cond_2
    sget v3, Lorg/telegram/messenger/R$string;->FilterRemoveExclusionTitle:I

    const-string v4, "FilterRemoveExclusionTitle"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 707
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 708
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveExclusionText:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string v4, "FilterRemoveExclusionText"

    invoke-static {v4, p3, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 709
    :cond_3
    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p3, :cond_4

    .line 710
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveExclusionUserText:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string v4, "FilterRemoveExclusionUserText"

    invoke-static {v4, p3, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 712
    :cond_4
    sget p3, Lorg/telegram/messenger/R$string;->FilterRemoveExclusionChatText:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string v4, "FilterRemoveExclusionChatText"

    invoke-static {v4, p3, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 716
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v3, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p3, v3, :cond_5

    .line 717
    sget p3, Lorg/telegram/messenger/R$string;->topic_remove_chat_title:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 718
    sget p3, Lorg/telegram/messenger/R$string;->topic_remove_chat_message:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {p3, v2}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 721
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 722
    sget p2, Lorg/telegram/messenger/R$string;->StickersRemove:I

    const-string p3, "StickersRemove"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p1, p4}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/FilterCreateActivity;IZ)V

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 750
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 751
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 752
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const-string p2, "dialogTextRed2"

    .line 754
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    return-void
.end method

.method private updateRows()V
    .locals 6

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    .line 303
    iget-boolean v1, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 304
    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->imageRow:I

    .line 305
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->namePreSectionRow:I

    goto :goto_0

    .line 307
    :cond_0
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->imageRow:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 308
    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->namePreSectionRow:I

    .line 310
    :goto_0
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->nameRow:I

    add-int/lit8 v3, v1, 0x1

    .line 311
    iput v3, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->nameSectionRow:I

    .line 313
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v4, Lorg/fork/enums/FilterActivityType;->FILTER:Lorg/fork/enums/FilterActivityType;

    if-ne v1, v4, :cond_1

    add-int/lit8 v0, v3, 0x1

    .line 314
    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/FilterCreateActivity;->filterFabRow:I

    add-int/lit8 v1, v0, 0x1

    .line 315
    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->filterFabSectionRow:I

    goto :goto_1

    .line 317
    :cond_1
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->filterFabSectionRow:I

    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->filterFabRow:I

    .line 318
    iget-boolean v1, p0, Lorg/telegram/ui/FilterCreateActivity;->isAutoTopic:Z

    if-eqz v1, :cond_2

    .line 319
    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    .line 320
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->nameSectionRow:I

    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->nameRow:I

    .line 324
    :cond_2
    :goto_1
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 325
    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->includeAddRow:I

    .line 327
    iget v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    .line 328
    iput v3, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeContactsRow:I

    goto :goto_2

    .line 330
    :cond_3
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->includeContactsRow:I

    .line 332
    :goto_2
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 333
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeNonContactsRow:I

    goto :goto_3

    .line 335
    :cond_4
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->includeNonContactsRow:I

    .line 337
    :goto_3
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 338
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeGroupsRow:I

    goto :goto_4

    .line 340
    :cond_5
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->includeGroupsRow:I

    .line 342
    :goto_4
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 343
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeChannelsRow:I

    goto :goto_5

    .line 345
    :cond_6
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->includeChannelsRow:I

    .line 347
    :goto_5
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 348
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeBotsRow:I

    goto :goto_6

    .line 350
    :cond_7
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->includeBotsRow:I

    .line 353
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x5

    const/16 v3, 0x8

    if-nez v0, :cond_b

    .line 354
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeStartRow:I

    .line 355
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeExpanded:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_8

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_8

    :cond_9
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 356
    :goto_8
    iget v4, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    .line 357
    iput v4, p0, Lorg/telegram/ui/FilterCreateActivity;->includeEndRow:I

    .line 358
    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity;->newAlwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v0, v4, :cond_a

    .line 359
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeShowMoreRow:I

    goto :goto_9

    .line 361
    :cond_a
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->includeShowMoreRow:I

    goto :goto_9

    .line 364
    :cond_b
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->includeStartRow:I

    .line 365
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->includeEndRow:I

    .line 366
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->includeShowMoreRow:I

    .line 368
    :goto_9
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->includeSectionRow:I

    add-int/lit8 v0, v4, 0x1

    .line 369
    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeHeaderRow:I

    add-int/lit8 v4, v0, 0x1

    .line 370
    iput v4, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeAddRow:I

    .line 371
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newFilterFlags:I

    sget v5, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_c

    add-int/lit8 v5, v4, 0x1

    .line 372
    iput v5, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeMutedRow:I

    goto :goto_a

    .line 374
    :cond_c
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeMutedRow:I

    .line 376
    :goto_a
    sget v4, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_d

    .line 377
    iget v4, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeReadRow:I

    goto :goto_b

    .line 379
    :cond_d
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeReadRow:I

    .line 381
    :goto_b
    sget v4, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_e

    .line 382
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeArchivedRow:I

    goto :goto_c

    .line 384
    :cond_e
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeArchivedRow:I

    .line 386
    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 387
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeStartRow:I

    .line 388
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeExpanded:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_f

    goto :goto_d

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_e

    :cond_10
    :goto_d
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 389
    :goto_e
    iget v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    .line 390
    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeEndRow:I

    .line 391
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->newNeverShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_11

    .line 392
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeShowMoreRow:I

    goto :goto_f

    .line 394
    :cond_11
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeShowMoreRow:I

    goto :goto_f

    .line 397
    :cond_12
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeStartRow:I

    .line 398
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeEndRow:I

    .line 399
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeShowMoreRow:I

    .line 401
    :goto_f
    iget v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->excludeSectionRow:I

    .line 403
    iget-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    if-nez v0, :cond_13

    add-int/lit8 v0, v1, 0x1

    .line 404
    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->removeRow:I

    add-int/lit8 v1, v0, 0x1

    .line 405
    iput v1, p0, Lorg/telegram/ui/FilterCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity;->removeSectionRow:I

    goto :goto_10

    .line 407
    :cond_13
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->removeRow:I

    .line 408
    iput v2, p0, Lorg/telegram/ui/FilterCreateActivity;->removeSectionRow:I

    .line 410
    :goto_10
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->adapter:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    if-eqz v0, :cond_14

    .line 411
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_14
    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    .line 924
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    .line 417
    invoke-super {p0, p1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 421
    iget-boolean v2, p0, Lorg/telegram/ui/FilterCreateActivity;->creatingNew:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 423
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v4, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v2, v4, :cond_0

    .line 424
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->topic_new:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 426
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->FilterNew:I

    const-string v5, "FilterNew"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 428
    :cond_1
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(I)V

    const/16 v4, 0x14

    .line 429
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 431
    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v6, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v5, v6, :cond_3

    .line 432
    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 433
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v6, v2, v4, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 434
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 435
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity;->topic:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v4

    invoke-static {v4}, Lcom/smedialink/utils/extentions/model/topic/TopicExtKt;->info(Lcom/smedialink/storage/data/repository/topics/Topic;)Lcom/smedialink/ui/topics/TopicInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/ui/topics/TopicInfo;->getTitleResId()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 438
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

    .line 440
    :cond_4
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/FilterCreateActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/FilterCreateActivity$1;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 452
    sget v2, Lorg/telegram/messenger/R$string;->Save:I

    const-string v4, "Save"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 454
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 455
    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "windowBackgroundGray"

    .line 456
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 458
    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/FilterCreateActivity$2;-><init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 464
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 466
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;-><init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/FilterCreateActivity;->adapter:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 468
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 591
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 600
    invoke-direct {p0, v3}, Lorg/telegram/ui/FilterCreateActivity;->checkDoneButton(Z)V

    .line 601
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/Class;

    const-class v2, Lorg/fork/ui/view/FabsCell;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCell;

    aput-object v4, v3, v12

    const-string v4, "imageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "switchTrackChecked"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    .line 1399
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v5, v12

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v5, v11

    const/4 v6, 0x2

    const-class v7, Lorg/telegram/ui/Cells/PollEditTextCell;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Lorg/telegram/ui/Cells/UserCell;

    aput-object v7, v5, v6

    const/16 v17, 0x0

    const-string v20, "windowBackgroundWhite"

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "windowBackgroundGray"

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const-string v20, "actionBarDefault"

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v28, "actionBarDefault"

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v20, "actionBarDefaultIcon"

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v28, "actionBarDefaultTitle"

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v20, "actionBarDefaultSelector"

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v28, "listSelectorSDK21"

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v12

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    const-string v20, "divider"

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v11, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v6, v12

    const-string v7, "textView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const/16 v28, 0x0

    const-string v29, "windowBackgroundWhiteBlueHeader"

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v5, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v11, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v6, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteRedText5"

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v5, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteBlueText4"

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v11, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v6, v12

    const-string v8, "ImageView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "switchTrackChecked"

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v6, v5, v12

    const/16 v17, 0x0

    const-string v20, "windowBackgroundGrayShadow"

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v6, v11, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v8, v6, v12

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v28, "windowBackgroundGrayShadow"

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteGrayText4"

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v11, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/UserCell;

    aput-object v7, v6, v12

    const-string v7, "adminTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const-string v30, "profile_creatorIcon"

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteGrayIcon"

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v12

    const-string v6, "nameTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const-string v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v12

    const-string v6, "statusColor"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteGrayText"

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    move-object/from16 v29, v2

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v12

    const-string v6, "statusOnlineColor"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteBlueText"

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/FilterCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v4, v12

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v17, 0x0

    const-string v20, "avatar_text"

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v29, "avatar_backgroundRed"

    move-object/from16 v22, v3

    move-object/from16 v28, v2

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v29, "avatar_backgroundOrange"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v29, "avatar_backgroundViolet"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v29, "avatar_backgroundGreen"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v29, "avatar_backgroundCyan"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v29, "avatar_backgroundBlue"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v29, "avatar_backgroundPink"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 614
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    .line 296
    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity;->updateRows()V

    .line 297
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 606
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity;->adapter:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnDoneCallback(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity;->onDoneCallback:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method
