.class Lorg/telegram/ui/Components/ShareAlert$21;
.super Landroid/view/ViewOutlineProvider;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$forwardingOptionsButtonSize:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;I)V
    .locals 0

    .line 1669
    iput p2, p0, Lorg/telegram/ui/Components/ShareAlert$21;->val$forwardingOptionsButtonSize:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 1673
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert$21;->val$forwardingOptionsButtonSize:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
