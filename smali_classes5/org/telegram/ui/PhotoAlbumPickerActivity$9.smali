.class Lorg/telegram/ui/PhotoAlbumPickerActivity$9;
.super Ljava/lang/Object;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;->openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

.field final synthetic val$order:Ljava/util/ArrayList;

.field final synthetic val$photos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    iput-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;->val$photos:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;->val$order:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionButtonPressed(ZZILjava/lang/String;Z)V
    .locals 6

    .line 819
    iget-object p5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    if-nez p1, :cond_0

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;->val$photos:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;->val$order:Ljava/util/ArrayList;

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;Ljava/util/HashMap;Ljava/util/ArrayList;ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic canFinishFragment()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)Z

    move-result v0

    return v0
.end method

.method public onCaptionChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1302(Lorg/telegram/ui/PhotoAlbumPickerActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic onOpenInPressed()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate$-CC;->$default$onOpenInPressed(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    return-void
.end method

.method public selectedPhotosChanged()V
    .locals 0

    return-void
.end method
