.class Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1$1;
.super Ljava/lang/Object;
.source "InviteLinkBottomSheet.java"

# interfaces
.implements Lorg/telegram/ui/LinkEditActivity$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;->editLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1$1;->this$2:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkCreated(Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    return-void
.end method

.method public onLinkEdited(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 611
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1$1;->this$2:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;->this$1:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->inviteDelegate:Lorg/telegram/ui/Components/InviteLinkBottomSheet$InviteDelegate;

    if-eqz p2, :cond_0

    .line 612
    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$InviteDelegate;->onLinkEdited(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    :cond_0
    return-void
.end method

.method public onLinkRemoved(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    return-void
.end method

.method public revokeLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    return-void
.end method
