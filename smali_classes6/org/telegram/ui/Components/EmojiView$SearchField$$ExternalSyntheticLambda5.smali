.class public final synthetic Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView$SearchField;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iput p2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->$r8$lambda$Gb-AyzhVb_6iKweg7FYQgFNrqCI(Lorg/telegram/ui/Components/EmojiView$SearchField;ILorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    return-void
.end method
