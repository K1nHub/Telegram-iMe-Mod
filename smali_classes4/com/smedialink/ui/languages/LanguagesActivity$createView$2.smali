.class public final Lcom/smedialink/ui/languages/LanguagesActivity$createView$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "LanguagesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/languages/LanguagesActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/languages/LanguagesActivity;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/languages/LanguagesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/languages/LanguagesActivity$createView$2;->this$0:Lcom/smedialink/ui/languages/LanguagesActivity;

    .line 38
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 41
    iget-object p1, p0, Lcom/smedialink/ui/languages/LanguagesActivity$createView$2;->this$0:Lcom/smedialink/ui/languages/LanguagesActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method
