.class public Lorg/telegram/ui/Stories/recorder/TimelineView;
.super Landroid/view/View;
.source "TimelineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;,
        Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;,
        Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;,
        Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;
    }
.end annotation


# instance fields
.field private askExactSeek:Ljava/lang/Runnable;

.field private audioAuthor:Landroid/text/StaticLayout;

.field private audioAuthorLeft:F

.field private final audioAuthorPaint:Landroid/text/TextPaint;

.field private audioAuthorWidth:F

.field private final audioBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final audioBounds:Landroid/graphics/RectF;

.field private final audioClipPath:Landroid/graphics/Path;

.field private final audioDotPaint:Landroid/graphics/Paint;

.field private audioDuration:J

.field private final audioIcon:Landroid/graphics/drawable/Drawable;

.field private audioLeft:F

.field private audioOffset:J

.field private audioPath:Ljava/lang/String;

.field private audioRight:F

.field private audioSelected:Z

.field private final audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final audioT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private audioTitle:Landroid/text/StaticLayout;

.field private audioTitleLeft:F

.field private final audioTitlePaint:Landroid/text/TextPaint;

.field private audioTitleWidth:F

.field private audioVolume:F

.field private final audioWaveformBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

.field private dragged:Z

.field private draggingProgress:Z

.field private final ellipsizeGradient:Landroid/graphics/LinearGradient;

.field private final ellipsizeMatrix:Landroid/graphics/Matrix;

.field private final ellipsizePaint:Landroid/graphics/Paint;

.field private h:I

.field private hadDragChange:Z

.field private hasAudio:Z

.field private hasVideo:Z

.field private lastTime:J

.field private lastX:F

.field private final loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private loopProgressFrom:J

.field private final onLongPress:Ljava/lang/Runnable;

.field private ph:I

.field private pressHandle:I

.field private pressTime:J

.field private pressVideo:Z

.field private progress:J

.field private final progressShadowPaint:Landroid/graphics/Paint;

.field private final progressWhitePaint:Landroid/graphics/Paint;

.field private px:I

.field private py:I

.field private final regionCutPaint:Landroid/graphics/Paint;

.field private final regionHandlePaint:Landroid/graphics/Paint;

.field private final regionPaint:Landroid/graphics/Paint;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scroll:J

.field private final scroller:Lorg/telegram/ui/Components/Scroller;

.field private scrolling:Z

.field private scrollingVideo:Z

.field private final selectedVideoClipPath:Landroid/graphics/Path;

