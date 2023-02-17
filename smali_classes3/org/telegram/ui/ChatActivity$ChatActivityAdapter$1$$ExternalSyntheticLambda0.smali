.class public final synthetic Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$3:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/ui/Cells/ChatMessageCell;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->$r8$lambda$tKXxuuBJs6-mmAp4B88w9ggLnws(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/content/DialogInterface;I)V

    return-void
.end method
