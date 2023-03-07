.class public final synthetic Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->$r8$lambda$6Biax_WnSGUewKzQI_kwK3QLv2w(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Boolean;)V

    return-void
.end method
