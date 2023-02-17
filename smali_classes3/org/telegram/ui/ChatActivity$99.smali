.class Lorg/telegram/ui/ChatActivity$99;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openPhotosEditor(Ljava/util/ArrayList;Ljava/lang/CharSequence;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$checked:[Z

.field final synthetic val$entries:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;[Z)V
    .locals 0

    .line 17789
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$99;->val$entries:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$99;->val$checked:[Z

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollAway()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isPhotoChecked(I)Z
    .locals 1

    .line 17812
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$99;->val$checked:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;Z)V
    .locals 6

    .line 17797
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 17798
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$99;->val$checked:[Z

    aget-boolean p2, p2, p1

    if-nez p2, :cond_0

    .line 17799
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$99;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 17802
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$99;->val$entries:Ljava/util/ArrayList;

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->access$45000(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;ZIZLjava/lang/String;)V

    return-void
.end method

.method public setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)I
    .locals 0

    return p1
.end method
