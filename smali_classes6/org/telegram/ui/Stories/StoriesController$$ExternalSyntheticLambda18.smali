.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_userStories;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController;JZLorg/telegram/tgnet/TLRPC$TL_userStories;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    iput-wide p2, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;->f$1:J

    iput-boolean p4, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;->f$2:Z

    iput-object p5, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;->f$3:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iput-wide p6, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;->f$4:J

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;->f$1:J

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;->f$2:Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;->f$3:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;->f$4:J

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Stories/StoriesController;->$r8$lambda$Z3K_OgyerBgpU6iEv6pXj-TmX7k(Lorg/telegram/ui/Stories/StoriesController;JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
