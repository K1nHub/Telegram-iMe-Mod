.class public final synthetic Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;

    iput-object p2, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;

    iget-object v1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->$r8$lambda$e11RQO6PUJmtSEHTloNyF3kyhac(Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;)V

    return-void
.end method
