.class public interface abstract Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
.super Ljava/lang/Object;
.source "PhotoAlbumPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoAlbumPickerActivityDelegate"
.end annotation


# virtual methods
.method public abstract didSelectPhotos(Ljava/util/ArrayList;ZILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;",
            ">;ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startPhotoSelectActivity()V
.end method
