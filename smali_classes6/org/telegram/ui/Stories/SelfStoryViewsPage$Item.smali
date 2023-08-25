.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;
.super Ljava/lang/Object;
.source "SelfStoryViewsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field user:Lorg/telegram/tgnet/TLRPC$TL_storyView;

.field final viewType:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;I)V
    .locals 0

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    iput p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->viewType:I

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/tgnet/TLRPC$TL_storyView;)V
    .locals 0

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    iput p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->viewType:I

    .line 948
    iput-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/TLRPC$TL_storyView;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/tgnet/TLRPC$TL_storyView;Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V
    .locals 0

    .line 938
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/tgnet/TLRPC$TL_storyView;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V
    .locals 0

    .line 938
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;I)V

    return-void
.end method
