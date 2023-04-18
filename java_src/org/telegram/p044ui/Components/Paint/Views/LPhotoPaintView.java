package org.telegram.p044ui.Components.Paint.Views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
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
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
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
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Bitmaps;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p044ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p044ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.C3306ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.BubbleActivity;
import org.telegram.p044ui.Components.AnimatedEmojiDrawable;
import org.telegram.p044ui.Components.AnimatedEmojiSpan;
import org.telegram.p044ui.Components.ChatActivityEnterViewAnimatedIconView;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.EmojiView;
import org.telegram.p044ui.Components.IPhotoPaintView;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.Paint.Brush;
import org.telegram.p044ui.Components.Paint.ColorPickerBottomSheet;
import org.telegram.p044ui.Components.Paint.PaintTypeface;
import org.telegram.p044ui.Components.Paint.Painting;
import org.telegram.p044ui.Components.Paint.PersistColorPalette;
import org.telegram.p044ui.Components.Paint.PhotoFace;
import org.telegram.p044ui.Components.Paint.RenderView;
import org.telegram.p044ui.Components.Paint.Swatch;
import org.telegram.p044ui.Components.Paint.UndoStore;
import org.telegram.p044ui.Components.Paint.Views.EntitiesContainerView;
import org.telegram.p044ui.Components.Paint.Views.EntityView;
import org.telegram.p044ui.Components.Paint.Views.LPhotoPaintView;
import org.telegram.p044ui.Components.Paint.Views.PaintTextOptionsView;
import org.telegram.p044ui.Components.Paint.Views.PaintToolsView;
import org.telegram.p044ui.Components.Paint.Views.PaintWeightChooserView;
import org.telegram.p044ui.Components.Point;
import org.telegram.p044ui.Components.RLottieDrawable;
import org.telegram.p044ui.Components.RecyclerListView;
import org.telegram.p044ui.Components.Size;
import org.telegram.p044ui.Components.SizeNotifierFrameLayoutPhoto;
import org.telegram.p044ui.Components.StickerMasksAlert;
import org.telegram.p044ui.Components.TrendingStickersLayout;
import org.telegram.p044ui.PhotoViewer;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$InputDocument;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$StickerSet;
import org.telegram.tgnet.TLRPC$StickerSetCovered;
import org.telegram.tgnet.TLRPC$TL_documentAttributeSticker;
import org.telegram.tgnet.TLRPC$TL_inputDocument;
import org.telegram.tgnet.TLRPC$TL_maskCoords;
/* renamed from: org.telegram.ui.Components.Paint.Views.LPhotoPaintView */
/* loaded from: classes6.dex */
public class LPhotoPaintView extends SizeNotifierFrameLayoutPhoto implements IPhotoPaintView, PaintToolsView.Delegate, EntityView.EntityViewDelegate, PaintTextOptionsView.Delegate, SizeNotifierFrameLayoutPhoto.SizeNotifierFrameLayoutPhotoDelegate {
    AdjustPanLayoutHelper adjustPanLayoutHelper;
    private float baseScale;
    private Bitmap bitmapToEdit;
    private FrameLayout bottomLayout;
    private boolean bottomPanelIgnoreOnce;
    private PaintCancelView cancelButton;
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
    private PaintDoneView doneButton;
    private TextView doneTextButton;
    private TextView drawTab;
    private boolean editingText;
    private int emojiPadding;
    private EmojiView emojiView;
    private boolean emojiViewVisible;
    private boolean emojiViewWasVisible;
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
    private boolean isAnimatePopupClosing;
    private boolean isColorListShown;
    private boolean isTypefaceMenuShown;
    private int keyboardHeight;
    private int keyboardHeightLand;
    private boolean keyboardVisible;
    private int lastSizeChangeValue1;
    private boolean lastSizeChangeValue2;
    private BigInteger lcm;
    private float offsetTranslationY;
    private Runnable onDoneButtonClickedListener;
    private Runnable openKeyboardRunnable;
    private int originalBitmapRotation;
    private FrameLayout overlayLayout;
    private PaintToolsView paintToolsView;
    private Size paintingSize;
    private float panTranslationProgress;
    private float panTranslationY;
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
    private LinearLayout tabsLayout;
    private int tabsNewSelectedIndex;
    private int tabsSelectedIndex;
    private ValueAnimator tabsSelectionAnimator;
    private float tabsSelectionProgress;
    private float[] temp;
    private PaintTextOptionsView textOptionsView;
    private TextView textTab;
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
    private PaintWeightChooserView weightChooserView;
    private PaintWeightChooserView.ValueOverride weightDefaultValueOverride;
    private LinearLayout zoomOutButton;
    private ImageView zoomOutImage;
    private TextView zoomOutText;
    private boolean zoomOutVisible;

    protected void didSetAnimatedSticker(RLottieDrawable rLottieDrawable) {
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public /* bridge */ /* synthetic */ View getView() {
        return IPhotoPaintView.CC.$default$getView(this);
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public void onBackPressed() {
    }

    protected void onOpenCloseStickersAlert(boolean z) {
    }

    protected void onTextAdd() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LPhotoPaintView(final Context context, final int i, Bitmap bitmap, final Bitmap bitmap2, int i2, ArrayList<VideoEditedInfo.MediaEntity> arrayList, MediaController.CropState cropState, final Runnable runnable, final Theme.ResourcesProvider resourcesProvider) {
        super(context, true);
        int i3;
        StickerView stickerView;
        int i4 = 1;
        this.tabsSelectedIndex = 0;
        this.tabsNewSelectedIndex = -1;
        this.weightDefaultValueOverride = new PaintWeightChooserView.ValueOverride() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.1
            @Override // org.telegram.p044ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
            public float get() {
                Brush currentBrush = LPhotoPaintView.this.renderView.getCurrentBrush();
                return currentBrush == null ? PersistColorPalette.getInstance(LPhotoPaintView.this.currentAccount).getCurrentWeight() : PersistColorPalette.getInstance(LPhotoPaintView.this.currentAccount).getWeight(String.valueOf(Brush.BRUSHES_LIST.indexOf(currentBrush)), currentBrush.getDefaultWeight());
            }

            @Override // org.telegram.p044ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
            public void set(float f) {
                PersistColorPalette.getInstance(LPhotoPaintView.this.currentAccount).setWeight(String.valueOf(Brush.BRUSHES_LIST.indexOf(LPhotoPaintView.this.renderView.getCurrentBrush())), f);
                LPhotoPaintView.this.colorSwatch.brushWeight = f;
                LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                lPhotoPaintView.setCurrentSwatch(lPhotoPaintView.colorSwatch, true);
            }
        };
        this.typefaceMenuOutlinePaint = new Paint(1);
        this.typefaceMenuBackgroundPaint = new Paint(1);
        this.colorPickerRainbowPaint = new Paint(1);
        this.colorSwatchPaint = new Paint(1);
        this.colorSwatchOutlinePaint = new Paint(1);
        this.colorSwatch = new Swatch(-1, 1.0f, 0.016773745f);
        this.toolsPaint = new Paint(1);
        this.zoomOutVisible = false;
        int i5 = 2;
        this.temp = new float[2];
        this.pos = new int[2];
        this.openKeyboardRunnable = new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.17
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
        this.adjustPanLayoutHelper = new AdjustPanLayoutHelper(this, false) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.21
            @Override // org.telegram.p044ui.ActionBar.AdjustPanLayoutHelper
            protected void onTransitionStart(boolean z, int i6, int i7) {
                super.onTransitionStart(z, i7);
                LPhotoPaintView.this.weightChooserView.startPanTransition(i6, i7);
                if (LPhotoPaintView.this.isColorListShown) {
                    LPhotoPaintView.this.showColorList(false);
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p044ui.ActionBar.AdjustPanLayoutHelper
            public void onTransitionEnd() {
                LPhotoPaintView.this.panTranslationY = BitmapDescriptorFactory.HUE_RED;
                LPhotoPaintView.this.emojiViewWasVisible = false;
                LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                lPhotoPaintView.setTransform(lPhotoPaintView.scale, LPhotoPaintView.this.inputTransformX, LPhotoPaintView.this.inputTransformY, LPhotoPaintView.this.imageWidth, LPhotoPaintView.this.imageHeight);
                super.onTransitionEnd();
                LPhotoPaintView.this.weightChooserView.stopPanTransition();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p044ui.ActionBar.AdjustPanLayoutHelper
            public void onPanTranslationUpdate(float f, float f2, boolean z) {
                LPhotoPaintView.this.topLayout.setTranslationY(f);
                LPhotoPaintView.this.panTranslationProgress = 1.0f - f2;
                LPhotoPaintView.this.panTranslationY = f / 2.0f;
                LPhotoPaintView.this.bottomLayout.setTranslationY(AndroidUtilities.m50dp(40) * f2);
                LPhotoPaintView.this.weightChooserView.updatePanTransition(f, f2);
                LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                lPhotoPaintView.setTransform(lPhotoPaintView.scale, LPhotoPaintView.this.inputTransformX, LPhotoPaintView.this.inputTransformY, LPhotoPaintView.this.imageWidth, LPhotoPaintView.this.imageHeight);
                super.onPanTranslationUpdate(f, f2, z);
                ((View) LPhotoPaintView.this.getParent()).invalidate();
            }

            @Override // org.telegram.p044ui.ActionBar.AdjustPanLayoutHelper
            protected boolean heightAnimationEnabled() {
                return (LPhotoPaintView.this.destroyed || LPhotoPaintView.this.emojiViewVisible) ? false : true;
            }
        };
        setDelegate(this);
        this.currentAccount = i;
        this.resourcesProvider = new Theme.ResourcesProvider() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda39
            @Override // org.telegram.p044ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ void applyServiceShaderMatrix(int i6, int i7, float f, float f2) {
                Theme.applyServiceShaderMatrix(i6, i7, f, f2);
            }

            @Override // org.telegram.p044ui.ActionBar.Theme.ResourcesProvider
            public final Integer getColor(String str) {
                Integer lambda$new$0;
                lambda$new$0 = LPhotoPaintView.lambda$new$0(Theme.ResourcesProvider.this, str);
                return lambda$new$0;
            }

            @Override // org.telegram.p044ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ int getColorOrDefault(String str) {
                return Theme.ResourcesProvider.CC.$default$getColorOrDefault(this, str);
            }

            @Override // org.telegram.p044ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ Integer getCurrentColor(String str) {
                return getColor(str);
            }

            @Override // org.telegram.p044ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ Drawable getDrawable(String str) {
                return Theme.ResourcesProvider.CC.$default$getDrawable(this, str);
            }

