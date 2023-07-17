.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Ljava/util/HashMap;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:Landroidx/collection/LongSparseArray;

.field public final synthetic f$5:J

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Landroidx/collection/LongSparseArray;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$1:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$4:Landroidx/collection/LongSparseArray;

    iput-wide p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$5:J

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$1:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$4:Landroidx/collection/LongSparseArray;

    iget-wide v5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$5:J

    iget-boolean v7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda140;->f$6:Z

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$rLmz_ol-04bXegZFbk93Wmh82yo(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Landroidx/collection/LongSparseArray;JZ)V

    return-void
.end method
