.class public final Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "ChatCopyPartBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;

    invoke-direct {v0, p1, p2}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    return-object v0
.end method