.field final selectedVideoRadii:[F

.field private sw:I

.field private thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private final videoBounds:Landroid/graphics/RectF;

.field private final videoClipPath:Landroid/graphics/Path;

.field private videoDuration:J

.field private final videoFramePaint:Landroid/graphics/Paint;

.field private videoLeft:F

.field private videoPath:Ljava/lang/String;

.field private videoRight:F

.field private w:I

.field private wasScrollX:I

.field private waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

.field private waveformIsLoaded:Z

.field private final waveformLoaded:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final waveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final waveformPaint:Landroid/graphics/Paint;

.field private final waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

.field final waveformRadii:[F


# direct methods
.method public static synthetic $r8$lambda$0DDR_hG6TqObfftfelK7TzPrsSw(Lorg/telegram/ui/Stories/recorder/TimelineView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$8XhcXeEwWUIP46WCisofHig3t-M(Lorg/telegram/ui/Stories/recorder/TimelineView;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$new$0(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MHGwVUKjDPTkxJFkvLyjMQJX5ZQ(Lorg/telegram/ui/Stories/recorder/TimelineView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$setProgressAt$3(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$VuJ58DYMzKk8484OkOt7tJwlodQ(Lorg/telegram/ui/Stories/recorder/TimelineView;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$new$2(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v9, p5

    .line 160
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x168

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 112
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v1, 0x168

    invoke-direct {v0, v8, v1, v2, v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 114
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x258

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformLoaded:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 115
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x168

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    const/4 v11, 0x3

    invoke-direct {v0, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoFramePaint:Landroid/graphics/Paint;

    .line 124
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoClipPath:Landroid/graphics/Path;

    .line 125
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    .line 127
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionCutPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    .line 130
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressShadowPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressWhitePaint:Landroid/graphics/Paint;

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    .line 134
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioClipPath:Landroid/graphics/Path;

    .line 135
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    .line 138
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDotPaint:Landroid/graphics/Paint;

    .line 140
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v13}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorPaint:Landroid/text/TextPaint;

    .line 143
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v13}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitlePaint:Landroid/text/TextPaint;

    .line 147
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v0, 0x2

    new-array v11, v0, [I

    fill-array-data v11, :array_0

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x41800000    # 16.0f

    const/16 v20, 0x0

    move-object/from16 v16, v1

    move-object/from16 v21, v11

    move-object/from16 v22, v0

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    .line 148
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeMatrix:Landroid/graphics/Matrix;

    .line 149
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizePaint:Landroid/graphics/Paint;

    .line 151
    new-instance v0, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    .line 264
    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x154

    move-object v0, v13

    move-object/from16 v24, v1

    move/from16 v1, v17

    move-object/from16 v25, v2

    move-object/from16 v2, p0

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-wide/from16 v3, v18

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-wide/from16 v5, v20

    move-object v9, v7

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v0, -0x1

    .line 265
    iput-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    const/4 v0, -0x1

    .line 480
    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/4 v1, 0x1

    .line 481
    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressVideo:Z

    .line 485
    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingVideo:Z

    const/4 v1, 0x0

    .line 486
    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    const/16 v2, 0x8

    new-array v3, v2, [F

    .line 951
    iput-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoRadii:[F

    new-array v2, v2, [F

    .line 952
    iput-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformRadii:[F

    move-object/from16 v3, p4

    .line 164
    iput-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v2, 0x7fffffff

    move-object/from16 v4, v26

    .line 166
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xc

    .line 167
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v5, v27

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string v4, "fonts/rmedium.ttf"

    .line 168
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 169
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 170
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v4, v25

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 171
    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setColor(I)V

    const v2, 0x40ffffff    # 7.9999995f

    move-object/from16 v4, v29

    .line 172
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v2, v24

    .line 174
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 175
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 177
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    .line 178
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x0

    const/high16 v6, 0x1a000000

    invoke-virtual {v12, v4, v5, v2, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 179
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v2, -0x1000000

    .line 180
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v2, v28

    .line 181
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x26000000

    .line 182
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->filled_widget_music:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioIcon:Landroid/graphics/drawable/Drawable;

    .line 185
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 188
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    move-object/from16 v4, p5

    invoke-direct {v0, v4, v8, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    .line 189
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v1, 0x3

    invoke-direct {v0, v4, v8, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    .line 190
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v1, 0x4

    invoke-direct {v0, v4, v8, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioWaveformBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    .line 192
    new-instance v6, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;)V

    iput-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->onLongPress:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0xffffff
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/TimelineView;)Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/TimelineView;)Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/TimelineView;)I
    .locals 0

    .line 54
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/TimelineView;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/TimelineView;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    return-wide v0
.end method

.method private detectHandle(Landroid/view/MotionEvent;)I
    .locals 16

    move-object/from16 v0, p0

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 365
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 366
    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v7

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v9, :cond_0

    iget-wide v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    goto :goto_0

    :cond_0
    const-wide/16 v12, 0x0

    :goto_0
    add-long/2addr v7, v12

    iget-wide v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v7, v12

    long-to-float v7, v7

    long-to-float v3, v3

    div-float/2addr v7, v3

    .line 367
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v4, v8

    const/16 v7, 0xc

    .line 368
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v4, v8

    cmpl-float v8, v1, v8

    const/4 v9, 0x0

    if-ltz v8, :cond_1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_1

    return v9

    .line 372
    :cond_1
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v7

    sub-float/2addr v4, v7

    const/4 v7, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v4, v8

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    const/4 v9, 0x1

    :cond_2
    const/16 v2, 0xf

    const/4 v8, 0x5

    if-eqz v9, :cond_6

    .line 375
    iget v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int v12, v10, v11

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    iget-wide v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v4, v14

    mul-float/2addr v13, v4

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v4, v5

    sub-float/2addr v13, v4

    div-float/2addr v13, v3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v7, v4

    mul-float/2addr v13, v7

    add-float/2addr v12, v13

    add-int/2addr v10, v11

    int-to-float v7, v10

    .line 376
    iget v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    long-to-float v11, v14

    mul-float/2addr v10, v11

    long-to-float v5, v5

    sub-float/2addr v10, v5

    div-float/2addr v10, v3

    int-to-float v3, v4

    mul-float/2addr v10, v3

    add-float/2addr v7, v10

    .line 378
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v12, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v12

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_3

    const/4 v3, 0x2

    return v3

    .line 380
    :cond_3
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v7, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v7

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_4

    const/4 v1, 0x3

    return v1

    :cond_4
    cmpl-float v2, v1, v12

    if-ltz v2, :cond_e

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_e

    .line 382
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    const v2, 0x3f7d70a4    # 0.99f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    :cond_5
    const/4 v1, 0x4

    return v1

    .line 385
    :cond_6
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v4, :cond_e

    .line 386
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int v6, v4, v5

    int-to-float v6, v6

    iget-wide v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v7, v12

    iget v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v15, v10

    mul-float/2addr v14, v15

    add-float/2addr v7, v14

    iget-wide v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v8, v14

    sub-float/2addr v7, v8

    div-float/2addr v7, v3

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v2, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    add-int/2addr v4, v5

    int-to-float v2, v4

    long-to-float v4, v12

    .line 387
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    long-to-float v7, v10

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    long-to-float v5, v14

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    int-to-float v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 389
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-nez v4, :cond_7

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v4, :cond_d

    :cond_7
    const/16 v4, 0xf

    .line 390
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v4, v5

    sub-float v4, v6, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_8

    const/4 v4, 0x5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v6

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_9

    const/4 v1, 0x6

    return v1

    :cond_8
    const/4 v4, 0x5

    .line 392
    :cond_9
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v4, v5

    sub-float v4, v2, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_a

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_a

    const/4 v1, 0x7

    return v1

    :cond_a
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_c

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_c

    .line 395
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v1

    const-wide/32 v3, 0x1d4c0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-float v1, v1

    .line 396
    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 397
    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    add-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 398
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v1, :cond_b

    const/16 v1, 0x8

    return v1

    :cond_b
    const/4 v1, 0x5

    return v1

    .line 404
    :cond_c
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int v5, v2, v4

    int-to-float v5, v5

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long v12, v6, v10

    long-to-float v8, v12

    div-float/2addr v8, v3

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v13, v12

    mul-float/2addr v8, v13

    add-float/2addr v5, v8

    add-int/2addr v2, v4

    int-to-float v2, v2

    .line 405
    iget-wide v13, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    add-long/2addr v6, v13

    sub-long/2addr v6, v10

    long-to-float v4, v6

    div-float/2addr v4, v3

    int-to-float v3, v12

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    move v6, v5

    :cond_d
    cmpl-float v3, v1, v6

    if-ltz v3, :cond_e

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const/4 v1, 0x5

    return v1

    .line 412
    :cond_e
    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    const-wide/32 v3, 0x1d4c0

    cmp-long v1, v1, v3

    if-lez v1, :cond_f

    if-eqz v9, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method private drawProgress(Landroid/graphics/Canvas;FFJF)V
    .locals 8

    .line 1266
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1268
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v2, p4

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide p4

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr p4, v2

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr p4, v2

    long-to-float p4, p4

    long-to-float p5, v0

    div-float/2addr p4, p5

    .line 1269
    iget p5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr p5, v0

    int-to-float p5, p5

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    add-float/2addr p5, v0

    add-float p4, p2, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p6

    mul-float/2addr p4, v0

    add-float/2addr p2, p4

    sub-float/2addr p3, p4

    .line 1274
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressShadowPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x42180000    # 38.0f

    mul-float/2addr v0, p6

    float-to-int v0, v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1275
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressWhitePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p6, v0

    float-to-int p6, p6

    invoke-virtual {p4, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1277
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 p6, 0x3fc00000    # 1.5f

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    sub-float v0, p5, v0

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr v1, p5

    invoke-virtual {p4, v0, p2, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    const v0, 0x3f28f5c3    # 0.66f

    .line 1278
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    neg-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p4, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v0, 0x6

    .line 1279
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1280
    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v1, p5, v1

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p6

    add-float/2addr p5, p6

    invoke-virtual {p4, v1, p2, p5, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1281
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRegion(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFF)V
    .locals 14

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    const/4 v1, 0x0

    cmpg-float v1, p7, v1

    if-gtz v1, :cond_0

    return-void

    .line 1228
    :cond_0
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/16 v12, 0xa

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p5, v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float v2, p6, v2

    invoke-virtual {v11, v1, v9, v2, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1229
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    int-to-float v4, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1230
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, p7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x6

    .line 1231
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1232
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v11, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1233
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionCutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1235
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    if-eqz p2, :cond_1

    move-object/from16 v4, p2

    goto :goto_0

    .line 1236
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    .line 1237
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1238
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1240
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float v2, p5, v2

    add-float v6, v9, v10

    sub-float v7, v6, v3

    div-float/2addr v7, v5

    .line 1242
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    div-float/2addr v9, v5

    sub-float v9, p5, v9

    add-float/2addr v6, v3

    div-float/2addr v6, v5

    .line 1239
    invoke-virtual {v11, v2, v7, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x1

    .line 1245
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v11, v3, v9, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v3, 0x42400000    # 48.0f

    if-eqz p2, :cond_2

    .line 1247
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    mul-float v10, p7, v3

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1248
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v9, v10, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1251
    :cond_2
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    div-float/2addr v9, v5

    add-float v9, p6, v9

    .line 1253
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v1

    div-float/2addr v10, v5

    add-float v1, p6, v10

    .line 1250
    invoke-virtual {v11, v9, v7, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1256
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v11, v1, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_3

    .line 1258
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    mul-float v3, v3, p7

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1259
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1262
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getAudioHeight()F
    .locals 3

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/16 v1, 0x1c

    .line 474
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x26

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getBaseDuration()J
    .locals 4

    .line 102
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v0, :cond_0

    .line 103
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    return-wide v0

    .line 105
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v0, :cond_1

    .line 106
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x1

    .line 108
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getVideoHeight()F
    .locals 4

    .line 466
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/16 v1, 0x1c

    .line 469
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x26

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Float;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioVolume:F

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioVolumeChange(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRemove()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;)V
    .locals 10

    .line 193
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressVideo:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v0, :cond_2

    .line 194
    new-instance v0, Lorg/telegram/ui/Stories/recorder/SliderView;

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/SliderView;-><init>(Landroid/content/Context;I)V

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioVolume:F

    .line 196
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 197
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    .line 198
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v0

    .line 204
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 205
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int/2addr v1, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-wide v6, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v8, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v9

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    iget-wide v8, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    long-to-float v3, v3

    div-float/2addr v6, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 206
    invoke-static {p1, p2, p0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addSpaceGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v0, Lorg/telegram/messenger/R$string;->StoryAudioRemove:I

    .line 209
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 p2, 0x5

    .line 214
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 p2, 0x1

    .line 215
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    neg-float v0, v0

    const/16 v1, 0x12

    .line 216
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x23

    goto :goto_0

    :cond_0
    const/16 v3, 0x28

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 218
    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result p4

    neg-float p4, p4

    invoke-virtual {p1, p3, v0, p4}, Lorg/telegram/ui/Components/ItemOptions;->setBlurBackground(Lorg/telegram/ui/Components/BlurringShader$BlurManager;FF)Lorg/telegram/ui/Components/ItemOptions;

    .line 221
    :try_start_0
    invoke-virtual {p0, v2, p2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private synthetic lambda$setProgressAt$3(J)V
    .locals 2

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 458
    invoke-interface {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    :cond_0
    return-void
.end method

.method private minAudioSelect()J
    .locals 4

    .line 748
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    :goto_0
    const-wide/32 v2, 0xe678

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method private moveAudioOffset(F)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 752
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 753
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    .line 754
    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    float-to-long v1, v1

    add-long v9, v7, v1

    const-wide/16 v11, 0x0

    .line 755
    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v13

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    sub-long/2addr v1, v4

    neg-long v13, v1

    invoke-static/range {v9 .. v14}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v1, v7

    .line 757
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    long-to-float v1, v1

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v2, v7

    div-float v2, v1, v2

    sub-float/2addr v4, v2

    invoke-static {v4, v6, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    .line 758
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v4

    div-float/2addr v1, v4

    sub-float/2addr v2, v1

    invoke-static {v2, v6, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    .line 759
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_6

    .line 760
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioLeftChange(F)V

    .line 761
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRightChange(F)V

    goto/16 :goto_2

    .line 763
    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v2, :cond_5

    .line 764
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v7, v4

    mul-float/2addr v7, v2

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v11, v9

    mul-float/2addr v11, v8

    sub-float/2addr v7, v11

    float-to-long v11, v7

    .line 765
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    long-to-float v13, v4

    mul-float/2addr v13, v7

    iget v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    long-to-float v15, v9

    mul-float/2addr v15, v14

    sub-float/2addr v13, v15

    move-wide/from16 v16, v4

    float-to-long v3, v13

    sub-float/2addr v8, v14

    sub-float/2addr v2, v7

    move-wide/from16 v13, v16

    long-to-float v5, v13

    mul-float/2addr v2, v5

    long-to-float v5, v9

    div-float/2addr v2, v5

    .line 766
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 767
    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    float-to-long v9, v1

    add-long v13, v7, v9

    cmp-long v1, v13, v11

    if-lez v1, :cond_2

    .line 768
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v3, v3

    mul-float/2addr v1, v3

    long-to-float v3, v7

    sub-float/2addr v1, v3

    long-to-float v3, v9

    sub-float/2addr v1, v3

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1, v6, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 769
    invoke-static {v1, v6, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    .line 770
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v5, v3

    mul-float/2addr v2, v5

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v11, v7

    mul-float/2addr v5, v11

    sub-float/2addr v2, v5

    float-to-long v11, v2

    .line 771
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    long-to-float v3, v3

    mul-float/2addr v2, v3

    long-to-float v3, v7

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    float-to-long v1, v2

    cmp-long v3, v11, v1

    if-gez v3, :cond_1

    move-wide v15, v1

    move-wide/from16 v17, v11

    goto :goto_0

    :cond_1
    move-wide/from16 v17, v1

    move-wide v15, v11

    .line 777
    :goto_0
    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    add-long v13, v1, v9

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    .line 778
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_6

    .line 779
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioLeftChange(F)V

    .line 780
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRightChange(F)V

    goto/16 :goto_2

    :cond_2
    add-long v11, v7, v9

    cmp-long v1, v11, v3

    if-gez v1, :cond_4

    .line 783
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v3, v3

    mul-float/2addr v1, v3

    long-to-float v3, v7

    sub-float/2addr v1, v3

    long-to-float v3, v9

    sub-float/2addr v1, v3

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    sub-float v3, v6, v2

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    add-float/2addr v1, v2

    .line 784
    invoke-static {v1, v6, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    .line 785
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v5, v3

    mul-float/2addr v2, v5

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v5, v7

    mul-float/2addr v1, v5

    sub-float/2addr v2, v1

    float-to-long v1, v2

    .line 786
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    long-to-float v3, v3

    mul-float/2addr v5, v3

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    long-to-float v4, v7

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    float-to-long v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    move-wide v15, v1

    move-wide v13, v3

    goto :goto_1

    :cond_3
    move-wide v13, v1

    move-wide v15, v3

    .line 792
    :goto_1
    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    add-long v11, v1, v9

    invoke-static/range {v11 .. v16}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    .line 793
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_6

    .line 794
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioLeftChange(F)V

    .line 795
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRightChange(F)V

    goto :goto_2

    :cond_4
    add-long/2addr v7, v9

    .line 798
    iput-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    goto :goto_2

    .line 801
    :cond_5
    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    float-to-long v4, v1

    add-long v7, v2, v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v1

    long-to-float v1, v1

    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v2

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-long v9, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    neg-float v1, v1

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v11, v1

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    .line 803
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 804
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_7

    .line 805
    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v5, v7

    mul-float/2addr v4, v5

    float-to-long v4, v4

    add-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioOffsetChange(J)V

    .line 807
    :cond_7
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_a

    const/4 v1, 0x1

    .line 808
    invoke-interface {v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    .line 811
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v3, :cond_8

    .line 812
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v7, v7

    mul-float/2addr v5, v7

    float-to-long v7, v5

    add-long v9, v3, v7

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v7, v4

    mul-float/2addr v3, v7

    float-to-long v11, v3

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    long-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-long v13, v3

    invoke-static/range {v9 .. v14}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    goto :goto_3

    .line 814
    :cond_8
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v9

    mul-float/2addr v3, v4

    float-to-long v7, v3

    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    .line 816
    :goto_3
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v5, :cond_9

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x190

    cmp-long v5, v7, v9

    if-lez v5, :cond_9

    .line 817
    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    iput-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    .line 818
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 820
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-interface {v1, v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    goto :goto_5

    :cond_a
    if-nez v1, :cond_b

    .line 821
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    if-eqz v1, :cond_d

    .line 822
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v1, :cond_c

    .line 823
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-long v5, v1

    add-long v7, v3, v5

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v5, v3

    mul-float/2addr v1, v5

    float-to-long v9, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    long-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-long v11, v1

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    goto :goto_4

    .line 825
    :cond_c
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v5

    mul-float/2addr v1, v3

    float-to-long v3, v1

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    .line 827
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_d

    .line 828
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-interface {v1, v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    :cond_d
    :goto_5
    return-void
.end method

.method private setProgressAt(FZ)Z
    .locals 8

    .line 433
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-nez v0, :cond_0

    return v1

    .line 437
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 438
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    long-to-float v0, v2

    mul-float/2addr p1, v0

    .line 439
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v0, :cond_1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    neg-long v2, v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    long-to-float v2, v2

    add-float/2addr p1, v2

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v2, v2

    add-float/2addr p1, v2

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    :goto_1
    long-to-float v0, v2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    float-to-long v2, p1

    .line 440
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz p1, :cond_4

    long-to-float v0, v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v6, v4

    div-float v6, v0, v6

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_3

    long-to-float v4, v4

    div-float/2addr v0, v4

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    :cond_3
    return v1

    .line 443
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    long-to-float p1, v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v0, v4

    div-float v0, p1, v0

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    cmpg-float v0, v0, v6

    if-ltz v0, :cond_5

    long-to-float v0, v4

    div-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    :cond_5
    return v1

    .line 446
    :cond_6
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    .line 447
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 448
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz p1, :cond_7

    .line 449
    invoke-interface {p1, v2, v3, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    .line 451
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    .line 452
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 453
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    :cond_8
    if-eqz p2, :cond_9

    .line 456
    new-instance p1, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;J)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    const-wide/16 v0, 0x96

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method private setupAudioWaveform()V
    .locals 4

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioPath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformIsLoaded:Z

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformLoaded:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_1
    :goto_0
    return-void
.end method

.method private setupVideoThumbs()V
    .locals 4

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoPath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x26

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    .line 259
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 8

    .line 836
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->getCurrX()I

    move-result v0

    .line 838
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v1

    const-wide/32 v3, 0x1d4c0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 839
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingVideo:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 841
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int v4, v0, v4

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    long-to-float v1, v1

    mul-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-long v1, v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    goto :goto_0

    .line 849
    :cond_0
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int v4, v0, v3

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v7, v6

    div-float/2addr v4, v7

    long-to-float v1, v1

    mul-float/2addr v4, v1

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->wasScrollX:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    int-to-float v2, v2

    int-to-float v3, v6

    div-float/2addr v2, v3

    mul-float/2addr v2, v1

    sub-float/2addr v4, v2

    .line 850
    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->moveAudioOffset(F)V

    .line 852
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 853
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->wasScrollX:I

    goto :goto_1

    .line 854
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 855
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    .line 856
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_2

    .line 857
    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 37

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 956
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v11

    .line 958
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v0

    const-wide/32 v12, 0x1d4c0

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 960
    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v0, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v14, 0x0

    const/16 v12, 0x8

    const/high16 v13, 0x40000000    # 2.0f

    const/16 v25, 0x1

    if-eqz v0, :cond_e

    .line 964
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 965
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v0

    move/from16 v26, v4

    .line 966
    iget-wide v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    const-wide/16 v17, 0x0

    cmp-long v19, v3, v17

    if-gtz v19, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v10, v5

    int-to-float v5, v10

    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v1, v1

    long-to-float v2, v6

    div-float/2addr v1, v2

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float v1, v5, v1

    :goto_1
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v5, v2

    sub-float/2addr v1, v5

    cmp-long v5, v3, v17

    if-gtz v5, :cond_2

    move-object/from16 v27, v11

    const/4 v3, 0x0

    goto :goto_2

    .line 967
    :cond_2
    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    move-object/from16 v27, v11

    iget-wide v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v3, v10

    long-to-float v3, v3

    long-to-float v4, v6

    div-float/2addr v3, v4

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    :goto_2
    int-to-float v2, v2

    add-float/2addr v3, v2

    .line 968
    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int v10, v4, v5

    int-to-float v10, v10

    sub-float/2addr v10, v0

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v1, v10, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 969
    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 970
    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoClipPath:Landroid/graphics/Path;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v10, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 971
    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoClipPath:Landroid/graphics/Path;

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 972
    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-eqz v2, :cond_a

    .line 974
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->getFrameWidth()I

    move-result v2

    .line 975
    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 976
    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$300(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)I

    move-result v5

    int-to-double v10, v5

    sub-float/2addr v3, v1

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v2

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v22

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-int v3, v10

    .line 978
    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v5, v10

    int-to-float v5, v5

    sub-float/2addr v5, v0

    float-to-int v5, v5

    .line 980
    iget-object v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v10}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$400(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v3, :cond_3

    move/from16 v11, v25

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_5

    move v10, v4

    .line 983
    :goto_4
    iget-object v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$400(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ge v10, v14, :cond_5

    .line 984
    iget-object v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$400(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    .line 985
    iget-object v14, v14, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_4

    const/4 v10, 0x0

    goto :goto_5

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    move v10, v11

    :goto_5
    if-nez v10, :cond_7

    if-nez v27, :cond_6

    const/high16 v10, 0x40000000    # 2.0f

    .line 994
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_6

    .line 996
    :cond_6
    iget-object v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    move-object/from16 v15, v27

    invoke-virtual {v9, v10, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v10, 0x33000000

    .line 997
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_7

    :cond_7
    :goto_6
    move-object/from16 v15, v27

    .line 1001
    :goto_7
    iget-object v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v10}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$400(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v4, v10, :cond_9

    .line 1002
    iget-object v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v10}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$400(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    .line 1003
    iget-object v10, v14, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_8

    .line 1004
    iget-object v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->getAlpha()F

    move-result v18

    const/high16 v17, 0x437f0000    # 255.0f

    mul-float v12, v18, v17

    float-to-int v12, v12

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1005
    iget-object v10, v14, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v0

    div-float/2addr v12, v13

    float-to-int v12, v12

    sub-int v12, v5, v12

    int-to-float v12, v12

    iget-object v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v1, v12, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_8
    add-float/2addr v1, v2

    add-int/lit8 v4, v4, 0x1

    const/16 v12, 0x8

    goto :goto_7

    :cond_9
    if-nez v11, :cond_b

    .line 1011
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->load()V

    goto :goto_8

    :cond_a
    move-object/from16 v15, v27

    .line 1014
    :cond_b
    :goto_8
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 1016
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int v4, v2, v3

    int-to-float v4, v4

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    iget-wide v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v12, v10

    mul-float/2addr v12, v5

    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    move-object/from16 v17, v15

    long-to-float v15, v13

    sub-float/2addr v12, v15

    long-to-float v15, v6

    div-float/2addr v12, v15

    move-wide/from16 v28, v6

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v7, v6

    mul-float/2addr v12, v7

    add-float/2addr v4, v12

    const/4 v7, 0x0

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_c

    move v5, v3

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    :goto_9
    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 1017
    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int v12, v5, v7

    int-to-float v12, v12

    sub-float/2addr v12, v0

    add-int/2addr v2, v3

    int-to-float v2, v2

    move/from16 v18, v0

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    long-to-float v10, v10

    mul-float/2addr v10, v0

    long-to-float v11, v13

    sub-float/2addr v10, v11

    div-float/2addr v10, v15

    int-to-float v6, v6

    mul-float/2addr v10, v6

    add-float/2addr v2, v10

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_d

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    :goto_a
    int-to-float v0, v3

    add-float/2addr v2, v0

    sub-int/2addr v5, v7

    int-to-float v0, v5

    .line 1016
    invoke-virtual {v1, v4, v12, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1022
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1027
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/high16 v0, 0x50000000

    .line 1028
    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move/from16 v10, v18

    goto :goto_b

    :cond_e
    move/from16 v26, v4

    move-wide/from16 v28, v6

    move-object/from16 v17, v11

    const/4 v10, 0x0

    .line 1033
    :goto_b
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v11

    .line 1034
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v1, :cond_f

    move/from16 v1, v25

    goto :goto_c

    :cond_f
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v12

    const/4 v13, 0x4

    .line 1035
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v7, v0

    .line 1036
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getAudioHeight()F

    move-result v0

    mul-float v30, v0, v11

    const/4 v0, 0x0

    cmpl-float v1, v11, v0

    if-lez v1, :cond_1c

    .line 1038
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v0

    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1041
    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v1, :cond_10

    .line 1042
    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-wide v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    const/4 v4, 0x0

    invoke-static {v3, v4, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-wide/from16 v5, v28

    long-to-float v3, v5

    div-float/2addr v2, v3

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 1043
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-wide v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    move-object v4, v0

    move/from16 v18, v1

    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v14, v0

    long-to-float v0, v14

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v1, v14, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget-wide v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v14, v14

    mul-float/2addr v1, v14

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    move v0, v2

    move-wide/from16 v31, v5

    move/from16 v28, v12

    move/from16 v2, v18

    move-object/from16 v18, v4

    goto :goto_d

    :cond_10
    move-object v4, v0

    move-wide/from16 v5, v28

    .line 1045
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int v2, v0, v1

    int-to-float v2, v2

    iget-wide v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    move/from16 v28, v12

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    move-object/from16 v18, v4

    sub-long v3, v14, v12

    long-to-float v3, v3

    long-to-float v4, v5

    div-float/2addr v3, v4

    move-wide/from16 v31, v5

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v5

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-long/2addr v14, v12

    .line 1046
    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    add-long/2addr v14, v12

    long-to-float v1, v14

    div-float/2addr v1, v4

    int-to-float v3, v5

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 1049
    :goto_d
    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v10

    mul-float v4, v7, v26

    sub-float v12, v1, v4

    .line 1050
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    sub-float v13, v12, v30

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v4, v13, v3, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1051
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 1052
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioClipPath:Landroid/graphics/Path;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v4, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1053
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioClipPath:Landroid/graphics/Path;

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    if-nez v18, :cond_11

    const/high16 v1, 0x40000000    # 2.0f

    .line 1056
    invoke-static {v1, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object/from16 v3, v18

    goto :goto_e

    .line 1058
    :cond_11
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    move-object/from16 v3, v18

    invoke-virtual {v9, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v1, 0x33000000

    .line 1059
    invoke-static {v1, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1062
    :goto_e
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-eqz v1, :cond_14

    if-eqz v3, :cond_14

    .line 1063
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioWaveformBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v11

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v1

    if-nez v1, :cond_12

    .line 1065
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42800000    # 64.0f

    mul-float/2addr v3, v11

    float-to-int v3, v3

    .line 1066
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1068
    :cond_12
    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getMaxBar()S

    move-result v4

    int-to-float v4, v4

    iget-boolean v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformIsLoaded:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    move-result v23

    .line 1069
    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getLoadedCount()I

    move-result v3

    if-lez v3, :cond_13

    move/from16 v3, v25

    goto :goto_f

    :cond_13
    const/4 v3, 0x0

    :goto_f
    iput-boolean v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformIsLoaded:Z

    .line 1070
    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformLoaded:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getLoadedCount()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v19

    .line 1071
    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v4, v14

    long-to-float v4, v4

    move-wide/from16 v5, v31

    long-to-float v14, v5

    div-float/2addr v4, v14

    iget v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v14, v14

    mul-float/2addr v4, v14

    add-float v15, v3, v4

    .line 1072
    iget-object v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    const-wide/16 v31, 0x0

    move-object/from16 v33, v17

    move/from16 v16, v2

    move/from16 v17, v0

    move/from16 v18, v28

    move-wide/from16 v20, v5

    move/from16 v22, v30

    move/from16 v24, v12

    invoke-virtual/range {v14 .. v24}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->check(FFFFFJFFF)V

    .line 1073
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_10

    :cond_14
    move-object/from16 v33, v17

    move-wide/from16 v5, v31

    const-wide/16 v31, 0x0

    :goto_10
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, v28, v0

    if-gez v1, :cond_1b

    .line 1077
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int v2, v0, v1

    int-to-float v2, v2

    iget-wide v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    move/from16 v16, v10

    move/from16 v17, v11

    sub-long v10, v3, v14

    long-to-float v10, v10

    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    move/from16 v18, v12

    move/from16 v19, v13

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    move/from16 v20, v7

    long-to-float v7, v12

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    long-to-float v7, v5

    div-float/2addr v10, v7

    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    move-wide/from16 v21, v5

    int-to-float v5, v11

    mul-float/2addr v10, v5

    add-float/2addr v2, v10

    add-int/2addr v1, v0

    int-to-float v1, v1

    sub-long/2addr v3, v14

    long-to-float v3, v3

    .line 1078
    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    long-to-float v5, v12

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    div-float/2addr v3, v7

    int-to-float v4, v11

    mul-float/2addr v3, v4

    add-float v7, v1, v3

    int-to-float v0, v0

    .line 1080
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/16 v1, 0xe

    .line 1081
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v13, v19, v1

    .line 1082
    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v1, v2

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x41500000    # 13.0f

    .line 1083
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    if-nez v3, :cond_15

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    if-nez v3, :cond_15

    move v3, v5

    goto :goto_11

    :cond_15
    const v3, 0x40470a3d    # 3.11f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorWidth:F

    add-float/2addr v3, v4

    const v4, 0x411a8f5c    # 9.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitleWidth:F

    add-float/2addr v3, v4

    :goto_11
    add-float/2addr v2, v3

    cmpg-float v3, v2, v1

    if-gez v3, :cond_16

    move/from16 v10, v25

    goto :goto_12

    :cond_16
    const/4 v10, 0x0

    .line 1086
    :goto_12
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1087
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioIcon:Landroid/graphics/drawable/Drawable;

    float-to-int v3, v0

    const/16 v4, 0xd

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    sub-float v6, v13, v6

    float-to-int v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v0

    float-to-int v11, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v4, v13

    float-to-int v2, v4

    invoke-virtual {v1, v3, v6, v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1088
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v11, v2, v28

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v12, v11, v2

    float-to-int v2, v12

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1089
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const v1, 0x4180e148    # 16.11f

    .line 1090
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float v14, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1091
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    int-to-float v3, v0

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    int-to-float v4, v0

    const/16 v6, 0xff

    const/16 v15, 0x1f

    move-object/from16 v0, p1

    move/from16 v34, v26

    move v5, v6

    move-wide/from16 v35, v21

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1092
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    int-to-float v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v0, v1

    .line 1093
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    int-to-float v0, v0

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1094
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    if-eqz v0, :cond_17

    .line 1095
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1096
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorLeft:F

    sub-float v0, v14, v0

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, v13, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1097
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorPaint:Landroid/text/TextPaint;

    mul-float v1, v12, v17

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1098
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1099
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1100
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorWidth:F

    add-float/2addr v14, v0

    .line 1102
    :cond_17
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    if-eqz v0, :cond_18

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    if-eqz v0, :cond_18

    const v0, 0x406a3d71    # 3.66f

    .line 1103
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    add-float/2addr v14, v0

    .line 1104
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 1105
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDotPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1106
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v14

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v13, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1107
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 1108
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr v14, v1

    const/high16 v0, 0x40800000    # 4.0f

    .line 1109
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    add-float/2addr v14, v0

    .line 1111
    :cond_18
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    if-eqz v0, :cond_19

    .line 1112
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1113
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitleLeft:F

    sub-float/2addr v14, v0

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr v13, v0

    invoke-virtual {v9, v14, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1114
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitlePaint:Landroid/text/TextPaint;

    mul-float v12, v12, v17

    float-to-int v1, v12

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1115
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1116
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_19
    if-nez v10, :cond_1a

    .line 1119
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1120
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1121
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeMatrix:Landroid/graphics/Matrix;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-virtual {v0, v2, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1122
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1123
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v3, v0

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v2, v19

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1125
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_13

    :cond_1b
    move-wide/from16 v35, v5

    move/from16 v20, v7

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v34, v26

    const/4 v15, 0x0

    .line 1127
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_14

    :cond_1c
    move/from16 v20, v7

    move/from16 v16, v10

    move-object/from16 v33, v17

    move/from16 v34, v26

    move-wide/from16 v35, v28

    const/4 v15, 0x0

    const-wide/16 v31, 0x0

    move/from16 v17, v11

    move/from16 v28, v12

    .line 1131
    :goto_14
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    sub-float v2, v2, v16

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v0, v0, v16

    move/from16 v5, v34

    mul-float v10, v20, v5

    sub-float/2addr v0, v10

    sub-float v0, v0, v30

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v1, :cond_1d

    move/from16 v1, v28

    goto :goto_15

    :cond_1d
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_15
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 1132
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v0, v0, v16

    sub-float/2addr v0, v10

    move/from16 v11, v28

    invoke-static {v2, v0, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 1133
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v1, v1

    mul-float/2addr v0, v1

    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v1, v1

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v6, v6

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v2, :cond_1e

    move v2, v11

    goto :goto_16

    :cond_1e
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_16
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 1134
    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v2, v6

    mul-float/2addr v1, v2

    iget-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v2, v6

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v7, v12

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    iget-boolean v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v6, :cond_1f

    move v6, v11

    goto :goto_17

    :cond_1f
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_17
    invoke-static {v1, v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 1135
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int v7, v2, v6

    int-to-float v7, v7

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v14, v12

    sub-float/2addr v0, v14

    move v14, v10

    move-wide/from16 v9, v35

    long-to-float v15, v9

    div-float/2addr v0, v15

    iget v9, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v10, v9

    mul-float/2addr v0, v10

    add-float/2addr v7, v0

    add-int/2addr v2, v6

    int-to-float v0, v2

    long-to-float v2, v12

    sub-float/2addr v1, v2

    div-float/2addr v1, v15

    int-to-float v2, v9

    mul-float/2addr v1, v2

    add-float v6, v0, v1

    .line 1137
    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v0, :cond_20

    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v0, :cond_20

    move/from16 v9, v17

    goto :goto_18

    :cond_20
    move/from16 v9, v17

    move/from16 v17, v5

    :goto_18
    float-to-double v0, v9

    cmpl-double v0, v0, v31

    if-gtz v0, :cond_21

    float-to-double v0, v5

    cmpl-double v0, v0, v31

    if-lez v0, :cond_27

    .line 1139
    :cond_21
    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v0, :cond_22

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_19

    :cond_22
    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    mul-float/2addr v0, v9

    :goto_19
    mul-float v10, v0, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move v5, v7

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/recorder/TimelineView;->drawRegion(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFF)V

    .line 1140
    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v0, :cond_23

    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    cmpl-float v1, v11, v0

    if-lez v1, :cond_23

    .line 1141
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    sub-float v3, v2, v16

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    add-int v2, v0, v1

    int-to-float v2, v2

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    iget-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v10, v6

    mul-float/2addr v5, v10

    iget-wide v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v12, v10

    sub-float/2addr v5, v12

    div-float/2addr v5, v15

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v13, v12

    mul-float/2addr v5, v13

    add-float/2addr v5, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    long-to-float v2, v6

    mul-float/2addr v1, v2

    long-to-float v2, v10

    sub-float/2addr v1, v2

    div-float/2addr v1, v15

    int-to-float v2, v12

    mul-float/2addr v1, v2

    add-float v6, v0, v1

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/recorder/TimelineView;->drawRegion(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFF)V

    .line 1153
    :cond_23
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v7

    .line 1154
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v0, v0, v16

    add-float v30, v30, v14

    mul-float v30, v30, v9

    sub-float v0, v0, v30

    const v1, 0x4089999a    # 4.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v9, v0, v2

    .line 1155
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float v10, v0, v1

    const/4 v0, 0x0

    cmpl-float v1, v7, v0

    if-lez v1, :cond_26

    .line 1157
    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_24

    :goto_1a
    move-wide v4, v0

    goto :goto_1c

    :cond_24
    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v0, :cond_25

    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v0, v0

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    goto :goto_1b

    :cond_25
    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v0, v0

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    :goto_1b
    mul-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_1a

    :goto_1c
    mul-float v6, v7, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/TimelineView;->drawProgress(Landroid/graphics/Canvas;FFJF)V

    .line 1159
    :cond_26
    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v7

    mul-float v6, v1, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/TimelineView;->drawProgress(Landroid/graphics/Canvas;FFJF)V

    .line 1162
    :cond_27
    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-eqz v0, :cond_33

    const/16 v0, 0x20

    .line 1163
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v15

    const/high16 v1, 0x447a0000    # 1000.0f

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v10, v2, v1

    mul-float/2addr v0, v10

    float-to-long v0, v0

    .line 1164
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2c

    .line 1166
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v6, v4

    iget-wide v9, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v7, v9

    div-float/2addr v6, v7

    cmpg-float v2, v2, v6

    if-gez v2, :cond_28

    goto :goto_1d

    .line 1168
    :cond_28
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    add-long v6, v4, v35

    long-to-float v3, v6

    long-to-float v6, v9

    div-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_29

    move/from16 v3, v25

    goto :goto_1d

    :cond_29
    const/4 v3, 0x0

    :goto_1d
    int-to-long v2, v3

    mul-long/2addr v2, v0

    add-long v11, v4, v2

    sub-long v13, v9, v35

    const-wide/16 v15, 0x0

    .line 1172
    invoke-static/range {v11 .. v16}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    .line 1173
    iget-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    add-long/2addr v6, v2

    iput-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    .line 1174
    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2a

    .line 1176
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v10, v3, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1e

    :cond_2a
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1178
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    sub-float v5, v1, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1180
    :goto_1e
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    add-float/2addr v2, v0

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    .line 1181
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    add-float/2addr v2, v0

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    .line 1182
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_2b

    .line 1183
    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(F)V

    .line 1184
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(F)V

    .line 1186
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_23

    :cond_2c
    const/16 v4, 0x8

    if-ne v2, v4, :cond_33

    .line 1189
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    neg-long v6, v4

    const-wide/16 v9, 0x64

    add-long/2addr v6, v9

    long-to-float v6, v6

    iget-wide v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v7, v11

    div-float/2addr v6, v7

    cmpg-float v6, v2, v6

    if-gez v6, :cond_2d

    goto :goto_1f

    .line 1191
    :cond_2d
    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    neg-long v6, v4

    add-long v6, v6, v35

    sub-long/2addr v6, v9

    long-to-float v6, v6

    long-to-float v7, v11

    div-float/2addr v6, v7

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_2e

    move/from16 v3, v25

    goto :goto_1f

    :cond_2e
    const/4 v3, 0x0

    :goto_1f
    if-eqz v3, :cond_33

    .line 1196
    iget-boolean v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v6, :cond_2f

    iget-boolean v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v6, :cond_2f

    int-to-long v6, v3

    mul-long/2addr v6, v0

    sub-long v13, v4, v6

    .line 1197
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v1, v6

    mul-float/2addr v0, v1

    long-to-float v1, v11

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    float-to-long v0, v0

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    long-to-float v3, v6

    mul-float/2addr v2, v3

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    long-to-float v6, v11

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    float-to-long v2, v2

    move-wide v15, v0

    move-wide/from16 v17, v2

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    goto :goto_20

    :cond_2f
    int-to-long v2, v3

    mul-long/2addr v2, v0

    sub-long v13, v4, v2

    const-wide/16 v15, 0x0

    .line 1199
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long/2addr v11, v0

    neg-long v0, v11

    move-wide/from16 v17, v0

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    .line 1201
    :goto_20
    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v0, v4

    neg-long v0, v0

    long-to-float v0, v0

    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_30

    .line 1203
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v10, v3, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_21

    .line 1205
    :cond_30
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    sub-float v5, v1, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1207
    :goto_21
    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v1, :cond_31

    .line 1208
    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    long-to-float v1, v1

    iget-wide v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v2

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    long-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    float-to-long v1, v1

    iput-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    goto :goto_22

    :cond_31
    const/4 v3, 0x0

    .line 1210
    :goto_22
    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    add-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    .line 1211
    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    add-float/2addr v1, v0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    .line 1212
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_32

    .line 1213
    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioLeftChange(F)V

    .line 1214
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRightChange(F)V

    .line 1215
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    .line 1217
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_33
    :goto_23
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 420
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 421
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1289
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorPaint:Landroid/text/TextPaint;

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1290
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitlePaint:Landroid/text/TextPaint;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1291
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformRadii:[F

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x3

    aput v2, p2, v3

    aput v2, p2, v1

    const/4 v3, 0x1

    aput v2, p2, v3

    const/4 v3, 0x0

    aput v2, p2, v3

    .line 1292
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformRadii:[F

    const/4 v2, 0x7

    const/4 v3, 0x0

    aput v3, p2, v2

    const/4 v2, 0x6

    aput v3, p2, v2

    const/4 v2, 0x5

    aput v3, p2, v2

    const/4 v4, 0x4

    aput v3, p2, v4

    .line 1293
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p0, p2, v3, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1294
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    const/16 p2, 0x50

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/16 p1, 0xa

    .line 1295
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    .line 1296
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    mul-int/2addr p1, v1

    sub-int/2addr p2, p1

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    mul-int/2addr p1, v1

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    .line 1297
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-nez p1, :cond_0

    .line 1298
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setupVideoThumbs()V

    .line 1300
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-nez p1, :cond_1

    .line 1301
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setupAudioWaveform()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29

    move-object/from16 v0, p0

    .line 490
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-nez v3, :cond_0

    return v2

    :cond_0
    if-eqz v1, :cond_1

    .line 494
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    return v2

    .line 498
    :cond_1
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getAudioHeight()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    return v2

    .line 502
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v5, -0x1

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-nez v1, :cond_c

    .line 504
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 505
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 506
    iput-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    .line 508
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 509
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->detectHandle(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    .line 510
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v4

    sub-float/2addr v3, v4

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v4, :cond_4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v10

    :goto_2
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressVideo:Z

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressTime:J

    .line 512
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_8

    if-ne v1, v10, :cond_7

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_4

    :cond_8
    :goto_3
    move v3, v10

    :goto_4
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    .line 513
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    if-eq v1, v10, :cond_a

    if-eq v1, v7, :cond_a

    if-ne v1, v9, :cond_9

    goto :goto_5

    .line 516
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_b

    .line 517
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 518
    iput-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_6

    .line 515
    :cond_a
    :goto_5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 520
    :cond_b
    :goto_6
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastX:F

    .line 522
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onLongPress:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 523
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_17

    .line 524
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v11, 0x3

    const/4 v12, 0x2

    const-wide/32 v13, 0x1d4c0

    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v1, v12, :cond_30

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastX:F

    sub-float/2addr v1, v5

    .line 526
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v5, :cond_e

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v16, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v5, v5, v16

    if-lez v5, :cond_d

    goto :goto_7

    :cond_d
    move v5, v2

    goto :goto_8

    :cond_e
    :goto_7
    move v5, v10

    :goto_8
    if-eqz v5, :cond_2d

    .line 528
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v7

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 529
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/4 v13, 0x0

    if-ne v5, v10, :cond_f

    .line 530
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    long-to-float v4, v7

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    sub-long/2addr v4, v7

    long-to-float v1, v4

    invoke-static {v3, v1, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    float-to-long v3, v1

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 532
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    .line 533
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    goto/16 :goto_11

    :cond_f
    const v14, 0x47667800    # 59000.0f

    if-eq v5, v12, :cond_23

    if-eq v5, v11, :cond_23

    if-ne v5, v6, :cond_10

    goto/16 :goto_e

    :cond_10
    const/4 v6, 0x7

    const/4 v11, 0x6

    if-eq v5, v11, :cond_15

    if-eq v5, v6, :cond_15

    if-ne v5, v9, :cond_11

    goto :goto_9

    :cond_11
    const/4 v12, 0x5

    if-ne v5, v12, :cond_12

    .line 655
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    long-to-float v3, v7

    mul-float/2addr v1, v3

    .line 656
    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->moveAudioOffset(F)V

    .line 657
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    .line 658
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    goto/16 :goto_11

    .line 659
    :cond_12
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    if-eqz v1, :cond_2c

    .line 660
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x15e

    cmp-long v3, v3, v5

    if-gez v3, :cond_13

    move v2, v10

    :cond_13
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgressAt(FZ)Z

    .line 661
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_14

    .line 662
    invoke-interface {v1, v10}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    .line 664
    :cond_14
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    goto/16 :goto_11

    .line 581
    :cond_15
    :goto_9
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    long-to-float v3, v7

    move-wide/from16 v20, v7

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v6, v6

    div-float/2addr v3, v6

    mul-float/2addr v1, v3

    const v3, 0x3c23d70a    # 0.01f

    if-ne v5, v11, :cond_1a

    .line 583
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->minAudioSelect()J

    move-result-wide v5

    long-to-float v5, v5

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 584
    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    long-to-float v5, v5

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v8, v6

    div-float/2addr v5, v8

    .line 585
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v8, :cond_16

    .line 586
    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    long-to-float v6, v6

    div-float v6, v14, v6

    sub-float/2addr v8, v6

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 587
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    if-nez v6, :cond_17

    cmpg-float v6, v1, v13

    if-gez v6, :cond_17

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v8, v11

    div-float/2addr v14, v8

    sub-float/2addr v7, v14

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_17

    .line 588
    iput v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    goto :goto_a

    .line 591
    :cond_16
    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v11, v11

    mul-float/2addr v8, v11

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v11, v11

    add-float/2addr v8, v11

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v11, v11

    sub-float/2addr v8, v11

    long-to-float v6, v6

    div-float/2addr v8, v6

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 593
    :cond_17
    :goto_a
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    add-float v7, v6, v1

    .line 594
    invoke-static {v7, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    sub-float/2addr v6, v4

    .line 595
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_18

    .line 596
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    .line 598
    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_19

    .line 599
    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-long v6, v6

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioOffsetChange(J)V

    .line 601
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_1e

    .line 602
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-interface {v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioLeftChange(F)V

    goto/16 :goto_c

    :cond_1a
    const/4 v4, 0x7

    if-ne v5, v4, :cond_1e

    .line 605
    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v4, v6

    add-long v4, v4, v20

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v15, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 606
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->minAudioSelect()J

    move-result-wide v6

    long-to-float v6, v6

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v11, v7

    div-float/2addr v6, v11

    add-float/2addr v5, v6

    .line 607
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v6, :cond_1b

    .line 608
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    long-to-float v7, v7

    div-float v7, v14, v7

    add-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 609
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    if-nez v6, :cond_1c

    cmpl-float v6, v1, v13

    if-lez v6, :cond_1c

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v8, v11

    div-float/2addr v14, v8

    add-float/2addr v7, v14

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1c

    .line 610
    iput v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    goto :goto_b

    .line 613
    :cond_1b
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v11, v11

    mul-float/2addr v6, v11

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v11, v11

    add-float/2addr v6, v11

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v11, v11

    sub-float/2addr v6, v11

    long-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 615
    :cond_1c
    :goto_b
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    add-float v7, v6, v1

    .line 616
    invoke-static {v7, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    sub-float/2addr v6, v4

    .line 617
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1d

    .line 618
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    .line 620
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_1e

    .line 621
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-interface {v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRightChange(F)V

    .line 624
    :cond_1e
    :goto_c
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    if-ne v3, v9, :cond_21

    .line 625
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v7

    div-float/2addr v3, v4

    .line 626
    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v7, v11

    add-long v7, v7, v20

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v15, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v5, v1, v13

    if-lez v5, :cond_1f

    .line 628
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    sub-float/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_d

    .line 630
    :cond_1f
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    sub-float/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 632
    :goto_d
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    add-float/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    .line 633
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    add-float/2addr v4, v1

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    .line 635
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_20

    .line 636
    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioLeftChange(F)V

    .line 637
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-long v5, v5

    add-long/2addr v3, v5

    invoke-interface {v1, v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioOffsetChange(J)V

    .line 638
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRightChange(F)V

    .line 640
    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_21

    .line 641
    invoke-interface {v1, v10}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    .line 644
    :cond_21
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-nez v1, :cond_22

    .line 645
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-long v3, v1

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    .line 646
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_22

    .line 647
    invoke-interface {v1, v10}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    .line 648
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-interface {v1, v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    .line 651
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 652
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    .line 653
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    goto/16 :goto_11

    :cond_23
    :goto_e
    move-wide/from16 v20, v7

    .line 535
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    move-wide/from16 v3, v20

    long-to-float v3, v3

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v4, v7

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    if-ne v5, v12, :cond_25

    .line 537
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    add-float/2addr v4, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    long-to-float v5, v7

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    invoke-static {v4, v1, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    .line 538
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_24

    .line 539
    invoke-interface {v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(F)V

    .line 541
    :cond_24
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    sub-float/2addr v1, v3

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v6, v4

    div-float v6, v14, v6

    cmpl-float v1, v1, v6

    if-lez v1, :cond_29

    long-to-float v1, v4

    div-float/2addr v14, v1

    add-float/2addr v3, v14

    .line 542
    invoke-static {v15, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    .line 543
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_29

    .line 544
    invoke-interface {v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(F)V

    goto :goto_10

    :cond_25
    if-ne v5, v11, :cond_27

    .line 548
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    add-float/2addr v4, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    long-to-float v5, v7

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    invoke-static {v4, v15, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    .line 549
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_26

    .line 550
    invoke-interface {v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(F)V

    .line 552
    :cond_26
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    sub-float v3, v1, v3

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v6, v4

    div-float v6, v14, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_29

    long-to-float v3, v4

    div-float/2addr v14, v3

    sub-float/2addr v1, v14

    .line 553
    invoke-static {v13, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    .line 554
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_29

    .line 555
    invoke-interface {v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(F)V

    goto :goto_10

    :cond_27
    if-ne v5, v6, :cond_29

    cmpl-float v3, v1, v13

    if-lez v3, :cond_28

    .line 560
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    sub-float/2addr v15, v3

    invoke-static {v15, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_f

    .line 562
    :cond_28
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    neg-float v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 564
    :goto_f
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    add-float/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    .line 565
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    add-float/2addr v4, v1

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    .line 566
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_29

    .line 567
    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(F)V

    .line 568
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(F)V

    .line 571
    :cond_29
    :goto_10
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    long-to-float v1, v3

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v7, v5

    div-float/2addr v1, v7

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    cmpg-float v1, v1, v7

    if-ltz v1, :cond_2a

    long-to-float v1, v3

    long-to-float v3, v5

    div-float/2addr v1, v3

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2b

    :cond_2a
    long-to-float v1, v5

    mul-float/2addr v7, v1

    float-to-long v3, v7

    .line 572
    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    .line 573
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_2b

    .line 574
    invoke-interface {v1, v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    .line 577
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 578
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    .line 579
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    .line 666
    :cond_2c
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastX:F

    .line 668
    :cond_2d
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-eqz v1, :cond_2e

    .line 669
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onLongPress:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 671
    :cond_2e
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    if-eq v1, v10, :cond_2f

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2f

    if-ne v1, v9, :cond_3c

    :cond_2f
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3c

    move-object/from16 v3, p1

    .line 672
    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_17

    :cond_30
    move-object/from16 v3, p1

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v10, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v11, :cond_3c

    .line 675
    :cond_31
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onLongPress:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 676
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_39

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressTime:J

    sub-long/2addr v6, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v11, v4

    cmp-long v4, v6, v11

    if-gtz v4, :cond_34

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v4, :cond_34

    .line 680
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressVideo:Z

    if-nez v1, :cond_32

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-nez v4, :cond_32

    .line 681
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_15

    :cond_32
    if-eqz v1, :cond_33

    .line 683
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v1, :cond_33

    .line 684
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    .line 685
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_15

    .line 687
    :cond_33
    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgressAt(FZ)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v8, 0x190

    cmp-long v1, v3, v8

    if-lez v1, :cond_39

    .line 689
    iput-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    .line 690
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v15, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 691
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_15

    .line 694
    :cond_34
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/16 v4, 0x64

    const/16 v6, 0x3e8

    if-ne v3, v10, :cond_35

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_35

    .line 695
    invoke-virtual {v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 696
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 697
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingVideo:Z

    .line 698
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-le v3, v4, :cond_39

    .line 699
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 700
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v7, v6

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v8, v8

    long-to-float v9, v3

    div-float/2addr v8, v9

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v12, v11

    mul-float/2addr v8, v12

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v8, v6

    .line 701
    iget-wide v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    sub-long/2addr v12, v3

    long-to-float v3, v12

    div-float/2addr v3, v9

    int-to-float v4, v11

    mul-float/2addr v3, v4

    add-float/2addr v8, v3

    float-to-int v3, v8

    .line 702
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    .line 703
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->wasScrollX:I

    const/16 v19, 0x0

    neg-int v1, v1

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v17, v4

    move/from16 v18, v7

    move/from16 v20, v1

    move/from16 v22, v6

    move/from16 v23, v3

    invoke-virtual/range {v17 .. v25}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    goto/16 :goto_14

    :cond_35
    const/4 v1, 0x5

    if-eq v3, v1, :cond_36

    if-ne v3, v9, :cond_39

    .line 706
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_39

    :cond_36
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v1, :cond_39

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_39

    .line 707
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v3, :cond_37

    goto :goto_12

    :cond_37
    const/16 v6, 0x5dc

    :goto_12
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 708
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 709
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingVideo:Z

    .line 710
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-le v3, v4, :cond_39

    .line 711
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v3

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 712
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v7, v7

    long-to-float v3, v3

    div-float/2addr v7, v3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 714
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    if-eqz v6, :cond_38

    .line 715
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v9, v7

    mul-float/2addr v6, v9

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    const-wide/16 v17, 0x0

    mul-long v13, v11, v17

    long-to-float v9, v13

    sub-float/2addr v6, v9

    float-to-long v13, v6

    .line 716
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    long-to-float v7, v7

    mul-float/2addr v6, v7

    const-wide/16 v7, 0x1

    mul-long/2addr v11, v7

    long-to-float v7, v11

    sub-float/2addr v6, v7

    float-to-long v6, v6

    goto :goto_13

    :cond_38
    const-wide/16 v17, 0x0

    .line 719
    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v8

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    neg-long v6, v6

    move-wide/from16 v13, v17

    .line 721
    :goto_13
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    .line 722
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->wasScrollX:I

    const/16 v22, 0x0

    const/16 v24, 0x0

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int v12, v9, v11

    int-to-float v12, v12

    long-to-float v6, v6

    div-float/2addr v6, v3

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v15, v7

    mul-float/2addr v6, v15

    add-float/2addr v12, v6

    float-to-int v6, v12

    add-int/2addr v9, v11

    int-to-float v9, v9

    long-to-float v11, v13

    div-float/2addr v11, v3

    int-to-float v3, v7

    mul-float/2addr v11, v3

    add-float/2addr v9, v11

    float-to-int v3, v9

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v20, v8

    move/from16 v21, v4

    move/from16 v23, v1

    move/from16 v25, v6

    move/from16 v26, v3

    invoke-virtual/range {v20 .. v28}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    :goto_14
    move v1, v2

    goto :goto_16

    :cond_39
    :goto_15
    move v1, v10

    .line 727
    :goto_16
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    if-eqz v3, :cond_3a

    .line 728
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    .line 729
    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    .line 731
    :cond_3a
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-eqz v3, :cond_3b

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_3b

    .line 732
    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    .line 734
    :cond_3b
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    .line 735
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    const-wide/16 v1, -0x1

    .line 736
    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressTime:J

    .line 737
    iput v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    .line 738
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3c

    .line 739
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 740
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 743
    :cond_3c
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastTime:J

    return v10
.end method

.method public setAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFFFZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p4

    move/from16 v4, p8

    .line 289
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioPath:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v5, :cond_1

    .line 290
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-eqz v5, :cond_0

    .line 291
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->destroy()V

    .line 292
    iput-object v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    .line 293
    iput-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformIsLoaded:Z

    .line 294
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformLoaded:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5, v8, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 296
    :cond_0
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioPath:Ljava/lang/String;

    .line 297
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setupAudioWaveform()V

    .line 299
    :cond_1
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioPath:Ljava/lang/String;

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v6

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-nez v1, :cond_2

    .line 302
    iput-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    move-object v1, v9

    move-object v5, v1

    goto :goto_0

    :cond_2
    move-object/from16 v1, p2

    move-object/from16 v5, p3

    .line 306
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v1, v9

    .line 309
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v5, v9

    .line 312
    :cond_4
    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v10, :cond_b

    .line 313
    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-long v2, v2

    sub-long v2, p6, v2

    .line 314
    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    .line 315
    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    move/from16 v2, p9

    .line 316
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    move/from16 v2, p10

    .line 317
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioVolume:F

    if-eqz v1, :cond_7

    .line 319
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorPaint:Landroid/text/TextPaint;

    const v4, 0x1869f

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object p1, v2

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v10

    move/from16 p6, v11

    move/from16 p7, v12

    move/from16 p8, v13

    invoke-direct/range {p1 .. p8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    .line 320
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    goto :goto_1

    :cond_5
    move v1, v8

    :goto_1
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorWidth:F

    .line 321
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    goto :goto_2

    :cond_6
    move v1, v8

    :goto_2
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorLeft:F

    goto :goto_3

    .line 323
    :cond_7
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorWidth:F

    .line 324
    iput-object v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    :goto_3
    if-eqz v5, :cond_a

    .line 327
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitlePaint:Landroid/text/TextPaint;

    const v3, 0x1869f

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object p1, v1

    move-object/from16 p2, v5

    move-object/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v9

    move/from16 p7, v10

    move/from16 p8, v11

    invoke-direct/range {p1 .. p8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    .line 328
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    goto :goto_4

    :cond_8
    move v1, v8

    :goto_4
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitleWidth:F

    .line 329
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v8

    :cond_9
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitleLeft:F

    goto :goto_5

    .line 331
    :cond_a
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitleWidth:F

    .line 332
    iput-object v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    :cond_b
    :goto_5
    if-nez p11, :cond_c

    .line 336
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 338
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    return-void
.end method

.method public setProgress(J)V
    .locals 10

    .line 267
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    const-wide/16 v1, 0xf0

    const/high16 v3, 0x43700000    # 240.0f

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    long-to-float v0, p1

    iget-wide v6, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    long-to-float v8, v6

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_0

    add-long/2addr v4, v1

    long-to-float v0, v4

    long-to-float v4, v6

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    mul-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_2

    long-to-float v0, p1

    iget-wide v6, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v8, v6

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_2

    add-long/2addr v4, v1

    long-to-float v0, v4

    long-to-float v1, v6

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    const-wide/16 v0, -0x1

    .line 271
    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 274
    :cond_2
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideo(Ljava/lang/String;J)V
    .locals 4

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoPath:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->destroy()V

    .line 237
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    :cond_1
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    .line 240
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    .line 241
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoPath:Ljava/lang/String;

    .line 242
    iput-wide p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    .line 243
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setupVideoThumbs()V

    goto :goto_0

    .line 245
    :cond_2
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoPath:Ljava/lang/String;

    const-wide/16 p1, 0x1

    .line 246
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoDuration:J

    .line 247
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    .line 249
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoPath:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasVideo:Z

    .line 250
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoLeft(F)V
    .locals 0

    .line 279
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoLeft:F

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoRight(F)V
    .locals 0

    .line 284
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoRight:F

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
