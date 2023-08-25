.class Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;
.super Landroid/widget/FrameLayout;
.source "GalleryListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/GalleryListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderView"
.end annotation


# instance fields
.field public searchButton:Landroid/widget/ImageView;

.field public textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;


# direct methods
.method public static synthetic $r8$lambda$wPlznWrycmkyrRLfPUpDPNRrjqw(Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;Z)V
    .locals 7

    .line 1171
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    .line 1172
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    if-eqz p3, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    move v0, p1

    .line 1173
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 p1, -0x1

    if-eqz p3, :cond_1

    .line 1176
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->searchButton:Landroid/widget/ImageView;

    .line 1177
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->searchButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->searchButton:Landroid/widget/ImageView;

    const v1, 0x19ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->searchButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->searchButton:Landroid/widget/ImageView;

    const/16 v1, 0x15

    const/16 v2, 0x18

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->textView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 1185
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1186
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1187
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->textView:Landroid/widget/TextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1188
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->textView:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->AddImage:I

    goto :goto_1

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x77

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    const/16 p2, 0x20

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    move v5, p2

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1180
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->openSearch()V

    return-void
.end method
