.class public final synthetic Lorg/telegram/ui/ChatActivity$121$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$121;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$121;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$121$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChatActivity$121;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$121$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final onProfileSelected(Lorg/telegram/ui/Components/ReactedUsersListView;JLorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$121$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChatActivity$121;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$121$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/MessageObject;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$121;->$r8$lambda$t_BwORADgTtebgG9Uw2xwZcjQqU(Lorg/telegram/ui/ChatActivity$121;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactedUsersListView;JLorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V

    return-void
.end method
