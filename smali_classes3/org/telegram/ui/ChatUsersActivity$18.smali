.class Lorg/telegram/ui/ChatUsersActivity$18;
.super Ljava/lang/Object;
.source "ChatUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$13([Ljava/lang/CharSequence;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;

.field final synthetic val$participant:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 1930
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$18;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$18;->val$participant:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    .line 1944
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$18;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->access$2000(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V
    .locals 8

    .line 1933
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$18;->val$participant:Lorg/telegram/tgnet/TLObject;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_0

    .line 1934
    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1935
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1936
    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1937
    iput-object p4, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    .line 1938
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$18;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/ChatUsersActivity;->access$9800(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;JZ)V

    :cond_0
    return-void
.end method
