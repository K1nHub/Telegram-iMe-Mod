.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$1;
.super Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
.source "StoryRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromAvatarImage(Lorg/telegram/ui/ProfileActivity$AvatarImageView;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$AvatarImageView;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$1;->val$avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;-><init>()V

    return-void
.end method


# virtual methods
.method protected hide()V
    .locals 2

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$1;->val$avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    .line 275
    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method protected show()V
    .locals 2

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$1;->val$avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    .line 269
    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method
