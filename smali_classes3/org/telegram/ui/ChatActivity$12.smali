.class Lorg/telegram/ui/ChatActivity$12;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->onGetDebugItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .line 2997
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3007
    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$2500()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 1

    .line 3000
    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2502(F)F

    .line 3001
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/ColorMatrix;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 3002
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object p1

    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
