.class public final synthetic Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iput p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->$r8$lambda$78d1OT6DjoLrbu3w-6zCeMgYOVQ(Lorg/telegram/ui/Components/EmojiTabsStrip;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
