.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/VideoEditedInfo;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Ljava/util/ArrayList;

.field public final synthetic f$11:Z

.field public final synthetic f$12:I

.field public final synthetic f$13:Ljava/lang/String;

.field public final synthetic f$14:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$5:Ljava/lang/CharSequence;

.field public final synthetic f$6:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$9:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JILorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;ZILjava/lang/String;Z)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$0:Lorg/telegram/messenger/VideoEditedInfo;

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$1:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$2:J

    move v1, p5

    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$3:I

    move-object v1, p6

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$4:Lorg/telegram/messenger/AccountInstance;

    move-object v1, p7

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$5:Ljava/lang/CharSequence;

    move-object v1, p8

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$6:Lorg/telegram/messenger/MessageObject;

    move v1, p9

    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$7:Z

    move-object v1, p10

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$8:Lorg/telegram/messenger/MessageObject;

    move-object v1, p11

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$9:Lorg/telegram/messenger/MessageObject;

    move-object v1, p12

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$10:Ljava/util/ArrayList;

    move/from16 v1, p13

    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$11:Z

    move/from16 v1, p14

    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$12:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$13:Ljava/lang/String;

    move/from16 v1, p16

    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$14:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$0:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$1:Ljava/lang/String;

    iget-wide v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$2:J

    iget v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$3:I

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$4:Lorg/telegram/messenger/AccountInstance;

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$5:Ljava/lang/CharSequence;

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$6:Lorg/telegram/messenger/MessageObject;

    iget-boolean v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$7:Z

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$8:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$9:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$10:Ljava/util/ArrayList;

    iget-boolean v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$11:Z

    iget v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$12:I

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$13:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda73;->f$14:Z

    move/from16 v17, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-static/range {v1 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$TOXw33SbHmntXR_NiMeZUnIaX4c(Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JILorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;ZILjava/lang/String;Z)V

    return-void
.end method
