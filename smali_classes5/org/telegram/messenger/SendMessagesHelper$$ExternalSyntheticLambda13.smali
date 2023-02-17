.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$1:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$10:Ljava/util/ArrayList;

.field public final synthetic f$11:Z

.field public final synthetic f$12:I

.field public final synthetic f$13:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_document;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/HashMap;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:J

.field public final synthetic f$7:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$8:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/messenger/MessageObject;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/messenger/AccountInstance;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$2:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$4:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$5:Ljava/lang/String;

    iput-wide p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$6:J

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$7:Lorg/telegram/messenger/MessageObject;

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$8:Lorg/telegram/messenger/MessageObject;

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$9:Ljava/lang/String;

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$10:Ljava/util/ArrayList;

    iput-boolean p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$11:Z

    iput p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$12:I

    iput-object p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$13:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/messenger/AccountInstance;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$2:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$4:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$5:Ljava/lang/String;

    iget-wide v6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$6:J

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$7:Lorg/telegram/messenger/MessageObject;

    iget-object v9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$8:Lorg/telegram/messenger/MessageObject;

    iget-object v10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$9:Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$10:Ljava/util/ArrayList;

    iget-boolean v12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$11:Z

    iget v13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$12:I

    iget-object v14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda13;->f$13:Ljava/lang/String;

    invoke-static/range {v0 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$vcwVWQThFSWK0QvnUlVUWH3XesU(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;)V

    return-void
.end method
