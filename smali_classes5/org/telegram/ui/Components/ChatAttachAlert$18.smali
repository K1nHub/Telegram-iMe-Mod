.class Lorg/telegram/ui/Components/ChatAttachAlert$18;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 3269
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;ZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;ZI",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 3272
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz v2, :cond_0

    .line 3273
    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;ZZ)V

    goto :goto_0

    .line 3274
    :cond_0
    instance-of v2, v1, Lorg/telegram/ui/PassportActivity;

    if-eqz v2, :cond_1

    .line 3275
    check-cast v1, Lorg/telegram/ui/PassportActivity;

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual {v1, p1, p2, v4, v5}, Lorg/telegram/ui/PassportActivity;->didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public didSelectPhotos(Ljava/util/ArrayList;ZILjava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;",
            ">;ZI",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 3281
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 3282
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity;->didSelectPhotos(Ljava/util/ArrayList;ZILjava/lang/String;Z)V

    goto :goto_0

    .line 3283
    :cond_0
    instance-of p4, v0, Lorg/telegram/ui/PassportActivity;

    if-eqz p4, :cond_1

    .line 3284
    check-cast v0, Lorg/telegram/ui/PassportActivity;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->didSelectPhotos(Ljava/util/ArrayList;ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startDocumentSelectActivity()V
    .locals 2

    .line 3290
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz v1, :cond_0

    .line 3291
    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    goto :goto_0

    .line 3292
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/PassportActivity;

    if-eqz v1, :cond_1

    .line 3293
    check-cast v0, Lorg/telegram/ui/PassportActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PassportActivity;->startDocumentSelectActivity()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startMusicSelectActivity()V
    .locals 2

    .line 3299
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$13700(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    return-void
.end method
