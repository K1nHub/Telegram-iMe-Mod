.class public final Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SimplexWebViewProcessingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    .line 235
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 238
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$handleBackPress(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Z

    :cond_0
    return-void
.end method
