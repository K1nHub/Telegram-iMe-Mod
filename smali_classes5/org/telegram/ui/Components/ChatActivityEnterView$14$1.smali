.class Lorg/telegram/ui/Components/ChatActivityEnterView$14$1;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$14;->openPhotoViewerForEdit(Ljava/util/ArrayList;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

.field final synthetic val$entries:Ljava/util/ArrayList;

.field final synthetic val$sourceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 0

    .line 2539
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$1;->val$entries:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$1;->val$sourceFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2542
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$1;->val$entries:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$1;->val$sourceFile:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Ljava/util/ArrayList;Ljava/io/File;)V

    return-void
.end method
