.class public final Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollY$1;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "TelegramViewPagerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/pager/TelegramViewPagerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/AnimationProperties$FloatProperty<",
        "Lcom/iMe/ui/pager/TelegramViewPagerFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollY$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    const-string p1, "animationValue"

    .line 80
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Ljava/lang/Float;
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollY$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p1, Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollY$1;->get(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/iMe/ui/pager/TelegramViewPagerFragment;F)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {p1, p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setScrollY(Lcom/iMe/ui/pager/TelegramViewPagerFragment;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 80
    check-cast p1, Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollY$1;->setValue(Lcom/iMe/ui/pager/TelegramViewPagerFragment;F)V

    return-void
.end method
