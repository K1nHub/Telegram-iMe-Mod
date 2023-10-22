.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;ILorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda27;->f$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda27;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda27;->f$2:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda27;->f$0:Lorg/telegram/ui/ChatActivity;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda27;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda27;->f$2:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$j0_uKkwLtNqeO6tYE0yJAe_WpJA(Lorg/telegram/ui/ChatActivity;ILorg/telegram/ui/Cells/ChatMessageCell;Landroid/content/DialogInterface;)V

    return-void
.end method
