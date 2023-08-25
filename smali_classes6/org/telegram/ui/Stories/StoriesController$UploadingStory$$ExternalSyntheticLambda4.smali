.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_updateStory;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updateStory;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updateStory;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->$r8$lambda$L8cp6NnkQ-RB79ne1fgw3Nq_3Dc(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V

    return-void
.end method
