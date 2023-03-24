.class public Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistGlobalSearchParams"
.end annotation


# instance fields
.field final dialogId:J

.field public endReached:Z

.field final filter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

.field public folderId:I

.field final maxDate:J

.field final minDate:J

.field public nextSearchRate:I

.field final query:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 0

    .line 5240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5241
    iput-object p8, p0, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->filter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 5242
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->query:Ljava/lang/String;

    .line 5243
    iput-wide p2, p0, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->dialogId:J

    .line 5244
    iput-wide p4, p0, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->minDate:J

    .line 5245
    iput-wide p6, p0, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->maxDate:J

    return-void
.end method
