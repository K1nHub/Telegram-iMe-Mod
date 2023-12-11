.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:I

.field public final synthetic f$11:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$12:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

.field public final synthetic f$5:J

.field public final synthetic f$6:J

.field public final synthetic f$7:I

.field public final synthetic f$8:Z

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Ljava/lang/String;IZLorg/telegram/tgnet/TLRPC$TL_messages_search;JJIZJILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$0:Lorg/telegram/messenger/MediaDataController;

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$1:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$2:I

    move v1, p4

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$3:Z

    move-object v1, p5

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$4:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    move-wide v1, p6

    iput-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$5:J

    move-wide v1, p8

    iput-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$6:J

    move v1, p10

    iput v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$7:I

    move v1, p11

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$8:Z

    move-wide v1, p12

    iput-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$9:J

    move/from16 v1, p14

    iput v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$10:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$11:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$12:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$1:Ljava/lang/String;

    iget v3, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$2:I

    iget-boolean v4, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$3:Z

    iget-object v5, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$4:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget-wide v6, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$5:J

    iget-wide v8, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$6:J

    iget v10, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$7:I

    iget-boolean v11, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$8:Z

    iget-wide v12, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$9:J

    iget v14, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$10:I

    iget-object v15, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$11:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 p1, v1

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda209;->f$12:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v18}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$gZZ5P1UoWE1zpTUr5oA1tqtwOlk(Lorg/telegram/messenger/MediaDataController;Ljava/lang/String;IZLorg/telegram/tgnet/TLRPC$TL_messages_search;JJIZJILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
