.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->$r8$lambda$VkoN3YGNUkdlITREVJL03li3Jk4(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/tgnet/TLRPC$TL_userStories;)I

    move-result p1

    return p1
.end method
