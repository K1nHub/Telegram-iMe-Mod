.class public final synthetic Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileUploadOperation;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[B

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileUploadOperation;II[BIIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/FileUploadOperation;

    iput p2, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$3:[B

    iput p5, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$4:I

    iput p6, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$5:I

    iput p7, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$6:I

    iput-wide p8, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$7:J

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/FileUploadOperation;

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$2:I

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$3:[B

    iget v4, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$4:I

    iget v5, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$5:I

    iget v6, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$6:I

    iget-wide v7, p0, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;->f$7:J

    move-object v9, p1

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/FileUploadOperation;->$r8$lambda$06_JEIqHeimac78YhLgoyYozb2A(Lorg/telegram/messenger/FileUploadOperation;II[BIIIJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
