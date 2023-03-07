.class public interface abstract Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;
.super Ljava/lang/Object;
.source "ChatAttachAlertDocumentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DocumentSelectActivityDelegate"
.end annotation


# virtual methods
.method public abstract didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;ZZ)V
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
.end method

.method public abstract didSelectPhotos(Ljava/util/ArrayList;ZILjava/lang/String;Z)V
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
.end method

.method public abstract startDocumentSelectActivity()V
.end method

.method public abstract startMusicSelectActivity()V
.end method
