.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

.field public final synthetic f$4:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-boolean p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;->f$4:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-boolean v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda0;->f$4:Lorg/telegram/ui/ChatActivity;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$5Ck2vWwI13HNN4E_Tg0hjdNu-yA(Lorg/telegram/messenger/SendMessagesHelper;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
