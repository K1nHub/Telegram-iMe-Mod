.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field public final synthetic f$10:Ljava/util/ArrayList;

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$14:Z

.field public final synthetic f$15:I

.field public final synthetic f$16:I

.field public final synthetic f$17:I

.field public final synthetic f$18:I

.field public final synthetic f$19:I

.field public final synthetic f$2:Z

.field public final synthetic f$20:I

.field public final synthetic f$21:Ljava/util/ArrayList;

.field public final synthetic f$22:Ljava/util/HashMap;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;ZZIZIIIJLjava/util/ArrayList;IIIZIIIIIILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$0:Lorg/telegram/messenger/MessagesController;

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$1:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move v1, p3

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$2:Z

    move v1, p4

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$3:Z

    move v1, p5

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$4:I

    move v1, p6

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$5:Z

    move v1, p7

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$6:I

    move v1, p8

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$7:I

    move v1, p9

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$8:I

    move-wide v1, p10

    iput-wide v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$9:J

    move-object v1, p12

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$10:Ljava/util/ArrayList;

    move/from16 v1, p13

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$11:I

    move/from16 v1, p14

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$12:I

    move/from16 v1, p15

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$13:I

    move/from16 v1, p16

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$14:Z

    move/from16 v1, p17

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$15:I

    move/from16 v1, p18

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$16:I

    move/from16 v1, p19

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$17:I

    move/from16 v1, p20

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$18:I

    move/from16 v1, p21

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$19:I

    move/from16 v1, p22

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$20:I

    move-object/from16 v1, p23

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$21:Ljava/util/ArrayList;

    move-object/from16 v1, p24

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$22:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$1:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-boolean v3, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$2:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$3:Z

    iget v5, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$4:I

    iget-boolean v6, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$5:Z

    iget v7, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$6:I

    iget v8, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$7:I

    iget v9, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$8:I

    iget-wide v10, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$9:J

    iget-object v12, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$10:Ljava/util/ArrayList;

    iget v13, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$11:I

    iget v14, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$12:I

    iget v15, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$13:I

    move-object/from16 v25, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$14:Z

    move/from16 v16, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$15:I

    move/from16 v17, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$16:I

    move/from16 v18, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$17:I

    move/from16 v19, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$18:I

    move/from16 v20, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$19:I

    move/from16 v21, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$20:I

    move/from16 v22, v1

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$21:Ljava/util/ArrayList;

    move-object/from16 v23, v1

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda214;->f$22:Ljava/util/HashMap;

    move-object/from16 v24, v1

    move-object/from16 v1, v25

    invoke-static/range {v1 .. v24}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$Wzztq01renupK3OHwahkolMK5Og(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;ZZIZIIIJLjava/util/ArrayList;IIIZIIIIIILjava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method
