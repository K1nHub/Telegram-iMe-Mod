.class public Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1534
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1542
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->createAlertDialog(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 1538
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method protected constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 1529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1530
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method


# virtual methods
.method public addBottomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$4702(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)Landroid/view/View;

    return-object p0
.end method

.method public addItems([Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 4

    .line 1519
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x2

    new-array v1, v1, [[Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1400(Lorg/telegram/ui/ActionBar/AlertDialog;)[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/common/util/ArrayUtils;->concat([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1402(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public create()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .line 1689
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method protected createAlertDialog(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .line 1546
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDismissRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1698
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$6700(Lorg/telegram/ui/ActionBar/AlertDialog;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public notDrawBackgroundOnTopView(Z)V
    .locals 1

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3202(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z

    .line 1722
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2302(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z

    return-void
.end method

.method public setAdditionalHorizontalPadding(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1740
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$7002(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    return-object p0
.end method

.method public setButtonsVertical(Z)V
    .locals 1

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$4202(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z

    return-void
.end method

.method public setCheckFocusable(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1565
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$4402(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z

    return-object p0
.end method

.method public setCustomViewOffset(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$6502(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    return-object p0
.end method

.method public setDialogButtonColorKey(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1613
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5202(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    return-object p0
.end method

.method public setDimAlpha(F)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1716
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2702(Lorg/telegram/ui/ActionBar/AlertDialog;F)F

    return-object p0
.end method

.method public setDimEnabled(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1711
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$6802(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1559
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1402(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 1560
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$4302(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1570
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1402(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 1571
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$4502(Lorg/telegram/ui/ActionBar/AlertDialog;[I)[I

    .line 1572
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$4302(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5702(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessageTextViewClickable(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$6602(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1657
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$6002(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1658
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$6102(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1663
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$6202(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1664
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$6302(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnBackButtonListener(Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$6402(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1674
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1702
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1730
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$6902(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1651
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5802(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1652
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5902(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1597
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$4902(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1592
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$4802(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1618
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZILjava/util/Map;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTopAnimation(IIZILjava/util/Map;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/telegram/ui/ActionBar/AlertDialog$Builder;"
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5302(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    .line 1623
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3602(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    .line 1624
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5402(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z

    .line 1625
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5102(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    .line 1626
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p5}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5502(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/Map;)Ljava/util/Map;

    return-object p0
.end method

.method public setTopAnimationIsNew(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1631
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1702(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z

    return-object p0
.end method

.method public setTopHeight(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$802(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    return-object p0
.end method

.method public setTopImage(II)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5002(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    .line 1603
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5102(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    return-object p0
.end method

.method public setTopImage(Landroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1640
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5602(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1641
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$5102(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    return-object p0
.end method

.method public setTopImagePaddings(IIII)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 2

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$4102(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    return-object p0
.end method

.method public setTopView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1608
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$902(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)Landroid/view/View;

    return-object p0
.end method

.method public setTopViewAspectRatio(F)V
    .locals 1

    .line 1707
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1002(Lorg/telegram/ui/ActionBar/AlertDialog;F)F

    return-void
.end method

.method public setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    const/4 v0, -0x2

    .line 1577
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setView(Landroid/view/View;I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1581
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1202(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)Landroid/view/View;

    .line 1582
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$4602(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    return-object p0
.end method

.method public show()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .line 1693
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1694
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method
