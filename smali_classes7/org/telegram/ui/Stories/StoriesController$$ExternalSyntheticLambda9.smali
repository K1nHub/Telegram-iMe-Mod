.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_userStories;

.field public final synthetic f$4:J

.field public final synthetic f$5:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController;JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    iput-wide p2, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$1:J

    iput-boolean p4, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$2:Z

    iput-object p5, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$3:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iput-wide p6, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$4:J

    iput-object p8, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$5:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$1:J

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$2:Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$3:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$4:J

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$5:Lorg/telegram/tgnet/TLObject;

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Stories/StoriesController;->$r8$lambda$4FNmOZh6FTO5RgX9CnpG2Bzg9sg(Lorg/telegram/ui/Stories/StoriesController;JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;)V

    return-void
.end method
