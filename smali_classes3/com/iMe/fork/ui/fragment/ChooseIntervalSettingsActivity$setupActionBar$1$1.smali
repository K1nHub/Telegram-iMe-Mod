.class public final Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChooseIntervalSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$setupActionBar$1$1;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$setupActionBar$1$1;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method
