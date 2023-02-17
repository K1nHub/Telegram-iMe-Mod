.class final Lcom/binance/android/opensdk/a/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/binance/android/opensdk/a/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/binance/android/opensdk/a/a;


# direct methods
.method constructor <init>(Lcom/binance/android/opensdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/binance/android/opensdk/a/a$a;->a:Lcom/binance/android/opensdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/binance/android/opensdk/a/a$a;->a:Lcom/binance/android/opensdk/a/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/binance/android/opensdk/a/a$a;->a:Lcom/binance/android/opensdk/a/a;

    invoke-static {p1}, Lcom/binance/android/opensdk/a/a;->a(Lcom/binance/android/opensdk/a/a;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
