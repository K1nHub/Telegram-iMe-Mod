.class final Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$progressDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MvpBaseDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/ActionBar/AlertDialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMvpBaseDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MvpBaseDelegate.kt\ncom/smedialink/ui/base/mvp/base/MvpBaseDelegate$progressDialog$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,121:1\n1#2:122\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$progressDialog$2;->this$0:Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$progressDialog$2;->invoke()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 3

    .line 27
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$progressDialog$2;->this$0:Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;

    invoke-interface {v1}, Lcom/smedialink/ui/base/mvp/base/BaseDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    return-object v0
.end method
