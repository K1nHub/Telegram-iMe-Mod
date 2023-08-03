.class public final synthetic Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesStorage;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:J

.field public final synthetic f$3:[I

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;J[ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/ui/Stories/StoriesStorage;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;->f$1:Ljava/util/ArrayList;

    iput-wide p3, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;->f$3:[I

    iput-object p6, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/ui/Stories/StoriesStorage;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;->f$1:Ljava/util/ArrayList;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;->f$2:J

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;->f$3:[I

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;->f$4:Ljava/lang/Runnable;

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Stories/StoriesStorage;->$r8$lambda$BKtCCRKBXsCeuPs-94dqKU1-50k(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;J[ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
