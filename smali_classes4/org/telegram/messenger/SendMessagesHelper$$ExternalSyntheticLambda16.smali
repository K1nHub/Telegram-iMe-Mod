.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$1:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$10:Z

.field public final synthetic f$11:I

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$13:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_photo;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

.field public final synthetic f$5:Ljava/util/HashMap;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:J

.field public final synthetic f$8:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$9:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_photo;ZLorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Ljava/util/HashMap;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/messenger/MessageObject;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/messenger/AccountInstance;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$2:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iput-boolean p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$3:Z

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$4:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$5:Ljava/util/HashMap;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$6:Ljava/lang/String;

    iput-wide p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$7:J

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$8:Lorg/telegram/messenger/MessageObject;

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$9:Lorg/telegram/messenger/MessageObject;

    iput-boolean p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$10:Z

    iput p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$11:I

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$12:Ljava/lang/String;

    iput-object p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$13:Lorg/telegram/tgnet/TLRPC$StoryItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/messenger/AccountInstance;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$2:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-boolean v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$3:Z

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$4:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$5:Ljava/util/HashMap;

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$6:Ljava/lang/String;

    iget-wide v7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$7:J

    iget-object v9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$8:Lorg/telegram/messenger/MessageObject;

    iget-object v10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$9:Lorg/telegram/messenger/MessageObject;

    iget-boolean v11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$10:Z

    iget v12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$11:I

    iget-object v13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$12:Ljava/lang/String;

    iget-object v14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda16;->f$13:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static/range {v0 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$VNwG0sFs4uINEFEFEEjrYmyDmvI(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_photo;ZLorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Ljava/util/HashMap;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    return-void
.end method
