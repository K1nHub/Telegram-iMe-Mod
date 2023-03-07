.class public Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
.super Ljava/lang/Object;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1746
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1754
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 1761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1762
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1763
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 1

    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1767
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1768
    invoke-virtual {v0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 1769
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    return-void
.end method


# virtual methods
.method public create()Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    .line 1812
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object v0
.end method

.method public getDismissRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1851
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$3400(Lorg/telegram/ui/ActionBar/BottomSheet;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    .line 1846
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$3302(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    return-object p0
.end method

.method public setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    .line 1841
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$3202(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1802(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)Landroid/view/View;

    return-object p0
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    .line 1836
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    return-object p0
.end method

.method public setDimBehind(Z)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    .line 1816
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-boolean p1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    return-object v0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1726
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;[Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;[Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$2602(Lorg/telegram/ui/ActionBar/BottomSheet;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 1774
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$2702(Lorg/telegram/ui/ActionBar/BottomSheet;[Z)[Z

    .line 1775
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$2302(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1731
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;[Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;[Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    .line 1780
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$2602(Lorg/telegram/ui/ActionBar/BottomSheet;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 1781
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$2802(Lorg/telegram/ui/ActionBar/BottomSheet;[I)[I

    .line 1782
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$2702(Lorg/telegram/ui/ActionBar/BottomSheet;[Z)[Z

    .line 1783
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$2302(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    .line 1865
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1797
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$2902(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1802
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$3002(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    return-object p0
.end method

.method public setTitleMultipleLines(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    .line 1807
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1702(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    return-object p0
.end method

.method public setUseHardwareLayer(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .locals 1

    .line 1831
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-boolean p1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    return-object p0
.end method

.method public show()Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    .line 1821
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 1822
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object v0
.end method
