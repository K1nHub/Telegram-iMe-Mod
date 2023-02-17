.class public final synthetic Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field public final synthetic f$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->$r8$lambda$5vMYiUEqUNrPyjp6esa49Y9YHIA(Lorg/telegram/ui/Components/EmojiTabsStrip;Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/animation/ValueAnimator;)V

    return-void
.end method
