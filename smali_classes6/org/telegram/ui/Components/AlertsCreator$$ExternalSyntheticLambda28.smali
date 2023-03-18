.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject$GroupedMessages;

.field public final synthetic f$10:[Z

.field public final synthetic f$11:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$12:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:[Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:[Landroid/util/SparseArray;

.field public final synthetic f$8:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$9:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IJ[ZZ[Landroid/util/SparseArray;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;[ZLorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$0:Lorg/telegram/messenger/MessageObject;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$1:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$2:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$3:I

    iput-wide p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$4:J

    iput-object p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$5:[Z

    iput-boolean p8, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$6:Z

    iput-object p9, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$7:[Landroid/util/SparseArray;

    iput-object p10, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$8:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p11, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$9:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p12, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$10:[Z

    iput-object p13, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$11:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p14, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$12:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$0:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$1:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    iget-object v3, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$2:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v4, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$3:I

    iget-wide v5, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$4:J

    iget-object v7, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$5:[Z

    iget-boolean v8, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$6:Z

    iget-object v9, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$7:[Landroid/util/SparseArray;

    iget-object v10, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$8:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v11, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$9:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v12, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$10:[Z

    iget-object v13, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$11:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v14, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda28;->f$12:Ljava/lang/Runnable;

    move-object/from16 v15, p1

    move/from16 v16, p2

    invoke-static/range {v1 .. v16}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$8F6VnmXN0AbNBX91gPkVMYDkxFk(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IJ[ZZ[Landroid/util/SparseArray;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;[ZLorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
