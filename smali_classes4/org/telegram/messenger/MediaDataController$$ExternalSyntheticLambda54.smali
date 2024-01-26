.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:J

.field public final synthetic f$10:Z

.field public final synthetic f$11:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public final synthetic f$12:Z

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

.field public final synthetic f$4:J

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:J

.field public final synthetic f$8:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$9:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;JIIJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$0:Lorg/telegram/messenger/MediaDataController;

    move-wide v1, p2

    iput-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$1:J

    move-object v1, p4

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$2:Lorg/telegram/tgnet/TLObject;

    move-object v1, p5

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    move-wide v1, p6

    iput-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$4:J

    move v1, p8

    iput v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$5:I

    move v1, p9

    iput v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$6:I

    move-wide v1, p10

    iput-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$7:J

    move-object v1, p12

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$8:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v1, p13

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$9:Lorg/telegram/tgnet/TLRPC$Chat;

    move/from16 v1, p14

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$10:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$11:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move/from16 v1, p16

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$12:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$1:J

    iget-object v4, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v5, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget-wide v6, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$4:J

    iget v8, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$5:I

    iget v9, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$6:I

    iget-wide v10, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$7:J

    iget-object v12, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$8:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v13, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$9:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v14, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$10:Z

    iget-object v15, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$11:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda54;->f$12:Z

    move/from16 v17, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-static/range {v1 .. v16}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$f9M87X2GpO4blXtyvYjv_6SoXpA(Lorg/telegram/messenger/MediaDataController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;JIIJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    return-void
.end method
