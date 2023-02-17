.class Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$2;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;Landroid/content/Context;Lorg/telegram/ui/Components/StickerMasksAlert;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$2;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$2;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->access$200(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$2;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->access$200(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 245
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
