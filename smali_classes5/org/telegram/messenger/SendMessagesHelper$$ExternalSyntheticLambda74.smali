.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_document;

.field public final synthetic f$1:[Landroid/graphics/Bitmap;

.field public final synthetic f$10:Z

.field public final synthetic f$11:I

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$13:Lorg/telegram/tgnet/TLRPC$TL_photo;

.field public final synthetic f$14:Lorg/telegram/tgnet/TLRPC$TL_game;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:J

.field public final synthetic f$6:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$7:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$8:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field public final synthetic f$9:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_document;[Landroid/graphics/Bitmap;[Ljava/lang/String;Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;ZILjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/tgnet/TLRPC$TL_game;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$0:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$1:[Landroid/graphics/Bitmap;

    move-object v1, p3

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$2:[Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$3:Lorg/telegram/messenger/AccountInstance;

    move-object v1, p5

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$4:Ljava/lang/String;

    move-wide v1, p6

    iput-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$5:J

    move-object v1, p8

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$6:Lorg/telegram/messenger/MessageObject;

    move-object v1, p9

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$7:Lorg/telegram/messenger/MessageObject;

    move-object v1, p10

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$8:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object v1, p11

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$9:Ljava/util/HashMap;

    move v1, p12

    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$10:Z

    move/from16 v1, p13

    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$11:I

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$12:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$13:Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$14:Lorg/telegram/tgnet/TLRPC$TL_game;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$0:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$1:[Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$2:[Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$3:Lorg/telegram/messenger/AccountInstance;

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$4:Ljava/lang/String;

    iget-wide v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$5:J

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$6:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$7:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$8:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$9:Ljava/util/HashMap;

    iget-boolean v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$10:Z

    iget v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$11:I

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$12:Ljava/lang/String;

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$13:Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 v16, v15

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda74;->f$14:Lorg/telegram/tgnet/TLRPC$TL_game;

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v1 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$-sQvcn5Umd0K5unhWi9aSLdypew(Lorg/telegram/tgnet/TLRPC$TL_document;[Landroid/graphics/Bitmap;[Ljava/lang/String;Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;ZILjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/tgnet/TLRPC$TL_game;)V

    return-void
.end method
