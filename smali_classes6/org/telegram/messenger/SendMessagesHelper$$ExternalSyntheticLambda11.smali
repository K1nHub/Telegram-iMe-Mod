.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:J

.field public final synthetic f$10:Ljava/lang/String;

.field public final synthetic f$11:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field public final synthetic f$12:Landroidx/core/view/inputmethod/InputContentInfoCompat;

.field public final synthetic f$13:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$5:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$6:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$7:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$8:Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;JZZLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;Lorg/telegram/tgnet/TLRPC$StoryItem;Landroidx/core/view/inputmethod/InputContentInfoCompat;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$0:Ljava/util/ArrayList;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$1:J

    iput-boolean p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$2:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$3:Z

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$4:Lorg/telegram/messenger/AccountInstance;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$5:Lorg/telegram/messenger/MessageObject;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$6:Lorg/telegram/messenger/MessageObject;

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$7:Lorg/telegram/messenger/MessageObject;

    iput-boolean p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$8:Z

    iput p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$9:I

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$10:Ljava/lang/String;

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$11:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$12:Landroidx/core/view/inputmethod/InputContentInfoCompat;

    iput-boolean p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$13:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$0:Ljava/util/ArrayList;

    iget-wide v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$1:J

    iget-boolean v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$2:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$3:Z

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$4:Lorg/telegram/messenger/AccountInstance;

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$5:Lorg/telegram/messenger/MessageObject;

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$6:Lorg/telegram/messenger/MessageObject;

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$7:Lorg/telegram/messenger/MessageObject;

    iget-boolean v9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$8:Z

    iget v10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$9:I

    iget-object v11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$10:Ljava/lang/String;

    iget-object v12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$11:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$12:Landroidx/core/view/inputmethod/InputContentInfoCompat;

    iget-boolean v14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda11;->f$13:Z

    invoke-static/range {v0 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$6VMtZPFTVcM-Bt2FG6Wy2ByGsx0(Ljava/util/ArrayList;JZZLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;Lorg/telegram/tgnet/TLRPC$StoryItem;Landroidx/core/view/inputmethod/InputContentInfoCompat;Z)V

    return-void
.end method
