.class public final synthetic Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelBoostLayout;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChannelBoostLayout;

    iput-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelBoostLayout;->$r8$lambda$pPqW5UjUuRJWvoRpG4IiPrQ-Z-A(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V

    return-void
.end method
