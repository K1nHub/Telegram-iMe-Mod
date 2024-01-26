package org.telegram.p043ui.Components.Paint.Views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Looper;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Consumer;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.vision.Frame;
import com.google.android.gms.vision.face.Face;
import com.google.android.gms.vision.face.FaceDetector;
import com.iMe.fork.utils.Callbacks$Callback1;
import java.io.File;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Bitmaps;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.BubbleActivity;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.ChatActivityEnterViewAnimatedIconView;
import org.telegram.p043ui.Components.ChatAttachAlert;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EmojiView;
import org.telegram.p043ui.Components.IPhotoPaintView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Paint.Brush;
import org.telegram.p043ui.Components.Paint.ColorPickerBottomSheet;
import org.telegram.p043ui.Components.Paint.PaintTypeface;
import org.telegram.p043ui.Components.Paint.Painting;
import org.telegram.p043ui.Components.Paint.PersistColorPalette;
import org.telegram.p043ui.Components.Paint.PhotoFace;
import org.telegram.p043ui.Components.Paint.RenderView;
import org.telegram.p043ui.Components.Paint.Swatch;
import org.telegram.p043ui.Components.Paint.UndoStore;
import org.telegram.p043ui.Components.Paint.Views.EntitiesContainerView;
import org.telegram.p043ui.Components.Paint.Views.EntityView;
import org.telegram.p043ui.Components.Paint.Views.LPhotoPaintView;
import org.telegram.p043ui.Components.Paint.Views.PaintTextOptionsView;
import org.telegram.p043ui.Components.Paint.Views.PaintToolsView;
import org.telegram.p043ui.Components.Paint.Views.PaintWeightChooserView;
import org.telegram.p043ui.Components.Point;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.Size;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.Components.SizeNotifierFrameLayoutPhoto;
import org.telegram.p043ui.Components.ThanosEffect;
import org.telegram.p043ui.Components.TrendingStickersLayout;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.p043ui.Stories.recorder.EmojiBottomSheet;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$InputDocument;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$StickerSet;
import org.telegram.tgnet.TLRPC$StickerSetCovered;
import org.telegram.tgnet.TLRPC$TL_documentAttributeSticker;
import org.telegram.tgnet.TLRPC$TL_inputDocument;
import org.telegram.tgnet.TLRPC$TL_maskCoords;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.Paint.Views.LPhotoPaintView */
/* loaded from: classes6.dex */
public class LPhotoPaintView extends SizeNotifierFrameLayoutPhoto implements IPhotoPaintView, PaintToolsView.Delegate, EntityView.EntityViewDelegate, PaintTextOptionsView.Delegate, SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate, NotificationCenter.NotificationCenterDelegate {
    private float baseScale;
    private Bitmap bitmapToEdit;
    public FrameLayout bottomLayout;
    private boolean bottomPanelIgnoreOnce;
    public PaintCancelView cancelButton;
    private TextView cancelTextButton;
    private Paint colorPickerRainbowPaint;
    private Swatch colorSwatch;
    private Paint colorSwatchOutlinePaint;
    private Paint colorSwatchPaint;
    private PaintColorsListView colorsListView;
    private int currentAccount;
    private MediaController.CropState currentCropState;
    private EntityView currentEntityView;
    private boolean destroyed;
    public PaintDoneView doneButton;
    private TextView doneTextButton;
    private TextView drawTab;
    private boolean editingText;
    private int emojiPadding;
    private EmojiView emojiView;
    public boolean emojiViewVisible;
    private EntitiesContainerView entitiesView;
    private ArrayList<PhotoFace> faces;
    private Bitmap facesBitmap;
    private boolean ignoreLayout;
    private boolean ignoreToolChangeAnimationOnce;
    private float imageHeight;
    private float imageWidth;
    private boolean inBubbleMode;
    private float inputTransformX;
    private float inputTransformY;
    public boolean isAnimatePopupClosing;
    private boolean isColorListShown;
    private boolean isTypefaceMenuShown;
    private int keyboardHeight;
    private int keyboardHeightLand;
    public boolean keyboardVisible;
    private int lastSizeChangeValue1;
    private boolean lastSizeChangeValue2;
    private BigInteger lcm;
    private float offsetTranslationY;
    private Runnable onDoneButtonClickedListener;
    private Runnable openKeyboardRunnable;
    private int originalBitmapRotation;
    public FrameLayout overlayLayout;
    private PaintToolsView paintToolsView;
    private Size paintingSize;
    private float panTranslationProgress;
    private float panTranslationY;
    private float pany;
    private FrameLayout pipetteContainerLayout;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout popupLayout;
    private Rect popupRect;
    private ActionBarPopupWindow popupWindow;
    private int[] pos;
    private DispatchQueue queue;
    private View renderInputView;
    private RenderView renderView;
    private Theme.ResourcesProvider resourcesProvider;
    private float scale;
    private int selectedTextType;
    private FrameLayout selectionContainerView;
    private TextView stickerTab;
    public LinearLayout tabsLayout;
    private int tabsNewSelectedIndex;
    private int tabsSelectedIndex;
    private ValueAnimator tabsSelectionAnimator;
    private float tabsSelectionProgress;
    public PaintTextOptionsView textOptionsView;
    private TextView textTab;
    private ThanosEffect thanosEffect;
    private Paint toolsPaint;
    private SpringAnimation toolsTransformAnimation;
    private float toolsTransformProgress;
    private FrameLayout topLayout;
    private float transformX;
    private float transformY;
    private boolean translateBottomPanelAfterResize;
    private PaintTypefaceListView typefaceListView;
    private Paint typefaceMenuBackgroundPaint;
    private Paint typefaceMenuOutlinePaint;
    private SpringAnimation typefaceMenuTransformAnimation;
    private float typefaceMenuTransformProgress;
    private TextView undoAllButton;
    private ImageView undoButton;
    private UndoStore undoStore;
    private boolean waitingForKeyboardOpen;
    public PaintWeightChooserView weightChooserView;
    private PaintWeightChooserView.ValueOverride weightDefaultValueOverride;
    private LinearLayout zoomOutButton;
    private ImageView zoomOutImage;
    private TextView zoomOutText;
    private boolean zoomOutVisible;

