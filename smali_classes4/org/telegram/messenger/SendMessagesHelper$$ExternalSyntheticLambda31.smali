.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:[Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$11:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$12:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

.field public final synthetic f$13:Z

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$5:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

.field public final synthetic f$7:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$8:Lorg/telegram/ui/TwoStepVerificationActivity;

.field public final synthetic f$9:Lcom/iMe/fork/utils/Callbacks$Callback2;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;Ljava/util/List;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/TwoStepVerificationActivity;Lcom/iMe/fork/utils/Callbacks$Callback2;[Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$2:Ljava/util/List;

    iput-boolean p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$3:Z

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$4:Lorg/telegram/tgnet/TLObject;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$5:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$6:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$7:Lorg/telegram/ui/ChatActivity;

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$8:Lorg/telegram/ui/TwoStepVerificationActivity;

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$9:Lcom/iMe/fork/utils/Callbacks$Callback2;

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$10:[Lorg/telegram/tgnet/TLObject;

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$11:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$12:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    iput-boolean p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$13:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$2:Ljava/util/List;

    iget-boolean v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$3:Z

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$4:Lorg/telegram/tgnet/TLObject;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$5:Lorg/telegram/messenger/MessageObject;

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$6:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$7:Lorg/telegram/ui/ChatActivity;

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$8:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-object v9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$9:Lcom/iMe/fork/utils/Callbacks$Callback2;

    iget-object v10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$10:[Lorg/telegram/tgnet/TLObject;

    iget-object v11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$11:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$12:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    iget-boolean v13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda31;->f$13:Z

    invoke-static/range {v0 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$qAeyZuRdrfEZUAxQgalDYVKPNL0(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;Ljava/util/List;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/TwoStepVerificationActivity;Lcom/iMe/fork/utils/Callbacks$Callback2;[Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Z)V

    return-void
.end method
