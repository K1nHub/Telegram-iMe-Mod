.class public final Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "MediaEditManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/common/MediaEditManager;->openStickerEditor(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $isVideo:Z

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field final synthetic this$0:Lcom/smedialink/manager/common/MediaEditManager;


# direct methods
.method public static synthetic $r8$lambda$E9CM0PraBiaBKram9FQfBzLHDZ0(Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Lcom/smedialink/manager/common/MediaEditManager;ZILjava/lang/String;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->sendButtonPressed$lambda-1(Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Lcom/smedialink/manager/common/MediaEditManager;ZILjava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/MediaController$PhotoEntry;Lcom/smedialink/manager/common/MediaEditManager;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-object p2, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->this$0:Lcom/smedialink/manager/common/MediaEditManager;

    iput-object p3, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->$path:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->$isVideo:Z

    .line 275
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method

.method private static final sendButtonPressed$lambda-1(Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Lcom/smedialink/manager/common/MediaEditManager;ZILjava/lang/String;I)V
    .locals 1

    const-string v0, "$info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    iput-boolean p5, v0, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    .line 305
    invoke-static {p1}, Lcom/smedialink/manager/common/MediaEditManager;->access$getDelegate$p(Lcom/smedialink/manager/common/MediaEditManager;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->sendEditedSticker(Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;ZILjava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollAway()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 278
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 279
    iget-object v1, v0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->$path:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->$isVideo:Z

    .line 280
    iget-object v5, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 281
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 282
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 283
    iput-boolean v4, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 284
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 285
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 286
    iget v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    if-eqz v4, :cond_1

    .line 289
    iget-object v1, v0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->this$0:Lcom/smedialink/manager/common/MediaEditManager;

    invoke-static {v1}, Lcom/smedialink/manager/common/MediaEditManager;->access$getParentFragment$p(Lcom/smedialink/manager/common/MediaEditManager;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v7

    .line 291
    iget-object v1, v0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->this$0:Lcom/smedialink/manager/common/MediaEditManager;

    invoke-static {v1}, Lcom/smedialink/manager/common/MediaEditManager;->access$getParentFragment$p(Lcom/smedialink/manager/common/MediaEditManager;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v1, "parentFragment.parentActivity"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    new-instance v6, Lcom/smedialink/model/dialog/ListDialogModel;

    .line 293
    sget v1, Lorg/telegram/messenger/R$string;->sticker_edit_send_as:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 297
    sget v4, Lorg/telegram/messenger/R$string;->AttachGif:I

    const-string v5, "AttachGif"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    .line 298
    sget v4, Lorg/telegram/messenger/R$string;->AttachVideo:I

    const-string v5, "AttachVideo"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 296
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v6

    .line 292
    invoke-direct/range {v9 .. v15}, Lcom/smedialink/model/dialog/ListDialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v3, v0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->this$0:Lcom/smedialink/manager/common/MediaEditManager;

    new-instance v9, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;

    move-object v1, v9

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v10, v6

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Lcom/smedialink/manager/common/MediaEditManager;ZILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v8, v10, v9, v1, v1}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialogWithSelectableList(Landroid/content/Context;Lcom/smedialink/model/dialog/ListDialogModel;Lorg/fork/utils/Callbacks$Callback1;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 289
    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    .line 312
    :cond_1
    iget-object v1, v0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->this$0:Lcom/smedialink/manager/common/MediaEditManager;

    invoke-static {v1}, Lcom/smedialink/manager/common/MediaEditManager;->access$getDelegate$p(Lcom/smedialink/manager/common/MediaEditManager;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->sendEditedSticker(Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;ZILjava/lang/String;)V

    :goto_1
    return-void
.end method
