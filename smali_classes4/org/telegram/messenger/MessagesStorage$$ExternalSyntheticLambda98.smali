.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Z

.field public final synthetic f$13:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JJIIIIIIZIIZZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$0:Lorg/telegram/messenger/MessagesStorage;

    move-wide v1, p2

    iput-wide v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$1:J

    move-wide v1, p4

    iput-wide v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$2:J

    move v1, p6

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$3:I

    move v1, p7

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$4:I

    move v1, p8

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$5:I

    move v1, p9

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$6:I

    move v1, p10

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$7:I

    move v1, p11

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$8:I

    move v1, p12

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$9:Z

    move/from16 v1, p13

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$10:I

    move/from16 v1, p14

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$11:I

    move/from16 v1, p15

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$12:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$13:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$1:J

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$2:J

    iget v6, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$3:I

    iget v7, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$4:I

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$5:I

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$6:I

    iget v10, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$7:I

    iget v11, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$8:I

    iget-boolean v12, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$9:Z

    iget v13, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$10:I

    iget v14, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$11:I

    iget-boolean v15, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$12:Z

    move/from16 v16, v15

    iget-boolean v15, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda98;->f$13:Z

    move/from16 v17, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-static/range {v1 .. v16}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$UGHjJdztVlsu433ZBa4dUf3LR4g(Lorg/telegram/messenger/MessagesStorage;JJIIIIIIZIIZZ)V

    return-void
.end method
