.class Lorg/telegram/ui/TooManyCommunitiesActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TooManyCommunitiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TooManyCommunitiesActivity;->onSelectedCountChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$6;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 284
    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$6;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$502(Lorg/telegram/ui/TooManyCommunitiesActivity;I)I

    .line 285
    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$6;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$600(Lorg/telegram/ui/TooManyCommunitiesActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
