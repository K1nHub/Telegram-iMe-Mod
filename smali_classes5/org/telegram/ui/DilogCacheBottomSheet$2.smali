.class Lorg/telegram/ui/DilogCacheBottomSheet$2;
.super Lorg/telegram/ui/Components/StorageDiagramView;
.source "DilogCacheBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DilogCacheBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel;Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DilogCacheBottomSheet;Landroid/content/Context;JZLorg/telegram/ui/DilogCacheBottomSheet$Delegate;)V
    .locals 0

    .line 139
    iput-object p6, p0, Lorg/telegram/ui/DilogCacheBottomSheet$2;->val$delegate:Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/StorageDiagramView;-><init>(Landroid/content/Context;JZ)V

    return-void
.end method


# virtual methods
.method protected onAvatarClick()V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet$2;->val$delegate:Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;->onAvatarClick()V

    return-void
.end method
