.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:[Landroid/graphics/Bitmap;

.field public final synthetic f$10:Lorg/telegram/messenger/MessageObject$SendAnimationData;

.field public final synthetic f$11:Ljava/lang/String;

.field public final synthetic f$12:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$13:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$4:J

.field public final synthetic f$5:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$6:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$7:Z

.field public final synthetic f$8:I

.field public final synthetic f$9:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;[Landroid/graphics/Bitmap;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$1:[Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$3:Lorg/telegram/tgnet/TLRPC$Document;

    iput-wide p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$4:J

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$5:Lorg/telegram/messenger/MessageObject;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$6:Lorg/telegram/messenger/MessageObject;

    iput-boolean p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$7:Z

    iput p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$8:I

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$9:Ljava/lang/Object;

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$10:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$11:Ljava/lang/String;

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$12:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$13:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$1:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$3:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$4:J

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$5:Lorg/telegram/messenger/MessageObject;

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$6:Lorg/telegram/messenger/MessageObject;

    iget-boolean v8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$7:Z

    iget v9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$8:I

    iget-object v10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$9:Ljava/lang/Object;

    iget-object v11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$10:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iget-object v12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$11:Ljava/lang/String;

    iget-object v13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$12:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda72;->f$13:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    invoke-static/range {v0 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$4ksZrv5Czy5zAKv3ok7dJznzwzQ(Lorg/telegram/messenger/SendMessagesHelper;[Landroid/graphics/Bitmap;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    return-void
.end method
