.class Lorg/telegram/messenger/TranslateController$StoryKey;
.super Ljava/lang/Object;
.source "TranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/TranslateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoryKey"
.end annotation


# instance fields
.field public dialogId:J

.field public storyId:I


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 2

    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    iput-wide v0, p0, Lorg/telegram/messenger/TranslateController$StoryKey;->dialogId:J

    .line 1136
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput p1, p0, Lorg/telegram/messenger/TranslateController$StoryKey;->storyId:I

    return-void
.end method
