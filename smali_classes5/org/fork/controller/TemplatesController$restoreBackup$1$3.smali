.class final Lorg/fork/controller/TemplatesController$restoreBackup$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TemplatesController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/controller/TemplatesController;->restoreBackup$lambda-8(Lorg/fork/models/backup/Backup;Lorg/fork/controller/TemplatesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$Message;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fork/controller/TemplatesController$restoreBackup$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/fork/controller/TemplatesController$restoreBackup$1$3;

    invoke-direct {v0}, Lorg/fork/controller/TemplatesController$restoreBackup$1$3;-><init>()V

    sput-object v0, Lorg/fork/controller/TemplatesController$restoreBackup$1$3;->INSTANCE:Lorg/fork/controller/TemplatesController$restoreBackup$1$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/Boolean;
    .locals 0

    .line 59
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0, p1}, Lorg/fork/controller/TemplatesController$restoreBackup$1$3;->invoke(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
