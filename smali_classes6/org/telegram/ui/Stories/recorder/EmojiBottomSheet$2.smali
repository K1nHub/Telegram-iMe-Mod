.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$2;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "EmojiBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$2;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 0

    .line 828
    check-cast p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->bind(I)V

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 2

    .line 824
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$2;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$2;->val$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