            @Override // org.telegram.p044ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ Paint getPaint(String str) {
                return Theme.ResourcesProvider.CC.$default$getPaint(this, str);
            }

            @Override // org.telegram.p044ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ boolean hasGradientService() {
                return Theme.ResourcesProvider.CC.$default$hasGradientService(this);
            }

            @Override // org.telegram.p044ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ void setAnimatedColor(String str, int i6) {
                Theme.ResourcesProvider.CC.$default$setAnimatedColor(this, str, i6);
            }
        };
        this.currentCropState = cropState;
        this.inBubbleMode = context instanceof BubbleActivity;
        PersistColorPalette persistColorPalette = PersistColorPalette.getInstance(i);
        this.colorSwatch.color = persistColorPalette.getColor(0);
        this.colorSwatch.brushWeight = persistColorPalette.getCurrentWeight();
        this.queue = new DispatchQueue("Paint");
        this.bitmapToEdit = bitmap;
        this.facesBitmap = bitmap2;
        this.originalBitmapRotation = i2;
        UndoStore undoStore = new UndoStore();
        this.undoStore = undoStore;
        undoStore.setDelegate(new UndoStore.UndoStoreDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda40
            @Override // org.telegram.p044ui.Components.Paint.UndoStore.UndoStoreDelegate
            public final void historyChanged() {
                LPhotoPaintView.this.lambda$new$1();
            }
        });
        RenderView renderView = new RenderView(context, new Painting(getPaintingSize(), bitmap2, i2), this.bitmapToEdit) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.2
            @Override // org.telegram.p044ui.Components.Paint.RenderView
            public void selectBrush(Brush brush) {
                int indexOf = Brush.BRUSHES_LIST.indexOf(brush) + 1;
                if (indexOf > 1 && bitmap2 == null) {
                    indexOf--;
                }
                LPhotoPaintView.this.paintToolsView.select(indexOf);
                LPhotoPaintView.this.onBrushSelected(brush);
            }
        };
        this.renderView = renderView;
        renderView.setDelegate(new RenderView.RenderViewDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.3
            @Override // org.telegram.p044ui.Components.Paint.RenderView.RenderViewDelegate
            public void onFirstDraw() {
                runnable.run();
            }

            @Override // org.telegram.p044ui.Components.Paint.RenderView.RenderViewDelegate
            public void onBeganDrawing() {
                if (LPhotoPaintView.this.currentEntityView != null) {
                    LPhotoPaintView.this.selectEntity(null);
                }
                LPhotoPaintView.this.weightChooserView.setViewHidden(true);
            }

            @Override // org.telegram.p044ui.Components.Paint.RenderView.RenderViewDelegate
            public void onFinishedDrawing(boolean z) {
                LPhotoPaintView.this.undoStore.getDelegate().historyChanged();
                LPhotoPaintView.this.weightChooserView.setViewHidden(false);
            }

            @Override // org.telegram.p044ui.Components.Paint.RenderView.RenderViewDelegate
            public boolean shouldDraw() {
                boolean z = LPhotoPaintView.this.currentEntityView == null;
                if (!z) {
                    LPhotoPaintView.this.selectEntity(null);
                }
                return z;
            }

            @Override // org.telegram.p044ui.Components.Paint.RenderView.RenderViewDelegate
            public void invalidateInputView() {
                if (LPhotoPaintView.this.renderInputView != null) {
                    LPhotoPaintView.this.renderInputView.invalidate();
                }
            }

            @Override // org.telegram.p044ui.Components.Paint.RenderView.RenderViewDelegate
            public void resetBrush() {
                if (LPhotoPaintView.this.ignoreToolChangeAnimationOnce) {
                    LPhotoPaintView.this.ignoreToolChangeAnimationOnce = false;
                    return;
                }
                LPhotoPaintView.this.paintToolsView.select(1);
                LPhotoPaintView.this.onBrushSelected(Brush.BRUSHES_LIST.get(0));
            }
        });
        this.renderView.setUndoStore(this.undoStore);
        this.renderView.setQueue(this.queue);
        this.renderView.setVisibility(4);
        addView(this.renderView, LayoutHelper.createFrame(-1, -1, 51));
        View view = new View(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.4
            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                if (LPhotoPaintView.this.renderView != null) {
                    LPhotoPaintView.this.renderView.onDrawForInput(canvas);
                }
            }
        };
        this.renderInputView = view;
        view.setVisibility(4);
        addView(this.renderInputView, LayoutHelper.createFrame(-1, -1, 51));
        EntitiesContainerView entitiesContainerView = new EntitiesContainerView(context, new EntitiesContainerView.EntitiesContainerViewDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.5
            @Override // org.telegram.p044ui.Components.Paint.Views.EntitiesContainerView.EntitiesContainerViewDelegate
            public boolean shouldReceiveTouches() {
                return true;
            }

            @Override // org.telegram.p044ui.Components.Paint.Views.EntitiesContainerView.EntitiesContainerViewDelegate
            public EntityView onSelectedEntityRequest() {
                return LPhotoPaintView.this.currentEntityView;
            }

            @Override // org.telegram.p044ui.Components.Paint.Views.EntitiesContainerView.EntitiesContainerViewDelegate
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
                this.linePaint.setStrokeWidth(AndroidUtilities.m50dp(2));
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
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Components.Paint.Views.LPhotoPaintView.C47566.onDraw(android.graphics.Canvas):void");
            }
        };
        this.entitiesView = entitiesContainerView;
        addView(entitiesContainerView);
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                VideoEditedInfo.MediaEntity mediaEntity = arrayList.get(i6);
                int i7 = mediaEntity.type;
                if (i7 == 0) {
                    StickerView createSticker = createSticker(mediaEntity.parentObject, mediaEntity.document, false);
                    if ((mediaEntity.subType & i5) != 0) {
                        createSticker.mirror();
                    }
                    ViewGroup.LayoutParams layoutParams = createSticker.getLayoutParams();
                    layoutParams.width = mediaEntity.viewWidth;
                    layoutParams.height = mediaEntity.viewHeight;
                    i3 = i6;
                    stickerView = createSticker;
                } else if (i7 == i4) {
                    TextPaintView createText = createText(false);
                    byte b = mediaEntity.subType;
                    createText.setType((b & 1) != 0 ? 0 : (b & 4) != 0 ? i5 : i4);
                    createText.setTypeface(mediaEntity.textTypeface);
                    createText.setBaseFontSize(mediaEntity.fontSize);
                    SpannableString spannableString = new SpannableString(mediaEntity.text);
                    Iterator<VideoEditedInfo.EmojiEntity> it = mediaEntity.entities.iterator();
                    while (it.hasNext()) {
                        VideoEditedInfo.EmojiEntity next = it.next();
                        AnimatedEmojiSpan animatedEmojiSpan = new AnimatedEmojiSpan(next.document_id, createText.getFontMetricsInt());
                        int i8 = next.offset;
                        spannableString.setSpan(animatedEmojiSpan, i8, next.length + i8, 33);
                        i6 = i6;
                    }
                    i3 = i6;
                    createText.setText(Emoji.replaceEmoji(spannableString, createText.getFontMetricsInt(), (int) (createText.getFontSize() * 0.8f), false));
                    setTextAlignment(createText, mediaEntity.textAlign);
                    Swatch swatch = createText.getSwatch();
                    swatch.color = mediaEntity.color;
                    createText.setSwatch(swatch);
                    stickerView = createText;
                } else {
                    i3 = i6;
                    i6 = i3 + 1;
                    i4 = 1;
                    i5 = 2;
                }
                stickerView.setX((mediaEntity.f1404x * this.paintingSize.width) - ((mediaEntity.viewWidth * (1.0f - mediaEntity.scale)) / 2.0f));
                stickerView.setY((mediaEntity.f1405y * this.paintingSize.height) - ((mediaEntity.viewHeight * (1.0f - mediaEntity.scale)) / 2.0f));
                stickerView.setPosition(new Point(stickerView.getX() + (mediaEntity.viewWidth / 2.0f), stickerView.getY() + (mediaEntity.viewHeight / 2.0f)));
                stickerView.setScaleX(mediaEntity.scale);
                stickerView.setScaleY(mediaEntity.scale);
                stickerView.setRotation((float) (((-mediaEntity.rotation) / 3.141592653589793d) * 180.0d));
                i6 = i3 + 1;
                i4 = 1;
                i5 = 2;
            }
        }
        this.entitiesView.setVisibility(4);
        FrameLayout frameLayout = new FrameLayout(this, context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.7
            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return false;
            }
        };
        this.selectionContainerView = frameLayout;
        addView(frameLayout);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.topLayout = frameLayout2;
        frameLayout2.setPadding(AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(12));
        this.topLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-16777216, 0}));
        addView(this.topLayout, LayoutHelper.createFrame(-1, -2, 48));
        ImageView imageView = new ImageView(context);
        this.undoButton = imageView;
        imageView.setImageResource(C3242R.C3244drawable.photo_undo2);
        this.undoButton.setPadding(AndroidUtilities.m50dp(3), AndroidUtilities.m50dp(3), AndroidUtilities.m50dp(3), AndroidUtilities.m50dp(3));
        this.undoButton.setBackground(Theme.createSelectorDrawable(1090519039));
        this.undoButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.this.lambda$new$2(view2);
            }
        });
        this.undoButton.setAlpha(0.6f);
        this.undoButton.setClickable(false);
        this.topLayout.addView(this.undoButton, LayoutHelper.createFrame(32, 32, 51, 12, 0, 0, 0));
        LinearLayout linearLayout = new LinearLayout(context);
        this.zoomOutButton = linearLayout;
        linearLayout.setOrientation(0);
        this.zoomOutButton.setBackground(Theme.createSelectorDrawable(822083583, 7));
        this.zoomOutButton.setPadding(AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8), 0);
        TextView textView = new TextView(context);
        this.zoomOutText = textView;
        textView.setTextColor(-1);
        this.zoomOutText.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.zoomOutText.setTextSize(1, 16.0f);
        this.zoomOutText.setText(LocaleController.getString(C3242R.string.PhotoEditorZoomOut));
        ImageView imageView2 = new ImageView(context);
        this.zoomOutImage = imageView2;
        imageView2.setImageResource(C3242R.C3244drawable.photo_zoomout);
        this.zoomOutButton.addView(this.zoomOutImage, LayoutHelper.createLinear(24, 24, 16, 0, 0, 8, 0));
        this.zoomOutButton.addView(this.zoomOutText, LayoutHelper.createLinear(-2, -2, 16));
        this.zoomOutButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.zoomOutButton.setOnClickListener(LPhotoPaintView$$ExternalSyntheticLambda18.INSTANCE);
        this.topLayout.addView(this.zoomOutButton, LayoutHelper.createFrame(-2, 32, 17));
        TextView textView2 = new TextView(context);
        this.undoAllButton = textView2;
        textView2.setBackground(Theme.createSelectorDrawable(822083583, 7));
        this.undoAllButton.setPadding(AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8), 0);
        this.undoAllButton.setText(LocaleController.getString(C3242R.string.PhotoEditorClearAll));
        this.undoAllButton.setGravity(16);
        this.undoAllButton.setTextColor(-1);
        this.undoAllButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.undoAllButton.setTextSize(1, 16.0f);
        this.undoAllButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.this.lambda$new$4(view2);
            }
        });
        this.undoAllButton.setAlpha(0.6f);
        this.topLayout.addView(this.undoAllButton, LayoutHelper.createFrame(-2, 32, 5, 0, 0, 4, 0));
        TextView textView3 = new TextView(context);
        this.cancelTextButton = textView3;
        textView3.setBackground(Theme.createSelectorDrawable(822083583, 7));
        this.cancelTextButton.setText(LocaleController.getString(C3242R.string.Clear));
        this.cancelTextButton.setPadding(AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8), 0);
        this.cancelTextButton.setGravity(16);
        this.cancelTextButton.setTextColor(-1);
        this.cancelTextButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.cancelTextButton.setTextSize(1, 16.0f);
        this.cancelTextButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.this.lambda$new$5(view2);
            }
        });
        this.cancelTextButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.cancelTextButton.setVisibility(8);
        this.topLayout.addView(this.cancelTextButton, LayoutHelper.createFrame(-2, 32, 51, 4, 0, 0, 0));
        TextView textView4 = new TextView(context);
        this.doneTextButton = textView4;
        textView4.setBackground(Theme.createSelectorDrawable(822083583, 7));
        this.doneTextButton.setText(LocaleController.getString(C3242R.string.Done));
        this.doneTextButton.setPadding(AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8), 0);
        this.doneTextButton.setGravity(16);
        this.doneTextButton.setTextColor(-1);
        this.doneTextButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.doneTextButton.setTextSize(1, 16.0f);
        this.doneTextButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.this.lambda$new$6(view2);
            }
        });
        this.doneTextButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.doneTextButton.setVisibility(8);
        this.topLayout.addView(this.doneTextButton, LayoutHelper.createFrame(-2, 32, 5, 0, 0, 4, 0));
        FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.8
            private float lastRainbowX;
            private float lastRainbowY;

            {
                new Path();
                setWillNotDraw(false);
                LPhotoPaintView.this.colorPickerRainbowPaint.setStyle(Paint.Style.STROKE);
                LPhotoPaintView.this.colorPickerRainbowPaint.setStrokeWidth(AndroidUtilities.m50dp(2));
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
                if (LPhotoPaintView.this.overlayLayout != null) {
                    LPhotoPaintView.this.overlayLayout.invalidate();
                }
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                ViewGroup barView = LPhotoPaintView.this.getBarView();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.lerp(barView.getLeft(), LPhotoPaintView.this.colorsListView.getLeft(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getTop(), LPhotoPaintView.this.colorsListView.getTop(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getRight(), LPhotoPaintView.this.colorsListView.getRight(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getBottom(), LPhotoPaintView.this.colorsListView.getBottom(), LPhotoPaintView.this.toolsTransformProgress));
                float lerp = AndroidUtilities.lerp(AndroidUtilities.m50dp(32), AndroidUtilities.m50dp(24), LPhotoPaintView.this.toolsTransformProgress);
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
                    if (LPhotoPaintView.this.tabsNewSelectedIndex != -1) {
                        LPhotoPaintView lPhotoPaintView = LPhotoPaintView.this;
                        ViewGroup viewGroup = (ViewGroup) lPhotoPaintView.getBarView(lPhotoPaintView.tabsNewSelectedIndex);
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
                    }
                    float f = y;
                    float f2 = x;
                    checkRainbow(f2, f);
                    float min = (Math.min(width, height) / 2.0f) - AndroidUtilities.m51dp(0.5f);
                    if (LPhotoPaintView.this.colorsListView != null && LPhotoPaintView.this.colorsListView.getChildCount() > 0) {
                        View childAt4 = LPhotoPaintView.this.colorsListView.getChildAt(0);
                        min = AndroidUtilities.lerp(min, (Math.min((childAt4.getWidth() - childAt4.getPaddingLeft()) - childAt4.getPaddingRight(), (childAt4.getHeight() - childAt4.getPaddingTop()) - childAt4.getPaddingBottom()) / 2.0f) - AndroidUtilities.m51dp(2.0f), LPhotoPaintView.this.toolsTransformProgress);
                    }
                    float f3 = min;
                    rectF.set(f2 - f3, f - f3, f2 + f3, f + f3);
                    canvas.drawArc(rectF, BitmapDescriptorFactory.HUE_RED, 360.0f, false, LPhotoPaintView.this.colorPickerRainbowPaint);
                    LPhotoPaintView.this.colorSwatchPaint.setColor(LPhotoPaintView.this.colorSwatch.color);
                    LPhotoPaintView.this.colorSwatchPaint.setAlpha((int) (LPhotoPaintView.this.colorSwatchPaint.getAlpha() * view2.getAlpha()));
                    LPhotoPaintView.this.colorSwatchOutlinePaint.setColor(LPhotoPaintView.this.colorSwatch.color);
                    LPhotoPaintView.this.colorSwatchOutlinePaint.setAlpha((int) (view2.getAlpha() * 255.0f));
                    PaintColorsListView.drawColorCircle(canvas, f2, f, f3 - AndroidUtilities.m51dp(3.0f), LPhotoPaintView.this.colorSwatchPaint.getColor());
                    LPhotoPaintView.this.colorSwatchOutlinePaint.setAlpha((int) (LPhotoPaintView.this.colorSwatchOutlinePaint.getAlpha() * LPhotoPaintView.this.toolsTransformProgress * view2.getAlpha()));
                    canvas.drawCircle(f2, f, f3 - ((AndroidUtilities.m51dp(3.0f) + LPhotoPaintView.this.colorSwatchOutlinePaint.getStrokeWidth()) * (1.0f - LPhotoPaintView.this.toolsTransformProgress)), LPhotoPaintView.this.colorSwatchOutlinePaint);
                }
                canvas.restore();
            }
        };
        this.bottomLayout = frameLayout3;
        frameLayout3.setPadding(AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), 0);
        this.bottomLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, Integer.MIN_VALUE}));
        addView(this.bottomLayout, LayoutHelper.createFrame(-1, 104, 80));
        PaintToolsView paintToolsView = new PaintToolsView(context, bitmap2 != null);
        this.paintToolsView = paintToolsView;
        paintToolsView.setPadding(AndroidUtilities.m50dp(16), 0, AndroidUtilities.m50dp(16), 0);
        this.paintToolsView.setDelegate(this);
        this.paintToolsView.setSelectedIndex(1);
        this.bottomLayout.addView(this.paintToolsView, LayoutHelper.createFrame(-1, 48));
        PaintTextOptionsView paintTextOptionsView = new PaintTextOptionsView(context);
        this.textOptionsView = paintTextOptionsView;
        paintTextOptionsView.setPadding(AndroidUtilities.m50dp(16), 0, AndroidUtilities.m50dp(16), 0);
        this.textOptionsView.setVisibility(8);
        this.textOptionsView.setDelegate(this);
        this.textOptionsView.lambda$setTypeface$5(PersistColorPalette.getInstance(i).getCurrentTypeface());
        this.textOptionsView.setAlignment(PersistColorPalette.getInstance(i).getCurrentAlignment());
        this.bottomLayout.addView(this.textOptionsView, LayoutHelper.createFrame(-1, 48));
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
                float m50dp = AndroidUtilities.m50dp(AndroidUtilities.lerp(32, 16, LPhotoPaintView.this.typefaceMenuTransformProgress));
                int alpha = LPhotoPaintView.this.typefaceMenuBackgroundPaint.getAlpha();
                LPhotoPaintView.this.typefaceMenuBackgroundPaint.setAlpha((int) (alpha * LPhotoPaintView.this.typefaceMenuTransformProgress));
                canvas.drawRoundRect(rectF, m50dp, m50dp, LPhotoPaintView.this.typefaceMenuBackgroundPaint);
                LPhotoPaintView.this.typefaceMenuBackgroundPaint.setAlpha(alpha);
                canvas.drawRoundRect(rectF, m50dp, m50dp, LPhotoPaintView.this.typefaceMenuOutlinePaint);
            }
        };
        this.overlayLayout = frameLayout4;
        addView(frameLayout4, LayoutHelper.createFrame(-1, -1));
        PaintTypefaceListView paintTypefaceListView = new PaintTypefaceListView(context);
        this.typefaceListView = paintTypefaceListView;
        paintTypefaceListView.setVisibility(8);
        this.typefaceListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda41
            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i9) {
                LPhotoPaintView.this.lambda$new$7(view2, i9);
            }
        });
        this.textOptionsView.setTypefaceListView(this.typefaceListView);
        this.overlayLayout.addView(this.typefaceListView, LayoutHelper.createFrame(-2, -2, 85, 0, 0, 8, 8));
        this.typefaceMenuOutlinePaint.setStyle(Paint.Style.STROKE);
        this.typefaceMenuOutlinePaint.setColor(1728053247);
        this.typefaceMenuOutlinePaint.setStrokeWidth(Math.max(2, AndroidUtilities.m50dp(1)));
        this.typefaceMenuBackgroundPaint.setColor(getThemedColor("actionBarDefaultSubmenuBackground"));
        PaintColorsListView paintColorsListView = new PaintColorsListView(context) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.10
            private Path path = new Path();

            @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
            public void draw(Canvas canvas) {
                ViewGroup barView = LPhotoPaintView.this.getBarView();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.lerp(barView.getLeft() - getLeft(), 0, LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getTop() - getTop(), 0, LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getRight() - getLeft(), getWidth(), LPhotoPaintView.this.toolsTransformProgress), AndroidUtilities.lerp(barView.getBottom() - getTop(), getHeight(), LPhotoPaintView.this.toolsTransformProgress));
                this.path.rewind();
                this.path.addRoundRect(rectF, AndroidUtilities.m50dp(32), AndroidUtilities.m50dp(32), Path.Direction.CW);
                canvas.save();
                canvas.clipPath(this.path);
                super.draw(canvas);
                canvas.restore();
            }
        };
        this.colorsListView = paintColorsListView;
        paintColorsListView.setVisibility(8);
        this.colorsListView.setColorPalette(PersistColorPalette.getInstance(i));
        this.colorsListView.setColorListener(new Consumer() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda22
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                LPhotoPaintView.this.lambda$new$8((Integer) obj);
            }
        });
        this.bottomLayout.addView(this.colorsListView, LayoutHelper.createFrame(-1, 84, 48, 56, 0, 56, 6));
        setupTabsLayout(context);
        PaintCancelView paintCancelView = new PaintCancelView(context);
        this.cancelButton = paintCancelView;
        paintCancelView.setPadding(AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8));
        this.cancelButton.setBackground(Theme.createSelectorDrawable(1090519039));
        this.bottomLayout.addView(this.cancelButton, LayoutHelper.createFrame(32, 32, 83, 12, 0, 0, 4));
        PaintDoneView paintDoneView = new PaintDoneView(context);
        this.doneButton = paintDoneView;
        paintDoneView.setPadding(AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8));
        this.doneButton.setBackground(Theme.createSelectorDrawable(1090519039));
        this.doneButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LPhotoPaintView.this.lambda$new$10(context, bitmap2, i, view2);
            }
        });
        this.bottomLayout.addView(this.doneButton, LayoutHelper.createFrame(32, 32, 85, 0, 0, 12, 4));
        PaintWeightChooserView paintWeightChooserView = new PaintWeightChooserView(context);
        this.weightChooserView = paintWeightChooserView;
        paintWeightChooserView.setColorSwatch(this.colorSwatch);
        this.weightChooserView.setRenderView(this.renderView);
        this.weightChooserView.setValueOverride(this.weightDefaultValueOverride);
        this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
        this.weightChooserView.setOnUpdate(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$new$11(i);
            }
        });
        addView(this.weightChooserView, LayoutHelper.createFrame(-1, -1));
        FrameLayout frameLayout5 = new FrameLayout(context);
        this.pipetteContainerLayout = frameLayout5;
        addView(frameLayout5, LayoutHelper.createFrame(-1, -1));
        this.colorSwatchOutlinePaint.setStyle(Paint.Style.STROKE);
        this.colorSwatchOutlinePaint.setStrokeWidth(AndroidUtilities.m50dp(2));
        setCurrentSwatch(this.colorSwatch, true);
        onBrushSelected(Brush.BRUSHES_LIST.get(0));
        updateColors();
        if (Build.VERSION.SDK_INT >= 29) {
            setSystemGestureExclusionRects(Arrays.asList(new Rect(0, (int) (AndroidUtilities.displaySize.y * 0.35f), AndroidUtilities.m50dp(100), (int) (AndroidUtilities.displaySize.y * 0.65d))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$new$0(Theme.ResourcesProvider resourcesProvider, String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1992864503:
                if (str.equals("actionBarDefaultSubmenuBackground")) {
                    c = 0;
                    break;
                }
                break;
            case -1963170562:
                if (str.equals("profile_tabSelector")) {
                    c = 1;
                    break;
                }
                break;
            case -1850167367:
                if (str.equals("chat_emojiPanelShadowLine")) {
                    c = 2;
                    break;
                }
                break;
            case -1849805674:
                if (str.equals("dialogBackground")) {
                    c = 3;
                    break;
                }
                break;
            case -1285599213:
                if (str.equals("chat_emojiBottomPanelIcon")) {
                    c = 4;
                    break;
                }
                break;
            case -249481380:
                if (str.equals("listSelectorSDK21")) {
                    c = 5;
                    break;
                }
                break;
            case -224769986:
                if (str.equals("featuredStickers_addedIcon")) {
                    c = 6;
                    break;
                }
                break;
            case 339397761:
                if (str.equals("windowBackgroundWhiteBlackText")) {
                    c = 7;
                    break;
                }
                break;
            case 421601145:
                if (str.equals("chat_emojiPanelIconSelected")) {
                    c = '\b';
                    break;
                }
                break;
            case 435303214:
                if (str.equals("actionBarDefaultSubmenuItem")) {
                    c = '\t';
                    break;
                }
                break;
            case 634019162:
                if (str.equals("chat_emojiPanelBackspace")) {
                    c = '\n';
                    break;
                }
                break;
            case 712252110:
                if (str.equals("profile_tabSelectedLine")) {
                    c = 11;
                    break;
                }
                break;
            case 712486919:
                if (str.equals("profile_tabSelectedText")) {
                    c = '\f';
                    break;
                }
                break;
            case 806886860:
                if (str.equals("profile_tabText")) {
                    c = '\r';
                    break;
                }
                break;
            case 1828201066:
                if (str.equals("dialogTextBlack")) {
                    c = 14;
                    break;
                }
                break;
            case 1832998043:
                if (str.equals("dialogTextGray3")) {
                    c = 15;
                    break;
                }
                break;
            case 2067556030:
                if (str.equals("chat_emojiPanelIcon")) {
                    c = 16;
                    break;
                }
                break;
            case 2133456819:
                if (str.equals("chat_emojiPanelBackground")) {
                    c = 17;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return -14145495;
            case 1:
                return 352321535;
            case 2:
                return -1610612736;
            case 3:
                return -14803426;
            case 4:
                return -9539985;
            case 5:
                return 536870911;
            case 6:
                return -11754001;
            case 7:
                return -1;
            case '\b':
                return -10177041;
            case '\t':
                return -1;
            case '\n':
                return -9539985;
            case 11:
            case '\f':
            case '\r':
                return -1;
            case 14:
                return -592138;
            case 15:
                return -8553091;
            case 16:
                return -9539985;
            case 17:
                return -16777216;
            default:
                if (resourcesProvider != null) {
                    return resourcesProvider.getColor(str);
                }
                return Integer.valueOf(Theme.getColor(str));
        }
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
        lambda$registerRemovalUndo$40(this.currentEntityView);
        selectEntity(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        selectEntity(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(View view, int i) {
        PaintTypeface paintTypeface = PaintTypeface.get().get(i);
        this.textOptionsView.lambda$setTypeface$5(paintTypeface.getKey());
        onTypefaceSelected(paintTypeface);
        showTypefaceMenu(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(Integer num) {
        setNewColor(num.intValue());
        showColorList(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(Context context, final Bitmap bitmap, final int i, View view) {
        if (this.isColorListShown) {
            new ColorPickerBottomSheet(context, this.resourcesProvider).setColor(this.colorSwatch.color).setPipetteDelegate(new ColorPickerBottomSheet.PipetteDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.11
                private boolean hasPipette;

                @Override // org.telegram.p044ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onStartColorPipette() {
                    this.hasPipette = true;
                }

                @Override // org.telegram.p044ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onStopColorPipette() {
                    this.hasPipette = false;
                }

                @Override // org.telegram.p044ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public ViewGroup getContainerView() {
                    return LPhotoPaintView.this.pipetteContainerLayout;
                }

                @Override // org.telegram.p044ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public View getSnapshotDrawingView() {
                    return LPhotoPaintView.this;
                }

                @Override // org.telegram.p044ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onDrawImageOverCanvas(Bitmap bitmap2, Canvas canvas) {
                    Matrix matrix = LPhotoPaintView.this.renderView.getMatrix();
                    canvas.save();
                    canvas.translate(LPhotoPaintView.this.renderView.getX(), LPhotoPaintView.this.renderView.getY());
                    canvas.concat(matrix);
                    canvas.scale(LPhotoPaintView.this.renderView.getWidth() / bitmap.getWidth(), LPhotoPaintView.this.renderView.getHeight() / bitmap.getHeight(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                    canvas.restore();
                }

                @Override // org.telegram.p044ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public boolean isPipetteVisible() {
                    return this.hasPipette;
                }

                @Override // org.telegram.p044ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public boolean isPipetteAvailable() {
                    return bitmap != null;
                }

                @Override // org.telegram.p044ui.Components.Paint.ColorPickerBottomSheet.PipetteDelegate
                public void onColorSelected(int i2) {
                    LPhotoPaintView.this.showColorList(false);
                    PersistColorPalette.getInstance(i).selectColor(i2);
                    PersistColorPalette.getInstance(i).saveColors();
                    LPhotoPaintView.this.setNewColor(i2);
                    LPhotoPaintView.this.colorsListView.getAdapter().notifyDataSetChanged();
                }
            }).setColorListener(new Consumer() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda23
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    LPhotoPaintView.this.lambda$new$9(i, (Integer) obj);
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
    public /* synthetic */ void lambda$new$9(int i, Integer num) {
        PersistColorPalette.getInstance(i).selectColor(num.intValue());
        PersistColorPalette.getInstance(i).saveColors();
        setNewColor(num.intValue());
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
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda0
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

    private TextPaintView createText(boolean z) {
        onTextAdd();
        Size paintingSize = getPaintingSize();
        Point startPositionRelativeToEntity = startPositionRelativeToEntity(null);
        TextPaintView textPaintView = new TextPaintView(getContext(), startPositionRelativeToEntity, (int) (paintingSize.width / 9.0f), "", this.colorSwatch, this.selectedTextType);
        if (startPositionRelativeToEntity.f1686x == this.entitiesView.getMeasuredWidth() / 2.0f) {
            textPaintView.setHasStickyX(true);
        }
        if (startPositionRelativeToEntity.f1687y == this.entitiesView.getMeasuredHeight() / 2.0f) {
            textPaintView.setHasStickyY(true);
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

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
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

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
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
            this.textOptionsView.lambda$setTypeface$5(textPaintView.getTypeface().getKey());
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
            lambda$registerRemovalUndo$40(entityView4);
        }
        EntityView entityView5 = this.currentEntityView;
        if (entityView5 != null) {
            entityView5.select(this.selectionContainerView);
            this.entitiesView.bringChildToFront(this.currentEntityView);
            EntityView entityView6 = this.currentEntityView;
            if (entityView6 instanceof TextPaintView) {
                final TextPaintView textPaintView2 = (TextPaintView) entityView6;
                textPaintView2.getSwatch().brushWeight = this.colorSwatch.brushWeight;
                setCurrentSwatch(textPaintView2.getSwatch(), true);
                final float f = (int) (this.paintingSize.width / 9.0f);
                this.weightChooserView.setValueOverride(new PaintWeightChooserView.ValueOverride(this) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.12
                    @Override // org.telegram.p044ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
                    public float get() {
                        return textPaintView2.getBaseFontSize() / f;
                    }

                    @Override // org.telegram.p044ui.Components.Paint.Views.PaintWeightChooserView.ValueOverride
                    public void set(float f2) {
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
            int currentActionBarHeight = C3306ActionBar.getCurrentActionBarHeight() + i;
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
            float measuredHeight2 = (((((getMeasuredHeight() - currentActionBarHeight) - AndroidUtilities.m50dp(48)) + getAdditionalBottom()) - scaleY) / 2.0f) + AndroidUtilities.m50dp(8) + i + this.transformY;
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
                paint.setStrokeWidth(AndroidUtilities.m50dp(2));
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
                float y = ((textView.getY() + textView.getHeight()) - textView.getPaddingBottom()) + AndroidUtilities.m50dp(3);
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
        textView.setText(LocaleController.getString(C3242R.string.PhotoEditorDraw).toUpperCase());
        this.drawTab.setBackground(Theme.createSelectorDrawable(getThemedColor("listSelectorSDK21"), 7));
        this.drawTab.setPadding(0, AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8));
        this.drawTab.setTextColor(-1);
        this.drawTab.setTextSize(1, 14.0f);
        this.drawTab.setGravity(1);
        this.drawTab.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.drawTab.setSingleLine();
        this.drawTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LPhotoPaintView.this.lambda$setupTabsLayout$13(view);
            }
        });
        this.tabsLayout.addView(this.drawTab, LayoutHelper.createLinear(0, -2, 1.0f));
        TextView textView2 = new TextView(context);
        this.stickerTab = textView2;
        textView2.setText(LocaleController.getString(C3242R.string.PhotoEditorSticker).toUpperCase());
        this.stickerTab.setBackground(Theme.createSelectorDrawable(getThemedColor("listSelectorSDK21"), 7));
        this.stickerTab.setPadding(0, AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8));
        this.stickerTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LPhotoPaintView.this.lambda$setupTabsLayout$14(view);
            }
        });
        this.stickerTab.setTextColor(-1);
        this.stickerTab.setTextSize(1, 14.0f);
        this.stickerTab.setGravity(1);
        this.stickerTab.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.stickerTab.setAlpha(0.6f);
        this.stickerTab.setSingleLine();
        this.tabsLayout.addView(this.stickerTab, LayoutHelper.createLinear(0, -2, 1.0f));
        TextView textView3 = new TextView(context);
        this.textTab = textView3;
        textView3.setText(LocaleController.getString(C3242R.string.PhotoEditorText).toUpperCase());
        this.textTab.setBackground(Theme.createSelectorDrawable(getThemedColor("listSelectorSDK21"), 7));
        this.textTab.setPadding(0, AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8));
        this.textTab.setTextColor(-1);
        this.textTab.setTextSize(1, 14.0f);
        this.textTab.setGravity(1);
        this.textTab.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textTab.setAlpha(0.6f);
        this.textTab.setSingleLine();
        this.textTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LPhotoPaintView.this.lambda$setupTabsLayout$15(view);
            }
        });
        this.tabsLayout.addView(this.textTab, LayoutHelper.createLinear(0, -2, 1.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupTabsLayout$13(View view) {
        if (this.editingText) {
            selectEntity(null);
        } else {
            switchTab(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupTabsLayout$14(View view) {
        openStickersView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupTabsLayout$15(View view) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void switchTab(final int i) {
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
        ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(300L);
        this.tabsSelectionAnimator = duration;
        duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.tabsSelectionAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LPhotoPaintView.this.lambda$switchTab$16(barView, barView2, valueAnimator2);
            }
        });
        this.tabsSelectionAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.14
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                View view;
                if (barView != null && (view = barView2) != null) {
                    view.setVisibility(0);
                }
                if (i == 2) {
                    LPhotoPaintView.this.weightChooserView.setMinMax(0.5f, 2.0f);
                    return;
                }
                Brush currentBrush = LPhotoPaintView.this.renderView.getCurrentBrush();
                if ((currentBrush instanceof Brush.Blurer) || (currentBrush instanceof Brush.Eraser)) {
                    LPhotoPaintView.this.weightChooserView.setMinMax(0.4f, 1.75f);
                } else {
                    LPhotoPaintView.this.weightChooserView.setMinMax(0.05f, 1.0f);
                }
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
    public /* synthetic */ void lambda$switchTab$16(View view, View view2, ValueAnimator valueAnimator) {
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
        view.setTranslationY((AndroidUtilities.m50dp(16) * Math.min(interpolation, 0.25f)) / 0.25f);
        view.setAlpha(1.0f - (Math.min(interpolation, 0.25f) / 0.25f));
        float f3 = (interpolation * 0.4f) + 0.6f;
        view2.setScaleX(f3);
        view2.setScaleY(f3);
        view2.setTranslationY(((-AndroidUtilities.m50dp(16)) * Math.min(f, 0.25f)) / 0.25f);
        view2.setAlpha(1.0f - (Math.min(f, 0.25f) / 0.25f));
    }

    private void openStickersView() {
        final int i = this.tabsSelectedIndex;
        switchTab(1);
        postDelayed(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$openStickersView$17();
            }
        }, 350L);
        StickerMasksAlert stickerMasksAlert = new StickerMasksAlert(getContext(), this.facesBitmap == null, this.resourcesProvider) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.15
            @Override // org.telegram.p044ui.ActionBar.BottomSheet
            public void onDismissAnimationStart() {
                super.onDismissAnimationStart();
                LPhotoPaintView.this.switchTab(i);
            }
        };
        stickerMasksAlert.setDelegate(new StickerMasksAlert.StickerMasksAlertDelegate() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda42
            @Override // org.telegram.p044ui.Components.StickerMasksAlert.StickerMasksAlertDelegate
            public final void onStickerSelected(Object obj, TLRPC$Document tLRPC$Document) {
                LPhotoPaintView.this.lambda$openStickersView$18(obj, tLRPC$Document);
            }
        });
        stickerMasksAlert.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                LPhotoPaintView.this.lambda$openStickersView$19(i, dialogInterface);
            }
        });
        stickerMasksAlert.show();
        onOpenCloseStickersAlert(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStickersView$17() {
        if (this.facesBitmap != null) {
            detectFaces();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStickersView$18(Object obj, TLRPC$Document tLRPC$Document) {
        createSticker(obj, tLRPC$Document, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStickersView$19(int i, DialogInterface dialogInterface) {
        onOpenCloseStickersAlert(false);
        switchTab(i);
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
        int currentActionBarHeight2 = (((AndroidUtilities.displaySize.y - C3306ActionBar.getCurrentActionBarHeight()) - getAdditionalTop()) - getAdditionalBottom()) - AndroidUtilities.m50dp(48);
        Bitmap bitmap = this.bitmapToEdit;
        if (bitmap != null) {
            f = bitmap.getWidth();
            currentActionBarHeight = this.bitmapToEdit.getHeight();
        } else {
            currentActionBarHeight = (size2 - C3306ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.m50dp(48);
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
        EntityView entityView = this.currentEntityView;
        if (entityView != null) {
            entityView.updateSelectionView();
        }
        this.selectionContainerView.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
        measureChild(this.bottomLayout, i, i2);
        measureChild(this.weightChooserView, i, i2);
        measureChild(this.pipetteContainerLayout, i, i2);
        measureChild(this.overlayLayout, i, i2);
        FrameLayout frameLayout = this.topLayout;
        frameLayout.setPadding(frameLayout.getPaddingLeft(), AndroidUtilities.m50dp(12) + AndroidUtilities.statusBarHeight, this.topLayout.getPaddingRight(), this.topLayout.getPaddingBottom());
        measureChild(this.topLayout, i, i2);
        this.ignoreLayout = false;
        if (!this.waitingForKeyboardOpen && AndroidUtilities.m50dp(20) >= 0 && !this.emojiViewVisible && !this.isAnimatePopupClosing) {
            this.ignoreLayout = true;
            hideEmojiView();
            this.ignoreLayout = false;
        }
        if (AndroidUtilities.m50dp(20) < 0) {
            hideEmojiView();
        }
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            measureChild(emojiView, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.Components.SizeNotifierFrameLayoutPhoto, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
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
        int currentActionBarHeight = ((((i6 - (C3306ActionBar.getCurrentActionBarHeight() + i7)) - AndroidUtilities.m50dp(48)) - this.renderView.getMeasuredHeight()) / 2) + AndroidUtilities.m50dp(8) + i7 + ((getAdditionalTop() - getAdditionalBottom()) / 2);
        RenderView renderView = this.renderView;
        renderView.layout(ceil, currentActionBarHeight, renderView.getMeasuredWidth() + ceil, this.renderView.getMeasuredHeight() + currentActionBarHeight);
        View view = this.renderInputView;
        view.layout(ceil, currentActionBarHeight, view.getMeasuredWidth() + ceil, this.renderInputView.getMeasuredHeight() + currentActionBarHeight);
        int measuredWidth = ((this.renderView.getMeasuredWidth() - this.entitiesView.getMeasuredWidth()) / 2) + ceil;
        int measuredHeight = ((this.renderView.getMeasuredHeight() - this.entitiesView.getMeasuredHeight()) / 2) + currentActionBarHeight;
        EntitiesContainerView entitiesContainerView = this.entitiesView;
        entitiesContainerView.layout(measuredWidth, measuredHeight, entitiesContainerView.getMeasuredWidth() + measuredWidth, this.entitiesView.getMeasuredHeight() + measuredHeight);
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

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public void init() {
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
        this.queue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$detectFaces$20();
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectFaces$20() {
        int i;
        FaceDetector faceDetector = null;
        try {
            try {
                faceDetector = new FaceDetector.Builder(getContext()).setMode(1).setLandmarkType(1).setTrackingEnabled(false).build();
            } catch (Exception e) {
                FileLog.m45e(e);
                if (0 == 0) {
                    return;
                }
            }
            if (!faceDetector.isOperational()) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m47e("face detection is not operational");
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
                FileLog.m45e(th);
                faceDetector.release();
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                faceDetector.release();
            }
            throw th2;
        }
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public void shutdown() {
        this.renderView.shutdown();
        this.entitiesView.setVisibility(8);
        this.selectionContainerView.setVisibility(8);
        this.queue.postRunnable(LPhotoPaintView$$ExternalSyntheticLambda37.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$shutdown$21() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            myLooper.quit();
        }
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public void onResume() {
        this.renderView.redraw();
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public void setOffsetTranslationY(float f, float f2, int i, boolean z) {
        this.offsetTranslationY = f;
        if (!z) {
            float f3 = -f;
            this.topLayout.setTranslationY(f3);
            if (this.tabsSelectedIndex == 0) {
                this.weightChooserView.setTranslationX(f3);
            }
            this.bottomLayout.setTranslationY(f);
            return;
        }
        setTranslationY(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public float getOffsetTranslationY() {
        return this.offsetTranslationY;
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public void updateColors() {
        this.toolsPaint.setColor(-15132391);
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public boolean hasChanges() {
        return this.undoStore.canUndo();
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public Bitmap getBitmap(ArrayList<VideoEditedInfo.MediaEntity> arrayList, Bitmap[] bitmapArr) {
        Canvas canvas;
        Bitmap bitmap;
        int i;
        Point point;
        boolean z;
        int i2;
        Point point2;
        boolean z2;
        Point point3;
        AnimatedEmojiSpan[] animatedEmojiSpanArr;
        LPhotoPaintView lPhotoPaintView = this;
        Bitmap resultBitmap = lPhotoPaintView.renderView.getResultBitmap();
        lPhotoPaintView.lcm = BigInteger.ONE;
        if (resultBitmap != null && lPhotoPaintView.entitiesView.entitiesCount() > 0) {
            int childCount = lPhotoPaintView.entitiesView.getChildCount();
            int i3 = 0;
            int i4 = 0;
            Canvas canvas2 = null;
            while (i4 < childCount) {
                View childAt = lPhotoPaintView.entitiesView.getChildAt(i4);
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
                                AnimatedEmojiSpan[] animatedEmojiSpanArr2 = (AnimatedEmojiSpan[]) spanned.getSpans(i3, text.length(), AnimatedEmojiSpan.class);
                                if (animatedEmojiSpanArr2 != null) {
                                    int i5 = i3;
                                    while (i5 < animatedEmojiSpanArr2.length) {
                                        AnimatedEmojiSpan animatedEmojiSpan = animatedEmojiSpanArr2[i5];
                                        Canvas canvas3 = canvas2;
                                        TLRPC$Document tLRPC$Document = animatedEmojiSpan.document;
                                        if (tLRPC$Document == null) {
                                            point3 = position;
                                            animatedEmojiSpanArr = animatedEmojiSpanArr2;
                                            tLRPC$Document = AnimatedEmojiDrawable.findDocument(lPhotoPaintView.currentAccount, animatedEmojiSpan.getDocumentId());
                                        } else {
                                            point3 = position;
                                            animatedEmojiSpanArr = animatedEmojiSpanArr2;
                                        }
                                        if (tLRPC$Document != null) {
                                            AnimatedEmojiDrawable.getDocumentFetcher(lPhotoPaintView.currentAccount).putDocument(tLRPC$Document);
                                        }
                                        VideoEditedInfo.EmojiEntity emojiEntity = new VideoEditedInfo.EmojiEntity();
                                        Bitmap bitmap2 = resultBitmap;
                                        int i6 = childCount;
                                        emojiEntity.document_id = animatedEmojiSpan.getDocumentId();
                                        emojiEntity.document = tLRPC$Document;
                                        emojiEntity.offset = spanned.getSpanStart(animatedEmojiSpan);
                                        emojiEntity.length = spanned.getSpanEnd(animatedEmojiSpan) - emojiEntity.offset;
                                        if (MessageObject.isVideoSticker(tLRPC$Document)) {
                                            emojiEntity.documentAbsolutePath = FileLoader.getInstance(lPhotoPaintView.currentAccount).getPathToAttach(tLRPC$Document, true).getAbsolutePath();
                                        }
                                        mediaEntity.entities.add(emojiEntity);
                                        if (tLRPC$Document != null) {
                                            BigInteger valueOf = BigInteger.valueOf(5000L);
                                            lPhotoPaintView.lcm = lPhotoPaintView.lcm.multiply(valueOf).divide(lPhotoPaintView.lcm.gcd(valueOf));
                                        }
                                        i5++;
                                        resultBitmap = bitmap2;
                                        canvas2 = canvas3;
                                        position = point3;
                                        animatedEmojiSpanArr2 = animatedEmojiSpanArr;
                                        childCount = i6;
                                    }
                                }
                                canvas = canvas2;
                                bitmap = resultBitmap;
                                i = childCount;
                                point = position;
                                mediaEntity.entities.isEmpty();
                            } else {
                                canvas = canvas2;
                                bitmap = resultBitmap;
                                i = childCount;
                                point = position;
                            }
                            mediaEntity.text = text.toString();
                            int type = textPaintView.getType();
                            if (type == 0) {
                                mediaEntity.subType = (byte) (mediaEntity.subType | 1);
                            } else if (type == 2) {
                                mediaEntity.subType = (byte) (mediaEntity.subType | 4);
                            }
                            mediaEntity.color = textPaintView.getSwatch().color;
                            mediaEntity.fontSize = textPaintView.getTextSize();
                            mediaEntity.textTypeface = textPaintView.getTypeface();
                            mediaEntity.textAlign = textPaintView.getAlign();
                            z2 = true;
                        } else {
                            canvas = canvas2;
                            bitmap = resultBitmap;
                            i = childCount;
                            point = position;
                            if (entityView instanceof StickerView) {
                                mediaEntity.type = (byte) 0;
                                StickerView stickerView = (StickerView) entityView;
                                Size baseSize = stickerView.getBaseSize();
                                mediaEntity.width = baseSize.width;
                                mediaEntity.height = baseSize.height;
                                mediaEntity.document = stickerView.getSticker();
                                mediaEntity.parentObject = stickerView.getParentObject();
                                TLRPC$Document sticker = stickerView.getSticker();
                                z2 = true;
                                mediaEntity.text = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(sticker, true).getAbsolutePath();
                                if (MessageObject.isAnimatedStickerDocument(sticker, true) || MessageObject.isVideoStickerDocument(sticker)) {
                                    boolean isAnimatedStickerDocument = MessageObject.isAnimatedStickerDocument(sticker, true);
                                    mediaEntity.subType = (byte) (mediaEntity.subType | (isAnimatedStickerDocument ? (byte) 1 : (byte) 4));
                                    long duration = isAnimatedStickerDocument ? stickerView.getDuration() : 5000L;
                                    if (duration != 0) {
                                        BigInteger valueOf2 = BigInteger.valueOf(duration);
                                        lPhotoPaintView.lcm = lPhotoPaintView.lcm.multiply(valueOf2).divide(lPhotoPaintView.lcm.gcd(valueOf2));
                                    }
                                }
                                if (stickerView.isMirrored()) {
                                    mediaEntity.subType = (byte) (mediaEntity.subType | 2);
                                }
                            }
                        }
                        arrayList.add(mediaEntity);
                        float scaleX = childAt.getScaleX();
                        float scaleY = childAt.getScaleY();
                        float x = childAt.getX();
                        float y = childAt.getY();
                        mediaEntity.viewWidth = childAt.getWidth();
                        mediaEntity.viewHeight = childAt.getHeight();
                        mediaEntity.width = (childAt.getWidth() * scaleX) / lPhotoPaintView.entitiesView.getMeasuredWidth();
                        mediaEntity.height = (childAt.getHeight() * scaleY) / lPhotoPaintView.entitiesView.getMeasuredHeight();
                        mediaEntity.f1404x = (((childAt.getWidth() * (1.0f - scaleX)) / 2.0f) + x) / lPhotoPaintView.entitiesView.getMeasuredWidth();
                        mediaEntity.f1405y = (((childAt.getHeight() * (1.0f - scaleY)) / 2.0f) + y) / lPhotoPaintView.entitiesView.getMeasuredHeight();
                        mediaEntity.rotation = (float) ((-childAt.getRotation()) * 0.017453292519943295d);
                        mediaEntity.textViewX = (x + (childAt.getWidth() / 2.0f)) / lPhotoPaintView.entitiesView.getMeasuredWidth();
                        mediaEntity.textViewY = (y + (childAt.getHeight() / 2.0f)) / lPhotoPaintView.entitiesView.getMeasuredHeight();
                        mediaEntity.textViewWidth = mediaEntity.viewWidth / lPhotoPaintView.entitiesView.getMeasuredWidth();
                        mediaEntity.textViewHeight = mediaEntity.viewHeight / lPhotoPaintView.entitiesView.getMeasuredHeight();
                        mediaEntity.scale = scaleX;
                        if (bitmapArr[0] == null) {
                            bitmapArr[0] = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
                            Canvas canvas4 = new Canvas(bitmapArr[0]);
                            canvas4.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                            canvas = canvas4;
                        }
                        z = z2;
                    } else {
                        canvas = canvas2;
                        bitmap = resultBitmap;
                        i = childCount;
                        point = position;
                        z = false;
                    }
                    Canvas canvas5 = new Canvas(bitmap);
                    int i7 = 0;
                    int i8 = 2;
                    while (i7 < i8) {
                        Canvas canvas6 = i7 == 0 ? canvas5 : canvas;
                        if (canvas6 == null || (i7 == 0 && z)) {
                            point2 = point;
                        } else {
                            canvas6.save();
                            point2 = point;
                            canvas6.translate(point2.f1686x, point2.f1687y);
                            canvas6.scale(childAt.getScaleX(), childAt.getScaleY());
                            canvas6.rotate(childAt.getRotation());
                            canvas6.translate((-entityView.getWidth()) / 2.0f, (-entityView.getHeight()) / 2.0f);
                            if (childAt instanceof TextPaintView) {
                                Bitmap createBitmap = Bitmaps.createBitmap(childAt.getWidth(), childAt.getHeight(), Bitmap.Config.ARGB_8888);
                                Canvas canvas7 = new Canvas(createBitmap);
                                childAt.draw(canvas7);
                                canvas6.drawBitmap(createBitmap, (Rect) null, new Rect(0, 0, createBitmap.getWidth(), createBitmap.getHeight()), (Paint) null);
                                try {
                                    canvas7.setBitmap(null);
                                } catch (Exception e) {
                                    FileLog.m45e(e);
                                }
                                createBitmap.recycle();
                            } else {
                                childAt.draw(canvas6);
                            }
                            canvas6.restore();
                        }
                        i7++;
                        i8 = 2;
                        point = point2;
                    }
                    i2 = 0;
                    canvas2 = canvas;
                    i4++;
                    i3 = i2;
                    resultBitmap = bitmap;
                    childCount = i;
                    lPhotoPaintView = this;
                } else {
                    canvas = canvas2;
                    bitmap = resultBitmap;
                    i = childCount;
                }
                canvas2 = canvas;
                i2 = 0;
                i4++;
                i3 = i2;
                resultBitmap = bitmap;
                childCount = i;
                lPhotoPaintView = this;
            }
        }
        return resultBitmap;
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public void onCleanupEntities() {
        this.entitiesView.removeAllViews();
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public long getLcm() {
        return this.lcm.longValue();
    }

    public View getDoneView() {
        return this.doneButton;
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public View getCancelView() {
        return this.cancelButton;
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
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
            builder.setMessage(LocaleController.getString("PhotoEditorDiscardAlert", C3242R.string.PhotoEditorDiscardAlert));
            builder.setTitle(LocaleController.getString("DiscardChanges", C3242R.string.DiscardChanges));
            builder.setPositiveButton(LocaleController.getString("PassportDiscard", C3242R.string.PassportDiscard), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    runnable.run();
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3242R.string.Cancel), null);
            photoViewer.showAlertDialog(builder);
        }
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public boolean onTouch(MotionEvent motionEvent) {
        if (this.currentEntityView != null) {
            selectEntity(null);
        }
        float x = ((motionEvent.getX() - this.renderView.getTranslationX()) - (getMeasuredWidth() / 2.0f)) / this.renderView.getScaleX();
        float y = ((((motionEvent.getY() - this.renderView.getTranslationY()) - (getMeasuredHeight() / 2.0f)) + AndroidUtilities.m50dp(32)) - ((getAdditionalTop() - getAdditionalBottom()) / 2.0f)) / this.renderView.getScaleY();
        double d = x;
        double radians = (float) Math.toRadians(-this.renderView.getRotation());
        double d2 = y;
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setLocation(((float) ((Math.cos(radians) * d) - (Math.sin(radians) * d2))) + (this.renderView.getMeasuredWidth() / 2.0f), ((float) ((d * Math.sin(radians)) + (d2 * Math.cos(radians)))) + (this.renderView.getMeasuredHeight() / 2.0f));
        this.renderView.onTouch(obtain);
        obtain.recycle();
        return true;
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public int getAdditionalTop() {
        return AndroidUtilities.m50dp(48);
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public int getAdditionalBottom() {
        return AndroidUtilities.m50dp(24);
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public RenderView getRenderView() {
        return this.renderView;
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
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
            float f18 = f11 * f;
            if (!Float.isNaN(f18)) {
                f6 = f18;
            }
            view.setScaleX(f6);
            view.setScaleY(f6);
            view.setTranslationX(f8);
            view.setTranslationY(f9);
            view.setRotation(f10);
            view.invalidate();
        }
        invalidate();
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
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
                tLRPC$TL_inputDocument.f1443id = sticker.f1435id;
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
                                tLRPC$TL_inputDocument2.f1443id = tLRPC$Document.f1435id;
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

    @Override // org.telegram.p044ui.Components.Paint.Views.PaintToolsView.Delegate
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
        this.colorSwatch.brushWeight = this.weightDefaultValueOverride.get();
        setCurrentSwatch(this.colorSwatch, true);
        this.renderInputView.invalidate();
    }

    @Override // org.telegram.p044ui.Components.Paint.Views.PaintTextOptionsView.Delegate
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
            this.typefaceMenuTransformAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda26
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    LPhotoPaintView.this.lambda$showTypefaceMenu$23(dynamicAnimation, f, f2);
                }
            });
            this.typefaceMenuTransformAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda24
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
                    LPhotoPaintView.this.lambda$showTypefaceMenu$24(z, dynamicAnimation, z2, f, f2);
                }
            });
            this.typefaceMenuTransformAnimation.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTypefaceMenu$23(DynamicAnimation dynamicAnimation, float f, float f2) {
        float f3 = f / 1000.0f;
        this.typefaceMenuTransformProgress = f3;
        this.typefaceListView.setAlpha(f3);
        this.typefaceListView.invalidate();
        this.overlayLayout.invalidate();
        this.textOptionsView.getTypefaceCell().setAlpha(1.0f - this.typefaceMenuTransformProgress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTypefaceMenu$24(boolean z, DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
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
            this.toolsTransformAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda27
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                    LPhotoPaintView.this.lambda$showColorList$25(barView, z, zArr, translationY, dynamicAnimation, f2, f3);
                }
            });
            this.toolsTransformAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda25
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f2, float f3) {
                    LPhotoPaintView.this.lambda$showColorList$26(z, dynamicAnimation, z3, f2, f3);
                }
            });
            this.toolsTransformAnimation.start();
            if (z) {
                this.colorsListView.setVisibility(0);
                this.colorsListView.setSelectedColorIndex(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showColorList$25(View view, boolean z, boolean[] zArr, float f, DynamicAnimation dynamicAnimation, float f2, float f3) {
        float f4 = f2 / 1000.0f;
        this.toolsTransformProgress = f4;
        float f5 = ((1.0f - f4) * 0.4f) + 0.6f;
        view.setScaleX(f5);
        view.setScaleY(f5);
        view.setTranslationY((AndroidUtilities.m50dp(16) * Math.min(this.toolsTransformProgress, 0.25f)) / 0.25f);
        view.setAlpha(1.0f - (Math.min(this.toolsTransformProgress, 0.25f) / 0.25f));
        this.colorsListView.setProgress(this.toolsTransformProgress, z);
        this.doneButton.setProgress(this.toolsTransformProgress);
        this.cancelButton.setProgress(this.toolsTransformProgress);
        this.tabsLayout.setTranslationY(AndroidUtilities.m50dp(32) * this.toolsTransformProgress);
        if (this.adjustPanLayoutHelper.animationInProgress()) {
            zArr[0] = false;
        }
        if (zArr[0]) {
            float f6 = this.toolsTransformProgress;
            if (!z) {
                f6 = 1.0f - f6;
            }
            this.bottomLayout.setTranslationY(f - ((AndroidUtilities.m50dp(40) * f6) * (z ? 1 : -1)));
        }
        this.bottomLayout.invalidate();
        if (view == this.textOptionsView) {
            this.overlayLayout.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showColorList$26(boolean z, DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
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
        FrameLayout frameLayout;
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
        if (z && (frameLayout = this.bottomLayout) != null) {
            frameLayout.invalidate();
        }
        EntityView entityView = this.currentEntityView;
        if (entityView instanceof TextPaintView) {
            ((TextPaintView) entityView).setSwatch(new Swatch(swatch.color, swatch.colorLocation, swatch.brushWeight));
        }
    }

    @Override // org.telegram.p044ui.Components.Paint.Views.PaintToolsView.Delegate, org.telegram.p044ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onColorPickerSelected() {
        showColorList(true);
    }

    @Override // org.telegram.p044ui.Components.Paint.Views.PaintTextOptionsView.Delegate
    public void onTextOutlineSelected(View view) {
        view.getLocationInWindow(new int[2]);
        showPopup(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$onTextOutlineSelected$28();
            }
        }, this, 51, 0, getHeight() - this.emojiPadding);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTextOutlineSelected$28() {
        String string;
        int i;
        for (final int i2 = 0; i2 < 3; i2++) {
            boolean z = true;
            if (i2 == 0) {
                string = LocaleController.getString("PaintOutlined", C3242R.string.PaintOutlined);
                i = C3242R.C3244drawable.msg_text_outlined;
            } else if (i2 == 1) {
                string = LocaleController.getString("PaintRegular", C3242R.string.PaintRegular);
                i = C3242R.C3244drawable.msg_text_regular;
            } else {
                string = LocaleController.getString("PaintFramed", C3242R.string.PaintFramed);
                i = C3242R.C3244drawable.msg_text_framed;
            }
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
            if (this.selectedTextType != i2) {
                z = false;
            }
            actionBarPopupWindowLayout.addView((View) buttonForPopup(string, i, z, new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    LPhotoPaintView.this.lambda$onTextOutlineSelected$27(i2);
                }
            }), LayoutHelper.createLinear(-1, 48));
        }
    }

    private PopupButton buttonForPopup(String str, int i, boolean z, final Runnable runnable) {
        PopupButton popupButton = new PopupButton(getContext());
        popupButton.setIcon(i);
        popupButton.setText(str);
        popupButton.setSelected(z);
        if (runnable != null) {
            popupButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda6
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
            setBackground(Theme.getSelectorDrawable(Theme.getColor("listSelectorSDK21", LPhotoPaintView.this.resourcesProvider), false));
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
            this.imageView.setColorFilter(LPhotoPaintView.this.getThemedColor("actionBarDefaultSubmenuItem"));
            this.imagesView.addView(this.imageView, LayoutHelper.createFrame(-2, -2, 17));
            ImageView imageView2 = new ImageView(context);
            this.image2View = imageView2;
            imageView2.setScaleType(ImageView.ScaleType.CENTER);
            this.image2View.setColorFilter(LPhotoPaintView.this.getThemedColor("actionBarDefaultSubmenuItem"));
            this.image2View.setVisibility(8);
            this.imagesView.addView(this.image2View, LayoutHelper.createFrame(-2, -2, 17));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(LPhotoPaintView.this.getThemedColor("actionBarDefaultSubmenuItem"));
            this.textView.setTextSize(1, 16.0f);
            addView(this.textView, LayoutHelper.createLinear(-2, -2, 19, 0, 0, 16, 0));
            ImageView imageView3 = new ImageView(context);
            this.checkView = imageView3;
            imageView3.setImageResource(C3242R.C3244drawable.msg_text_check);
            this.checkView.setScaleType(ImageView.ScaleType.CENTER);
            this.checkView.setColorFilter(new PorterDuffColorFilter(LPhotoPaintView.this.getThemedColor("radioBackgroundChecked"), PorterDuff.Mode.MULTIPLY));
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setTextType */
    public void lambda$onTextOutlineSelected$27(int i) {
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

    @Override // org.telegram.p044ui.Components.Paint.Views.PaintTextOptionsView.Delegate
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

    @Override // org.telegram.p044ui.Components.Paint.Views.PaintTextOptionsView.Delegate
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

    @Override // org.telegram.p044ui.Components.Paint.Views.PaintToolsView.Delegate
    public void onAddButtonPressed(View view) {
        showPopup(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$onAddButtonPressed$32();
            }
        }, this, 53, 0, getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAddButtonPressed$32() {
        boolean fillShapes = PersistColorPalette.getInstance(this.currentAccount).getFillShapes();
        for (int i = 0; i < Brush.Shape.SHAPES_LIST.size(); i++) {
            final Brush.Shape shape = Brush.Shape.SHAPES_LIST.get(i);
            final int filledIconRes = fillShapes ? shape.getFilledIconRes() : shape.getIconRes();
            PopupButton buttonForPopup = buttonForPopup(shape.getShapeName(), filledIconRes, false, new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    LPhotoPaintView.this.lambda$onAddButtonPressed$30(shape, filledIconRes);
                }
            });
            buttonForPopup.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda19
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean lambda$onAddButtonPressed$31;
                    lambda$onAddButtonPressed$31 = LPhotoPaintView.this.lambda$onAddButtonPressed$31(view);
                    return lambda$onAddButtonPressed$31;
                }
            });
            this.popupLayout.addView((View) buttonForPopup, LayoutHelper.createLinear(-1, 48));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAddButtonPressed$30(Brush.Shape shape, int i) {
        if (this.renderView.getCurrentBrush() instanceof Brush.Shape) {
            this.ignoreToolChangeAnimationOnce = true;
        }
        onBrushSelected(shape);
        this.paintToolsView.animatePlusToIcon(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onAddButtonPressed$31(View view) {
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
        showPopup(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$showMenuForEntity$36(entityView);
            }
        }, this, 51, centerLocationInWindow[0], centerLocationInWindow[1] - AndroidUtilities.m50dp(32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$36(final EntityView entityView) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        TextView textView = new TextView(getContext());
        textView.setTextColor(getThemedColor("actionBarDefaultSubmenuItem"));
        textView.setBackground(Theme.getSelectorDrawable(false));
        textView.setGravity(16);
        textView.setPadding(AndroidUtilities.m50dp(16), 0, AndroidUtilities.m50dp(14), 0);
        textView.setTextSize(1, 16.0f);
        textView.setTag(0);
        textView.setText(LocaleController.getString("PaintDelete", C3242R.string.PaintDelete));
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LPhotoPaintView.this.lambda$showMenuForEntity$33(entityView, view);
            }
        });
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, 48));
        if (entityView instanceof TextPaintView) {
            TextView textView2 = new TextView(getContext());
            textView2.setTextColor(getThemedColor("actionBarDefaultSubmenuItem"));
            textView2.setBackground(Theme.getSelectorDrawable(false));
            textView2.setGravity(16);
            textView2.setPadding(AndroidUtilities.m50dp(16), 0, AndroidUtilities.m50dp(16), 0);
            textView2.setTextSize(1, 16.0f);
            textView2.setTag(1);
            textView2.setText(LocaleController.getString("PaintEdit", C3242R.string.PaintEdit));
            textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LPhotoPaintView.this.lambda$showMenuForEntity$34(view);
                }
            });
            linearLayout.addView(textView2, LayoutHelper.createLinear(-2, 48));
        }
        TextView textView3 = new TextView(getContext());
        textView3.setTextColor(getThemedColor("actionBarDefaultSubmenuItem"));
        textView3.setBackgroundDrawable(Theme.getSelectorDrawable(false));
        textView3.setGravity(16);
        textView3.setPadding(AndroidUtilities.m50dp(14), 0, AndroidUtilities.m50dp(16), 0);
        textView3.setTextSize(1, 16.0f);
        textView3.setTag(2);
        textView3.setText(LocaleController.getString("PaintDuplicate", C3242R.string.PaintDuplicate));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LPhotoPaintView.this.lambda$showMenuForEntity$35(view);
            }
        });
        linearLayout.addView(textView3, LayoutHelper.createLinear(-2, 48));
        this.popupLayout.addView(linearLayout);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = -2;
        linearLayout.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$33(EntityView entityView, View view) {
        lambda$registerRemovalUndo$40(entityView);
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$34(View view) {
        editSelectedTextEntity();
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuForEntity$35(View view) {
        duplicateSelectedEntity();
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
            return new Point(position.f1686x + f, position.f1687y + f);
        }
        float f2 = cropState != null ? 100.0f / cropState.cropScale : 100.0f;
        Point centerPositionForEntity = centerPositionForEntity();
        while (true) {
            boolean z = false;
            for (int i = 0; i < this.entitiesView.getChildCount(); i++) {
                View childAt = this.entitiesView.getChildAt(i);
                if (childAt instanceof EntityView) {
                    Point position2 = ((EntityView) childAt).getPosition();
                    if (((float) Math.sqrt(Math.pow(position2.f1686x - centerPositionForEntity.f1686x, 2.0d) + Math.pow(position2.f1687y - centerPositionForEntity.f1687y, 2.0d))) < f2) {
                        z = true;
                    }
                }
            }
            if (!z) {
                return centerPositionForEntity;
            }
            centerPositionForEntity = new Point(centerPositionForEntity.f1686x + f, centerPositionForEntity.f1687y + f);
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
            this.popupLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda20
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean lambda$showPopup$37;
                    lambda$showPopup$37 = LPhotoPaintView.this.lambda$showPopup$37(view2, motionEvent);
                    return lambda$showPopup$37;
                }
            });
            this.popupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda38
                @Override // org.telegram.p044ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                    LPhotoPaintView.this.lambda$showPopup$38(keyEvent);
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
            this.popupWindow.setAnimationStyle(C3242R.style.PopupAnimation);
            this.popupWindow.setOutsideTouchable(true);
            this.popupWindow.setClippingEnabled(true);
            this.popupWindow.setInputMethodMode(2);
            this.popupWindow.setSoftInputMode(0);
            this.popupWindow.getContentView().setFocusableInTouchMode(true);
            this.popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda21
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    LPhotoPaintView.this.lambda$showPopup$39();
                }
            });
        }
        this.popupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE));
        this.popupWindow.setFocusable(true);
        if ((i & 48) != 0) {
            i2 -= this.popupLayout.getMeasuredWidth() / 2;
            i3 -= this.popupLayout.getMeasuredHeight();
        }
        this.popupWindow.showAtLocation(view, i, i2, i3);
        ActionBarPopupWindow.startAnimation(this.popupLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$showPopup$37(View view, MotionEvent motionEvent) {
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
    public /* synthetic */ void lambda$showPopup$38(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$39() {
        this.popupLayout.removeInnerViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }

    @Override // org.telegram.p044ui.Components.Paint.Views.PaintToolsView.Delegate
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
        if (tLRPC$TL_maskCoords == null || (arrayList = this.faces) == null || arrayList.size() == 0 || (randomFaceWithVacantAnchor = getRandomFaceWithVacantAnchor((i = tLRPC$TL_maskCoords.f1504n), tLRPC$Document.f1435id, tLRPC$TL_maskCoords)) == null) {
            return stickerPosition;
        }
        Point pointForAnchor = randomFaceWithVacantAnchor.getPointForAnchor(i);
        float widthForAnchor = randomFaceWithVacantAnchor.getWidthForAnchor(i);
        float angle = randomFaceWithVacantAnchor.getAngle();
        double radians = (float) Math.toRadians(angle);
        double d = 1.5707963267948966d - radians;
        double d2 = widthForAnchor;
        double d3 = radians + 1.5707963267948966d;
        return new StickerPosition(new Point(pointForAnchor.f1686x + ((float) (Math.sin(d) * d2 * tLRPC$TL_maskCoords.f1505x)) + ((float) (Math.cos(d3) * d2 * tLRPC$TL_maskCoords.f1506y)), pointForAnchor.f1687y + ((float) (Math.cos(d) * d2 * tLRPC$TL_maskCoords.f1505x)) + ((float) (Math.sin(d3) * d2 * tLRPC$TL_maskCoords.f1506y))), (float) ((widthForAnchor / baseStickerSize().width) * tLRPC$TL_maskCoords.zoom), angle);
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
                    float hypot = (float) Math.hypot(position.f1686x - pointForAnchor.f1686x, position.f1687y - pointForAnchor.f1687y);
                    if ((j == stickerView.getSticker().f1435id || this.faces.size() > 1) && hypot < widthForAnchor) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private StickerView createSticker(Object obj, TLRPC$Document tLRPC$Document, boolean z) {
        StickerPosition calculateStickerPosition = calculateStickerPosition(tLRPC$Document);
        StickerView stickerView = new StickerView(getContext(), calculateStickerPosition.position, calculateStickerPosition.angle, calculateStickerPosition.scale, baseStickerSize(), tLRPC$Document, obj) { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.16
            @Override // org.telegram.p044ui.Components.Paint.Views.StickerView
            protected void didSetAnimatedSticker(RLottieDrawable rLottieDrawable) {
                LPhotoPaintView.this.didSetAnimatedSticker(rLottieDrawable);
            }
        };
        if (calculateStickerPosition.position.f1686x == this.entitiesView.getMeasuredWidth() / 2.0f) {
            stickerView.setHasStickyX(true);
        }
        if (calculateStickerPosition.position.f1687y == this.entitiesView.getMeasuredHeight() / 2.0f) {
            stickerView.setHasStickyY(true);
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
    public void lambda$registerRemovalUndo$40(EntityView entityView) {
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
        this.undoStore.registerUndo(entityView.getUUID(), new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                LPhotoPaintView.this.lambda$registerRemovalUndo$40(entityView);
            }
        });
    }

    @Override // org.telegram.p044ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public boolean onEntitySelected(EntityView entityView) {
        return selectEntity(entityView);
    }

    @Override // org.telegram.p044ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public boolean onEntityLongClicked(EntityView entityView) {
        showMenuForEntity(entityView);
        return true;
    }

    @Override // org.telegram.p044ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public float[] getTransformedTouch(float f, float f2) {
        android.graphics.Point point = AndroidUtilities.displaySize;
        double d = f - (point.x / 2.0f);
        double radians = (float) Math.toRadians(-this.entitiesView.getRotation());
        double d2 = f2 - (point.y / 2.0f);
        this.temp[0] = ((float) ((Math.cos(radians) * d) - (Math.sin(radians) * d2))) + (AndroidUtilities.displaySize.x / 2.0f);
        this.temp[1] = ((float) ((d * Math.sin(radians)) + (d2 * Math.cos(radians)))) + (AndroidUtilities.displaySize.y / 2.0f);
        return this.temp;
    }

    @Override // org.telegram.p044ui.Components.Paint.Views.EntityView.EntityViewDelegate
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

    @Override // org.telegram.p044ui.Components.Paint.Views.EntityView.EntityViewDelegate
    public boolean allowInteraction(EntityView entityView) {
        return !this.editingText;
    }

    @Override // org.telegram.p044ui.Components.Paint.Views.EntityView.EntityViewDelegate
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
        showEmojiPopup(!z ? 1 : 0);
        if (z) {
            EntityView entityView = this.currentEntityView;
            if (entityView instanceof TextPaintView) {
                AndroidUtilities.showKeyboard(((TextPaintView) entityView).getEditText());
            }
        }
    }

    private void showEmojiPopup(int i) {
        final boolean z = this.bottomPanelIgnoreOnce;
        this.bottomPanelIgnoreOnce = false;
        if (i == 1) {
            EmojiView emojiView = this.emojiView;
            boolean z2 = emojiView != null && emojiView.getVisibility() == 0;
            createEmojiView();
            this.emojiView.setVisibility(0);
            this.emojiViewVisible = true;
            EmojiView emojiView2 = this.emojiView;
            if (this.keyboardHeight <= 0) {
                if (AndroidUtilities.isTablet()) {
                    this.keyboardHeight = AndroidUtilities.m50dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                } else {
                    this.keyboardHeight = MessagesController.getGlobalEmojiSettings().getInt("kbd_height", AndroidUtilities.m50dp(200));
                }
            }
            if (this.keyboardHeightLand <= 0) {
                if (AndroidUtilities.isTablet()) {
                    this.keyboardHeightLand = AndroidUtilities.m50dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                } else {
                    this.keyboardHeightLand = MessagesController.getGlobalEmojiSettings().getInt("kbd_height_land3", AndroidUtilities.m50dp(200));
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
            ChatActivityEnterViewAnimatedIconView emojiButton = this.textOptionsView.getEmojiButton();
            if (emojiButton != null) {
                emojiButton.setState(ChatActivityEnterViewAnimatedIconView.State.KEYBOARD, true);
            }
            onWindowSizeChanged();
            if (!z2) {
                if (this.keyboardVisible) {
                    this.translateBottomPanelAfterResize = true;
                    PaintWeightChooserView paintWeightChooserView = this.weightChooserView;
                    int i3 = AndroidUtilities.displaySize.y;
                    paintWeightChooserView.startPanTransition(i3, i3 - this.emojiPadding);
                } else {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(this.emojiPadding, BitmapDescriptorFactory.HUE_RED);
                    PaintWeightChooserView paintWeightChooserView2 = this.weightChooserView;
                    int i4 = AndroidUtilities.displaySize.y;
                    paintWeightChooserView2.startPanTransition(i4, i4 - this.emojiPadding);
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda2
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            LPhotoPaintView.this.lambda$showEmojiPopup$41(z, valueAnimator);
                        }
                    });
                    ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.18
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            LPhotoPaintView.this.emojiView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                            if (!z) {
                                LPhotoPaintView.this.bottomPanelTranslationY(BitmapDescriptorFactory.HUE_RED, 1.0f);
                            }
                            LPhotoPaintView.this.weightChooserView.stopPanTransition();
                        }
                    });
                    ofFloat.setDuration(250L);
                    ofFloat.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                    ofFloat.start();
                }
            }
        } else {
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
            bottomPanelTranslationY(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            PaintWeightChooserView paintWeightChooserView3 = this.weightChooserView;
            int i5 = AndroidUtilities.displaySize.y;
            paintWeightChooserView3.startPanTransition(i5 - this.emojiPadding, i5);
            this.weightChooserView.updatePanTransition(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.weightChooserView.stopPanTransition();
            requestLayout();
            onWindowSizeChanged();
        }
        updatePlusEmojiKeyboardButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEmojiPopup$41(boolean z, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.emojiView.setTranslationY(floatValue);
        if (z) {
            return;
        }
        bottomPanelTranslationY(floatValue, 1.0f - (floatValue / this.emojiPadding));
    }

    private void hideEmojiPopup(boolean z) {
        if (this.emojiViewVisible) {
            showEmojiPopup(0);
        }
        if (z) {
            EmojiView emojiView = this.emojiView;
            if (emojiView != null && emojiView.getVisibility() == 0 && !this.waitingForKeyboardOpen) {
                final int measuredHeight = this.emojiView.getMeasuredHeight();
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, measuredHeight);
                final boolean z2 = this.bottomPanelIgnoreOnce;
                this.bottomPanelIgnoreOnce = false;
                PaintWeightChooserView paintWeightChooserView = this.weightChooserView;
                int i = AndroidUtilities.displaySize.y;
                paintWeightChooserView.startPanTransition(i - measuredHeight, i);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$$ExternalSyntheticLambda3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        LPhotoPaintView.this.lambda$hideEmojiPopup$42(z2, measuredHeight, valueAnimator);
                    }
                });
                this.isAnimatePopupClosing = true;
                ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView.19
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        LPhotoPaintView.this.isAnimatePopupClosing = false;
                        LPhotoPaintView.this.emojiView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        if (!z2) {
                            LPhotoPaintView.this.bottomPanelTranslationY(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                        }
                        LPhotoPaintView.this.weightChooserView.stopPanTransition();
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
    public /* synthetic */ void lambda$hideEmojiPopup$42(boolean z, int i, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.emojiView.setTranslationY(floatValue);
        if (z) {
            return;
        }
        float f = i;
        bottomPanelTranslationY(floatValue - f, 1.0f - (floatValue / f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bottomPanelTranslationY(float f, float f2) {
        this.bottomLayout.setTranslationY((f - this.emojiPadding) + (AndroidUtilities.m50dp(40) * f2));
        float f3 = (f - this.emojiPadding) / 2.0f;
        this.panTranslationY = f3;
        this.panTranslationProgress = ((f3 * 2.0f) / this.keyboardHeight) + 1.0f;
        PaintWeightChooserView paintWeightChooserView = this.weightChooserView;
        if (!this.emojiViewVisible) {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        paintWeightChooserView.updatePanTransition(f, f2);
        setTransform(this.scale, this.inputTransformX, this.inputTransformY, this.imageWidth, this.imageHeight);
        ((View) getParent()).invalidate();
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public int getEmojiPadding(boolean z) {
        if (this.translateBottomPanelAfterResize && z) {
            bottomPanelTranslationY(BitmapDescriptorFactory.HUE_RED, 1.0f);
        }
        if (this.keyboardVisible && this.translateBottomPanelAfterResize && !z) {
            return 0;
        }
        if (this.adjustPanLayoutHelper.animationInProgress() && !this.keyboardVisible) {
            return this.keyboardHeight;
        }
        return this.emojiPadding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideEmojiView() {
        EmojiView emojiView;
        if (!this.emojiViewVisible && (emojiView = this.emojiView) != null && emojiView.getVisibility() != 8) {
            this.emojiView.setVisibility(8);
        }
        this.emojiPadding = 0;
    }

    private void onWindowSizeChanged() {
        getHeight();
    }

    @Override // org.telegram.p044ui.Components.SizeNotifierFrameLayoutPhoto.SizeNotifierFrameLayoutPhotoDelegate
    public void onSizeChanged(int i, boolean z) {
        boolean z2;
        if (i > AndroidUtilities.m50dp(50) && this.keyboardVisible && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
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
        updatePlusEmojiKeyboardButton();
    }

    private void updatePlusEmojiKeyboardButton() {
        PaintTextOptionsView paintTextOptionsView = this.textOptionsView;
        if (paintTextOptionsView != null) {
            if (this.keyboardVisible) {
                paintTextOptionsView.animatePlusToIcon(C3242R.C3244drawable.input_smile);
            } else if (this.emojiViewVisible) {
                paintTextOptionsView.animatePlusToIcon(C3242R.C3244drawable.input_keyboard);
            } else {
                paintTextOptionsView.animatePlusToIcon(C3242R.C3244drawable.msg_add);
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
        EmojiView emojiView2 = new EmojiView(null, true, false, false, getContext(), false, null, null, this.resourcesProvider);
        this.emojiView = emojiView2;
        emojiView2.allowEmojisForNonPremium(true);
        this.emojiView.setVisibility(8);
        if (AndroidUtilities.isTablet()) {
            this.emojiView.setForseMultiwindowLayout(true);
        }
        this.emojiView.setDelegate(new C475120());
        addView(this.emojiView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$20 */
    /* loaded from: classes6.dex */
    public class C475120 implements EmojiView.EmojiViewDelegate {
        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean canSchedule() {
            return EmojiView.EmojiViewDelegate.CC.$default$canSchedule(this);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
            EmojiView.EmojiViewDelegate.CC.$default$editAnimatedSticker(this, tLRPC$Document, rLottieDrawable, z);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
            EmojiView.EmojiViewDelegate.CC.$default$editMedia(this, tLRPC$Document, z);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ long getDialogId() {
            return EmojiView.EmojiViewDelegate.CC.$default$getDialogId(this);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ float getProgressToSearchOpened() {
            float f;
            f = BitmapDescriptorFactory.HUE_RED;
            return f;
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ int getThreadId() {
            return EmojiView.EmojiViewDelegate.CC.$default$getThreadId(this);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void invalidateEnterView() {
            EmojiView.EmojiViewDelegate.CC.$default$invalidateEnterView(this);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean isExpanded() {
            return EmojiView.EmojiViewDelegate.CC.$default$isExpanded(this);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean isInScheduleMode() {
            return EmojiView.EmojiViewDelegate.CC.$default$isInScheduleMode(this);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean isSearchOpened() {
            return EmojiView.EmojiViewDelegate.CC.$default$isSearchOpened(this);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ boolean isUserSelf() {
            return EmojiView.EmojiViewDelegate.CC.$default$isUserSelf(this);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public void onAnimatedEmojiUnlockClick() {
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onEmojiSettingsClick(ArrayList arrayList) {
            EmojiView.EmojiViewDelegate.CC.$default$onEmojiSettingsClick(this, arrayList);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onGifSelected(View view, Object obj, String str, Object obj2, boolean z, int i, String str2) {
            EmojiView.EmojiViewDelegate.CC.$default$onGifSelected(this, view, obj, str, obj2, z, i, str2);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onKiklikoVideoSelected(String str, boolean z, boolean z2, int i, String str2) {
            EmojiView.EmojiViewDelegate.CC.$default$onKiklikoVideoSelected(this, str, z, z2, i, str2);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onSearchOpenClose(int i) {
            EmojiView.EmojiViewDelegate.CC.$default$onSearchOpenClose(this, i);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onShowStickerSet(TLRPC$StickerSet tLRPC$StickerSet, TLRPC$InputStickerSet tLRPC$InputStickerSet) {
            EmojiView.EmojiViewDelegate.CC.$default$onShowStickerSet(this, tLRPC$StickerSet, tLRPC$InputStickerSet);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onStickerSelected(View view, TLRPC$Document tLRPC$Document, String str, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z, int i, String str2) {
            EmojiView.EmojiViewDelegate.CC.$default$onStickerSelected(this, view, tLRPC$Document, str, obj, sendAnimationData, z, i, str2);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onStickerSetAdd(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
            EmojiView.EmojiViewDelegate.CC.$default$onStickerSetAdd(this, tLRPC$StickerSetCovered);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onStickerSetRemove(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
            EmojiView.EmojiViewDelegate.CC.$default$onStickerSetRemove(this, tLRPC$StickerSetCovered);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onStickersGroupClick(long j) {
            EmojiView.EmojiViewDelegate.CC.$default$onStickersGroupClick(this, j);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onStickersSettingsClick() {
            EmojiView.EmojiViewDelegate.CC.$default$onStickersSettingsClick(this);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void onTabOpened(int i) {
            EmojiView.EmojiViewDelegate.CC.$default$onTabOpened(this, i);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void setKiklikoAvatar(String str) {
            EmojiView.EmojiViewDelegate.CC.$default$setKiklikoAvatar(this, str);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void showKiklikoReportAlert(String str, Callbacks$Callback1 callbacks$Callback1) {
            EmojiView.EmojiViewDelegate.CC.$default$showKiklikoReportAlert(this, str, callbacks$Callback1);
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public /* synthetic */ void showTrendingStickersAlert(TrendingStickersLayout trendingStickersLayout) {
            EmojiView.EmojiViewDelegate.CC.$default$showTrendingStickersAlert(this, trendingStickersLayout);
        }

        C475120() {
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public boolean onBackspace() {
            EditTextOutline editText = ((TextPaintView) LPhotoPaintView.this.currentEntityView).getEditText();
            if (editText == null || editText.length() == 0) {
                return false;
            }
            editText.dispatchKeyEvent(new KeyEvent(0, 67));
            return true;
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public void onEmojiSelected(String str) {
            TextPaintView textPaintView;
            EditTextOutline editText;
            if ((LPhotoPaintView.this.currentEntityView instanceof TextPaintView) && (editText = (textPaintView = (TextPaintView) LPhotoPaintView.this.currentEntityView).getEditText()) != null) {
                int selectionEnd = editText.getSelectionEnd();
                if (selectionEnd < 0) {
                    selectionEnd = 0;
                }
                try {
                    CharSequence replaceEmoji = Emoji.replaceEmoji(str, textPaintView.getFontMetricsInt(), (int) (textPaintView.getFontSize() * 0.8f), false);
                    editText.setText(editText.getText().insert(selectionEnd, replaceEmoji));
                    int length = selectionEnd + replaceEmoji.length();
                    editText.setSelection(length, length);
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
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
                FileLog.m45e(e);
            }
        }

        @Override // org.telegram.p044ui.Components.EmojiView.EmojiViewDelegate
        public void onClearEmojiRecent() {
            AlertDialog.Builder builder = new AlertDialog.Builder(LPhotoPaintView.this.getContext(), LPhotoPaintView.this.resourcesProvider);
            builder.setTitle(LocaleController.getString("ClearRecentEmojiTitle", C3242R.string.ClearRecentEmojiTitle));
            builder.setMessage(LocaleController.getString("ClearRecentEmojiText", C3242R.string.ClearRecentEmojiText));
            builder.setPositiveButton(LocaleController.getString("ClearButton", C3242R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.LPhotoPaintView$20$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    LPhotoPaintView.C475120.this.lambda$onClearEmojiRecent$0(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3242R.string.Cancel), null);
            builder.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClearEmojiRecent$0(DialogInterface dialogInterface, int i) {
            LPhotoPaintView.this.emojiView.clearRecentEmoji();
        }
    }

    @Override // org.telegram.p044ui.Components.IPhotoPaintView
    public float adjustPanLayoutHelperProgress() {
        return this.panTranslationProgress;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        this.destroyed = false;
        super.onAttachedToWindow();
        this.adjustPanLayoutHelper.setResizableView(this);
        this.adjustPanLayoutHelper.onAttach();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.destroyed = true;
        super.onDetachedFromWindow();
        this.adjustPanLayoutHelper.onDetach();
    }
}