    private void bottomPanelTranslationY(float f, float f2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onSwitchSegmentedAnimation$50() {
    }

    protected void didSetAnimatedSticker(RLottieDrawable rLottieDrawable) {
    }

    protected int getPKeyboardHeight() {
        return 0;
    }

    public /* bridge */ /* synthetic */ View getView() {
        return IPhotoPaintView.CC.$default$getView(this);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public /* synthetic */ boolean isEntityDeletable() {
        return EntityView.EntityViewDelegate.CC.$default$isEntityDeletable(this);
    }

    protected void onEmojiViewCloseByClick() {
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public /* synthetic */ void onEntityDragEnd(boolean z) {
        EntityView.EntityViewDelegate.CC.$default$onEntityDragEnd(this, z);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public /* synthetic */ void onEntityDragMultitouchEnd() {
        EntityView.EntityViewDelegate.CC.$default$onEntityDragMultitouchEnd(this);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public /* synthetic */ void onEntityDragMultitouchStart() {
        EntityView.EntityViewDelegate.CC.$default$onEntityDragMultitouchStart(this);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public /* synthetic */ void onEntityDragStart() {
        EntityView.EntityViewDelegate.CC.$default$onEntityDragStart(this);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public /* synthetic */ void onEntityDragTrash(boolean z) {
        EntityView.EntityViewDelegate.CC.$default$onEntityDragTrash(this, z);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public /* synthetic */ void onEntityDraggedBottom(boolean z) {
        EntityView.EntityViewDelegate.CC.$default$onEntityDraggedBottom(this, z);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public /* synthetic */ void onEntityDraggedTop(boolean z) {
        EntityView.EntityViewDelegate.CC.$default$onEntityDraggedTop(this, z);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public /* synthetic */ void onEntityHandleTouched() {
        EntityView.EntityViewDelegate.CC.$default$onEntityHandleTouched(this);
    }

    protected void onOpenCloseStickersAlert(boolean z) {
    }

    protected void onTextAdd() {
    }

    protected void updateKeyboard() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v29, types: [android.widget.FrameLayout, org.telegram.ui.Components.Paint.Views.StickerView] */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.telegram.ui.Components.Paint.Views.LPhotoPaintView, android.widget.FrameLayout, org.telegram.ui.Components.SizeNotifierFrameLayoutPhoto, org.telegram.ui.Components.SizeNotifierFrameLayout, org.telegram.ui.Components.SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v5, types: [org.telegram.ui.Components.Paint.Views.LPhotoPaintView] */
    /* JADX WARN: Type inference failed for: r8v9 */
    public LPhotoPaintView(final Context context, Activity activity, final int i, Bitmap bitmap, final Bitmap bitmap2, int i2, ArrayList<VideoEditedInfo.MediaEntity> arrayList, MediaController.CropState cropState, final Runnable runnable, final Theme.ResourcesProvider resourcesProvider) {
        LPhotoPaintView lPhotoPaintView;
        Emoji.EmojiSpan[] emojiSpanArr;
        TextPaintView textPaintView;
        final ?? sizeNotifierFrameLayoutPhoto = new SizeNotifierFrameLayoutPhoto(context, activity, true);
        sizeNotifierFrameLayoutPhoto.tabsSelectedIndex = 0;
        sizeNotifierFrameLayoutPhoto.tabsNewSelectedIndex = -1;
        sizeNotifierFrameLayoutPhoto.weightDefaultValueOverride = new PaintWeightChooserView.ValueOverride() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.1
            @Override // org.telegram.p043ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
            public float get() {
                Brush currentBrush = LPhotoPaintView.this.renderView.getCurrentBrush();
                return currentBrush == null ? PersistColorPalette.getInstance(LPhotoPaintView.this.currentAccount).getCurrentWeight() : PersistColorPalette.getInstance(LPhotoPaintView.this.currentAccount).getWeight(String.valueOf(Brush.BRUSHES_LIST.indexOf(currentBrush)), currentBrush.getDefaultWeight());
            }

            @Override // org.telegram.p043ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
            public void set(float f) {
                PersistColorPalette.getInstance(LPhotoPaintView.this.currentAccount).setWeight(String.valueOf(Brush.BRUSHES_LIST.indexOf(LPhotoPaintView.this.renderView.getCurrentBrush())), f);
                LPhotoPaintView.this.colorSwatch.brushWeight = f;
                LPhotoPaintView lPhotoPaintView2 = LPhotoPaintView.this;
                lPhotoPaintView2.setCurrentSwatch(lPhotoPaintView2.colorSwatch, true);
            }
        };
        sizeNotifierFrameLayoutPhoto.typefaceMenuOutlinePaint = new Paint(1);
        sizeNotifierFrameLayoutPhoto.typefaceMenuBackgroundPaint = new Paint(1);
        sizeNotifierFrameLayoutPhoto.colorPickerRainbowPaint = new Paint(1);
        sizeNotifierFrameLayoutPhoto.colorSwatchPaint = new Paint(1);
        sizeNotifierFrameLayoutPhoto.colorSwatchOutlinePaint = new Paint(1);
        sizeNotifierFrameLayoutPhoto.colorSwatch = new Swatch(-1, 1.0f, 0.016773745f);
        sizeNotifierFrameLayoutPhoto.toolsPaint = new Paint(1);
        sizeNotifierFrameLayoutPhoto.zoomOutVisible = false;
        sizeNotifierFrameLayoutPhoto.pos = new int[2];
        sizeNotifierFrameLayoutPhoto.openKeyboardRunnable = new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.19
            @Override // java.lang.Runnable
            public void run() {
                if (LPhotoPaintView.this.currentEntityView instanceof TextPaintView) {
                    EditTextOutline editText = ((TextPaintView) LPhotoPaintView.this.currentEntityView).getEditText();
                    if (LPhotoPaintView.this.destroyed || editText == null || !LPhotoPaintView.this.waitingForKeyboardOpen || LPhotoPaintView.this.keyboardVisible || AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow || !AndroidUtilities.isTablet()) {
                        return;
                    }
                    editText.requestFocus();
                    AndroidUtilities.showKeyboard(editText);
                    AndroidUtilities.cancelRunOnUIThread(LPhotoPaintView.this.openKeyboardRunnable);
                    AndroidUtilities.runOnUIThread(LPhotoPaintView.this.openKeyboardRunnable, 100L);
                }
            }
        };
        sizeNotifierFrameLayoutPhoto.setDelegate(sizeNotifierFrameLayoutPhoto);
        sizeNotifierFrameLayoutPhoto.currentAccount = i;
        sizeNotifierFrameLayoutPhoto.resourcesProvider = new Theme.ResourcesProvider() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda48
            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ void applyServiceShaderMatrix(int i3, int i4, float f, float f2) {
                Theme.applyServiceShaderMatrix(i3, i4, f, f2);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ ColorFilter getAnimatedEmojiColorFilter() {
                return Theme.ResourcesProvider.CC.$default$getAnimatedEmojiColorFilter(this);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public final int getColor(int i3) {
                int lambda$new$0;
                lambda$new$0 = LPhotoPaintView.lambda$new$0(Theme.ResourcesProvider.this, i3);
                return lambda$new$0;
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ int getColorOrDefault(int i3) {
                return getColor(i3);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ int getCurrentColor(int i3) {
                return getColor(i3);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ Drawable getDrawable(String str) {
                return Theme.ResourcesProvider.CC.$default$getDrawable(this, str);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ Paint getPaint(String str) {
                return Theme.ResourcesProvider.CC.$default$getPaint(this, str);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ boolean hasGradientService() {
                return Theme.ResourcesProvider.CC.$default$hasGradientService(this);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ boolean isDark() {
                boolean isCurrentThemeDark;
                isCurrentThemeDark = Theme.isCurrentThemeDark();
                return isCurrentThemeDark;
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ void setAnimatedColor(int i3, int i4) {
                Theme.ResourcesProvider.CC.$default$setAnimatedColor(this, i3, i4);
            }
        };
        sizeNotifierFrameLayoutPhoto.currentCropState = cropState;
        sizeNotifierFrameLayoutPhoto.inBubbleMode = context instanceof BubbleActivity;
        final PersistColorPalette persistColorPalette = PersistColorPalette.getInstance(i);
        persistColorPalette.resetCurrentColor();
        sizeNotifierFrameLayoutPhoto.colorSwatch.color = persistColorPalette.getCurrentColor();
        sizeNotifierFrameLayoutPhoto.colorSwatch.brushWeight = persistColorPalette.getCurrentWeight();
        sizeNotifierFrameLayoutPhoto.queue = new DispatchQueue("Paint");
        sizeNotifierFrameLayoutPhoto.bitmapToEdit = bitmap;
        sizeNotifierFrameLayoutPhoto.facesBitmap = bitmap2;
        sizeNotifierFrameLayoutPhoto.originalBitmapRotation = i2;
        UndoStore undoStore = new UndoStore();
        sizeNotifierFrameLayoutPhoto.undoStore = undoStore;
        undoStore.setDelegate(new UndoStore.UndoStoreDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda49
            @Override // org.telegram.p043ui.Components.Paint.UndoStore.UndoStoreDelegate
            public final void historyChanged() {
                LPhotoPaintView.this.lambda$new$1();
            }
        });
        RenderView renderView = new RenderView(context, new Painting(getPaintingSize(), bitmap2, i2, null), sizeNotifierFrameLayoutPhoto.bitmapToEdit, null, null) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.2
            @Override // org.telegram.p043ui.Components.Paint.RenderView
            public void selectBrush(Brush brush) {
                int indexOf = Brush.BRUSHES_LIST.indexOf(brush) + 1;
                if (indexOf > 1 && bitmap2 == null) {
                    indexOf--;
                }
                LPhotoPaintView.this.paintToolsView.select(indexOf);
                LPhotoPaintView.this.onBrushSelected(brush);
            }
        };
        sizeNotifierFrameLayoutPhoto.renderView = renderView;
        renderView.setDelegate(new RenderView.RenderViewDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.3
            @Override // org.telegram.p043ui.Components.Paint.RenderView.RenderViewDelegate
            public void onFirstDraw() {
                runnable.run();
            }

            @Override // org.telegram.p043ui.Components.Paint.RenderView.RenderViewDelegate
            public void onBeganDrawing() {
                if (LPhotoPaintView.this.currentEntityView != null) {
                    LPhotoPaintView.this.selectEntity(null);
                }
                LPhotoPaintView.this.weightChooserView.setViewHidden(true);
            }

            @Override // org.telegram.p043ui.Components.Paint.RenderView.RenderViewDelegate
            public void onFinishedDrawing(boolean z) {
                LPhotoPaintView.this.undoStore.getDelegate().historyChanged();
                LPhotoPaintView.this.weightChooserView.setViewHidden(false);
            }

            @Override // org.telegram.p043ui.Components.Paint.RenderView.RenderViewDelegate
            public boolean shouldDraw() {
                boolean z = LPhotoPaintView.this.currentEntityView == null;
                if (!z) {
                    LPhotoPaintView.this.selectEntity(null);
                }
                return z;
            }

            @Override // org.telegram.p043ui.Components.Paint.RenderView.RenderViewDelegate
            public void invalidateInputView() {
                if (LPhotoPaintView.this.renderInputView != null) {
                    LPhotoPaintView.this.renderInputView.invalidate();
                }
            }

            @Override // org.telegram.p043ui.Components.Paint.RenderView.RenderViewDelegate
            public void resetBrush() {
                if (LPhotoPaintView.this.ignoreToolChangeAnimationOnce) {
                    LPhotoPaintView.this.ignoreToolChangeAnimationOnce = false;
                    return;
                }
                LPhotoPaintView.this.paintToolsView.select(1);
                LPhotoPaintView.this.onBrushSelected(Brush.BRUSHES_LIST.get(0));
            }
        });
        sizeNotifierFrameLayoutPhoto.renderView.setUndoStore(sizeNotifierFrameLayoutPhoto.undoStore);
        sizeNotifierFrameLayoutPhoto.renderView.setQueue(sizeNotifierFrameLayoutPhoto.queue);
        sizeNotifierFrameLayoutPhoto.renderView.setVisibility(4);
        sizeNotifierFrameLayoutPhoto.addView(sizeNotifierFrameLayoutPhoto.renderView, LayoutHelper.createFrame(-1, -1, 51));
        View view = new View(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.4
            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                if (LPhotoPaintView.this.renderView != null) {
                    LPhotoPaintView.this.renderView.onDrawForInput(canvas);
                }
            }
        };
        sizeNotifierFrameLayoutPhoto.renderInputView = view;
        view.setVisibility(4);
        sizeNotifierFrameLayoutPhoto.addView(sizeNotifierFrameLayoutPhoto.renderInputView, LayoutHelper.createFrame(-1, -1, 51));
        EntitiesContainerView entitiesContainerView = new EntitiesContainerView(context, new EntitiesContainerView.EntitiesContainerViewDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.5
            @Override // org.telegram.p043ui.Components.Paint.Views.EntitiesContainerView.EntitiesContainerViewDelegate
            public EntityView onSelectedEntityRequest() {
                return LPhotoPaintView.this.currentEntityView;
            }

            @Override // org.telegram.p043ui.Components.Paint.Views.EntitiesContainerView.EntitiesContainerViewDelegate
            public void onEntityDeselect() {
                LPhotoPaintView.this.selectEntity(null);
            }
        }) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.6
            long lastUpdate;
            Paint linePaint = new Paint();
            float stickyXAlpha;
            float stickyYAlpha;

            {
                setWillNotDraw(false);
                this.linePaint.setStrokeWidth(AndroidUtilities.m107dp(2));
                this.linePaint.setStyle(Paint.Style.STROKE);
                this.linePaint.setColor(-1);
            }

            /* JADX WARN: Removed duplicated region for block: B:20:0x007d  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0092  */
            /* JADX WARN: Removed duplicated region for block: B:29:0x00ae  */
            /* JADX WARN: Removed duplicated region for block: B:32:0x00cf  */
            /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
            @Override // android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected void onDraw(android.graphics.Canvas r14) {
                /*
                    Method dump skipped, instructions count: 235
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Paint.Views.LPhotoPaintView.C52986.onDraw(android.graphics.Canvas):void");
            }
        };
        sizeNotifierFrameLayoutPhoto.entitiesView = entitiesContainerView;
        sizeNotifierFrameLayoutPhoto.addView(entitiesContainerView);
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            int i3 = 0;
            sizeNotifierFrameLayoutPhoto = sizeNotifierFrameLayoutPhoto;
            while (i3 < size) {
                VideoEditedInfo.MediaEntity mediaEntity = arrayList.get(i3);
                byte b = mediaEntity.type;
                if (b == 0) {
                    ?? createSticker = sizeNotifierFrameLayoutPhoto.createSticker(mediaEntity.parentObject, mediaEntity.document, false);
                    if ((mediaEntity.subType & 2) != 0) {
                        createSticker.mirror();
                    }
                    ViewGroup.LayoutParams layoutParams = createSticker.getLayoutParams();
                    layoutParams.width = mediaEntity.viewWidth;
                    layoutParams.height = mediaEntity.viewHeight;
                    lPhotoPaintView = sizeNotifierFrameLayoutPhoto;
                    textPaintView = createSticker;
                } else if (b == 1) {
                    TextPaintView createText = sizeNotifierFrameLayoutPhoto.createText(false);
                    createText.setType(mediaEntity.subType);
                    createText.setTypeface(mediaEntity.textTypeface);
                    createText.setBaseFontSize(mediaEntity.fontSize);
                    SpannableString spannableString = new SpannableString(mediaEntity.text);
                    Iterator<VideoEditedInfo.EmojiEntity> it = mediaEntity.entities.iterator();
                    while (it.hasNext()) {
                        VideoEditedInfo.EmojiEntity next = it.next();
                        AnimatedEmojiSpan animatedEmojiSpan = new AnimatedEmojiSpan(next.document_id, createText.getFontMetricsInt());
                        int i4 = next.offset;
                        spannableString.setSpan(animatedEmojiSpan, i4, next.length + i4, 33);
                    }
                    CharSequence replaceEmoji = Emoji.replaceEmoji((CharSequence) spannableString, createText.getFontMetricsInt(), (int) (createText.getFontSize() * 0.8f), false);
                    if ((replaceEmoji instanceof Spanned) && (emojiSpanArr = (Emoji.EmojiSpan[]) ((Spanned) replaceEmoji).getSpans(0, replaceEmoji.length(), Emoji.EmojiSpan.class)) != null) {
                        for (Emoji.EmojiSpan emojiSpan : emojiSpanArr) {
                            emojiSpan.scale = 0.85f;
                        }
                    }
                    createText.setText(replaceEmoji);
                    lPhotoPaintView = this;
                    lPhotoPaintView.setTextAlignment(createText, mediaEntity.textAlign);
                    Swatch swatch = createText.getSwatch();
                    swatch.color = mediaEntity.color;
                    createText.setSwatch(swatch);
                    textPaintView = createText;
                } else {
                    lPhotoPaintView = sizeNotifierFrameLayoutPhoto;
                    if (b == 2) {
                        PhotoView createPhoto = lPhotoPaintView.createPhoto(mediaEntity.text, false);
                        createPhoto.preloadSegmented(mediaEntity.segmentedPath);
                        if ((mediaEntity.subType & 2) != 0) {
                            createPhoto.mirror();
                        }
                        if ((mediaEntity.subType & 16) != 0) {
                            createPhoto.toggleSegmented(false);
                        }
                        ViewGroup.LayoutParams layoutParams2 = createPhoto.getLayoutParams();
                        layoutParams2.width = mediaEntity.viewWidth;
                        layoutParams2.height = mediaEntity.viewHeight;
                        textPaintView = createPhoto;
                    } else {
                        i3++;
                        sizeNotifierFrameLayoutPhoto = lPhotoPaintView;
                    }
                }
                textPaintView.setX((mediaEntity.f1579x * lPhotoPaintView.paintingSize.width) - ((mediaEntity.viewWidth * (1.0f - mediaEntity.scale)) / 2.0f));
                textPaintView.setY((mediaEntity.f1580y * lPhotoPaintView.paintingSize.height) - ((mediaEntity.viewHeight * (1.0f - mediaEntity.scale)) / 2.0f));
                textPaintView.setPosition(new Point(textPaintView.getX() + (mediaEntity.viewWidth / 2.0f), textPaintView.getY() + (mediaEntity.viewHeight / 2.0f)));
                textPaintView.setScale(mediaEntity.scale);
                textPaintView.setRotation((float) (((-mediaEntity.rotation) / 3.141592653589793d) * 180.0d));
                i3++;
                sizeNotifierFrameLayoutPhoto = lPhotoPaintView;
            }
        }
        final LPhotoPaintView lPhotoPaintView2 = sizeNotifierFrameLayoutPhoto;
        lPhotoPaintView2.entitiesView.setVisibility(4);
        FrameLayout frameLayout = new FrameLayout(lPhotoPaintView2, context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.7
            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return false;
            }
        };
        lPhotoPaintView2.selectionContainerView = frameLayout;
        lPhotoPaintView2.addView(frameLayout);
        FrameLayout frameLayout2 = new FrameLayout(context);
        lPhotoPaintView2.topLayout = frameLayout2;
        frameLayout2.setPadding(AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12));
        lPhotoPaintView2.topLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-16777216, 0}));
        lPhotoPaintView2.addView(lPhotoPaintView2.topLayout, LayoutHelper.createFrame(-1, -2, 48));
        ImageView imageView = new ImageView(context);
        lPhotoPaintView2.undoButton = imageView;
        imageView.setImageResource(C3632R.C3634drawable.photo_undo2);
        lPhotoPaintView2.undoButton.setPadding(AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(3));
        lPhotoPaintView2.undoButton.setBackground(Theme.createSelectorDrawable(1090519039));
        lPhotoPaintView2.undoButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.this.lambda$new$2(view2);
            }
        });
        lPhotoPaintView2.undoButton.setAlpha(0.6f);
        lPhotoPaintView2.undoButton.setClickable(false);
        lPhotoPaintView2.topLayout.addView(lPhotoPaintView2.undoButton, LayoutHelper.createFrame(32, 32, 51, 12, 0, 0, 0));
        LinearLayout linearLayout = new LinearLayout(context);
        lPhotoPaintView2.zoomOutButton = linearLayout;
        linearLayout.setOrientation(0);
        lPhotoPaintView2.zoomOutButton.setBackground(Theme.createSelectorDrawable(822083583, 7));
        lPhotoPaintView2.zoomOutButton.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
        TextView textView = new TextView(context);
        lPhotoPaintView2.zoomOutText = textView;
        textView.setTextColor(-1);
        lPhotoPaintView2.zoomOutText.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        lPhotoPaintView2.zoomOutText.setTextSize(1, 16.0f);
        lPhotoPaintView2.zoomOutText.setText(LocaleController.getString(C3632R.string.PhotoEditorZoomOut));
        ImageView imageView2 = new ImageView(context);
        lPhotoPaintView2.zoomOutImage = imageView2;
        imageView2.setImageResource(C3632R.C3634drawable.photo_zoomout);
        lPhotoPaintView2.zoomOutButton.addView(lPhotoPaintView2.zoomOutImage, LayoutHelper.createLinear(24, 24, 16, 0, 0, 8, 0));
        lPhotoPaintView2.zoomOutButton.addView(lPhotoPaintView2.zoomOutText, LayoutHelper.createLinear(-2, -2, 16));
        lPhotoPaintView2.zoomOutButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        lPhotoPaintView2.zoomOutButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.lambda$new$3(view2);
            }
        });
        lPhotoPaintView2.topLayout.addView(lPhotoPaintView2.zoomOutButton, LayoutHelper.createFrame(-2, 32, 17));
        TextView textView2 = new TextView(context);
        lPhotoPaintView2.undoAllButton = textView2;
        textView2.setBackground(Theme.createSelectorDrawable(822083583, 7));
        lPhotoPaintView2.undoAllButton.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
        lPhotoPaintView2.undoAllButton.setText(LocaleController.getString(C3632R.string.PhotoEditorClearAll));
        lPhotoPaintView2.undoAllButton.setGravity(16);
        lPhotoPaintView2.undoAllButton.setTextColor(-1);
        lPhotoPaintView2.undoAllButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        lPhotoPaintView2.undoAllButton.setTextSize(1, 16.0f);
        lPhotoPaintView2.undoAllButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.this.lambda$new$4(view2);
            }
        });
        lPhotoPaintView2.undoAllButton.setAlpha(0.6f);
        lPhotoPaintView2.topLayout.addView(lPhotoPaintView2.undoAllButton, LayoutHelper.createFrame(-2, 32, 5, 0, 0, 4, 0));
        TextView textView3 = new TextView(context);
        lPhotoPaintView2.cancelTextButton = textView3;
        textView3.setBackground(Theme.createSelectorDrawable(822083583, 7));
        lPhotoPaintView2.cancelTextButton.setText(LocaleController.getString(C3632R.string.Clear));
        lPhotoPaintView2.cancelTextButton.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
        lPhotoPaintView2.cancelTextButton.setGravity(16);
        lPhotoPaintView2.cancelTextButton.setTextColor(-1);
        lPhotoPaintView2.cancelTextButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        lPhotoPaintView2.cancelTextButton.setTextSize(1, 16.0f);
        lPhotoPaintView2.cancelTextButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.this.lambda$new$5(view2);
            }
        });
        lPhotoPaintView2.cancelTextButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        lPhotoPaintView2.cancelTextButton.setVisibility(8);
        lPhotoPaintView2.topLayout.addView(lPhotoPaintView2.cancelTextButton, LayoutHelper.createFrame(-2, 32, 51, 4, 0, 0, 0));
        TextView textView4 = new TextView(context);
        lPhotoPaintView2.doneTextButton = textView4;
        textView4.setBackground(Theme.createSelectorDrawable(822083583, 7));
        lPhotoPaintView2.doneTextButton.setText(LocaleController.getString(C3632R.string.Done));
        lPhotoPaintView2.doneTextButton.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
        lPhotoPaintView2.doneTextButton.setGravity(16);
        lPhotoPaintView2.doneTextButton.setTextColor(-1);
        lPhotoPaintView2.doneTextButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        lPhotoPaintView2.doneTextButton.setTextSize(1, 16.0f);
        lPhotoPaintView2.doneTextButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.this.lambda$new$6(view2);
            }
        });
        lPhotoPaintView2.doneTextButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        lPhotoPaintView2.doneTextButton.setVisibility(8);
        lPhotoPaintView2.topLayout.addView(lPhotoPaintView2.doneTextButton, LayoutHelper.createFrame(-2, 32, 5, 0, 0, 4, 0));
        FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.8
            private float lastRainbowX;
            private float lastRainbowY;

            {
                new Path();
                setWillNotDraw(false);
                LPhotoPaintView.this.colorPickerRainbowPaint.setStyle(Paint.Style.STROKE);
                LPhotoPaintView.this.colorPickerRainbowPaint.setStrokeWidth(AndroidUtilities.m107dp(2));
            }

            private void checkRainbow(float f, float f2) {
                if (f == this.lastRainbowX && f2 == this.lastRainbowY) {
                    return;
                }
                this.lastRainbowX = f;
                this.lastRainbowY = f2;
                LPhotoPaintView.this.colorPickerRainbowPaint.setShader(new SweepGradient(f, f2, new int[]{-1356981, -1146130, -10452764, -16711681, -7352832, -256, -23296, -1356981}, (float[]) null));
            }

            @Override // android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                FrameLayout frameLayout4 = LPhotoPaintView.this.overlayLayout;
                if (frameLayout4 != null) {
                    frameLayout4.invalidate();
                }
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                ViewGroup barView = LPhotoPaintView.this.getBarView();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.lerp(barView.getLeft(), LPhotoPaintView.this.colorsListView.getLeft(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getTop(), LPhotoPaintView.this.colorsListView.getTop(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getRight(), LPhotoPaintView.this.colorsListView.getRight(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getBottom(), LPhotoPaintView.this.colorsListView.getBottom(), LPhotoPaintView.this.toolsTransformProgress));
                float lerp = AndroidUtilities.lerp(AndroidUtilities.m107dp(32), AndroidUtilities.m107dp(24), LPhotoPaintView.this.toolsTransformProgress);
                canvas.drawRoundRect(rectF, lerp, lerp, LPhotoPaintView.this.toolsPaint);
                if (barView.getChildCount() < 1 || LPhotoPaintView.this.toolsTransformProgress == 1.0f) {
                    return;
                }
                canvas.save();
                canvas.translate(barView.getLeft(), barView.getTop());
                View childAt = barView.getChildAt(0);
                if (barView instanceof PaintTextOptionsView) {
                    childAt = ((PaintTextOptionsView) barView).getColorClickableView();
                }
                View view2 = childAt;
                if (view2.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    canvas.scale(view2.getScaleX(), view2.getScaleY(), view2.getPivotX(), view2.getPivotY());
                    LPhotoPaintView.this.colorPickerRainbowPaint.setAlpha((int) ((1.0f - LPhotoPaintView.this.toolsTransformProgress) * view2.getAlpha() * 255.0f));
                    int width = (view2.getWidth() - view2.getPaddingLeft()) - view2.getPaddingRight();
                    int height = (view2.getHeight() - view2.getPaddingTop()) - view2.getPaddingBottom();
                    float x = view2.getX() + view2.getPaddingLeft() + (width / 2.0f);
                    float y = view2.getY() + view2.getPaddingTop() + (height / 2.0f);
                    int i5 = LPhotoPaintView.this.colorSwatch.color;
                    if (LPhotoPaintView.this.tabsNewSelectedIndex != -1) {
                        LPhotoPaintView lPhotoPaintView3 = LPhotoPaintView.this;
                        ViewGroup viewGroup = (ViewGroup) lPhotoPaintView3.getBarView(lPhotoPaintView3.tabsNewSelectedIndex);
                        View childAt2 = (viewGroup == null ? barView : viewGroup).getChildAt(0);
                        if (viewGroup instanceof PaintTextOptionsView) {
                            childAt2 = ((PaintTextOptionsView) viewGroup).getColorClickableView();
                        }
                        x = AndroidUtilities.lerp(x, childAt2.getX() + childAt2.getPaddingLeft() + (((childAt2.getWidth() - childAt2.getPaddingLeft()) - childAt2.getPaddingRight()) / 2.0f), LPhotoPaintView.this.tabsSelectionProgress);
                        y = AndroidUtilities.lerp(y, childAt2.getY() + childAt2.getPaddingTop() + (((childAt2.getHeight() - childAt2.getPaddingTop()) - childAt2.getPaddingBottom()) / 2.0f), LPhotoPaintView.this.tabsSelectionProgress);
                    }
                    if (LPhotoPaintView.this.colorsListView != null && LPhotoPaintView.this.colorsListView.getChildCount() > 0) {
                        View childAt3 = LPhotoPaintView.this.colorsListView.getChildAt(0);
                        x = AndroidUtilities.lerp(x, (LPhotoPaintView.this.colorsListView.getX() - barView.getLeft()) + childAt3.getX() + (childAt3.getWidth() / 2.0f), LPhotoPaintView.this.toolsTransformProgress);
                        y = AndroidUtilities.lerp(y, (LPhotoPaintView.this.colorsListView.getY() - barView.getTop()) + childAt3.getY() + (childAt3.getHeight() / 2.0f), LPhotoPaintView.this.toolsTransformProgress);
                        i5 = ColorUtils.blendARGB(LPhotoPaintView.this.colorSwatch.color, persistColorPalette.getColor(0), LPhotoPaintView.this.toolsTransformProgress);
                    }
                    float f = x;
                    checkRainbow(f, y);
                    float min = (Math.min(width, height) / 2.0f) - AndroidUtilities.m108dp(0.5f);
                    if (LPhotoPaintView.this.colorsListView != null && LPhotoPaintView.this.colorsListView.getChildCount() > 0) {
                        View childAt4 = LPhotoPaintView.this.colorsListView.getChildAt(0);
                        min = AndroidUtilities.lerp(min, (Math.min((childAt4.getWidth() - childAt4.getPaddingLeft()) - childAt4.getPaddingRight(), (childAt4.getHeight() - childAt4.getPaddingTop()) - childAt4.getPaddingBottom()) / 2.0f) - AndroidUtilities.m108dp(2.0f), LPhotoPaintView.this.toolsTransformProgress);
                    }
                    float f2 = min;
                    rectF.set(f - f2, y - f2, f + f2, y + f2);
                    canvas.drawArc(rectF, BitmapDescriptorFactory.HUE_RED, 360.0f, false, LPhotoPaintView.this.colorPickerRainbowPaint);
                    LPhotoPaintView.this.colorSwatchPaint.setColor(i5);
                    LPhotoPaintView.this.colorSwatchPaint.setAlpha((int) (LPhotoPaintView.this.colorSwatchPaint.getAlpha() * view2.getAlpha()));
                    LPhotoPaintView.this.colorSwatchOutlinePaint.setColor(i5);
                    LPhotoPaintView.this.colorSwatchOutlinePaint.setAlpha((int) (view2.getAlpha() * 255.0f));
                    float m108dp = f2 - AndroidUtilities.m108dp(3.0f);
                    if (LPhotoPaintView.this.colorsListView != null && LPhotoPaintView.this.colorsListView.getSelectedColorIndex() != 0) {
                        m108dp = AndroidUtilities.lerp(f2 - AndroidUtilities.m108dp(3.0f), AndroidUtilities.m107dp(2) + f2, LPhotoPaintView.this.toolsTransformProgress);
                    }
                    PaintColorsListView.drawColorCircle(canvas, f, y, m108dp, LPhotoPaintView.this.colorSwatchPaint.getColor());
                    if (LPhotoPaintView.this.colorsListView != null && LPhotoPaintView.this.colorsListView.getSelectedColorIndex() == 0) {
                        LPhotoPaintView.this.colorSwatchOutlinePaint.setAlpha((int) (LPhotoPaintView.this.colorSwatchOutlinePaint.getAlpha() * LPhotoPaintView.this.toolsTransformProgress * view2.getAlpha()));
                        canvas.drawCircle(f, y, f2 - ((AndroidUtilities.m108dp(3.0f) + LPhotoPaintView.this.colorSwatchOutlinePaint.getStrokeWidth()) * (1.0f - LPhotoPaintView.this.toolsTransformProgress)), LPhotoPaintView.this.colorSwatchOutlinePaint);
                    }
                }
                canvas.restore();
            }
        };
        lPhotoPaintView2.bottomLayout = frameLayout3;
        frameLayout3.setPadding(AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), 0);
        lPhotoPaintView2.bottomLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, Integer.MIN_VALUE}));
        lPhotoPaintView2.addView(lPhotoPaintView2.bottomLayout, LayoutHelper.createFrame(-1, 104, 80));
        PaintToolsView paintToolsView = new PaintToolsView(context, bitmap2 != null);
        lPhotoPaintView2.paintToolsView = paintToolsView;
        paintToolsView.setPadding(AndroidUtilities.m107dp(16), 0, AndroidUtilities.m107dp(16), 0);
        lPhotoPaintView2.paintToolsView.setDelegate(lPhotoPaintView2);
        lPhotoPaintView2.paintToolsView.setSelectedIndex(1);
        lPhotoPaintView2.bottomLayout.addView(lPhotoPaintView2.paintToolsView, LayoutHelper.createFrame(-1, 48));
        PaintTextOptionsView paintTextOptionsView = new PaintTextOptionsView(context);
        lPhotoPaintView2.textOptionsView = paintTextOptionsView;
        paintTextOptionsView.setPadding(AndroidUtilities.m107dp(16), 0, AndroidUtilities.m107dp(16), 0);
        lPhotoPaintView2.textOptionsView.setVisibility(8);
        lPhotoPaintView2.textOptionsView.setDelegate(lPhotoPaintView2);
        lPhotoPaintView2.textOptionsView.setAlignment(PersistColorPalette.getInstance(i).getCurrentAlignment());
        lPhotoPaintView2.bottomLayout.addView(lPhotoPaintView2.textOptionsView, LayoutHelper.createFrame(-1, 48));
        FrameLayout frameLayout4 = new FrameLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.9
            {
                setWillNotDraw(false);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() == 0 && LPhotoPaintView.this.isTypefaceMenuShown) {
                    LPhotoPaintView.this.showTypefaceMenu(false);
                    return true;
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                LPhotoPaintView.this.typefaceMenuOutlinePaint.setAlpha((int) (LPhotoPaintView.this.textOptionsView.getAlpha() * 102.0f * (1.0f - LPhotoPaintView.this.typefaceMenuTransformProgress)));
                PaintTextOptionsView paintTextOptionsView2 = LPhotoPaintView.this.textOptionsView;
                RectF rectF = AndroidUtilities.rectTmp;
                paintTextOptionsView2.getTypefaceCellBounds(rectF);
                float top = LPhotoPaintView.this.bottomLayout.getTop() + LPhotoPaintView.this.textOptionsView.getTop() + LPhotoPaintView.this.bottomLayout.getTranslationY() + LPhotoPaintView.this.textOptionsView.getTranslationY();
                rectF.set(AndroidUtilities.lerp(rectF.left, LPhotoPaintView.this.typefaceListView.getLeft(), LPhotoPaintView.this.typefaceMenuTransformProgress), AndroidUtilities.lerp(rectF.top + top, LPhotoPaintView.this.typefaceListView.getTop() - LPhotoPaintView.this.typefaceListView.getTranslationY(), LPhotoPaintView.this.typefaceMenuTransformProgress), AndroidUtilities.lerp(rectF.right, LPhotoPaintView.this.typefaceListView.getRight(), LPhotoPaintView.this.typefaceMenuTransformProgress), AndroidUtilities.lerp(top + rectF.bottom, LPhotoPaintView.this.typefaceListView.getBottom() - LPhotoPaintView.this.typefaceListView.getTranslationY(), LPhotoPaintView.this.typefaceMenuTransformProgress));
                float m107dp = AndroidUtilities.m107dp(AndroidUtilities.lerp(32, 16, LPhotoPaintView.this.typefaceMenuTransformProgress));
                int alpha = LPhotoPaintView.this.typefaceMenuBackgroundPaint.getAlpha();
                LPhotoPaintView.this.typefaceMenuBackgroundPaint.setAlpha((int) (alpha * LPhotoPaintView.this.typefaceMenuTransformProgress));
                canvas.drawRoundRect(rectF, m107dp, m107dp, LPhotoPaintView.this.typefaceMenuBackgroundPaint);
                LPhotoPaintView.this.typefaceMenuBackgroundPaint.setAlpha(alpha);
                canvas.drawRoundRect(rectF, m107dp, m107dp, LPhotoPaintView.this.typefaceMenuOutlinePaint);
            }
        };
        lPhotoPaintView2.overlayLayout = frameLayout4;
        lPhotoPaintView2.addView(frameLayout4, LayoutHelper.createFrame(-1, -1));
        PaintTypefaceListView paintTypefaceListView = new PaintTypefaceListView(context);
        lPhotoPaintView2.typefaceListView = paintTypefaceListView;
        paintTypefaceListView.setVisibility(8);
        lPhotoPaintView2.typefaceListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda50
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i5) {
                LPhotoPaintView.this.lambda$new$7(view2, i5);
            }
        });
        lPhotoPaintView2.textOptionsView.setTypefaceListView(lPhotoPaintView2.typefaceListView);
        lPhotoPaintView2.overlayLayout.addView(lPhotoPaintView2.typefaceListView, LayoutHelper.createFrame(-2, -2, 85, 0, 0, 8, 8));
        lPhotoPaintView2.typefaceMenuOutlinePaint.setStyle(Paint.Style.STROKE);
        lPhotoPaintView2.typefaceMenuOutlinePaint.setColor(1728053247);
        lPhotoPaintView2.typefaceMenuOutlinePaint.setStrokeWidth(Math.max(2, AndroidUtilities.m107dp(1)));
        lPhotoPaintView2.typefaceMenuBackgroundPaint.setColor(lPhotoPaintView2.getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
        PaintColorsListView paintColorsListView = new PaintColorsListView(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.10
            private Path path = new Path();

            @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
            public void draw(Canvas canvas) {
                ViewGroup barView = LPhotoPaintView.this.getBarView();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.lerp(barView.getLeft() - getLeft(), 0, LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getTop() - getTop(), 0, LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getRight() - getLeft(), getWidth(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getBottom() - getTop(), getHeight(), LPhotoPaintView.this.toolsTransformProgress));
                this.path.rewind();
                this.path.addRoundRect(rectF, AndroidUtilities.m107dp(32), AndroidUtilities.m107dp(32), Path.Direction.CW);
                canvas.save();
                canvas.clipPath(this.path);
                super.draw(canvas);
                canvas.restore();
            }
        };
        lPhotoPaintView2.colorsListView = paintColorsListView;
        paintColorsListView.setVisibility(8);
        lPhotoPaintView2.colorsListView.setColorPalette(PersistColorPalette.getInstance(i));
        lPhotoPaintView2.colorsListView.setColorListener(new Consumer() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda26
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                LPhotoPaintView.this.lambda$new$8((Integer) obj);
            }
        });
        lPhotoPaintView2.bottomLayout.addView(lPhotoPaintView2.colorsListView, LayoutHelper.createFrame(-1, 84, 48, 56, 0, 56, 6));
        setupTabsLayout(context);
        PaintCancelView paintCancelView = new PaintCancelView(context);
        lPhotoPaintView2.cancelButton = paintCancelView;
        paintCancelView.setPadding(AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8));
        lPhotoPaintView2.cancelButton.setBackground(Theme.createSelectorDrawable(1090519039));
        lPhotoPaintView2.bottomLayout.addView(lPhotoPaintView2.cancelButton, LayoutHelper.createFrame(32, 32, 83, 12, 0, 0, 4));
        PaintDoneView paintDoneView = new PaintDoneView(context);
        lPhotoPaintView2.doneButton = paintDoneView;
        paintDoneView.setPadding(AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8));
        lPhotoPaintView2.doneButton.setBackground(Theme.createSelectorDrawable(1090519039));
        lPhotoPaintView2.doneButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.this.lambda$new$10(context, bitmap2, persistColorPalette, view2);
            }
        });
        lPhotoPaintView2.bottomLayout.addView(lPhotoPaintView2.doneButton, LayoutHelper.createFrame(32, 32, 85, 0, 0, 12, 4));
        PaintWeightChooserView paintWeightChooserView = new PaintWeightChooserView(context);
        lPhotoPaintView2.weightChooserView = paintWeightChooserView;
        paintWeightChooserView.setColorSwatch(lPhotoPaintView2.colorSwatch);
        lPhotoPaintView2.weightChooserView.setRenderView(lPhotoPaintView2.renderView);
        lPhotoPaintView2.weightChooserView.setValueOverride(lPhotoPaintView2.weightDefaultValueOverride);
        lPhotoPaintView2.colorSwatch.brushWeight = lPhotoPaintView2.weightDefaultValueOverride.get();
        lPhotoPaintView2.weightChooserView.setOnUpdate(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$new$11(i);
            }
        });
        lPhotoPaintView2.addView(lPhotoPaintView2.weightChooserView, LayoutHelper.createFrame(-1, -1));
        FrameLayout frameLayout5 = new FrameLayout(context);
        lPhotoPaintView2.pipetteContainerLayout = frameLayout5;
        lPhotoPaintView2.addView(frameLayout5, LayoutHelper.createFrame(-1, -1));
        lPhotoPaintView2.colorSwatchOutlinePaint.setStyle(Paint.Style.STROKE);
        lPhotoPaintView2.colorSwatchOutlinePaint.setStrokeWidth(AndroidUtilities.m107dp(2));
        lPhotoPaintView2.setCurrentSwatch(lPhotoPaintView2.colorSwatch, true);
        lPhotoPaintView2.onBrushSelected(Brush.BRUSHES_LIST.get(0));
        updateColors();
        if (Build.VERSION.SDK_INT >= 29) {
            lPhotoPaintView2.setSystemGestureExclusionRects(Arrays.asList(new Rect(0, (int) (AndroidUtilities.displaySize.y * 0.35f), AndroidUtilities.m107dp(100), (int) (AndroidUtilities.displaySize.y * 0.65d))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$new$0(Theme.ResourcesProvider resourcesProvider, int i) {
        if (i == Theme.key_actionBarDefaultSubmenuBackground) {
            return -14145495;
        }
        if (i == Theme.key_actionBarDefaultSubmenuItem) {
            return -1;
        }
        if (i == Theme.key_dialogBackground) {
            return -14737633;
        }
        if (i == Theme.key_dialogTextBlack) {
            return -592138;
        }
        if (i == Theme.key_dialogTextGray3) {
            return -8553091;
        }
        if (i == Theme.key_chat_emojiPanelBackground) {
            return -16777216;
        }
        if (i == Theme.key_chat_emojiPanelShadowLine) {
            return -1610612736;
        }
        if (i == Theme.key_chat_emojiBottomPanelIcon || i == Theme.key_chat_emojiPanelBackspace || i == Theme.key_chat_emojiPanelIcon) {
            return -9539985;
        }
        if (i == Theme.key_windowBackgroundWhiteBlackText) {
            return -1;
        }
        int i2 = Theme.key_featuredStickers_addedIcon;
        if (i == i2) {
            return -11754001;
        }
        if (i == Theme.key_listSelector) {
            return 536870911;
        }
        if (i == Theme.key_profile_tabSelectedText || i == Theme.key_profile_tabText || i == Theme.key_profile_tabSelectedLine) {
            return -1;
        }
        if (i == Theme.key_profile_tabSelector) {
            return 352321535;
        }
        if (i == Theme.key_chat_emojiSearchIcon || i == i2) {
            return -7895161;
        }
        if (i == Theme.key_chat_emojiSearchBackground) {
            return 780633991;
        }
        if (i == Theme.key_windowBackgroundGray) {
            return -15921907;
        }
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return Theme.getColor(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        boolean canUndo = this.undoStore.canUndo();
        this.undoButton.animate().cancel();
        this.undoButton.animate().alpha(canUndo ? 1.0f : 0.6f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L).start();
        this.undoButton.setClickable(canUndo);
        this.undoAllButton.animate().cancel();
        this.undoAllButton.animate().alpha(canUndo ? 1.0f : 0.6f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L).start();
        this.undoAllButton.setClickable(canUndo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        RenderView renderView = this.renderView;
        if (renderView != null && (renderView.getCurrentBrush() instanceof Brush.Shape)) {
            this.renderView.clearShape();
            this.paintToolsView.setSelectedIndex(1);
            onBrushSelected(Brush.BRUSHES_LIST.get(0));
            return;
        }
        this.undoStore.undo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$3(View view) {
        PhotoViewer.getInstance().zoomOut();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        if (this.undoStore.canUndo()) {
            RenderView renderView = this.renderView;
            if (renderView != null && (renderView.getCurrentBrush() instanceof Brush.Shape)) {
                this.renderView.clearShape();
                this.paintToolsView.setSelectedIndex(1);
                onBrushSelected(Brush.BRUSHES_LIST.get(0));
            }
            this.renderView.clearAll();
            this.undoStore.reset();
            this.entitiesView.removeAllViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            AndroidUtilities.hideKeyboard(((TextPaintView) entityView).getFocusedView());
        }
        if (this.emojiViewVisible) {
            hideEmojiPopup(false);
        }
        lambda$registerRemovalUndo$45(this.currentEntityView);
        selectEntity(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        selectEntity(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(View view, int i) {
        PaintTypeface paintTypeface = PaintTypeface.get().get(i);
        this.textOptionsView.setTypeface(paintTypeface.getKey());
        onTypefaceSelected(paintTypeface);
        showTypefaceMenu(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(Integer num) {
        setNewColor(num.intValue());
        showColorList(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(Context context, final Bitmap bitmap, final PersistColorPalette persistColorPalette, View view) {
        if (this.isColorListShown) {
            new ColorPickerBottomSheet(context, this.resourcesProvider).setColor(this.colorSwatch.color).setPipetteDelegate(new ColorPickerBottomSheet.PipetteDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.11
                private boolean hasPipette;

                @Override // org.telegram.p043ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onStartColorPipette() {
                    this.hasPipette = true;
                }

                @Override // org.telegram.p043ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onStopColorPipette() {
                    this.hasPipette = false;
                }

                @Override // org.telegram.p043ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public ViewGroup getContainerView() {
                    return LPhotoPaintView.this.pipetteContainerLayout;
                }

                @Override // org.telegram.p043ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public View getSnapshotDrawingView() {
                    return LPhotoPaintView.this;
                }

                @Override // org.telegram.p043ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onDrawImageOverCanvas(Bitmap bitmap2, Canvas canvas) {
                    Matrix matrix = LPhotoPaintView.this.renderView.getMatrix();
                    canvas.save();
                    canvas.translate(LPhotoPaintView.this.renderView.getX(), LPhotoPaintView.this.renderView.getY());
                    canvas.concat(matrix);
                    canvas.scale(LPhotoPaintView.this.renderView.getWidth() / bitmap.getWidth(), LPhotoPaintView.this.renderView.getHeight() / bitmap.getHeight(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                    canvas.restore();
                }

                @Override // org.telegram.p043ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public boolean isPipetteVisible() {
                    return this.hasPipette;
                }

                @Override // org.telegram.p043ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public boolean isPipetteAvailable() {
                    return bitmap != null;
                }

                @Override // org.telegram.p043ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onColorSelected(int i) {
                    LPhotoPaintView.this.showColorList(false);
                    persistColorPalette.selectColor(i);
                    persistColorPalette.saveColors();
                    LPhotoPaintView.this.setNewColor(i);
                    LPhotoPaintView.this.colorsListView.setSelectedColorIndex(persistColorPalette.getCurrentColorPosition());
                    LPhotoPaintView.this.colorsListView.getAdapter().notifyDataSetChanged();
                }
            }).setColorListener(new Consumer() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda27
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    LPhotoPaintView.this.lambda$new$9(persistColorPalette, (Integer) obj);
                }
            }).show();
            return;
        }
        Runnable runnable = this.onDoneButtonClickedListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(PersistColorPalette persistColorPalette, Integer num) {
        persistColorPalette.selectColor(num.intValue());
        persistColorPalette.saveColors();
        setNewColor(num.intValue());
        this.colorsListView.setSelectedColorIndex(persistColorPalette.getCurrentColorPosition());
        this.colorsListView.getAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(int i) {
        setCurrentSwatch(this.colorSwatch, true);
        PersistColorPalette.getInstance(i).setCurrentWeight(this.colorSwatch.brushWeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNewColor(final int i) {
        Swatch swatch = this.colorSwatch;
        final int i2 = swatch.color;
        swatch.color = i;
        setCurrentSwatch(swatch, true);
        ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(150L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                LPhotoPaintView.this.lambda$setNewColor$12(i2, i, valueAnimator);
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setNewColor$12(int i, int i2, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.colorSwatch.color = ColorUtils.blendARGB(i, i2, floatValue);
        this.bottomLayout.invalidate();
    }

    public void translateY(float f) {
        if (Math.abs(f - this.pany) > 0.1f) {
            this.pany = f;
            setTransform(this.scale, this.inputTransformX, this.inputTransformY, this.imageWidth, this.imageHeight);
        }
    }

    public boolean isCurrentText() {
        return this.currentEntityView instanceof TextPaintView;
    }

    public float getSelectedEntityBottom() {
        float f;
        float height;
        EntityView entityView = this.currentEntityView;
        if (entityView == null) {
            f = getY();
            height = this.entitiesView.getMeasuredHeight();
        } else {
            int[] iArr = new int[2];
            entityView.getLocationInWindow(iArr);
            f = iArr[1];
            height = this.currentEntityView.getHeight() * this.entitiesView.getScaleY();
        }
        return f + height;
    }

    private TextPaintView createText(boolean z) {
        onTextAdd();
        Size paintingSize = getPaintingSize();
        Point startPositionRelativeToEntity = startPositionRelativeToEntity(null);
        TextPaintView textPaintView = new TextPaintView(getContext(), startPositionRelativeToEntity, (int) (paintingSize.width / 9.0f), "", this.colorSwatch, this.selectedTextType);
        float f = paintingSize.width;
        textPaintView.setMinMaxFontSize((int) ((f / 9.0f) * 0.5f), (int) ((f / 9.0f) * 2.0f), new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$createText$13();
            }
        });
        if (startPositionRelativeToEntity.f1899x == this.entitiesView.getMeasuredWidth() / 2.0f) {
            textPaintView.setStickyX(2);
        }
        if (startPositionRelativeToEntity.f1900y == this.entitiesView.getMeasuredHeight() / 2.0f) {
            textPaintView.setStickyY(2);
        }
        textPaintView.setDelegate(this);
        textPaintView.setMaxWidth((int) (paintingSize.width - 20.0f));
        textPaintView.setTypeface(PersistColorPalette.getInstance(this.currentAccount).getCurrentTypeface());
        textPaintView.setType(PersistColorPalette.getInstance(this.currentAccount).getCurrentTextType());
        this.entitiesView.addView(textPaintView, LayoutHelper.createFrame(-2, -2));
        MediaController.CropState cropState = this.currentCropState;
        if (cropState != null) {
            textPaintView.scale(1.0f / cropState.cropScale);
            MediaController.CropState cropState2 = this.currentCropState;
            textPaintView.rotate(-(cropState2.transformRotation + cropState2.cropRotate));
        }
        if (z) {
            registerRemovalUndo(textPaintView);
            textPaintView.beginEditing();
            selectEntity(textPaintView, false);
            textPaintView.getFocusedView().requestFocus();
            AndroidUtilities.showKeyboard(textPaintView.getFocusedView());
            this.editingText = true;
            this.textOptionsView.setAlignment(PersistColorPalette.getInstance(this.currentAccount).getCurrentAlignment(), true);
            this.textOptionsView.setOutlineType(PersistColorPalette.getInstance(this.currentAccount).getCurrentTextType());
        }
        return textPaintView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createText$13() {
        PaintWeightChooserView paintWeightChooserView = this.weightChooserView;
        if (paintWeightChooserView != null) {
            paintWeightChooserView.invalidate();
        }
    }

    public void setOnDoneButtonClickedListener(Runnable runnable) {
        this.onDoneButtonClickedListener = runnable;
    }

    private void editSelectedTextEntity() {
        EntityView entityView = this.currentEntityView;
        if (!(entityView instanceof TextPaintView) || this.editingText) {
            return;
        }
        TextPaintView textPaintView = (TextPaintView) entityView;
        this.editingText = true;
        textPaintView.beginEditing();
        View focusedView = textPaintView.getFocusedView();
        focusedView.requestFocus();
        AndroidUtilities.showKeyboard(focusedView);
    }

    public void updateZoom(boolean z) {
        boolean z2 = !z;
        if (this.zoomOutVisible != z2) {
            this.zoomOutVisible = z2;
            this.zoomOutButton.animate().cancel();
            this.zoomOutButton.animate().alpha(z ? BitmapDescriptorFactory.HUE_RED : 1.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(240L).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean selectEntity(EntityView entityView) {
        return selectEntity(entityView, true);
    }

    private boolean selectEntity(EntityView entityView, boolean z) {
        boolean z2;
        int i;
        boolean z3 = entityView instanceof TextPaintView;
        int i2 = 2;
        if (z3 && (((i = this.tabsNewSelectedIndex) == -1 && this.tabsSelectedIndex != 2) || (i != -1 && i != 2))) {
            ValueAnimator valueAnimator = this.tabsSelectionAnimator;
            if (valueAnimator != null && i != 2) {
                valueAnimator.cancel();
            }
            if (this.isColorListShown) {
                showColorList(false);
            }
            switchTab(2);
        }
        if (z3 && z) {
            TextPaintView textPaintView = (TextPaintView) entityView;
            int gravity = textPaintView.getEditText().getGravity();
            if (gravity == 17) {
                i2 = 1;
            } else if (gravity != 21) {
                i2 = 0;
            }
            this.textOptionsView.setAlignment(i2);
            this.textOptionsView.setTypeface(textPaintView.getTypeface().getKey());
            this.textOptionsView.setOutlineType(textPaintView.getType(), true);
            this.overlayLayout.invalidate();
        }
        EntityView entityView2 = this.currentEntityView;
        if (entityView2 == null) {
            z2 = false;
        } else if (entityView2 == entityView) {
            if (!this.editingText) {
                showMenuForEntity(entityView2);
            } else if (entityView2 instanceof TextPaintView) {
                AndroidUtilities.showKeyboard(((TextPaintView) entityView2).getFocusedView());
                hideEmojiPopup(false);
            }
            return true;
        } else {
            entityView2.deselect();
            EntityView entityView3 = this.currentEntityView;
            if (entityView3 instanceof TextPaintView) {
                ((TextPaintView) entityView3).endEditing();
                if (!z3) {
                    this.editingText = false;
                    AndroidUtilities.hideKeyboard(((TextPaintView) this.currentEntityView).getFocusedView());
                    hideEmojiPopup(false);
                }
            }
            z2 = true;
        }
        EntityView entityView4 = this.currentEntityView;
        this.currentEntityView = entityView;
        if ((entityView4 instanceof TextPaintView) && TextUtils.isEmpty(((TextPaintView) entityView4).getText())) {
            lambda$registerRemovalUndo$45(entityView4);
        }
        EntityView entityView5 = this.currentEntityView;
        if (entityView5 != null) {
            entityView5.select(this.selectionContainerView);
            this.entitiesView.bringChildToFront(this.currentEntityView);
            EntityView entityView6 = this.currentEntityView;
            if (entityView6 instanceof TextPaintView) {
                final TextPaintView textPaintView2 = (TextPaintView) entityView6;
                textPaintView2.disableAutoresize(false);
                textPaintView2.getSwatch().brushWeight = this.colorSwatch.brushWeight;
                setCurrentSwatch(textPaintView2.getSwatch(), true);
                final float f = (int) (this.paintingSize.width / 9.0f);
                this.weightChooserView.setValueOverride(new PaintWeightChooserView.ValueOverride(this) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.12
                    @Override // org.telegram.p043ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
                    public float get() {
                        return textPaintView2.getBaseFontSize() / f;
                    }

                    @Override // org.telegram.p043ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
                    public void set(float f2) {
                        textPaintView2.disableAutoresize(true);
                        textPaintView2.setBaseFontSize((int) (f * f2));
                    }
                });
                this.weightChooserView.setShowPreview(false);
                return true;
            }
            this.weightChooserView.setValueOverride(this.weightDefaultValueOverride);
            this.weightChooserView.setShowPreview(true);
            this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
            setCurrentSwatch(this.colorSwatch, true);
            return true;
        }
        ValueAnimator valueAnimator2 = this.tabsSelectionAnimator;
        if (valueAnimator2 != null && this.tabsNewSelectedIndex != 0) {
            valueAnimator2.cancel();
        }
        if (this.isColorListShown) {
            showColorList(false);
        }
        switchTab(0);
        this.weightChooserView.setValueOverride(this.weightDefaultValueOverride);
        this.weightChooserView.setShowPreview(true);
        this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
        setCurrentSwatch(this.colorSwatch, true);
        return z2;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int i = 0;
        if ((view == this.renderView || view == this.renderInputView || view == this.entitiesView || view == this.selectionContainerView) && this.currentCropState != null) {
            canvas.save();
            if (Build.VERSION.SDK_INT >= 21 && !this.inBubbleMode) {
                i = AndroidUtilities.statusBarHeight;
            }
            int currentActionBarHeight = C3704ActionBar.getCurrentActionBarHeight() + i;
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            MediaController.CropState cropState = this.currentCropState;
            int i2 = cropState.transformRotation;
            if (i2 == 90 || i2 == 270) {
                measuredHeight = measuredWidth;
                measuredWidth = measuredHeight;
            }
            float scaleX = measuredWidth * cropState.cropPw * view.getScaleX();
            MediaController.CropState cropState2 = this.currentCropState;
            int i3 = (int) (scaleX / cropState2.cropScale);
            int scaleY = (int) (((measuredHeight * cropState2.cropPh) * view.getScaleY()) / this.currentCropState.cropScale);
            float ceil = ((float) Math.ceil((getMeasuredWidth() - i3) / 2.0f)) + this.transformX;
            float measuredHeight2 = ((((((getMeasuredHeight() - this.emojiPadding) - currentActionBarHeight) - AndroidUtilities.m107dp(48)) + getAdditionalBottom()) - scaleY) / 2.0f) + AndroidUtilities.m107dp(8) + i + this.transformY;
            canvas.clipRect(Math.max((float) BitmapDescriptorFactory.HUE_RED, ceil), Math.max((float) BitmapDescriptorFactory.HUE_RED, measuredHeight2), Math.min(ceil + i3, getMeasuredWidth()), Math.min(getMeasuredHeight(), measuredHeight2 + scaleY));
            i = 1;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        if (i != 0) {
            canvas.restore();
        }
        return drawChild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup getBarView() {
        return this.tabsSelectedIndex == 2 ? this.textOptionsView : this.paintToolsView;
    }

    private void setupTabsLayout(Context context) {
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.13
            Paint linePaint;

            {
                Paint paint = new Paint(1);
                this.linePaint = paint;
                paint.setStrokeWidth(AndroidUtilities.m107dp(2));
                this.linePaint.setStyle(Paint.Style.STROKE);
                this.linePaint.setStrokeCap(Paint.Cap.ROUND);
                setWillNotDraw(false);
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                TextView textView = (TextView) getChildAt(LPhotoPaintView.this.tabsSelectedIndex);
                TextView textView2 = LPhotoPaintView.this.tabsNewSelectedIndex != -1 ? (TextView) getChildAt(LPhotoPaintView.this.tabsNewSelectedIndex) : null;
                this.linePaint.setColor(textView.getCurrentTextColor());
                float y = ((textView.getY() + textView.getHeight()) - textView.getPaddingBottom()) + AndroidUtilities.m107dp(3);
                Layout layout = textView.getLayout();
                Layout layout2 = textView2 != null ? textView2.getLayout() : null;
                float f = BitmapDescriptorFactory.HUE_RED;
                float interpolation = layout2 == null ? 0.0f : CubicBezierInterpolator.DEFAULT.getInterpolation(LPhotoPaintView.this.tabsSelectionProgress);
                float lerp = AndroidUtilities.lerp(textView.getX() + layout.getPrimaryHorizontal(layout.getLineStart(0)), textView2 != null ? textView2.getX() + layout2.getPrimaryHorizontal(layout.getLineStart(0)) : 0.0f, interpolation);
                float primaryHorizontal = layout.getPrimaryHorizontal(layout.getLineEnd(0)) - layout.getPrimaryHorizontal(layout.getLineStart(0));
                if (layout2 != null) {
                    f = layout2.getPrimaryHorizontal(layout2.getLineEnd(0)) - layout2.getPrimaryHorizontal(layout2.getLineStart(0));
                }
                canvas.drawLine(lerp, y, lerp + AndroidUtilities.lerp(primaryHorizontal, f, interpolation), y, this.linePaint);
            }
        };
        this.tabsLayout = linearLayout;
        linearLayout.setClipToPadding(false);
        this.tabsLayout.setOrientation(0);
        this.bottomLayout.addView(this.tabsLayout, LayoutHelper.createFrame(-1, 40, 80, 52, 0, 52, 0));
        TextView textView = new TextView(context);
        this.drawTab = textView;
        textView.setText(LocaleController.getString(C3632R.string.PhotoEditorDraw).toUpperCase());
        TextView textView2 = this.drawTab;
        int i = Theme.key_listSelector;
        textView2.setBackground(Theme.createSelectorDrawable(getThemedColor(i), 7));
        this.drawTab.setPadding(0, AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8));
        this.drawTab.setTextColor(-1);
        this.drawTab.setTextSize(1, 14.0f);
        this.drawTab.setGravity(1);
        this.drawTab.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.drawTab.setSingleLine();
        this.drawTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LPhotoPaintView.this.lambda$setupTabsLayout$14(view);
            }
        });
        this.tabsLayout.addView(this.drawTab, LayoutHelper.createLinear(0, -2, 1.0f));
        TextView textView3 = new TextView(context);
        this.stickerTab = textView3;
        textView3.setText(LocaleController.getString(C3632R.string.PhotoEditorSticker).toUpperCase());
        this.stickerTab.setBackground(Theme.createSelectorDrawable(getThemedColor(i), 7));
        this.stickerTab.setPadding(0, AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8));
        this.stickerTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LPhotoPaintView.this.lambda$setupTabsLayout$15(view);
            }
        });
        this.stickerTab.setTextColor(-1);
        this.stickerTab.setTextSize(1, 14.0f);
        this.stickerTab.setGravity(1);
        this.stickerTab.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.stickerTab.setAlpha(0.6f);
        this.stickerTab.setSingleLine();
        this.tabsLayout.addView(this.stickerTab, LayoutHelper.createLinear(0, -2, 1.0f));
        TextView textView4 = new TextView(context);
        this.textTab = textView4;
        textView4.setText(LocaleController.getString(C3632R.string.PhotoEditorText).toUpperCase());
        this.textTab.setBackground(Theme.createSelectorDrawable(getThemedColor(i), 7));
        this.textTab.setPadding(0, AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8));
        this.textTab.setTextColor(-1);
        this.textTab.setTextSize(1, 14.0f);
        this.textTab.setGravity(1);
        this.textTab.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textTab.setAlpha(0.6f);
        this.textTab.setSingleLine();
        this.textTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LPhotoPaintView.this.lambda$setupTabsLayout$16(view);
            }
        });
        this.tabsLayout.addView(this.textTab, LayoutHelper.createLinear(0, -2, 1.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupTabsLayout$14(View view) {
        if (this.editingText) {
            selectEntity(null);
        } else {
            switchTab(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupTabsLayout$15(View view) {
        openStickersView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupTabsLayout$16(View view) {
        switchTab(2);
        if (this.currentEntityView instanceof TextPaintView) {
            return;
        }
        createText(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getBarView(int i) {
        if (i == 0) {
            return this.paintToolsView;
        }
        if (i == 2) {
            return this.textOptionsView;
        }
        return null;
    }

    private void switchTab(final int i) {
        if (this.tabsSelectedIndex == i || this.tabsNewSelectedIndex == i) {
            return;
        }
        ValueAnimator valueAnimator = this.tabsSelectionAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final View barView = getBarView(this.tabsSelectedIndex);
        this.tabsNewSelectedIndex = i;
        final View barView2 = getBarView(i);
        PersistColorPalette.getInstance(this.currentAccount).setInTextMode(i == 2);
        this.colorSwatch.color = PersistColorPalette.getInstance(this.currentAccount).getCurrentColor();
        setCurrentSwatch(this.colorSwatch, true);
        ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(300L);
        this.tabsSelectionAnimator = duration;
        duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.tabsSelectionAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LPhotoPaintView.this.lambda$switchTab$17(barView, barView2, valueAnimator2);
            }
        });
        this.tabsSelectionAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.14
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                View view;
                if (barView != null && (view = barView2) != null) {
                    view.setVisibility(0);
                }
                if (i != 2) {
                    Brush currentBrush = LPhotoPaintView.this.renderView.getCurrentBrush();
                    if ((currentBrush instanceof Brush.Blurer) || (currentBrush instanceof Brush.Eraser)) {
                        LPhotoPaintView.this.weightChooserView.setMinMax(0.4f, 1.75f);
                        return;
                    } else {
                        LPhotoPaintView.this.weightChooserView.setMinMax(0.05f, 1.0f);
                        return;
                    }
                }
                LPhotoPaintView.this.weightChooserView.setMinMax(0.5f, 2.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                lPhotoPaintView.tabsSelectedIndex = lPhotoPaintView.tabsNewSelectedIndex;
                LPhotoPaintView.this.tabsNewSelectedIndex = -1;
                LPhotoPaintView.this.tabsLayout.invalidate();
                View view = barView;
                if (view != null && barView2 != null) {
                    view.setVisibility(8);
                }
                if (animator == LPhotoPaintView.this.tabsSelectionAnimator) {
                    LPhotoPaintView.this.tabsSelectionAnimator = null;
                }
            }
        });
        this.tabsSelectionAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchTab$17(View view, View view2, ValueAnimator valueAnimator) {
        this.tabsSelectionProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.tabsLayout.invalidate();
        this.bottomLayout.invalidate();
        this.overlayLayout.invalidate();
        int i = 0;
        while (i < this.tabsLayout.getChildCount()) {
            this.tabsLayout.getChildAt(i).setAlpha(((i == this.tabsNewSelectedIndex ? this.tabsSelectionProgress : i == this.tabsSelectedIndex ? 1.0f - this.tabsSelectionProgress : BitmapDescriptorFactory.HUE_RED) * 0.4f) + 0.6f);
            i++;
        }
        float interpolation = CubicBezierInterpolator.DEFAULT.getInterpolation(this.tabsSelectionProgress);
        if (view == null || view2 == null) {
            return;
        }
        float f = 1.0f - interpolation;
        float f2 = (f * 0.4f) + 0.6f;
        view.setScaleX(f2);
        view.setScaleY(f2);
        view.setTranslationY((AndroidUtilities.m107dp(16) * Math.min(interpolation, 0.25f)) / 0.25f);
        view.setAlpha(1.0f - (Math.min(interpolation, 0.25f) / 0.25f));
        float f3 = (interpolation * 0.4f) + 0.6f;
        view2.setScaleX(f3);
        view2.setScaleY(f3);
        view2.setTranslationY(((-AndroidUtilities.m107dp(16)) * Math.min(f, 0.25f)) / 0.25f);
        view2.setAlpha(1.0f - (Math.min(f, 0.25f) / 0.25f));
    }

    private void openStickersView() {
        final int i = this.tabsSelectedIndex;
        switchTab(1);
        postDelayed(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$openStickersView$18();
            }
        }, 350L);
        EmojiBottomSheet emojiBottomSheet = new EmojiBottomSheet(this, getContext(), false, this.resourcesProvider) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.15
            @Override // org.telegram.p043ui.Stories.recorder.EmojiBottomSheet
            public boolean canShowWidget(Integer num) {
                return num.intValue() == 2;
            }
        };
        emojiBottomSheet.whenDocumentSelected(new Utilities.Callback3() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda45
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                LPhotoPaintView.this.lambda$openStickersView$19(obj, (TLRPC$Document) obj2, (Boolean) obj3);
            }
        });
        emojiBottomSheet.whenWidgetSelected(new Utilities.Callback() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda46
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                LPhotoPaintView.this.lambda$openStickersView$20((Integer) obj);
            }
        });
        emojiBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                LPhotoPaintView.this.lambda$openStickersView$21(i, dialogInterface);
            }
        });
        emojiBottomSheet.show();
        onOpenCloseStickersAlert(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStickersView$18() {
        if (this.facesBitmap != null) {
            detectFaces();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStickersView$19(Object obj, TLRPC$Document tLRPC$Document, Boolean bool) {
        StickerView createSticker = createSticker(obj, tLRPC$Document, true);
        if (bool.booleanValue()) {
            createSticker.setScale(1.5f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStickersView$20(Integer num) {
        if (num.intValue() == 2) {
            showPhotoAlert();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStickersView$21(int i, DialogInterface dialogInterface) {
        onOpenCloseStickersAlert(false);
        switchTab(i);
    }

    private void showPhotoAlert() {
        final ChatAttachAlert chatAttachAlert = new ChatAttachAlert(getContext(), new ChatActivity(null) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.16
            @Override // org.telegram.p043ui.ChatActivity, org.telegram.p043ui.Components.ChatActivityInterface, org.telegram.p043ui.Components.InstantCameraView.Delegate
            public long getDialogId() {
                return 0L;
            }

            @Override // org.telegram.p043ui.ChatActivity
            public boolean isKeyboardVisible() {
                return false;
            }

            @Override // org.telegram.p043ui.ChatActivity, org.telegram.p043ui.ActionBar.BaseFragment
            public boolean isLightStatusBar() {
                return false;
            }

            @Override // org.telegram.p043ui.ChatActivity, org.telegram.p043ui.ActionBar.BaseFragment
            public Theme.ResourcesProvider getResourceProvider() {
                return LPhotoPaintView.this.resourcesProvider;
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public Activity getParentActivity() {
                return AndroidUtilities.findActivity(LPhotoPaintView.this.getContext());
            }

            @Override // org.telegram.p043ui.ChatActivity, org.telegram.p043ui.Components.ChatActivityInterface
            public TLRPC$User getCurrentUser() {
                return UserConfig.getInstance(this.currentAccount).getCurrentUser();
            }
        }, false, false, false, this.resourcesProvider);
        chatAttachAlert.drawNavigationBar = true;
        chatAttachAlert.setupPhotoPicker(LocaleController.getString(C3632R.string.AddImage));
        chatAttachAlert.setDelegate(new ChatAttachAlert.ChatAttachViewDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.17
            @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void didSelectBot(TLRPC$User tLRPC$User) {
                ChatAttachAlert.ChatAttachViewDelegate.CC.$default$didSelectBot(this, tLRPC$User);
            }

            @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void doOnIdle(Runnable runnable) {
                runnable.run();
            }

            @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ boolean needEnterComment() {
                return ChatAttachAlert.ChatAttachViewDelegate.CC.$default$needEnterComment(this);
            }

            @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void onCameraOpened() {
                ChatAttachAlert.ChatAttachViewDelegate.CC.$default$onCameraOpened(this);
            }

            @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void onWallpaperSelected(Object obj) {
                ChatAttachAlert.ChatAttachViewDelegate.CC.$default$onWallpaperSelected(this, obj);
            }

            @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void openAvatarsSearch() {
                ChatAttachAlert.ChatAttachViewDelegate.CC.$default$openAvatarsSearch(this);
            }

            @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public /* synthetic */ void sendAudio(ArrayList arrayList, CharSequence charSequence, boolean z, int i) {
                ChatAttachAlert.ChatAttachViewDelegate.CC.$default$sendAudio(this, arrayList, charSequence, z, i);
            }

            @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public boolean selectItemOnClicking() {
                System.currentTimeMillis();
                return true;
            }

            @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
            public void didPressedButton(int i, boolean z, boolean z2, int i2, boolean z3, String str, boolean z4) {
                try {
                    HashMap<Object, Object> selectedPhotos = chatAttachAlert.getPhotoLayout().getSelectedPhotos();
                    if (selectedPhotos.isEmpty()) {
                        return;
                    }
                    MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) selectedPhotos.values().iterator().next();
                    String str2 = photoEntry.imagePath;
                    if (str2 == null) {
                        str2 = photoEntry.path;
                    }
                    LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                    lPhotoPaintView.appearAnimation(lPhotoPaintView.createPhoto(str2, true));
                    chatAttachAlert.dismiss();
                } catch (Throwable th) {
                    FileLog.m102e(th);
                }
            }
        });
        chatAttachAlert.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MediaController.forceBroadcastNewPhotos = false;
            }
        });
        chatAttachAlert.setMaxSelectedPhotos(1, false);
        chatAttachAlert.init();
        MediaController.forceBroadcastNewPhotos = true;
        chatAttachAlert.getPhotoLayout().loadGalleryPhotos();
        chatAttachAlert.show();
    }

    public void appearAnimation(final View view) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        view.setScaleX(scaleX * 0.5f);
        view.setScaleY(0.5f * scaleY);
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        view.animate().scaleX(scaleX).scaleY(scaleY).alpha(1.0f).setInterpolator(new OvershootInterpolator(3.0f)).setDuration(240L).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$appearAnimation$23(view);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$appearAnimation$23(View view) {
        if (view instanceof EntityView) {
            EntityView entityView = (EntityView) view;
            entityView.updateSelectionView();
            selectEntity(entityView);
        }
    }

    public PhotoView createPhoto(String str, boolean z) {
        Size basePhotoSize = basePhotoSize(str);
        Pair<Integer, Integer> imageOrientation = AndroidUtilities.getImageOrientation(str);
        if ((((Integer) imageOrientation.first).intValue() / 90) % 2 == 1) {
            float f = basePhotoSize.width;
            basePhotoSize.width = basePhotoSize.height;
            basePhotoSize.height = f;
        }
        PhotoView photoView = new PhotoView(getContext(), centerPositionForEntity(), BitmapDescriptorFactory.HUE_RED, 1.0f, basePhotoSize, str, ((Integer) imageOrientation.first).intValue(), ((Integer) imageOrientation.second).intValue());
        photoView.centerImage.setLayerNum(12);
        photoView.setDelegate(this);
        this.entitiesView.addView(photoView);
        if (z) {
            registerRemovalUndo(photoView);
            selectEntity(photoView);
        }
        return photoView;
    }

    private Size basePhotoSize(String str) {
        float f;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            f = options.outWidth / options.outHeight;
        } catch (Exception e) {
            FileLog.m102e(e);
            f = 1.0f;
        }
        if (f > 1.0f) {
            float floor = (float) Math.floor(this.entitiesView.getMeasuredWidth() * 0.5d);
            return new Size(floor, floor / f);
        }
        float floor2 = (float) Math.floor(this.entitiesView.getMeasuredHeight() * 0.5d);
        return new Size(f * floor2, floor2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        float currentActionBarHeight;
        float f;
        this.ignoreLayout = true;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(size, size2);
        int currentActionBarHeight2 = (((AndroidUtilities.displaySize.y - C3704ActionBar.getCurrentActionBarHeight()) - getAdditionalTop()) - getAdditionalBottom()) - AndroidUtilities.m107dp(48);
        Bitmap bitmap = this.bitmapToEdit;
        if (bitmap != null) {
            f = bitmap.getWidth();
            currentActionBarHeight = this.bitmapToEdit.getHeight();
        } else {
            currentActionBarHeight = (size2 - C3704ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.m107dp(48);
            f = size;
        }
        float f2 = size;
        float floor = (float) Math.floor((f2 * currentActionBarHeight) / f);
        float f3 = currentActionBarHeight2;
        if (floor > f3) {
            f2 = (float) Math.floor((f * f3) / currentActionBarHeight);
            floor = f3;
        }
        int i3 = (int) f2;
        int i4 = (int) floor;
        this.renderView.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
        this.renderInputView.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
        float f4 = f2 / this.paintingSize.width;
        this.baseScale = f4;
        this.entitiesView.setScaleX(f4);
        this.entitiesView.setScaleY(this.baseScale);
        this.entitiesView.measure(View.MeasureSpec.makeMeasureSpec((int) this.paintingSize.width, 1073741824), View.MeasureSpec.makeMeasureSpec((int) this.paintingSize.height, 1073741824));
        ThanosEffect thanosEffect = this.thanosEffect;
        if (thanosEffect != null) {
            thanosEffect.measure(View.MeasureSpec.makeMeasureSpec((int) this.paintingSize.width, 1073741824), View.MeasureSpec.makeMeasureSpec((int) this.paintingSize.height, 1073741824));
            this.thanosEffect.setScaleX(this.baseScale);
            this.thanosEffect.setScaleY(this.baseScale);
        }
        updateEntitiesSelections();
        this.selectionContainerView.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
        measureChild(this.bottomLayout, i, i2);
        measureChild(this.weightChooserView, i, i2);
        measureChild(this.pipetteContainerLayout, i, i2);
        measureChild(this.overlayLayout, i, View.MeasureSpec.makeMeasureSpec(size2 - Math.max(getPKeyboardHeight(), this.emojiPadding), 1073741824));
        FrameLayout frameLayout = this.topLayout;
        frameLayout.setPadding(frameLayout.getPaddingLeft(), AndroidUtilities.m107dp(12) + AndroidUtilities.statusBarHeight, this.topLayout.getPaddingRight(), this.topLayout.getPaddingBottom());
        measureChild(this.topLayout, i, i2);
        this.ignoreLayout = false;
        if (!this.waitingForKeyboardOpen && AndroidUtilities.m107dp(20) >= 0 && !this.emojiViewVisible && !this.isAnimatePopupClosing) {
            this.ignoreLayout = true;
            hideEmojiView();
            this.ignoreLayout = false;
        }
        if (AndroidUtilities.m107dp(20) < 0) {
            hideEmojiView();
        }
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            measureChild(emojiView, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayoutPhoto, org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measureKeyboardHeight;
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = 0;
        if (this.emojiView != null) {
            if (AndroidUtilities.isTablet()) {
                measureKeyboardHeight = i6 - this.emojiView.getMeasuredHeight();
            } else {
                measureKeyboardHeight = (measureKeyboardHeight() + i6) - this.emojiView.getMeasuredHeight();
            }
            EmojiView emojiView = this.emojiView;
            emojiView.layout(0, measureKeyboardHeight, emojiView.getMeasuredWidth() + 0, this.emojiView.getMeasuredHeight() + measureKeyboardHeight);
        }
        if (Build.VERSION.SDK_INT >= 21 && !this.inBubbleMode) {
            i7 = AndroidUtilities.statusBarHeight;
        }
        int ceil = (int) Math.ceil((i5 - this.renderView.getMeasuredWidth()) / 2.0f);
        int currentActionBarHeight = ((((i6 - (C3704ActionBar.getCurrentActionBarHeight() + i7)) - AndroidUtilities.m107dp(48)) - this.renderView.getMeasuredHeight()) / 2) + AndroidUtilities.m107dp(8) + i7 + ((getAdditionalTop() - getAdditionalBottom()) / 2);
        RenderView renderView = this.renderView;
        renderView.layout(ceil, currentActionBarHeight, renderView.getMeasuredWidth() + ceil, this.renderView.getMeasuredHeight() + currentActionBarHeight);
        View view = this.renderInputView;
        view.layout(ceil, currentActionBarHeight, view.getMeasuredWidth() + ceil, this.renderInputView.getMeasuredHeight() + currentActionBarHeight);
        int measuredWidth = ((this.renderView.getMeasuredWidth() - this.entitiesView.getMeasuredWidth()) / 2) + ceil;
        int measuredHeight = ((this.renderView.getMeasuredHeight() - this.entitiesView.getMeasuredHeight()) / 2) + currentActionBarHeight;
        EntitiesContainerView entitiesContainerView = this.entitiesView;
        entitiesContainerView.layout(measuredWidth, measuredHeight, entitiesContainerView.getMeasuredWidth() + measuredWidth, this.entitiesView.getMeasuredHeight() + measuredHeight);
        ThanosEffect thanosEffect = this.thanosEffect;
        if (thanosEffect != null) {
            thanosEffect.layout(measuredWidth, measuredHeight, this.entitiesView.getMeasuredWidth() + measuredWidth, this.entitiesView.getMeasuredHeight() + measuredHeight);
        }
        FrameLayout frameLayout = this.selectionContainerView;
        frameLayout.layout(ceil, currentActionBarHeight, frameLayout.getMeasuredWidth() + ceil, this.selectionContainerView.getMeasuredHeight() + currentActionBarHeight);
    }

    private Size getPaintingSize() {
        Size size = this.paintingSize;
        if (size != null) {
            return size;
        }
        float width = this.bitmapToEdit.getWidth();
        float height = this.bitmapToEdit.getHeight();
        int devicePerformanceClass = SharedConfig.getDevicePerformanceClass();
        int i = devicePerformanceClass != 0 ? devicePerformanceClass != 2 ? 2560 : 3840 : 1280;
        Size size2 = new Size(width, height);
        float f = i;
        size2.width = f;
        float floor = (float) Math.floor((f * height) / width);
        size2.height = floor;
        if (floor > f) {
            size2.height = f;
            size2.width = (float) Math.floor((f * width) / height);
        }
        this.paintingSize = size2;
        return size2;
    }

    public void init() {
        this.textOptionsView.setTypeface(PersistColorPalette.getInstance(this.currentAccount).getCurrentTypeface());
        this.entitiesView.setVisibility(0);
        this.renderView.setVisibility(0);
        this.renderInputView.setVisibility(0);
    }

    private int getFrameRotation() {
        int i = this.originalBitmapRotation;
        if (i != 90) {
            if (i != 180) {
                return i != 270 ? 0 : 3;
            }
            return 2;
        }
        return 1;
    }

    private boolean isSidewardOrientation() {
        int i = this.originalBitmapRotation;
        return i % 360 == 90 || i % 360 == 270;
    }

    private void detectFaces() {
        this.queue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$detectFaces$24();
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectFaces$24() {
        int i;
        FaceDetector faceDetector = null;
        try {
            try {
                faceDetector = new FaceDetector.Builder(getContext()).setMode(1).setLandmarkType(1).setTrackingEnabled(false).build();
            } catch (Exception e) {
                FileLog.m102e(e);
                if (0 == 0) {
                    return;
                }
            }
            if (!faceDetector.isOperational()) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m104e("face detection is not operational");
                }
                faceDetector.release();
                return;
            }
            try {
                SparseArray<Face> detect = faceDetector.detect(new Frame.Builder().setBitmap(this.facesBitmap).setRotation(getFrameRotation()).build());
                ArrayList<PhotoFace> arrayList = new ArrayList<>();
                Size paintingSize = getPaintingSize();
                for (i = 0; i < detect.size(); i++) {
                    PhotoFace photoFace = new PhotoFace(detect.get(detect.keyAt(i)), this.facesBitmap, paintingSize, isSidewardOrientation());
                    if (photoFace.isSufficient()) {
                        arrayList.add(photoFace);
                    }
                }
                this.faces = arrayList;
                faceDetector.release();
            } catch (Throwable th) {
                FileLog.m102e(th);
                faceDetector.release();
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                faceDetector.release();
            }
            throw th2;
        }
    }

    public void shutdown() {
        this.renderView.shutdown();
        this.entitiesView.setVisibility(8);
        this.selectionContainerView.setVisibility(8);
        this.queue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.lambda$shutdown$25();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$shutdown$25() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            myLooper.quit();
        }
    }

    @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout
    public void onResume() {
        this.renderView.redraw();
    }

    public void onAnimationStateChanged(boolean z) {
        if (this.tabsSelectedIndex == 0) {
            this.weightChooserView.setLayerType(z ? 2 : 0, null);
            this.bottomLayout.setLayerType(z ? 2 : 0, null);
            this.topLayout.setLayerType(z ? 2 : 0, null);
        }
    }

    public void setOffsetTranslationX(float f) {
        if (this.tabsSelectedIndex == 0) {
            this.weightChooserView.setTranslationX(f);
        }
    }

    public void setOffsetTranslationY(float f, float f2, int i, boolean z) {
        this.offsetTranslationY = f;
        if (!z) {
            this.topLayout.setTranslationY(-f);
            this.bottomLayout.setTranslationY(f);
            return;
        }
        setTranslationY(BitmapDescriptorFactory.HUE_RED);
    }

    public float getOffsetTranslationY() {
        return this.offsetTranslationY;
    }

    public void updateColors() {
        this.toolsPaint.setColor(-15132391);
    }

    public boolean hasChanges() {
        return this.undoStore.canUndo();
    }

    public Bitmap getBitmap(ArrayList<VideoEditedInfo.MediaEntity> arrayList, Bitmap[] bitmapArr) {
        Canvas canvas;
        int i;
        int i2;
        boolean z;
        int i3;
        boolean z2;
        File saveSegmentedImage;
        int i4;
        AnimatedEmojiSpan[] animatedEmojiSpanArr;
        int i5 = 0;
        Bitmap resultBitmap = this.renderView.getResultBitmap(false, false);
        this.lcm = BigInteger.ONE;
        if (resultBitmap != null && this.entitiesView.entitiesCount() > 0) {
            int childCount = this.entitiesView.getChildCount();
            int i6 = 0;
            Canvas canvas2 = null;
            while (i6 < childCount) {
                View childAt = this.entitiesView.getChildAt(i6);
                if (childAt instanceof EntityView) {
                    EntityView entityView = (EntityView) childAt;
                    Point position = entityView.getPosition();
                    if (arrayList != null) {
                        VideoEditedInfo.MediaEntity mediaEntity = new VideoEditedInfo.MediaEntity();
                        if (entityView instanceof TextPaintView) {
                            mediaEntity.type = (byte) 1;
                            TextPaintView textPaintView = (TextPaintView) entityView;
                            CharSequence text = textPaintView.getText();
                            if (text instanceof Spanned) {
                                Spanned spanned = (Spanned) text;
                                AnimatedEmojiSpan[] animatedEmojiSpanArr2 = (AnimatedEmojiSpan[]) spanned.getSpans(i5, text.length(), AnimatedEmojiSpan.class);
                                if (animatedEmojiSpanArr2 != null) {
                                    int i7 = i5;
                                    while (i7 < animatedEmojiSpanArr2.length) {
                                        AnimatedEmojiSpan animatedEmojiSpan = animatedEmojiSpanArr2[i7];
                                        Canvas canvas3 = canvas2;
                                        TLRPC$Document tLRPC$Document = animatedEmojiSpan.document;
                                        if (tLRPC$Document == null) {
                                            i4 = childCount;
                                            animatedEmojiSpanArr = animatedEmojiSpanArr2;
                                            tLRPC$Document = AnimatedEmojiDrawable.findDocument(this.currentAccount, animatedEmojiSpan.getDocumentId());
                                        } else {
                                            i4 = childCount;
                                            animatedEmojiSpanArr = animatedEmojiSpanArr2;
                                        }
                                        if (tLRPC$Document != null) {
                                            AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).putDocument(tLRPC$Document);
                                        }
                                        VideoEditedInfo.EmojiEntity emojiEntity = new VideoEditedInfo.EmojiEntity();
                                        int i8 = i6;
                                        emojiEntity.document_id = animatedEmojiSpan.getDocumentId();
                                        emojiEntity.document = tLRPC$Document;
                                        emojiEntity.offset = spanned.getSpanStart(animatedEmojiSpan);
                                        emojiEntity.length = spanned.getSpanEnd(animatedEmojiSpan) - emojiEntity.offset;
                                        emojiEntity.documentAbsolutePath = FileLoader.getInstance(this.currentAccount).getPathToAttach(tLRPC$Document, true).getAbsolutePath();
                                        boolean isAnimatedStickerDocument = MessageObject.isAnimatedStickerDocument(emojiEntity.document, true);
                                        if (isAnimatedStickerDocument || MessageObject.isVideoStickerDocument(emojiEntity.document)) {
                                            emojiEntity.subType = (byte) ((isAnimatedStickerDocument ? (byte) 1 : (byte) 4) | emojiEntity.subType);
                                        }
                                        mediaEntity.entities.add(emojiEntity);
                                        if (tLRPC$Document != null) {
                                            BigInteger valueOf = BigInteger.valueOf(5000L);
                                            this.lcm = this.lcm.multiply(valueOf).divide(this.lcm.gcd(valueOf));
                                        }
                                        i7++;
                                        canvas2 = canvas3;
                                        childCount = i4;
                                        animatedEmojiSpanArr2 = animatedEmojiSpanArr;
                                        i6 = i8;
                                    }
                                }
                                canvas = canvas2;
                                i = childCount;
                                i2 = i6;
                                mediaEntity.entities.isEmpty();
                            } else {
                                canvas = canvas2;
                                i = childCount;
                                i2 = i6;
                            }
                            mediaEntity.text = text.toString();
                            mediaEntity.subType = (byte) textPaintView.getType();
                            mediaEntity.color = textPaintView.getSwatch().color;
                            mediaEntity.fontSize = textPaintView.getTextSize();
                            mediaEntity.textTypeface = textPaintView.getTypeface();
                            mediaEntity.textAlign = textPaintView.getAlign();
                            z2 = true;
                        } else {
                            canvas = canvas2;
                            i = childCount;
                            i2 = i6;
                            if (entityView instanceof StickerView) {
                                mediaEntity.type = (byte) 0;
                                StickerView stickerView = (StickerView) entityView;
                                Size baseSize = stickerView.getBaseSize();
                                mediaEntity.width = baseSize.width;
                                mediaEntity.height = baseSize.height;
                                mediaEntity.document = stickerView.getSticker();
                                mediaEntity.parentObject = stickerView.getParentObject();
                                TLRPC$Document sticker = stickerView.getSticker();
                                mediaEntity.text = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(sticker, true).getAbsolutePath();
                                if (MessageObject.isAnimatedStickerDocument(sticker, true) || MessageObject.isVideoStickerDocument(sticker)) {
                                    boolean isAnimatedStickerDocument2 = MessageObject.isAnimatedStickerDocument(sticker, true);
                                    mediaEntity.subType = (byte) (mediaEntity.subType | (isAnimatedStickerDocument2 ? (byte) 1 : (byte) 4));
                                    long duration = isAnimatedStickerDocument2 ? stickerView.getDuration() : 5000L;
                                    if (duration != 0) {
                                        BigInteger valueOf2 = BigInteger.valueOf(duration);
                                        this.lcm = this.lcm.multiply(valueOf2).divide(this.lcm.gcd(valueOf2));
                                    }
                                }
                                if (stickerView.isMirrored()) {
                                    mediaEntity.subType = (byte) (mediaEntity.subType | 2);
                                }
                                z2 = true;
                            } else if (entityView instanceof PhotoView) {
                                PhotoView photoView = (PhotoView) entityView;
                                mediaEntity.type = (byte) 2;
                                Size baseSize2 = photoView.getBaseSize();
                                mediaEntity.width = baseSize2.width;
                                mediaEntity.height = baseSize2.height;
                                mediaEntity.text = photoView.getPath(this.currentAccount);
                                if (photoView.isMirrored()) {
                                    mediaEntity.subType = (byte) (mediaEntity.subType | 2);
                                }
                                if (photoView.hasSegmentedImage() && photoView.isSegmented() && (saveSegmentedImage = photoView.saveSegmentedImage(this.currentAccount)) != null) {
                                    mediaEntity.subType = (byte) (mediaEntity.subType | 16);
                                    mediaEntity.segmentedPath = saveSegmentedImage.getPath();
                                }
                                z2 = false;
                            }
                        }
                        arrayList.add(mediaEntity);
                        float scaleX = childAt.getScaleX();
                        float scaleY = childAt.getScaleY();
                        float x = childAt.getX();
                        float y = childAt.getY();
                        mediaEntity.viewWidth = childAt.getWidth();
                        mediaEntity.viewHeight = childAt.getHeight();
                        mediaEntity.width = (childAt.getWidth() * scaleX) / this.entitiesView.getMeasuredWidth();
                        mediaEntity.height = (childAt.getHeight() * scaleY) / this.entitiesView.getMeasuredHeight();
                        mediaEntity.f1579x = (((childAt.getWidth() * (1.0f - scaleX)) / 2.0f) + x) / this.entitiesView.getMeasuredWidth();
                        mediaEntity.f1580y = (((childAt.getHeight() * (1.0f - scaleY)) / 2.0f) + y) / this.entitiesView.getMeasuredHeight();
                        mediaEntity.rotation = (float) ((-childAt.getRotation()) * 0.017453292519943295d);
                        mediaEntity.textViewX = (x + (childAt.getWidth() / 2.0f)) / this.entitiesView.getMeasuredWidth();
                        mediaEntity.textViewY = (y + (childAt.getHeight() / 2.0f)) / this.entitiesView.getMeasuredHeight();
                        mediaEntity.textViewWidth = mediaEntity.viewWidth / this.entitiesView.getMeasuredWidth();
                        mediaEntity.textViewHeight = mediaEntity.viewHeight / this.entitiesView.getMeasuredHeight();
                        mediaEntity.scale = scaleX;
                        if (bitmapArr[0] == null) {
                            bitmapArr[0] = Bitmap.createBitmap(resultBitmap.getWidth(), resultBitmap.getHeight(), resultBitmap.getConfig());
                            Canvas canvas4 = new Canvas(bitmapArr[0]);
                            canvas4.drawBitmap(resultBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                            canvas = canvas4;
                        }
                        z = z2;
                    } else {
                        canvas = canvas2;
                        i = childCount;
                        i2 = i6;
                        z = false;
                    }
                    Canvas canvas5 = new Canvas(resultBitmap);
                    int i9 = 0;
                    while (i9 < 2) {
                        Canvas canvas6 = i9 == 0 ? canvas5 : canvas;
                        if (canvas6 != null && (i9 != 0 || !z)) {
                            canvas6.save();
                            canvas6.translate(position.f1899x, position.f1900y);
                            canvas6.scale(childAt.getScaleX(), childAt.getScaleY());
                            canvas6.rotate(childAt.getRotation());
                            canvas6.translate((-entityView.getWidth()) / 2.0f, (-entityView.getHeight()) / 2.0f);
                            if ((childAt instanceof TextPaintView) && childAt.getHeight() > 0 && childAt.getWidth() > 0) {
                                Bitmap createBitmap = Bitmaps.createBitmap(childAt.getWidth(), childAt.getHeight(), Bitmap.Config.ARGB_8888);
                                Canvas canvas7 = new Canvas(createBitmap);
                                childAt.draw(canvas7);
                                canvas6.drawBitmap(createBitmap, (Rect) null, new Rect(0, 0, createBitmap.getWidth(), createBitmap.getHeight()), (Paint) null);
                                try {
                                    canvas7.setBitmap(null);
                                } catch (Exception e) {
                                    FileLog.m102e(e);
                                }
                                createBitmap.recycle();
                            } else {
                                childAt.draw(canvas6);
                            }
                            canvas6.restore();
                        }
                        i9++;
                    }
                    i3 = 0;
                    canvas2 = canvas;
                    i6 = i2 + 1;
                    i5 = i3;
                    childCount = i;
                } else {
                    canvas = canvas2;
                    i = childCount;
                    i2 = i6;
                }
                canvas2 = canvas;
                i3 = 0;
                i6 = i2 + 1;
                i5 = i3;
                childCount = i;
            }
        }
        return resultBitmap;
    }

    public void onCleanupEntities() {
        this.entitiesView.removeAllViews();
    }

    public long getLcm() {
        return this.lcm.longValue();
    }

    public View getDoneView() {
        return this.doneButton;
    }

    public View getCancelView() {
        return this.cancelButton;
    }

    public void maybeShowDismissalAlert(PhotoViewer photoViewer, Activity activity, final Runnable runnable) {
        if (this.isColorListShown) {
            showColorList(false);
        } else if (this.emojiViewVisible) {
            hideEmojiPopup(true);
        } else if (this.editingText) {
            selectEntity(null);
        } else if (!hasChanges()) {
            runnable.run();
        } else if (activity == null) {
        } else {
            AlertDialog.Builder builder = new AlertDialog.Builder(activity, this.resourcesProvider);
            builder.setMessage(LocaleController.getString("PhotoEditorDiscardAlert", C3632R.string.PhotoEditorDiscardAlert));
            builder.setTitle(LocaleController.getString("DiscardChanges", C3632R.string.DiscardChanges));
            builder.setPositiveButton(LocaleController.getString("PassportDiscard", C3632R.string.PassportDiscard), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    runnable.run();
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
            photoViewer.showAlertDialog(builder);
        }
    }

    public boolean onTouch(MotionEvent motionEvent) {
        if (this.currentEntityView != null) {
            selectEntity(null);
        }
        float x = ((motionEvent.getX() - this.renderView.getTranslationX()) - (getMeasuredWidth() / 2.0f)) / this.renderView.getScaleX();
        float y = ((((motionEvent.getY() - this.renderView.getTranslationY()) - (getMeasuredHeight() / 2.0f)) + AndroidUtilities.m107dp(32)) - ((getAdditionalTop() - getAdditionalBottom()) / 2.0f)) / this.renderView.getScaleY();
        double d = x;
        double radians = (float) Math.toRadians(-this.renderView.getRotation());
        double d2 = y;
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setLocation(((float) ((Math.cos(radians) * d) - (Math.sin(radians) * d2))) + (this.renderView.getMeasuredWidth() / 2.0f), ((float) ((d * Math.sin(radians)) + (d2 * Math.cos(radians)))) + (this.renderView.getMeasuredHeight() / 2.0f));
        this.renderView.onTouch(obtain);
        obtain.recycle();
        return true;
    }

    public int getAdditionalTop() {
        return AndroidUtilities.m107dp(48);
    }

    public int getAdditionalBottom() {
        return AndroidUtilities.m107dp(24);
    }

    public RenderView getRenderView() {
        return this.renderView;
    }

    public void setTransform(float f, float f2, float f3, float f4, float f5) {
        View view;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        MediaController.CropState cropState;
        float f12;
        this.scale = f;
        this.imageWidth = f4;
        this.imageHeight = f5;
        this.inputTransformX = f2;
        this.inputTransformY = f3;
        this.transformX = f2;
        float f13 = f3 + this.panTranslationY;
        this.transformY = f13;
        for (int i = 0; i < 4; i++) {
            if (i == 0) {
                view = this.entitiesView;
            } else if (i == 1) {
                view = this.selectionContainerView;
            } else if (i == 2) {
                view = this.renderView;
            } else {
                view = this.renderInputView;
            }
            MediaController.CropState cropState2 = this.currentCropState;
            if (cropState2 != null) {
                float f14 = cropState2.cropScale * 1.0f;
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                if (measuredWidth == 0 || measuredHeight == 0) {
                    return;
                }
                int i2 = this.currentCropState.transformRotation;
                if (i2 == 90 || i2 == 270) {
                    measuredHeight = measuredWidth;
                    measuredWidth = measuredHeight;
                }
                float f15 = measuredWidth;
                float max = Math.max(f4 / ((int) (cropState.cropPw * f15)), f5 / ((int) (cropState.cropPh * f12)));
                f11 = f14 * max;
                MediaController.CropState cropState3 = this.currentCropState;
                float f16 = cropState3.cropScale;
                f8 = (cropState3.cropPx * f15 * f * max * f16) + f2;
                f10 = cropState3.cropRotate + i2;
                f9 = (cropState3.cropPy * measuredHeight * f * max * f16) + f13;
                f6 = 1.0f;
            } else {
                if (i == 0) {
                    f6 = 1.0f;
                    f7 = this.baseScale * 1.0f;
                } else {
                    f6 = 1.0f;
                    f7 = 1.0f;
                }
                f8 = f2;
                f9 = f13;
                float f17 = f7;
                f10 = 0.0f;
                f11 = f17;
            }
            float f18 = f9 + ((-this.emojiPadding) / 2.0f);
            float f19 = f11 * f;
            if (!Float.isNaN(f19)) {
                f6 = f19;
            }
            view.setScaleX(f6);
            view.setScaleY(f6);
            view.setTranslationX(f8);
            view.setTranslationY(f18);
            view.setRotation(f10);
            view.invalidate();
        }
        updateEntitiesSelections();
        invalidate();
    }

    public void updateEntitiesSelections() {
        for (int i = 0; i < this.entitiesView.getChildCount(); i++) {
            View childAt = this.entitiesView.getChildAt(i);
            if (childAt == this.currentEntityView || ((childAt instanceof EntityView) && ((EntityView) childAt).isSelectedProgress())) {
                ((EntityView) childAt).updateSelectionView();
            }
        }
    }

    public List<TLRPC$InputDocument> getMasks() {
        AnimatedEmojiSpan[] animatedEmojiSpanArr;
        int childCount = this.entitiesView.getChildCount();
        ArrayList arrayList = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = this.entitiesView.getChildAt(i);
            if (childAt instanceof StickerView) {
                TLRPC$Document sticker = ((StickerView) childAt).getSticker();
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                TLRPC$TL_inputDocument tLRPC$TL_inputDocument = new TLRPC$TL_inputDocument();
                tLRPC$TL_inputDocument.f1618id = sticker.f1610id;
                tLRPC$TL_inputDocument.access_hash = sticker.access_hash;
                byte[] bArr = sticker.file_reference;
                tLRPC$TL_inputDocument.file_reference = bArr;
                if (bArr == null) {
                    tLRPC$TL_inputDocument.file_reference = new byte[0];
                }
                arrayList.add(tLRPC$TL_inputDocument);
            } else if (childAt instanceof TextPaintView) {
                CharSequence text = ((TextPaintView) childAt).getText();
                if ((text instanceof Spanned) && (animatedEmojiSpanArr = (AnimatedEmojiSpan[]) ((Spanned) text).getSpans(0, text.length(), AnimatedEmojiSpan.class)) != null) {
                    for (AnimatedEmojiSpan animatedEmojiSpan : animatedEmojiSpanArr) {
                        if (animatedEmojiSpan != null) {
                            TLRPC$Document tLRPC$Document = animatedEmojiSpan.document;
                            if (tLRPC$Document == null) {
                                tLRPC$Document = AnimatedEmojiDrawable.findDocument(this.currentAccount, animatedEmojiSpan.getDocumentId());
                            }
                            if (tLRPC$Document != null) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                TLRPC$TL_inputDocument tLRPC$TL_inputDocument2 = new TLRPC$TL_inputDocument();
                                tLRPC$TL_inputDocument2.f1618id = tLRPC$Document.f1610id;
                                tLRPC$TL_inputDocument2.access_hash = tLRPC$Document.access_hash;
                                byte[] bArr2 = tLRPC$Document.file_reference;
                                tLRPC$TL_inputDocument2.file_reference = bArr2;
                                if (bArr2 == null) {
                                    tLRPC$TL_inputDocument2.file_reference = new byte[0];
                                }
                                arrayList.add(tLRPC$TL_inputDocument2);
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.PaintToolsView.Delegate
    public void onBrushSelected(Brush brush) {
        if ((brush instanceof Brush.Blurer) || (brush instanceof Brush.Eraser)) {
            this.weightChooserView.setMinMax(0.4f, 1.75f);
        } else {
            this.weightChooserView.setMinMax(0.05f, 1.0f);
        }
        this.weightChooserView.setDrawCenter(!(brush instanceof Brush.Shape));
        if (this.renderView.getCurrentBrush() instanceof Brush.Shape) {
            this.ignoreToolChangeAnimationOnce = true;
        }
        this.renderView.setBrush(brush);
        Swatch swatch = this.colorSwatch;
        int i = swatch.color;
        swatch.color = PersistColorPalette.getInstance(this.currentAccount).getCurrentColor();
        this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
        setCurrentSwatch(this.colorSwatch, true, Integer.valueOf(i));
        this.renderInputView.invalidate();
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onTypefaceButtonClicked() {
        showTypefaceMenu(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTypefaceMenu(final boolean z) {
        if (this.isTypefaceMenuShown != z) {
            this.isTypefaceMenuShown = z;
            SpringAnimation springAnimation = this.typefaceMenuTransformAnimation;
            if (springAnimation != null) {
                springAnimation.cancel();
            }
            SpringAnimation springAnimation2 = new SpringAnimation(new FloatValueHolder(z ? 0.0f : 1000.0f));
            this.typefaceMenuTransformAnimation = springAnimation2;
            springAnimation2.setSpring(new SpringForce().setFinalPosition(z ? 1000.0f : 0.0f).setStiffness(1250.0f).setDampingRatio(1.0f));
            if (z) {
                this.typefaceListView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.typefaceListView.setVisibility(0);
            }
            this.typefaceMenuTransformAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda30
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    LPhotoPaintView.this.lambda$showTypefaceMenu$27(dynamicAnimation, f, f2);
                }
            });
            this.typefaceMenuTransformAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda29
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
                    LPhotoPaintView.this.lambda$showTypefaceMenu$28(z, dynamicAnimation, z2, f, f2);
                }
            });
            this.typefaceMenuTransformAnimation.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTypefaceMenu$27(DynamicAnimation dynamicAnimation, float f, float f2) {
        float f3 = f / 1000.0f;
        this.typefaceMenuTransformProgress = f3;
        this.typefaceListView.setAlpha(f3);
        this.typefaceListView.invalidate();
        this.overlayLayout.invalidate();
        this.textOptionsView.getTypefaceCell().setAlpha(1.0f - this.typefaceMenuTransformProgress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTypefaceMenu$28(boolean z, DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
        if (dynamicAnimation == this.typefaceMenuTransformAnimation) {
            this.typefaceMenuTransformAnimation = null;
            if (!z) {
                this.typefaceListView.setVisibility(8);
            }
            this.typefaceListView.setMaskProvider(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showColorList(final boolean z) {
        if (this.isColorListShown != z) {
            this.isColorListShown = z;
            SpringAnimation springAnimation = this.toolsTransformAnimation;
            if (springAnimation != null) {
                springAnimation.cancel();
            }
            float f = BitmapDescriptorFactory.HUE_RED;
            SpringAnimation springAnimation2 = new SpringAnimation(new FloatValueHolder(z ? 0.0f : 1000.0f));
            this.toolsTransformAnimation = springAnimation2;
            SpringForce springForce = new SpringForce();
            if (z) {
                f = 1000.0f;
            }
            springAnimation2.setSpring(springForce.setFinalPosition(f).setStiffness(1250.0f).setDampingRatio(1.0f));
            boolean z2 = true;
            final boolean[] zArr = new boolean[1];
            if (!this.keyboardVisible && !this.emojiViewVisible) {
                z2 = false;
            }
            zArr[0] = z2;
            final float translationY = this.bottomLayout.getTranslationY();
            final ViewGroup barView = getBarView();
            this.toolsTransformAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda31
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                    LPhotoPaintView.this.lambda$showColorList$29(barView, z, zArr, translationY, dynamicAnimation, f2, f3);
                }
            });
            this.toolsTransformAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda28
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f2, float f3) {
                    LPhotoPaintView.this.lambda$showColorList$30(z, dynamicAnimation, z3, f2, f3);
                }
            });
            this.toolsTransformAnimation.start();
            if (z) {
                this.colorsListView.setVisibility(0);
                this.colorsListView.setSelectedColorIndex(PersistColorPalette.getInstance(this.currentAccount).getCurrentColorPosition());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showColorList$29(View view, boolean z, boolean[] zArr, float f, DynamicAnimation dynamicAnimation, float f2, float f3) {
        float f4 = f2 / 1000.0f;
        this.toolsTransformProgress = f4;
        float f5 = ((1.0f - f4) * 0.4f) + 0.6f;
        view.setScaleX(f5);
        view.setScaleY(f5);
        view.setTranslationY((AndroidUtilities.m107dp(16) * Math.min(this.toolsTransformProgress, 0.25f)) / 0.25f);
        view.setAlpha(1.0f - (Math.min(this.toolsTransformProgress, 0.25f) / 0.25f));
        this.colorsListView.setProgress(this.toolsTransformProgress, z);
        this.doneButton.setProgress(this.toolsTransformProgress);
        this.cancelButton.setProgress(this.toolsTransformProgress);
        this.tabsLayout.setTranslationY(AndroidUtilities.m107dp(32) * this.toolsTransformProgress);
        if (zArr[0]) {
            float f6 = this.toolsTransformProgress;
            if (!z) {
                f6 = 1.0f - f6;
            }
            this.bottomLayout.setTranslationY(f - ((AndroidUtilities.m107dp(40) * f6) * (z ? 1 : -1)));
        }
        this.bottomLayout.invalidate();
        if (view == this.textOptionsView) {
            this.overlayLayout.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showColorList$30(boolean z, DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
        if (dynamicAnimation == this.toolsTransformAnimation) {
            this.toolsTransformAnimation = null;
            if (z) {
                return;
            }
            this.colorsListView.setVisibility(8);
            PersistColorPalette.getInstance(this.currentAccount).saveColors();
            this.colorsListView.getAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentSwatch(Swatch swatch, boolean z) {
        setCurrentSwatch(swatch, z, null);
    }

    private void setCurrentSwatch(Swatch swatch, boolean z, final Integer num) {
        Swatch swatch2 = this.colorSwatch;
        if (swatch2 != swatch) {
            swatch2.color = swatch.color;
            swatch2.colorLocation = swatch.colorLocation;
            swatch2.brushWeight = swatch.brushWeight;
            PersistColorPalette.getInstance(this.currentAccount).selectColor(swatch.color);
            PersistColorPalette.getInstance(this.currentAccount).setCurrentWeight(swatch.brushWeight);
        }
        this.renderView.setColor(swatch.color);
        this.renderView.setBrushSize(swatch.brushWeight);
        if (z) {
            final int i = this.colorSwatch.color;
            if (num != null && num.intValue() != i) {
                ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(150L);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        LPhotoPaintView.this.lambda$setCurrentSwatch$31(num, i, valueAnimator);
                    }
                });
                duration.start();
            } else {
                FrameLayout frameLayout = this.bottomLayout;
                if (frameLayout != null) {
                    frameLayout.invalidate();
                }
            }
        }
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            ((TextPaintView) entityView).setSwatch(new Swatch(swatch.color, swatch.colorLocation, swatch.brushWeight));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCurrentSwatch$31(Integer num, int i, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.colorSwatch.color = ColorUtils.blendARGB(num.intValue(), i, floatValue);
        FrameLayout frameLayout = this.bottomLayout;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
    }

    public boolean onBackPressed() {
        if (this.isColorListShown) {
            showColorList(false);
            return true;
        } else if (this.emojiViewVisible) {
            hideEmojiPopup(true);
            return true;
        } else if (this.editingText) {
            selectEntity(null);
            return true;
        } else {
            return false;
        }
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.PaintToolsView.Delegate, org.telegram.p043ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onColorPickerSelected() {
        showColorList(true);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onTextOutlineSelected(View view) {
        setTextType((this.selectedTextType + 1) % 4);
    }

    private PopupButton buttonForPopup(String str, int i, boolean z, final Runnable runnable) {
        PopupButton popupButton = new PopupButton(getContext());
        popupButton.setIcon(i);
        popupButton.setText(str);
        popupButton.setSelected(z);
        if (runnable != null) {
            popupButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable.run();
                }
            });
        }
        return popupButton;
    }

    /* renamed from: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$PopupButton */
    /* loaded from: classes6.dex */
    public class PopupButton extends LinearLayout {
        ImageView checkView;
        ImageView image2View;
        ValueAnimator imageSwitchAnimator;
        boolean imageSwitchFill;
        float imageSwitchT;
        ImageView imageView;
        FrameLayout imagesView;
        public TextView textView;

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return true;
        }

        public PopupButton(Context context) {
            super(context);
            setOrientation(0);
            setBackground(Theme.getSelectorDrawable(Theme.getColor(Theme.key_listSelector, LPhotoPaintView.this.resourcesProvider), false));
            FrameLayout frameLayout = new FrameLayout(context, LPhotoPaintView.this) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.PopupButton.1
                Path path = new Path();

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view, long j) {
                    boolean z;
                    PopupButton popupButton = PopupButton.this;
                    if (popupButton.imageSwitchAnimator != null && (((z = popupButton.imageSwitchFill) && view == popupButton.image2View) || (!z && view == popupButton.imageView))) {
                        float f = z ? popupButton.imageSwitchT : 1.0f - popupButton.imageSwitchT;
                        canvas.save();
                        this.path.rewind();
                        this.path.addCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, (f * getMeasuredWidth()) / 2.0f, Path.Direction.CW);
                        canvas.clipPath(this.path);
                        boolean drawChild = super.drawChild(canvas, view, j);
                        canvas.restore();
                        return drawChild;
                    }
                    return super.drawChild(canvas, view, j);
                }
            };
            this.imagesView = frameLayout;
            addView(frameLayout, LayoutHelper.createLinear(-2, -2, 19, 16, 0, 16, 0));
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            ImageView imageView2 = this.imageView;
            int i = Theme.key_actionBarDefaultSubmenuItem;
            imageView2.setColorFilter(LPhotoPaintView.this.getThemedColor(i));
            this.imagesView.addView(this.imageView, LayoutHelper.createFrame(-2, -2, 17));
            ImageView imageView3 = new ImageView(context);
            this.image2View = imageView3;
            imageView3.setScaleType(ImageView.ScaleType.CENTER);
            this.image2View.setColorFilter(LPhotoPaintView.this.getThemedColor(i));
            this.image2View.setVisibility(8);
            this.imagesView.addView(this.image2View, LayoutHelper.createFrame(-2, -2, 17));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(LPhotoPaintView.this.getThemedColor(i));
            this.textView.setTextSize(1, 16.0f);
            addView(this.textView, LayoutHelper.createLinear(-2, -2, 19, 0, 0, 16, 0));
            ImageView imageView4 = new ImageView(context);
            this.checkView = imageView4;
            imageView4.setImageResource(C3632R.C3634drawable.msg_text_check);
            this.checkView.setScaleType(ImageView.ScaleType.CENTER);
            this.checkView.setColorFilter(new PorterDuffColorFilter(LPhotoPaintView.this.getThemedColor(Theme.key_radioBackgroundChecked), PorterDuff.Mode.MULTIPLY));
            this.checkView.setVisibility(8);
            addView(this.checkView, LayoutHelper.createLinear(50, -1));
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            this.checkView.setVisibility(z ? 0 : 8);
        }

        public void setText(CharSequence charSequence) {
            this.textView.setText(charSequence);
        }

        public void setIcon(int i) {
            setIcon(i, true, false);
        }

        public void setIcon(int i, final boolean z, boolean z2) {
            if (z2) {
                ValueAnimator valueAnimator = this.imageSwitchAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.imageSwitchAnimator = null;
                    setIcon(i, false, false);
                    return;
                }
                this.imageSwitchFill = z;
                this.image2View.setImageResource(i);
                this.image2View.setVisibility(0);
                this.image2View.setAlpha(1.0f);
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.imageSwitchAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$PopupButton$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        LPhotoPaintView.PopupButton.this.lambda$setIcon$0(z, valueAnimator2);
                    }
                });
                this.imageSwitchAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.PopupButton.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        PopupButton popupButton = PopupButton.this;
                        ImageView imageView = popupButton.imageView;
                        popupButton.imageView = popupButton.image2View;
                        popupButton.image2View = imageView;
                        imageView.bringToFront();
                        PopupButton.this.image2View.setVisibility(8);
                        PopupButton.this.imageSwitchAnimator = null;
                    }
                });
                this.imageSwitchAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.imageSwitchAnimator.setDuration(420L);
                this.imageSwitchAnimator.start();
                return;
            }
            this.imageView.setImageResource(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setIcon$0(boolean z, ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.imageSwitchT = floatValue;
            if (!z) {
                this.imageView.setAlpha(1.0f - floatValue);
            }
            this.imagesView.invalidate();
        }

        @Override // android.view.View
        public boolean performClick() {
            if (LPhotoPaintView.this.popupWindow != null && LPhotoPaintView.this.popupWindow.isShowing()) {
                LPhotoPaintView.this.popupWindow.dismiss(true);
            }
            return super.performClick();
        }
    }

    private void setTextType(int i) {
        this.selectedTextType = i;
        if (this.currentEntityView instanceof TextPaintView) {
            if (i == 0 && this.colorSwatch.color == -1) {
                setNewColor(-16777216);
            } else if ((i == 1 || i == 2) && this.colorSwatch.color == -16777216) {
                setNewColor(-1);
            }
            ((TextPaintView) this.currentEntityView).setType(i);
        }
        PersistColorPalette.getInstance(this.currentAccount).setCurrentTextType(i);
        this.textOptionsView.setOutlineType(i);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onNewTextSelected() {
        if (this.keyboardVisible || this.emojiViewVisible) {
            onEmojiButtonClick();
        } else {
            createText(true);
        }
    }

    public void onTypefaceSelected(PaintTypeface paintTypeface) {
        PersistColorPalette.getInstance(this.currentAccount).setCurrentTypeface(paintTypeface.getKey());
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            ((TextPaintView) entityView).setTypeface(paintTypeface);
        }
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onTextAlignmentSelected(int i) {
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            setTextAlignment((TextPaintView) entityView, i);
            PersistColorPalette.getInstance(this.currentAccount).setCurrentAlignment(i);
        }
    }

    private void setTextAlignment(TextPaintView textPaintView, int i) {
        textPaintView.setAlign(i);
        int i2 = 2;
        textPaintView.getEditText().setGravity(i != 1 ? i != 2 ? 19 : 21 : 17);
        if (Build.VERSION.SDK_INT >= 17) {
            if (i == 1) {
                i2 = 4;
            } else if (i == 2 ? !LocaleController.isRTL : LocaleController.isRTL) {
                i2 = 3;
            }
            textPaintView.getEditText().setTextAlignment(i2);
        }
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.PaintToolsView.Delegate
    public void onAddButtonPressed(View view) {
        showPopup(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$onAddButtonPressed$35();
            }
        }, this, 53, 0, getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAddButtonPressed$35() {
        boolean fillShapes = PersistColorPalette.getInstance(this.currentAccount).getFillShapes();
        for (int i = 0; i < Brush.Shape.SHAPES_LIST.size(); i++) {
            final Brush.Shape shape = Brush.Shape.SHAPES_LIST.get(i);
            final int filledIconRes = fillShapes ? shape.getFilledIconRes() : shape.getIconRes();
            PopupButton buttonForPopup = buttonForPopup(shape.getShapeName(), filledIconRes, false, new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    LPhotoPaintView.this.lambda$onAddButtonPressed$33(shape, filledIconRes);
                }
            });
            buttonForPopup.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda23
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean lambda$onAddButtonPressed$34;
                    lambda$onAddButtonPressed$34 = LPhotoPaintView.this.lambda$onAddButtonPressed$34(view);
                    return lambda$onAddButtonPressed$34;
                }
            });
            this.popupLayout.addView((View) buttonForPopup, LayoutHelper.createLinear(-1, 48));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAddButtonPressed$33(Brush.Shape shape, int i) {
        if (this.renderView.getCurrentBrush() instanceof Brush.Shape) {
            this.ignoreToolChangeAnimationOnce = true;
        }
        onBrushSelected(shape);
        this.paintToolsView.animatePlusToIcon(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onAddButtonPressed$34(View view) {
        if (this.popupLayout != null) {
            PersistColorPalette.getInstance(this.currentAccount).toggleFillShapes();
            boolean fillShapes = PersistColorPalette.getInstance(this.currentAccount).getFillShapes();
            for (int i = 0; i < this.popupLayout.getItemsCount(); i++) {
                View itemAt = this.popupLayout.getItemAt(i);
                if (itemAt instanceof PopupButton) {
                    Brush.Shape shape = Brush.Shape.SHAPES_LIST.get(i);
                    ((PopupButton) itemAt).setIcon(fillShapes ? shape.getFilledIconRes() : shape.getIconRes(), fillShapes, true);
                }
            }
        }
        return true;
    }

    private void showMenuForEntity(final EntityView entityView) {
        int[] centerLocationInWindow = getCenterLocationInWindow(entityView);
        showPopup(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$showMenuForEntity$41(entityView);
            }
        }, this, 51, centerLocationInWindow[0], centerLocationInWindow[1] - AndroidUtilities.m107dp(32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$41(final EntityView entityView) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        TextView textView = new TextView(getContext());
        int i = Theme.key_actionBarDefaultSubmenuItem;
        textView.setTextColor(getThemedColor(i));
        textView.setBackground(Theme.getSelectorDrawable(false));
        textView.setGravity(16);
        textView.setPadding(AndroidUtilities.m107dp(16), 0, AndroidUtilities.m107dp(14), 0);
        textView.setTextSize(1, 14.0f);
        textView.setTag(0);
        textView.setText(LocaleController.getString("PaintDelete", C3632R.string.PaintDelete));
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LPhotoPaintView.this.lambda$showMenuForEntity$36(entityView, view);
            }
        });
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, 48));
        if (entityView instanceof TextPaintView) {
            TextView textView2 = new TextView(getContext());
            textView2.setTextColor(getThemedColor(i));
            textView2.setBackground(Theme.getSelectorDrawable(false));
            textView2.setGravity(16);
            textView2.setPadding(AndroidUtilities.m107dp(16), 0, AndroidUtilities.m107dp(16), 0);
            textView2.setTextSize(1, 14.0f);
            textView2.setEllipsize(TextUtils.TruncateAt.END);
            textView2.setTag(1);
            textView2.setText(LocaleController.getString("PaintEdit", C3632R.string.PaintEdit));
            textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LPhotoPaintView.this.lambda$showMenuForEntity$37(view);
                }
            });
            linearLayout.addView(textView2, LayoutHelper.createLinear(-2, 48));
        }
        if (entityView instanceof StickerView) {
            TextView textView3 = new TextView(getContext());
            textView3.setTextColor(getThemedColor(i));
            textView3.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            textView3.setGravity(16);
            textView3.setEllipsize(TextUtils.TruncateAt.END);
            textView3.setPadding(AndroidUtilities.m107dp(14), 0, AndroidUtilities.m107dp(16), 0);
            textView3.setTextSize(1, 14.0f);
            textView3.setTag(2);
            textView3.setText(LocaleController.getString("Flip", C3632R.string.Flip));
            textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda19
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LPhotoPaintView.this.lambda$showMenuForEntity$38(entityView, view);
                }
            });
            linearLayout.addView(textView3, LayoutHelper.createLinear(-2, 48));
        }
        boolean z = entityView instanceof PhotoView;
        if (!z) {
            TextView textView4 = new TextView(getContext());
            textView4.setTextColor(getThemedColor(i));
            textView4.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            textView4.setGravity(16);
            textView4.setEllipsize(TextUtils.TruncateAt.END);
            textView4.setPadding(AndroidUtilities.m107dp(14), 0, AndroidUtilities.m107dp(16), 0);
            textView4.setTextSize(1, 14.0f);
            textView4.setTag(2);
            textView4.setText(LocaleController.getString("PaintDuplicate", C3632R.string.PaintDuplicate));
            textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LPhotoPaintView.this.lambda$showMenuForEntity$39(view);
                }
            });
            linearLayout.addView(textView4, LayoutHelper.createLinear(-2, 48));
        }
        if (z) {
            final PhotoView photoView = (PhotoView) entityView;
            if (photoView.hasSegmentedImage()) {
                TextView textView5 = new TextView(getContext());
                textView5.setTextColor(getThemedColor(i));
                textView5.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                textView5.setGravity(16);
                textView5.setEllipsize(TextUtils.TruncateAt.END);
                textView5.setPadding(AndroidUtilities.m107dp(14), 0, AndroidUtilities.m107dp(16), 0);
                textView5.setTextSize(1, 14.0f);
                textView5.setTag(5);
                textView5.setText(LocaleController.getString(photoView.isSegmented() ? C3632R.string.SegmentationUndoCutOut : C3632R.string.SegmentationCutOut));
                textView5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda21
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        LPhotoPaintView.this.lambda$showMenuForEntity$40(photoView, view);
                    }
                });
                linearLayout.addView(textView5, LayoutHelper.createLinear(-2, 44));
                photoView.highlightSegmented();
            }
        }
        this.popupLayout.addView(linearLayout);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = -2;
        linearLayout.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$36(EntityView entityView, View view) {
        lambda$registerRemovalUndo$45(entityView);
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$37(View view) {
        editSelectedTextEntity();
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$38(EntityView entityView, View view) {
        ((StickerView) entityView).mirror(true);
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$39(View view) {
        duplicateSelectedEntity();
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$40(PhotoView photoView, View view) {
        photoView.toggleSegmented(true);
        if (photoView.isSegmented()) {
            onSwitchSegmentedAnimation(photoView);
        }
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    private void duplicateSelectedEntity() {
        EntityView entityView = this.currentEntityView;
        if (entityView == null) {
            return;
        }
        StickerView stickerView = null;
        Point startPositionRelativeToEntity = startPositionRelativeToEntity(entityView);
        EntityView entityView2 = this.currentEntityView;
        if (entityView2 instanceof StickerView) {
            StickerView stickerView2 = new StickerView(getContext(), (StickerView) this.currentEntityView, startPositionRelativeToEntity);
            stickerView2.setDelegate(this);
            this.entitiesView.addView(stickerView2);
            stickerView = stickerView2;
        } else if (entityView2 instanceof TextPaintView) {
            TextPaintView textPaintView = new TextPaintView(getContext(), (TextPaintView) this.currentEntityView, startPositionRelativeToEntity);
            textPaintView.setDelegate(this);
            textPaintView.setMaxWidth((int) (getPaintingSize().width - 20.0f));
            this.entitiesView.addView(textPaintView, LayoutHelper.createFrame(-2, -2));
            stickerView = textPaintView;
        }
        registerRemovalUndo(stickerView);
        selectEntity(stickerView);
    }

    private Point startPositionRelativeToEntity(EntityView entityView) {
        MediaController.CropState cropState = this.currentCropState;
        float f = cropState != null ? 200.0f / cropState.cropScale : 200.0f;
        if (entityView != null) {
            Point position = entityView.getPosition();
            return new Point(position.f1899x + f, position.f1900y + f);
        }
        float f2 = cropState != null ? 100.0f / cropState.cropScale : 100.0f;
        Point centerPositionForEntity = centerPositionForEntity();
        while (true) {
            boolean z = false;
            for (int i = 0; i < this.entitiesView.getChildCount(); i++) {
                View childAt = this.entitiesView.getChildAt(i);
                if (childAt instanceof EntityView) {
                    Point position2 = ((EntityView) childAt).getPosition();
                    if (((float) Math.sqrt(Math.pow(position2.f1899x - centerPositionForEntity.f1899x, 2.0d) + Math.pow(position2.f1900y - centerPositionForEntity.f1900y, 2.0d))) < f2) {
                        z = true;
                    }
                }
            }
            if (!z) {
                return centerPositionForEntity;
            }
            centerPositionForEntity = new Point(centerPositionForEntity.f1899x + f, centerPositionForEntity.f1900y + f);
        }
    }

    private void showPopup(Runnable runnable, View view, int i, int i2, int i3) {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
            return;
        }
        if (this.popupLayout == null) {
            this.popupRect = new Rect();
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getContext(), this.resourcesProvider);
            this.popupLayout = actionBarPopupWindowLayout;
            actionBarPopupWindowLayout.setAnimationEnabled(true);
            this.popupLayout.setBackgroundColor(-14145495);
            this.popupLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda24
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean lambda$showPopup$42;
                    lambda$showPopup$42 = LPhotoPaintView.this.lambda$showPopup$42(view2, motionEvent);
                    return lambda$showPopup$42;
                }
            });
            this.popupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda47
                @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                    LPhotoPaintView.this.lambda$showPopup$43(keyEvent);
                }
            });
            this.popupLayout.setShownFromBottom(true);
        }
        this.popupLayout.removeInnerViews();
        runnable.run();
        if (this.popupWindow == null) {
            ActionBarPopupWindow actionBarPopupWindow2 = new ActionBarPopupWindow(this.popupLayout, -2, -2);
            this.popupWindow = actionBarPopupWindow2;
            actionBarPopupWindow2.setAnimationEnabled(true);
            this.popupWindow.setAnimationStyle(C3632R.style.PopupAnimation);
            this.popupWindow.setOutsideTouchable(true);
            this.popupWindow.setClippingEnabled(true);
            this.popupWindow.setInputMethodMode(2);
            this.popupWindow.setSoftInputMode(0);
            this.popupWindow.getContentView().setFocusableInTouchMode(true);
            this.popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda25
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    LPhotoPaintView.this.lambda$showPopup$44();
                }
            });
        }
        this.popupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE));
        this.popupWindow.setFocusable(true);
        if ((i & 48) != 0) {
            i2 -= this.popupLayout.getMeasuredWidth() / 2;
            i3 -= this.popupLayout.getMeasuredHeight();
        }
        this.popupWindow.showAtLocation(view, i, i2, i3);
        ActionBarPopupWindow.startAnimation(this.popupLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$showPopup$42(View view, MotionEvent motionEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (motionEvent.getActionMasked() == 0 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            view.getHitRect(this.popupRect);
            if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
            this.popupWindow.dismiss();
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$43(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$44() {
        this.popupLayout.removeInnerViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.PaintToolsView.Delegate
    public PersistColorPalette onGetPalette() {
        return PersistColorPalette.getInstance(this.currentAccount);
    }

    private Size baseStickerSize() {
        float floor = (float) Math.floor(getPaintingSize().width * 0.5d);
        return new Size(floor, floor);
    }

    private Point centerPositionForEntity() {
        MediaController.CropState cropState;
        Size paintingSize = getPaintingSize();
        float f = paintingSize.width / 2.0f;
        float f2 = paintingSize.height / 2.0f;
        if (this.currentCropState != null) {
            double radians = (float) Math.toRadians(-(cropState.transformRotation + cropState.cropRotate));
            f -= ((float) ((this.currentCropState.cropPx * Math.cos(radians)) - (this.currentCropState.cropPy * Math.sin(radians)))) * paintingSize.width;
            f2 -= ((float) ((this.currentCropState.cropPx * Math.sin(radians)) + (this.currentCropState.cropPy * Math.cos(radians)))) * paintingSize.height;
        }
        return new Point(f, f2);
    }

    private StickerPosition calculateStickerPosition(TLRPC$Document tLRPC$Document) {
        TLRPC$TL_maskCoords tLRPC$TL_maskCoords;
        float f;
        ArrayList<PhotoFace> arrayList;
        int i;
        PhotoFace randomFaceWithVacantAnchor;
        int i2 = 0;
        while (true) {
            if (i2 >= tLRPC$Document.attributes.size()) {
                tLRPC$TL_maskCoords = null;
                break;
            }
            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i2);
            if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeSticker) {
                tLRPC$TL_maskCoords = tLRPC$DocumentAttribute.mask_coords;
                break;
            }
            i2++;
        }
        MediaController.CropState cropState = this.currentCropState;
        float f2 = 0.75f;
        if (cropState != null) {
            f = -(cropState.transformRotation + cropState.cropRotate);
            f2 = 0.75f / cropState.cropScale;
        } else {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        StickerPosition stickerPosition = new StickerPosition(centerPositionForEntity(), f2, f);
        if (tLRPC$TL_maskCoords == null || (arrayList = this.faces) == null || arrayList.size() == 0 || (randomFaceWithVacantAnchor = getRandomFaceWithVacantAnchor((i = tLRPC$TL_maskCoords.f1683n), tLRPC$Document.f1610id, tLRPC$TL_maskCoords)) == null) {
            return stickerPosition;
        }
        Point pointForAnchor = randomFaceWithVacantAnchor.getPointForAnchor(i);
        float widthForAnchor = randomFaceWithVacantAnchor.getWidthForAnchor(i);
        float angle = randomFaceWithVacantAnchor.getAngle();
        double radians = (float) Math.toRadians(angle);
        double d = 1.5707963267948966d - radians;
        double d2 = widthForAnchor;
        double d3 = radians + 1.5707963267948966d;
        return new StickerPosition(new Point(pointForAnchor.f1899x + ((float) (Math.sin(d) * d2 * tLRPC$TL_maskCoords.f1684x)) + ((float) (Math.cos(d3) * d2 * tLRPC$TL_maskCoords.f1685y)), pointForAnchor.f1900y + ((float) (Math.cos(d) * d2 * tLRPC$TL_maskCoords.f1684x)) + ((float) (Math.sin(d3) * d2 * tLRPC$TL_maskCoords.f1685y))), (float) ((widthForAnchor / baseStickerSize().width) * tLRPC$TL_maskCoords.zoom), angle);
    }

    private PhotoFace getRandomFaceWithVacantAnchor(int i, long j, TLRPC$TL_maskCoords tLRPC$TL_maskCoords) {
        if (i >= 0 && i <= 3 && !this.faces.isEmpty()) {
            int size = this.faces.size();
            int nextInt = Utilities.random.nextInt(size);
            for (int i2 = size; i2 > 0; i2--) {
                PhotoFace photoFace = this.faces.get(nextInt);
                if (!isFaceAnchorOccupied(photoFace, i, j, tLRPC$TL_maskCoords)) {
                    return photoFace;
                }
                nextInt = (nextInt + 1) % size;
            }
        }
        return null;
    }

    private boolean isFaceAnchorOccupied(PhotoFace photoFace, int i, long j, TLRPC$TL_maskCoords tLRPC$TL_maskCoords) {
        Point pointForAnchor;
        if (photoFace.getPointForAnchor(i) == null) {
            return true;
        }
        float widthForAnchor = photoFace.getWidthForAnchor(0) * 1.1f;
        for (int i2 = 0; i2 < this.entitiesView.getChildCount(); i2++) {
            View childAt = this.entitiesView.getChildAt(i2);
            if (childAt instanceof StickerView) {
                StickerView stickerView = (StickerView) childAt;
                if (stickerView.getAnchor() != i) {
                    continue;
                } else {
                    Point position = stickerView.getPosition();
                    float hypot = (float) Math.hypot(position.f1899x - pointForAnchor.f1899x, position.f1900y - pointForAnchor.f1900y);
                    if ((j == stickerView.getSticker().f1610id || this.faces.size() > 1) && hypot < widthForAnchor) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private StickerView createSticker(Object obj, TLRPC$Document tLRPC$Document, boolean z) {
        StickerPosition calculateStickerPosition = calculateStickerPosition(tLRPC$Document);
        StickerView stickerView = new StickerView(getContext(), calculateStickerPosition.position, calculateStickerPosition.angle, calculateStickerPosition.scale, baseStickerSize(), tLRPC$Document, obj) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.18
            @Override // org.telegram.p043ui.Components.Paint.Views.StickerView
            protected void didSetAnimatedSticker(RLottieDrawable rLottieDrawable) {
                LPhotoPaintView.this.didSetAnimatedSticker(rLottieDrawable);
            }
        };
        if (MessageObject.isTextColorEmoji(tLRPC$Document)) {
            stickerView.centerImage.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        }
        stickerView.centerImage.setLayerNum(12);
        if (calculateStickerPosition.position.f1899x == this.entitiesView.getMeasuredWidth() / 2.0f) {
            stickerView.setStickyX(2);
        }
        if (calculateStickerPosition.position.f1900y == this.entitiesView.getMeasuredHeight() / 2.0f) {
            stickerView.setStickyY(2);
        }
        stickerView.setDelegate(this);
        this.entitiesView.addView(stickerView);
        if (z) {
            registerRemovalUndo(stickerView);
            selectEntity(stickerView);
        }
        return stickerView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: removeEntity */
    public void lambda$registerRemovalUndo$45(EntityView entityView) {
        EntityView entityView2 = this.currentEntityView;
        if (entityView == entityView2 && entityView2 != null) {
            entityView2.deselect();
            this.currentEntityView = null;
            if (entityView instanceof TextPaintView) {
                ValueAnimator valueAnimator = this.tabsSelectionAnimator;
                if (valueAnimator != null && this.tabsNewSelectedIndex != 0) {
                    valueAnimator.cancel();
                }
                switchTab(0);
            }
        }
        this.entitiesView.removeView(entityView);
        if (entityView != null) {
            this.undoStore.unregisterUndo(entityView.getUUID());
        }
        this.weightChooserView.setValueOverride(this.weightDefaultValueOverride);
        this.weightChooserView.setShowPreview(true);
        this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
        setCurrentSwatch(this.colorSwatch, true);
    }

    private void registerRemovalUndo(final EntityView entityView) {
        if (entityView == null) {
            return;
        }
        this.undoStore.registerUndo(entityView.getUUID(), new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$registerRemovalUndo$45(entityView);
            }
        });
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public boolean onEntitySelected(EntityView entityView) {
        return selectEntity(entityView);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public boolean onEntityLongClicked(EntityView entityView) {
        showMenuForEntity(entityView);
        return true;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public void getTransformedTouch(float f, float f2, float[] fArr) {
        android.graphics.Point point = AndroidUtilities.displaySize;
        float f3 = f2 - (point.y / 2.0f);
        double d = f - (point.x / 2.0f);
        double radians = (float) Math.toRadians(-this.entitiesView.getRotation());
        double d2 = f3;
        fArr[0] = ((float) ((Math.cos(radians) * d) - (Math.sin(radians) * d2))) + (AndroidUtilities.displaySize.x / 2.0f);
        fArr[1] = ((float) ((d * Math.sin(radians)) + (d2 * Math.cos(radians)))) + (AndroidUtilities.displaySize.y / 2.0f);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public int[] getCenterLocation(EntityView entityView) {
        return getCenterLocationInWindow(entityView);
    }

    private int[] getCenterLocationInWindow(View view) {
        view.getLocationInWindow(this.pos);
        float rotation = view.getRotation();
        MediaController.CropState cropState = this.currentCropState;
        float f = cropState != null ? cropState.cropRotate + cropState.transformRotation : BitmapDescriptorFactory.HUE_RED;
        double width = view.getWidth() * view.getScaleX() * this.entitiesView.getScaleX();
        double radians = (float) Math.toRadians(rotation + f);
        double height = view.getHeight() * view.getScaleY() * this.entitiesView.getScaleY();
        float cos = (float) ((Math.cos(radians) * width) - (Math.sin(radians) * height));
        float sin = (float) ((width * Math.sin(radians)) + (height * Math.cos(radians)));
        int[] iArr = this.pos;
        iArr[0] = (int) (iArr[0] + (cos / 2.0f));
        iArr[1] = (int) (iArr[1] + (sin / 2.0f));
        return iArr;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public boolean allowInteraction(EntityView entityView) {
        return !this.editingText;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public float getCropRotation() {
        MediaController.CropState cropState = this.currentCropState;
        return cropState != null ? cropState.cropRotate + cropState.transformRotation : BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$StickerPosition */
    /* loaded from: classes6.dex */
    public static class StickerPosition {
        private float angle;
        private Point position;
        private float scale;

        StickerPosition(Point point, float f, float f2) {
            this.position = point;
            this.scale = f;
            this.angle = f2;
        }
    }

    public void onEmojiButtonClick() {
        boolean z = this.emojiViewVisible;
        if (z && (this.currentEntityView instanceof TextPaintView)) {
            this.bottomPanelIgnoreOnce = true;
        }
        if (z) {
            onEmojiViewCloseByClick();
        }
        showEmojiPopup(1 ^ (this.emojiViewVisible ? 1 : 0));
        if (z) {
            EntityView entityView = this.currentEntityView;
            if (entityView instanceof TextPaintView) {
                AndroidUtilities.showKeyboard(((TextPaintView) entityView).getEditText());
            }
        }
    }

    private void showEmojiPopup(int i) {
        this.bottomPanelIgnoreOnce = false;
        if (i == 1) {
            EmojiView emojiView = this.emojiView;
            boolean z = emojiView != null && emojiView.getVisibility() == 0;
            createEmojiView();
            this.emojiView.setVisibility(0);
            this.emojiViewVisible = true;
            EmojiView emojiView2 = this.emojiView;
            if (this.keyboardHeight <= 0) {
                if (AndroidUtilities.isTablet()) {
                    this.keyboardHeight = AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                } else {
                    this.keyboardHeight = MessagesController.getGlobalEmojiSettings().getInt("kbd_height", AndroidUtilities.m107dp(200));
                }
            }
            if (this.keyboardHeightLand <= 0) {
                if (AndroidUtilities.isTablet()) {
                    this.keyboardHeightLand = AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                } else {
                    this.keyboardHeightLand = MessagesController.getGlobalEmojiSettings().getInt("kbd_height_land3", AndroidUtilities.m107dp(200));
                }
            }
            android.graphics.Point point = AndroidUtilities.displaySize;
            int i2 = point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) emojiView2.getLayoutParams();
            layoutParams.height = i2;
            emojiView2.setLayoutParams(layoutParams);
            if (!AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
                EntityView entityView = this.currentEntityView;
                if (entityView instanceof TextPaintView) {
                    AndroidUtilities.hideKeyboard(((TextPaintView) entityView).getEditText());
                }
            }
            this.emojiPadding = i2;
            requestLayout();
            updateKeyboard();
            ChatActivityEnterViewAnimatedIconView emojiButton = this.textOptionsView.getEmojiButton();
            if (emojiButton != null) {
                emojiButton.setState(ChatActivityEnterViewAnimatedIconView.State.KEYBOARD, true);
            }
            onWindowSizeChanged();
            if (z || this.keyboardVisible) {
                return;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.emojiPadding, BitmapDescriptorFactory.HUE_RED);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    LPhotoPaintView.this.lambda$showEmojiPopup$46(valueAnimator);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.20
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    LPhotoPaintView.this.emojiView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                }
            });
            ofFloat.start();
            return;
        }
        ChatActivityEnterViewAnimatedIconView emojiButton2 = this.textOptionsView.getEmojiButton();
        if (emojiButton2 != null) {
            emojiButton2.setState(ChatActivityEnterViewAnimatedIconView.State.SMILE, true);
        }
        EmojiView emojiView3 = this.emojiView;
        if (emojiView3 != null) {
            this.emojiViewVisible = false;
            if (AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow) {
                emojiView3.setVisibility(8);
            }
        }
        if (i == 0) {
            this.emojiPadding = 0;
        }
        updateKeyboard();
        requestLayout();
        onWindowSizeChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEmojiPopup$46(ValueAnimator valueAnimator) {
        this.emojiView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void hideEmojiPopup(boolean z) {
        if (this.emojiViewVisible) {
            showEmojiPopup(0);
        }
        if (z) {
            EmojiView emojiView = this.emojiView;
            if (emojiView != null && emojiView.getVisibility() == 0 && !this.waitingForKeyboardOpen) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, this.emojiView.getMeasuredHeight());
                this.bottomPanelIgnoreOnce = false;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        LPhotoPaintView.this.lambda$hideEmojiPopup$47(valueAnimator);
                    }
                });
                this.isAnimatePopupClosing = true;
                ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.21
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                        lPhotoPaintView.isAnimatePopupClosing = false;
                        lPhotoPaintView.emojiView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        LPhotoPaintView.this.hideEmojiView();
                    }
                });
                ofFloat.setDuration(250L);
                ofFloat.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                ofFloat.start();
                return;
            }
            hideEmojiView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideEmojiPopup$47(ValueAnimator valueAnimator) {
        this.emojiView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public int getEmojiPadding(boolean z) {
        if (this.translateBottomPanelAfterResize && z) {
            bottomPanelTranslationY(BitmapDescriptorFactory.HUE_RED, 1.0f);
        }
        if (this.keyboardVisible && this.translateBottomPanelAfterResize && !z) {
            return 0;
        }
        return this.emojiPadding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideEmojiView() {
        EmojiView emojiView;
        if (this.emojiPadding > 0) {
            updateKeyboard();
        }
        if (!this.emojiViewVisible && (emojiView = this.emojiView) != null && emojiView.getVisibility() != 8) {
            this.emojiView.setVisibility(8);
        }
        this.emojiPadding = 0;
    }

    private void onWindowSizeChanged() {
        getHeight();
    }

    @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate
    public void onSizeChanged(int i, boolean z) {
        boolean z2;
        if (i > AndroidUtilities.m107dp(50) && this.keyboardVisible && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
            if (z) {
                this.keyboardHeightLand = i;
                MessagesController.getGlobalEmojiSettings().edit().putInt("kbd_height_land3", this.keyboardHeightLand).commit();
            } else {
                this.keyboardHeight = i;
                MessagesController.getGlobalEmojiSettings().edit().putInt("kbd_height", this.keyboardHeight).commit();
            }
        }
        if (this.emojiViewVisible) {
            int i2 = z ? this.keyboardHeightLand : this.keyboardHeight;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.emojiView.getLayoutParams();
            int i3 = layoutParams.width;
            int i4 = AndroidUtilities.displaySize.x;
            if (i3 != i4 || layoutParams.height != i2) {
                layoutParams.width = i4;
                layoutParams.height = i2;
                this.emojiView.setLayoutParams(layoutParams);
                this.emojiPadding = layoutParams.height;
                requestLayout();
                updateKeyboard();
                onWindowSizeChanged();
            }
        }
        if (this.lastSizeChangeValue1 == i && this.lastSizeChangeValue2 == z) {
            onWindowSizeChanged();
            return;
        }
        this.lastSizeChangeValue1 = i;
        this.lastSizeChangeValue2 = z;
        boolean z3 = this.keyboardVisible;
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            this.keyboardVisible = ((TextPaintView) entityView).getEditText().isFocused() && i > 0;
        } else {
            this.keyboardVisible = false;
        }
        if (this.keyboardVisible && this.emojiViewVisible) {
            showEmojiPopup(0);
        }
        if (this.emojiPadding != 0 && !(z2 = this.keyboardVisible) && z2 != z3 && !this.emojiViewVisible) {
            this.emojiPadding = 0;
            requestLayout();
            updateKeyboard();
        }
        if (z3 && !this.keyboardVisible && this.emojiPadding > 0 && this.translateBottomPanelAfterResize) {
            this.translateBottomPanelAfterResize = false;
            bottomPanelTranslationY(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.weightChooserView.stopPanTransition();
        }
        if (this.keyboardVisible && this.waitingForKeyboardOpen) {
            this.waitingForKeyboardOpen = false;
            AndroidUtilities.cancelRunOnUIThread(this.openKeyboardRunnable);
        }
        onWindowSizeChanged();
    }

    public void updatePlusEmojiKeyboardButton() {
        PaintTextOptionsView paintTextOptionsView = this.textOptionsView;
        if (paintTextOptionsView != null) {
            if (this.keyboardVisible) {
                paintTextOptionsView.animatePlusToIcon(C3632R.C3634drawable.input_smile);
            } else if (this.emojiViewVisible) {
                paintTextOptionsView.animatePlusToIcon(C3632R.C3634drawable.input_keyboard);
            } else {
                paintTextOptionsView.animatePlusToIcon(C3632R.C3634drawable.msg_add);
            }
        }
        AndroidUtilities.updateViewShow(this.undoAllButton, (this.keyboardVisible || this.emojiViewVisible) ? false : true, false, 1.0f, true, null);
        AndroidUtilities.updateViewShow(this.undoButton, (this.keyboardVisible || this.emojiViewVisible) ? false : true, false, 1.0f, true, null);
        AndroidUtilities.updateViewShow(this.doneTextButton, this.keyboardVisible || this.emojiViewVisible, false, 1.0f, true, null);
        AndroidUtilities.updateViewShow(this.cancelTextButton, this.keyboardVisible || this.emojiViewVisible, false, 1.0f, true, null);
    }

    protected void createEmojiView() {
        EmojiView emojiView = this.emojiView;
        if (emojiView != null && emojiView.currentAccount != UserConfig.selectedAccount) {
            removeView(emojiView);
            this.emojiView = null;
        }
        if (this.emojiView != null) {
            return;
        }
        EmojiView emojiView2 = new EmojiView(null, true, false, false, getContext(), false, null, null, true, this.resourcesProvider, false);
        this.emojiView = emojiView2;
        emojiView2.allowEmojisForNonPremium(true);
        this.emojiView.setVisibility(8);
        if (AndroidUtilities.isTablet()) {
            this.emojiView.setForseMultiwindowLayout(true);
        }
        this.emojiView.setDelegate(new C529422());
        addView(this.emojiView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$22 */
    /* loaded from: classes6.dex */
    public class C529422 implements EmojiView.EmojiViewDelegate {
        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean canSchedule() {
            return EmojiView.EmojiViewDelegate.CC.$default$canSchedule(this);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
            EmojiView.EmojiViewDelegate.CC.$default$editAnimatedSticker(this, tLRPC$Document, rLottieDrawable, z);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
            EmojiView.EmojiViewDelegate.CC.$default$editMedia(this, tLRPC$Document, z);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ long getDialogId() {
            return EmojiView.EmojiViewDelegate.CC.$default$getDialogId(this);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ float getProgressToSearchOpened() {
            float f;
            f = BitmapDescriptorFactory.HUE_RED;
            return f;
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ int getThreadId() {
            return EmojiView.EmojiViewDelegate.CC.$default$getThreadId(this);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void invalidateEnterView() {
            EmojiView.EmojiViewDelegate.CC.$default$invalidateEnterView(this);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean isExpanded() {
            return EmojiView.EmojiViewDelegate.CC.$default$isExpanded(this);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean isInScheduleMode() {
            return EmojiView.EmojiViewDelegate.CC.$default$isInScheduleMode(this);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean isSearchOpened() {
            return EmojiView.EmojiViewDelegate.CC.$default$isSearchOpened(this);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean isStoryReply() {
            return EmojiView.EmojiViewDelegate.CC.$default$isStoryReply(this);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean isUserSelf() {
            return EmojiView.EmojiViewDelegate.CC.$default$isUserSelf(this);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onAnimatedEmojiUnlockClick() {
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onEmojiSettingsClick(ArrayList arrayList) {
            EmojiView.EmojiViewDelegate.CC.$default$onEmojiSettingsClick(this, arrayList);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onGifSelected(View view, Object obj, String str, Object obj2, boolean z, int i, String str2) {
            EmojiView.EmojiViewDelegate.CC.$default$onGifSelected(this, view, obj, str, obj2, z, i, str2);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onKiklikoVideoSelected(String str, boolean z, boolean z2, int i, String str2) {
            EmojiView.EmojiViewDelegate.CC.$default$onKiklikoVideoSelected(this, str, z, z2, i, str2);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onSearchOpenClose(int i) {
            EmojiView.EmojiViewDelegate.CC.$default$onSearchOpenClose(this, i);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onShowStickerSet(TLRPC$StickerSet tLRPC$StickerSet, TLRPC$InputStickerSet tLRPC$InputStickerSet) {
            EmojiView.EmojiViewDelegate.CC.$default$onShowStickerSet(this, tLRPC$StickerSet, tLRPC$InputStickerSet);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onStickerSelected(View view, TLRPC$Document tLRPC$Document, String str, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z, int i, String str2) {
            EmojiView.EmojiViewDelegate.CC.$default$onStickerSelected(this, view, tLRPC$Document, str, obj, sendAnimationData, z, i, str2);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onStickerSetAdd(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
            EmojiView.EmojiViewDelegate.CC.$default$onStickerSetAdd(this, tLRPC$StickerSetCovered);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onStickerSetRemove(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
            EmojiView.EmojiViewDelegate.CC.$default$onStickerSetRemove(this, tLRPC$StickerSetCovered);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onStickersGroupClick(long j) {
            EmojiView.EmojiViewDelegate.CC.$default$onStickersGroupClick(this, j);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onStickersSettingsClick() {
            EmojiView.EmojiViewDelegate.CC.$default$onStickersSettingsClick(this);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onTabOpened(int i) {
            EmojiView.EmojiViewDelegate.CC.$default$onTabOpened(this, i);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void setKiklikoAvatar(String str) {
            EmojiView.EmojiViewDelegate.CC.$default$setKiklikoAvatar(this, str);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void showKiklikoReportAlert(String str, Callbacks$Callback1 callbacks$Callback1) {
            EmojiView.EmojiViewDelegate.CC.$default$showKiklikoReportAlert(this, str, callbacks$Callback1);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void showTrendingStickersAlert(TrendingStickersLayout trendingStickersLayout) {
            EmojiView.EmojiViewDelegate.CC.$default$showTrendingStickersAlert(this, trendingStickersLayout);
        }

        C529422() {
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public boolean onBackspace() {
            EditTextOutline editText = ((TextPaintView) LPhotoPaintView.this.currentEntityView).getEditText();
            if (editText == null || editText.length() == 0) {
                return false;
            }
            editText.dispatchKeyEvent(new KeyEvent(0, 67));
            return true;
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onEmojiSelected(String str) {
            TextPaintView textPaintView;
            EditTextOutline editText;
            Emoji.EmojiSpan[] emojiSpanArr;
            if ((LPhotoPaintView.this.currentEntityView instanceof TextPaintView) && (editText = (textPaintView = (TextPaintView) LPhotoPaintView.this.currentEntityView).getEditText()) != null) {
                int selectionEnd = editText.getSelectionEnd();
                if (selectionEnd < 0) {
                    selectionEnd = 0;
                }
                try {
                    CharSequence replaceEmoji = Emoji.replaceEmoji((CharSequence) str, textPaintView.getFontMetricsInt(), (int) (textPaintView.getFontSize() * 0.8f), false);
                    if ((replaceEmoji instanceof Spanned) && (emojiSpanArr = (Emoji.EmojiSpan[]) ((Spanned) replaceEmoji).getSpans(0, replaceEmoji.length(), Emoji.EmojiSpan.class)) != null) {
                        for (Emoji.EmojiSpan emojiSpan : emojiSpanArr) {
                            emojiSpan.scale = 0.85f;
                        }
                    }
                    editText.setText(editText.getText().insert(selectionEnd, replaceEmoji));
                    int length = selectionEnd + replaceEmoji.length();
                    editText.setSelection(length, length);
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onCustomEmojiSelected(long j, TLRPC$Document tLRPC$Document, String str, boolean z) {
            AnimatedEmojiSpan animatedEmojiSpan;
            EditTextOutline editText = ((TextPaintView) LPhotoPaintView.this.currentEntityView).getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (selectionEnd < 0) {
                selectionEnd = 0;
            }
            try {
                SpannableString spannableString = new SpannableString(str);
                if (tLRPC$Document != null) {
                    animatedEmojiSpan = new AnimatedEmojiSpan(tLRPC$Document, editText.getPaint().getFontMetricsInt());
                } else {
                    animatedEmojiSpan = new AnimatedEmojiSpan(j, editText.getPaint().getFontMetricsInt());
                }
                spannableString.setSpan(animatedEmojiSpan, 0, spannableString.length(), 33);
                editText.setText(editText.getText().insert(selectionEnd, spannableString));
                int length = selectionEnd + spannableString.length();
                editText.setSelection(length, length);
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onClearEmojiRecent() {
            AlertDialog.Builder builder = new AlertDialog.Builder(LPhotoPaintView.this.getContext(), LPhotoPaintView.this.resourcesProvider);
            builder.setTitle(LocaleController.getString("ClearRecentEmojiTitle", C3632R.string.ClearRecentEmojiTitle));
            builder.setMessage(LocaleController.getString("ClearRecentEmojiText", C3632R.string.ClearRecentEmojiText));
            builder.setPositiveButton(LocaleController.getString("ClearButton", C3632R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$22$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    LPhotoPaintView.C529422.this.lambda$onClearEmojiRecent$0(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
            builder.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClearEmojiRecent$0(DialogInterface dialogInterface, int i) {
            LPhotoPaintView.this.emojiView.clearRecentEmoji();
        }
    }

    public float adjustPanLayoutHelperProgress() {
        return this.panTranslationProgress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        this.destroyed = false;
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.customTypefacesLoaded);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.destroyed = true;
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.customTypefacesLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.customTypefacesLoaded || this.entitiesView == null) {
            return;
        }
        for (int i3 = 0; i3 < this.entitiesView.getChildCount(); i3++) {
            View childAt = this.entitiesView.getChildAt(i3);
            if (childAt instanceof TextPaintView) {
                ((TextPaintView) childAt).updateTypeface();
            }
        }
    }

    public ThanosEffect getThanosEffect() {
        if (ThanosEffect.supports()) {
            if (this.thanosEffect == null) {
                ThanosEffect thanosEffect = new ThanosEffect(getContext(), new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda36
                    @Override // java.lang.Runnable
                    public final void run() {
                        LPhotoPaintView.this.lambda$getThanosEffect$48();
                    }
                });
                this.thanosEffect = thanosEffect;
                addView(thanosEffect);
            }
            return this.thanosEffect;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThanosEffect$48() {
        ThanosEffect thanosEffect = this.thanosEffect;
        if (thanosEffect != null) {
            this.thanosEffect = null;
            removeView(thanosEffect);
        }
    }

    public void onSwitchSegmentedAnimation(final PhotoView photoView) {
        float f;
        if (photoView == null) {
            return;
        }
        ThanosEffect thanosEffect = getThanosEffect();
        if (thanosEffect == null) {
            photoView.onSwitchSegmentedAnimationStarted(false);
            return;
        }
        Bitmap segmentedOutBitmap = photoView.getSegmentedOutBitmap();
        if (segmentedOutBitmap == null) {
            photoView.onSwitchSegmentedAnimationStarted(false);
            return;
        }
        Matrix matrix = new Matrix();
        float width = photoView.getWidth();
        float height = photoView.getHeight();
        float rotation = photoView.getRotation();
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (rotation != BitmapDescriptorFactory.HUE_RED) {
            float width2 = segmentedOutBitmap.getWidth();
            float height2 = segmentedOutBitmap.getHeight();
            float f3 = width2 / 2.0f;
            float f4 = height2 / 2.0f;
            float sqrt = (float) Math.sqrt((f3 * f3) + (f4 * f4));
            float f5 = sqrt * 2.0f;
            int i = (int) f5;
            Bitmap createBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            canvas.save();
            canvas.rotate(photoView.getRotation(), sqrt, sqrt);
            canvas.drawBitmap(segmentedOutBitmap, (f5 - width2) / 2.0f, (f5 - height2) / 2.0f, (Paint) null);
            segmentedOutBitmap.recycle();
            float f6 = width / 2.0f;
            float f7 = height / 2.0f;
            float sqrt2 = ((float) Math.sqrt((f6 * f6) + (f7 * f7))) * 2.0f;
            f2 = (-(sqrt2 - width)) / 2.0f;
            height = sqrt2;
            f = (-(sqrt2 - height)) / 2.0f;
            width = height;
            segmentedOutBitmap = createBitmap;
        } else {
            f = 0.0f;
        }
        matrix.postScale(width, height);
        matrix.postScale(photoView.getScaleX(), photoView.getScaleY(), width / 2.0f, height / 2.0f);
        matrix.postTranslate(photoView.getX() + f2, photoView.getY() + f);
        thanosEffect.animate(matrix, segmentedOutBitmap, new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                PhotoView.this.onSwitchSegmentedAnimationStarted(true);
            }
        }, new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.lambda$onSwitchSegmentedAnimation$50();
            }
        });
    }
}
