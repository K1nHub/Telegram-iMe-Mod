.class public final synthetic Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->$r8$lambda$NA4msLBJLyLajQOTW45b4Ld9V_4(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
