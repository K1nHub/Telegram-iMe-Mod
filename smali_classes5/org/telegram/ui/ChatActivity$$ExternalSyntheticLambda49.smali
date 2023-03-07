.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda49;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda49;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda49;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda49;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda49;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda49;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$sf8hHbRJB5a6ip63ggVX679_6M0(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V

    return-void
.end method
