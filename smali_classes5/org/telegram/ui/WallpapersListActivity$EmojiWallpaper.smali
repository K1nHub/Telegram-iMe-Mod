.class public Lorg/telegram/ui/WallpapersListActivity$EmojiWallpaper;
.super Ljava/lang/Object;
.source "WallpapersListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/WallpapersListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiWallpaper"
.end annotation


# instance fields
.field public final emoticon:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$EmojiWallpaper;->emoticon:Ljava/lang/String;

    return-void
.end method
