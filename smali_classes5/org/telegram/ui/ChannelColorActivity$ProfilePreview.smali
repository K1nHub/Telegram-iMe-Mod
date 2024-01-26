.class Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;
.super Landroid/widget/FrameLayout;
.source "ChannelColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilePreview"
.end annotation


# instance fields
.field public final backgroundView:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

.field public final profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelColorActivity;Landroid/content/Context;)V
    .locals 8

    .line 1123
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    .line 1124
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1125
    new-instance p2, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$4200(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->backgroundView:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1126
    invoke-virtual {p2, v0}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setProgressToGradient(F)V

    const/4 v0, 0x1

    .line 1127
    iput-boolean v0, p2, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->ignoreMeasure:Z

    const/4 v0, -0x1

    const/16 v1, 0x86

    const/16 v2, 0x77

    .line 1128
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1129
    new-instance p2, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$4300(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v4

    iget-wide v5, p1, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$4400(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    const/16 p1, 0x68

    const/16 v1, 0x50

    .line 1130
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setColor(IZ)V
    .locals 2

    .line 1134
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(IZ)V

    .line 1135
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->backgroundView:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$4500(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setColor(IIZ)V

    return-void
.end method

.method public setEmoji(JZ)V
    .locals 1

    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setEmoji(JZ)V

    return-void
.end method

.method public setEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Z)V
    .locals 3

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setStatusEmoji(JZ)V

    return-void
.end method
