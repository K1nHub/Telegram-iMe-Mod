.class public final synthetic Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->$r8$lambda$S5976LLD_uXTd9KoRqmZ_X0ifdo(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;)V

    return-void
.end method
