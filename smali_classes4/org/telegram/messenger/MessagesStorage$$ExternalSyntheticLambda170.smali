.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageLoaderLogger;

.field public final synthetic f$10:Z

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:Z

.field public final synthetic f$14:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/MessageLoaderLogger;JJIIIIIIZIIZZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$0:Lorg/telegram/messenger/MessagesStorage;

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$1:Lorg/telegram/messenger/MessageLoaderLogger;

    move-wide v1, p3

    iput-wide v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$2:J

    move-wide v1, p5

    iput-wide v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$3:J

    move v1, p7

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$4:I

    move v1, p8

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$5:I

    move v1, p9

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$6:I

    move v1, p10

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$7:I

    move v1, p11

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$8:I

    move v1, p12

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$9:I

    move/from16 v1, p13

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$10:Z

    move/from16 v1, p14

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$11:I

    move/from16 v1, p15

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$12:I

    move/from16 v1, p16

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$13:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$14:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$1:Lorg/telegram/messenger/MessageLoaderLogger;

    iget-wide v3, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$2:J

    iget-wide v5, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$3:J

    iget v7, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$4:I

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$5:I

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$6:I

    iget v10, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$7:I

    iget v11, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$8:I

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$9:I

    iget-boolean v13, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$10:Z

    iget v14, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$11:I

    iget v15, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$12:I

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$13:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$14:Z

    move/from16 v17, v1

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v17}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$YufYHiUJla9RbgXBz0_lWpe6mQI(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/MessageLoaderLogger;JJIIIIIIZIIZZ)V

    return-void
.end method
