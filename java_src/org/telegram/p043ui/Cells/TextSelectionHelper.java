package org.telegram.p043ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.Magnifier;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.zxing.common.detector.MathUtils;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LanguageDetector;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.FloatingActionMode;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ArticleViewer;
import org.telegram.p043ui.Cells.TextSelectionHelper;
import org.telegram.p043ui.Cells.TextSelectionHelper.SelectableView;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.RestrictedLanguagesSelectActivity;
/* renamed from: org.telegram.ui.Cells.TextSelectionHelper */
/* loaded from: classes5.dex */
public abstract class TextSelectionHelper<Cell extends SelectableView> {
    private ActionMode actionMode;
    protected boolean actionsIsShowing;
    boolean allowDiscard;
    public boolean allowScrollPrentRelative;
    private Callback callback;
    protected int capturedX;
    protected int capturedY;
    protected float cornerRadius;
    private TextView deleteView;
    private RectF endArea;
    protected float enterProgress;
    private ValueAnimator handleViewAnimator;
    protected float handleViewProgress;
    private final Runnable hideActionsRunnable;
    private Interpolator interpolator;
    private boolean invalidateParent;
    private boolean isOneTouch;
    int keyboardSize;
    private int lastX;
    private int lastY;
    protected final LayoutBlock layoutBlock;
    private int longpressDelay;
    private Magnifier magnifier;
    private float magnifierDx;
    private float magnifierDy;
    private float magnifierX;
    private float magnifierXanimated;
    private float magnifierY;
    private float magnifierYanimated;
    protected Cell maybeSelectedView;
    protected int maybeTextX;
    protected int maybeTextY;
    protected boolean movingDirectionSettling;
    protected boolean movingHandle;
    protected boolean movingHandleStart;
    float movingOffsetX;
    float movingOffsetY;
    protected boolean multiselect;
    private OnTranslateListener onTranslateListener;
    private boolean parentIsScrolling;
    protected NestedScrollView parentNestedScrollView;
    protected RecyclerListView parentRecyclerView;
    protected ViewGroup parentView;
    private View popupDivider;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout popupLayout;
    private Rect popupRect;
    private TextView popupTranslateButton;
    private ActionBarPopupWindow popupWindow;
    protected Theme.ResourcesProvider resourcesProvider;
    private boolean scrollDown;
    private Runnable scrollRunnable;
    private boolean scrolling;
    protected int selectedCellId;
    protected Cell selectedView;
    public int selectionEnd;
    protected Paint selectionHandlePaint;
    protected Path selectionHandlePath;
    protected Paint selectionPaint;
    protected Path selectionPath;
    public int selectionStart;
    protected boolean showActionsAsPopupAlways;
    private final Runnable showActionsRunnable;
    private boolean snap;
    private RectF startArea;
    final Runnable startSelectionRunnable;
    private final ScalablePath tempPath2;
    protected final Rect textArea;
    private final ActionMode.Callback textSelectActionCallback;
    protected TextSelectionHelper<Cell>.TextSelectionOverlay textSelectionOverlay;
    protected int textX;
    protected int textY;
    protected int[] tmpCoord = new int[2];
    private int topOffset;
    private int touchSlop;
    private boolean tryCapture;
    public boolean useMovingOffset;

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$ArticleSelectableView */
    /* loaded from: classes5.dex */
    public interface ArticleSelectableView extends SelectableView {
        void fillTextLayoutBlocks(ArrayList<TextLayoutBlock> arrayList);
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$Callback */
    /* loaded from: classes5.dex */
    public static class Callback {
        public void onStateChanged(boolean z) {
            throw null;
        }

        public void onTextCopied() {
        }
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$IgnoreCopySpannable */
    /* loaded from: classes5.dex */
    public static class IgnoreCopySpannable {
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$LayoutBlock */
    /* loaded from: classes5.dex */
    public static class LayoutBlock {
        public int charOffset;
        public Layout layout;
        public float xOffset;
        public float yOffset;
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$OnTranslateListener */
    /* loaded from: classes5.dex */
    public interface OnTranslateListener {
        void run(CharSequence charSequence, String str, String str2, Runnable runnable);
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$SelectableView */
    /* loaded from: classes5.dex */
    public interface SelectableView {
        int getBottom();

        int getMeasuredWidth();

        int getTop();

        float getX();

        float getY();

        void invalidate();
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$SimpleSelectabeleView */
    /* loaded from: classes5.dex */
    public interface SimpleSelectabeleView extends SelectableView {
        Layout getStaticTextLayout();

        CharSequence getText();
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$TextLayoutBlock */
    /* loaded from: classes5.dex */
    public interface TextLayoutBlock {
        StaticLayout getLayout();

        CharSequence getPrefix();

        int getRow();

        int getX();

        int getY();
    }

    protected boolean canShowQuote() {
        return false;
    }

    protected abstract void fillLayoutForOffset(int i, LayoutBlock layoutBlock, boolean z);

    protected abstract int getCharOffsetFromCord(int i, int i2, int i3, int i4, Cell cell, boolean z);

    protected abstract int getLineHeight();

    public int getParentBottomPadding() {
        return 0;
    }

    public int getParentTopPadding() {
        return 0;
    }

    protected abstract CharSequence getText(Cell cell, boolean z);

    protected void onExitSelectionMode(boolean z) {
    }

    protected void onOffsetChanged() {
    }

    protected void onQuoteClick(MessageObject messageObject, int i, int i2, CharSequence charSequence) {
    }

    protected abstract void onTextSelected(Cell cell, Cell cell2);

    protected void pickEndView() {
    }

    protected void pickStartView() {
    }

    protected boolean selectLayout(int i, int i2) {
        return false;
    }

    public Cell getSelectedCell() {
        return this.selectedView;
    }

    public TextSelectionHelper() {
        new PathWithSavedBottom();
        this.selectionPaint = new Paint(1);
        this.selectionHandlePaint = new Paint(1);
        this.selectionPath = new Path();
        this.selectionHandlePath = new Path();
        new PathCopyTo(this.selectionPath);
        this.selectionStart = -1;
        this.selectionEnd = -1;
        this.textSelectActionCallback = createActionCallback();
        this.textArea = new Rect();
        this.startArea = new RectF();
        this.endArea = new RectF();
        this.layoutBlock = new LayoutBlock();
        this.interpolator = new OvershootInterpolator();
        this.showActionsAsPopupAlways = false;
        this.scrollRunnable = new Runnable() { // from class: org.telegram.ui.Cells.TextSelectionHelper.1
            @Override // java.lang.Runnable
            public void run() {
                int lineHeight;
                int i;
                int parentTopPadding;
                if (TextSelectionHelper.this.scrolling) {
                    TextSelectionHelper textSelectionHelper = TextSelectionHelper.this;
                    if (textSelectionHelper.parentRecyclerView == null && textSelectionHelper.parentNestedScrollView == null) {
                        return;
                    }
                    if (textSelectionHelper.multiselect && textSelectionHelper.selectedView == null) {
                        lineHeight = AndroidUtilities.m107dp(8);
                    } else if (textSelectionHelper.selectedView == null) {
                        return;
                    } else {
                        lineHeight = textSelectionHelper.getLineHeight() >> 1;
                    }
                    TextSelectionHelper textSelectionHelper2 = TextSelectionHelper.this;
                    if (!textSelectionHelper2.multiselect && !textSelectionHelper2.allowScrollPrentRelative) {
                        if (textSelectionHelper2.scrollDown) {
                            if (TextSelectionHelper.this.selectedView.getBottom() - lineHeight < TextSelectionHelper.this.parentView.getMeasuredHeight() - TextSelectionHelper.this.getParentBottomPadding()) {
                                i = TextSelectionHelper.this.selectedView.getBottom() - TextSelectionHelper.this.parentView.getMeasuredHeight();
                                parentTopPadding = TextSelectionHelper.this.getParentBottomPadding();
                                lineHeight = i + parentTopPadding;
                            }
                        } else if (TextSelectionHelper.this.selectedView.getTop() + lineHeight > TextSelectionHelper.this.getParentTopPadding()) {
                            i = -TextSelectionHelper.this.selectedView.getTop();
                            parentTopPadding = TextSelectionHelper.this.getParentTopPadding();
                            lineHeight = i + parentTopPadding;
                        }
                    }
                    TextSelectionHelper textSelectionHelper3 = TextSelectionHelper.this;
                    RecyclerListView recyclerListView = textSelectionHelper3.parentRecyclerView;
                    if (recyclerListView != null) {
                        recyclerListView.scrollBy(0, textSelectionHelper3.scrollDown ? lineHeight : -lineHeight);
                    }
                    NestedScrollView nestedScrollView = TextSelectionHelper.this.parentNestedScrollView;
                    if (nestedScrollView != null) {
                        int scrollY = nestedScrollView.getScrollY();
                        if (!TextSelectionHelper.this.scrollDown) {
                            lineHeight = -lineHeight;
                        }
                        nestedScrollView.setScrollY(scrollY + lineHeight);
                    }
                    AndroidUtilities.runOnUIThread(this);
                }
            }
        };
        this.startSelectionRunnable = new Runnable() { // from class: org.telegram.ui.Cells.TextSelectionHelper.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                TextSelectionHelper textSelectionHelper = TextSelectionHelper.this;
                Cell cell = textSelectionHelper.maybeSelectedView;
                if (cell == null || textSelectionHelper.textSelectionOverlay == null) {
                    return;
                }
                Cell cell2 = textSelectionHelper.selectedView;
                CharSequence text = textSelectionHelper.getText(cell, true);
                RecyclerListView recyclerListView = TextSelectionHelper.this.parentRecyclerView;
                if (recyclerListView != null) {
                    recyclerListView.cancelClickRunnables(false);
                }
                TextSelectionHelper textSelectionHelper2 = TextSelectionHelper.this;
                int i = textSelectionHelper2.capturedX;
                int i2 = textSelectionHelper2.capturedY;
                if (!textSelectionHelper2.textArea.isEmpty()) {
                    Rect rect = TextSelectionHelper.this.textArea;
                    int i3 = rect.right;
                    if (i > i3) {
                        i = i3 - 1;
                    }
                    int i4 = rect.left;
                    if (i < i4) {
                        i = i4 + 1;
                    }
                    int i5 = rect.top;
                    if (i2 < i5) {
                        i2 = i5 + 1;
                    }
                    int i6 = rect.bottom;
                    if (i2 > i6) {
                        i2 = i6 - 1;
                    }
                }
                int i7 = i;
                TextSelectionHelper textSelectionHelper3 = TextSelectionHelper.this;
                int charOffsetFromCord = textSelectionHelper3.getCharOffsetFromCord(i7, i2, textSelectionHelper3.maybeTextX, textSelectionHelper3.maybeTextY, cell, true);
                if (charOffsetFromCord >= text.length()) {
                    TextSelectionHelper textSelectionHelper4 = TextSelectionHelper.this;
                    textSelectionHelper4.fillLayoutForOffset(charOffsetFromCord, textSelectionHelper4.layoutBlock, true);
                    TextSelectionHelper textSelectionHelper5 = TextSelectionHelper.this;
                    Layout layout = textSelectionHelper5.layoutBlock.layout;
                    if (layout == null) {
                        textSelectionHelper5.selectionEnd = -1;
                        textSelectionHelper5.selectionStart = -1;
                        return;
                    }
                    int lineCount = layout.getLineCount() - 1;
                    TextSelectionHelper textSelectionHelper6 = TextSelectionHelper.this;
                    float f = i7 - textSelectionHelper6.maybeTextX;
                    if (f < textSelectionHelper6.layoutBlock.layout.getLineRight(lineCount) + AndroidUtilities.m107dp(4) && f > TextSelectionHelper.this.layoutBlock.layout.getLineLeft(lineCount)) {
                        charOffsetFromCord = text.length() - 1;
                    }
                }
                if (charOffsetFromCord >= 0 && charOffsetFromCord < text.length() && text.charAt(charOffsetFromCord) != '\n') {
                    TextSelectionHelper textSelectionHelper7 = TextSelectionHelper.this;
                    int i8 = textSelectionHelper7.maybeTextX;
                    int i9 = textSelectionHelper7.maybeTextY;
                    textSelectionHelper7.clear();
                    TextSelectionHelper.this.textSelectionOverlay.setVisibility(0);
                    TextSelectionHelper.this.onTextSelected(cell, cell2);
                    TextSelectionHelper textSelectionHelper8 = TextSelectionHelper.this;
                    textSelectionHelper8.selectionStart = charOffsetFromCord;
                    textSelectionHelper8.selectionEnd = charOffsetFromCord;
                    if (text instanceof Spanned) {
                        Spanned spanned = (Spanned) text;
                        Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) spanned.getSpans(0, text.length(), Emoji.EmojiSpan.class);
                        int length = emojiSpanArr.length;
                        int i10 = 0;
                        while (true) {
                            if (i10 >= length) {
                                z = false;
                                break;
                            }
                            Emoji.EmojiSpan emojiSpan = emojiSpanArr[i10];
                            int spanStart = spanned.getSpanStart(emojiSpan);
                            int spanEnd = spanned.getSpanEnd(emojiSpan);
                            if (charOffsetFromCord >= spanStart && charOffsetFromCord <= spanEnd) {
                                TextSelectionHelper textSelectionHelper9 = TextSelectionHelper.this;
                                textSelectionHelper9.selectionStart = spanStart;
                                textSelectionHelper9.selectionEnd = spanEnd;
                                z = true;
                                break;
                            }
                            i10++;
                        }
                        if (!z) {
                            AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spanned.getSpans(0, text.length(), AnimatedEmojiSpan.class);
                            int length2 = animatedEmojiSpanArr.length;
                            int i11 = 0;
                            while (true) {
                                if (i11 >= length2) {
                                    break;
                                }
                                AnimatedEmojiSpan animatedEmojiSpan = animatedEmojiSpanArr[i11];
                                int spanStart2 = spanned.getSpanStart(animatedEmojiSpan);
                                int spanEnd2 = spanned.getSpanEnd(animatedEmojiSpan);
                                if (charOffsetFromCord >= spanStart2 && charOffsetFromCord <= spanEnd2) {
                                    TextSelectionHelper textSelectionHelper10 = TextSelectionHelper.this;
                                    textSelectionHelper10.selectionStart = spanStart2;
                                    textSelectionHelper10.selectionEnd = spanEnd2;
                                    break;
                                }
                                i11++;
                            }
                        }
                    }
                    TextSelectionHelper textSelectionHelper11 = TextSelectionHelper.this;
                    if (textSelectionHelper11.selectionStart == textSelectionHelper11.selectionEnd) {
                        while (true) {
                            int i12 = TextSelectionHelper.this.selectionStart;
                            if (i12 <= 0 || !TextSelectionHelper.isInterruptedCharacter(text.charAt(i12 - 1))) {
                                break;
                            }
                            TextSelectionHelper.this.selectionStart--;
                        }
                        while (TextSelectionHelper.this.selectionEnd < text.length() && TextSelectionHelper.isInterruptedCharacter(text.charAt(TextSelectionHelper.this.selectionEnd))) {
                            TextSelectionHelper.this.selectionEnd++;
                        }
                    }
                    TextSelectionHelper textSelectionHelper12 = TextSelectionHelper.this;
                    textSelectionHelper12.textX = i8;
                    textSelectionHelper12.textY = i9;
                    textSelectionHelper12.selectedView = cell;
                    textSelectionHelper12.textSelectionOverlay.performHapticFeedback(0, 1);
                    AndroidUtilities.cancelRunOnUIThread(TextSelectionHelper.this.showActionsRunnable);
                    AndroidUtilities.runOnUIThread(TextSelectionHelper.this.showActionsRunnable);
                    TextSelectionHelper.this.showHandleViews();
                    TextSelectionHelper.this.invalidate();
                    if (cell2 != null) {
                        cell2.invalidate();
                    }
                    if (TextSelectionHelper.this.callback != null) {
                        TextSelectionHelper.this.callback.onStateChanged(true);
                    }
                    TextSelectionHelper textSelectionHelper13 = TextSelectionHelper.this;
                    textSelectionHelper13.movingHandle = true;
                    textSelectionHelper13.movingDirectionSettling = true;
                    textSelectionHelper13.isOneTouch = true;
                    TextSelectionHelper textSelectionHelper14 = TextSelectionHelper.this;
                    textSelectionHelper14.movingOffsetY = BitmapDescriptorFactory.HUE_RED;
                    textSelectionHelper14.movingOffsetX = BitmapDescriptorFactory.HUE_RED;
                    textSelectionHelper14.onOffsetChanged();
                }
                TextSelectionHelper.this.tryCapture = false;
                TextSelectionHelper.this.allowDiscard = false;
            }
        };
        this.useMovingOffset = true;
        this.onTranslateListener = null;
        this.showActionsRunnable = new Runnable() { // from class: org.telegram.ui.Cells.TextSelectionHelper$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                TextSelectionHelper.this.lambda$new$1();
            }
        };
        this.hideActionsRunnable = new Runnable() { // from class: org.telegram.ui.Cells.TextSelectionHelper.3
            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT < 23 || TextSelectionHelper.this.actionMode == null) {
                    return;
                }
                TextSelectionHelper textSelectionHelper = TextSelectionHelper.this;
                if (textSelectionHelper.actionsIsShowing) {
                    return;
                }
                textSelectionHelper.actionMode.hide(Long.MAX_VALUE);
                AndroidUtilities.runOnUIThread(TextSelectionHelper.this.hideActionsRunnable, 1000L);
            }
        };
        this.tempPath2 = new ScalablePath();
        this.longpressDelay = ViewConfiguration.getLongPressTimeout();
        this.touchSlop = ViewConfiguration.get(ApplicationLoader.applicationContext).getScaledTouchSlop();
        Paint paint = this.selectionPaint;
        float m107dp = AndroidUtilities.m107dp(6);
        this.cornerRadius = m107dp;
        paint.setPathEffect(new CornerPathEffect(m107dp));
    }

    public void setInvalidateParent() {
        this.invalidateParent = true;
    }

    public void setOnTranslate(OnTranslateListener onTranslateListener) {
        this.onTranslateListener = onTranslateListener;
    }

    public void setParentView(ViewGroup viewGroup) {
        if (viewGroup instanceof RecyclerListView) {
            this.parentRecyclerView = (RecyclerListView) viewGroup;
        }
        this.parentView = viewGroup;
    }

    public void setScrollingParent(View view) {
        if (view instanceof NestedScrollView) {
            this.parentNestedScrollView = (NestedScrollView) view;
        }
    }

    public void setMaybeTextCord(int i, int i2) {
        this.maybeTextX = i;
        this.maybeTextY = i2;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.capturedX = (int) motionEvent.getX();
            this.capturedY = (int) motionEvent.getY();
            this.tryCapture = false;
            this.textArea.inset(-AndroidUtilities.m107dp(8), -AndroidUtilities.m107dp(8));
            if (this.textArea.contains(this.capturedX, this.capturedY) && this.maybeSelectedView != null) {
                this.textArea.inset(AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8));
                int i = this.capturedX;
                int i2 = this.capturedY;
                Rect rect = this.textArea;
                int i3 = rect.right;
                if (i > i3) {
                    i = i3 - 1;
                }
                int i4 = rect.left;
                if (i < i4) {
                    i = i4 + 1;
                }
                int i5 = rect.top;
                if (i2 < i5) {
                    i2 = i5 + 1;
                }
                int i6 = rect.bottom;
                int charOffsetFromCord = getCharOffsetFromCord(i, i2 > i6 ? i6 - 1 : i2, this.maybeTextX, this.maybeTextY, this.maybeSelectedView, true);
                CharSequence text = getText(this.maybeSelectedView, true);
                if (charOffsetFromCord >= text.length()) {
                    fillLayoutForOffset(charOffsetFromCord, this.layoutBlock, true);
                    Layout layout = this.layoutBlock.layout;
                    if (layout == null) {
                        this.tryCapture = false;
                        return false;
                    }
                    int lineCount = layout.getLineCount() - 1;
                    float f = i - this.maybeTextX;
                    if (f < this.layoutBlock.layout.getLineRight(lineCount) + AndroidUtilities.m107dp(4) && f > this.layoutBlock.layout.getLineLeft(lineCount)) {
                        charOffsetFromCord = text.length() - 1;
                    }
                }
                if (charOffsetFromCord >= 0 && charOffsetFromCord < text.length() && text.charAt(charOffsetFromCord) != '\n') {
                    AndroidUtilities.cancelRunOnUIThread(this.startSelectionRunnable);
                    AndroidUtilities.runOnUIThread(this.startSelectionRunnable, this.longpressDelay);
                    this.tryCapture = true;
                }
            }
            return this.tryCapture;
        }
        if (action != 1) {
            if (action == 2) {
                int y = (int) motionEvent.getY();
                int x = (int) motionEvent.getX();
                int i7 = this.capturedY;
                int i8 = this.capturedX;
                int i9 = ((i7 - y) * (i7 - y)) + ((i8 - x) * (i8 - x));
                int i10 = this.touchSlop;
                if (i9 > i10 * i10) {
                    AndroidUtilities.cancelRunOnUIThread(this.startSelectionRunnable);
                    this.tryCapture = false;
                }
                return this.tryCapture;
            } else if (action != 3) {
                return false;
            }
        }
        AndroidUtilities.cancelRunOnUIThread(this.startSelectionRunnable);
        this.tryCapture = false;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideMagnifier() {
        Magnifier magnifier;
        if (Build.VERSION.SDK_INT < 28 || (magnifier = this.magnifier) == null) {
            return;
        }
        magnifier.dismiss();
        this.magnifier = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMagnifier(int i) {
        int lineRight;
        int lineLeft;
        if (Build.VERSION.SDK_INT < 28 || this.selectedView == null || this.isOneTouch || !this.movingHandle || this.textSelectionOverlay == null) {
            return;
        }
        int i2 = this.movingHandleStart ? this.selectionStart : this.selectionEnd;
        fillLayoutForOffset(i2, this.layoutBlock);
        LayoutBlock layoutBlock = this.layoutBlock;
        Layout layout = layoutBlock.layout;
        if (layout == null) {
            return;
        }
        int lineForOffset = layout.getLineForOffset(Utilities.clamp(i2 - layoutBlock.charOffset, layout.getText().length(), 0));
        int lineBottom = layout.getLineBottom(lineForOffset) - layout.getLineTop(lineForOffset);
        int[] coordsInParent = getCoordsInParent();
        int lineTop = (int) (((((layout.getLineTop(lineForOffset) + this.textY) + coordsInParent[1]) - lineBottom) - AndroidUtilities.m107dp(8)) + this.layoutBlock.yOffset);
        Cell cell = this.selectedView;
        if (cell instanceof ArticleViewer.BlockTableCell) {
            lineLeft = coordsInParent[0];
            lineRight = coordsInParent[0] + cell.getMeasuredWidth();
        } else {
            lineRight = (int) (coordsInParent[0] + this.textX + layout.getLineRight(lineForOffset));
            lineLeft = (int) (coordsInParent[0] + this.textX + layout.getLineLeft(lineForOffset));
        }
        if (i < lineLeft) {
            i = lineLeft;
        } else if (i > lineRight) {
            i = lineRight;
        }
        float f = lineTop;
        if (this.magnifierY != f) {
            this.magnifierY = f;
            this.magnifierDy = (f - this.magnifierYanimated) / 200.0f;
        }
        float f2 = i;
        if (this.magnifierX != f2) {
            this.magnifierX = f2;
            this.magnifierDx = (f2 - this.magnifierXanimated) / 100.0f;
        }
        if (this.magnifier == null) {
            this.magnifier = new Magnifier(this.textSelectionOverlay);
            this.magnifierYanimated = this.magnifierY;
            this.magnifierXanimated = this.magnifierX;
        }
        float f3 = this.magnifierYanimated;
        float f4 = this.magnifierY;
        if (f3 != f4) {
            this.magnifierYanimated = f3 + (this.magnifierDy * 16.0f);
        }
        float f5 = this.magnifierDy;
        if (f5 > BitmapDescriptorFactory.HUE_RED && this.magnifierYanimated > f4) {
            this.magnifierYanimated = f4;
        } else if (f5 < BitmapDescriptorFactory.HUE_RED && this.magnifierYanimated < f4) {
            this.magnifierYanimated = f4;
        }
        float f6 = this.magnifierXanimated;
        float f7 = this.magnifierX;
        if (f6 != f7) {
            this.magnifierXanimated = f6 + (this.magnifierDx * 16.0f);
        }
        float f8 = this.magnifierDx;
        if (f8 > BitmapDescriptorFactory.HUE_RED && this.magnifierXanimated > f7) {
            this.magnifierXanimated = f7;
        } else if (f8 < BitmapDescriptorFactory.HUE_RED && this.magnifierXanimated < f7) {
            this.magnifierXanimated = f7;
        }
        this.magnifier.show(this.magnifierXanimated, this.magnifierYanimated + (lineBottom * 1.5f) + AndroidUtilities.m107dp(8));
        this.magnifier.update();
    }

    protected void showHandleViews() {
        if (this.handleViewProgress == 1.0f || this.textSelectionOverlay == null) {
            return;
        }
        ValueAnimator valueAnimator = this.handleViewAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.handleViewProgress, 1.0f);
        this.handleViewAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.TextSelectionHelper$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TextSelectionHelper.this.lambda$showHandleViews$0(valueAnimator2);
            }
        });
        this.handleViewAnimator.setDuration(Math.abs(1.0f - this.handleViewProgress) * 250.0f);
        this.handleViewAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showHandleViews$0(ValueAnimator valueAnimator) {
        this.handleViewProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.textSelectionOverlay.invalidate();
    }

    public boolean isInSelectionMode() {
        return this.selectionStart >= 0 && this.selectionEnd >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        this.textSelectionOverlay.invalidate();
        showActions();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x026c, code lost:
        if (r6 < 0) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void showActions() {
        /*
            Method dump skipped, instructions count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.TextSelectionHelper.showActions():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$showActions$2(View view, MotionEvent motionEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (motionEvent.getActionMasked() == 0 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            view.getHitRect(this.popupRect);
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showActions$3(View view) {
        copyText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showActions$4(View view) {
        translateText();
    }

    protected boolean canShowActions() {
        return this.selectedView != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideActions() {
        ActionMode actionMode;
        if (Build.VERSION.SDK_INT >= 23) {
            if (this.actionMode != null && this.actionsIsShowing) {
                this.actionsIsShowing = false;
                this.hideActionsRunnable.run();
            }
            this.actionsIsShowing = false;
        }
        if (!isInSelectionMode() && (actionMode = this.actionMode) != null) {
            actionMode.finish();
            this.actionMode = null;
        }
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
        }
    }

    public TextSelectionHelper<Cell>.TextSelectionOverlay getOverlayView(Context context) {
        if (this.textSelectionOverlay == null) {
            this.textSelectionOverlay = new TextSelectionOverlay(context);
        }
        return this.textSelectionOverlay;
    }

    public boolean isSelected(MessageObject messageObject) {
        return messageObject != null && this.selectedCellId == messageObject.getId();
    }

    public void checkSelectionCancel(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            cancelTextSelectionRunnable();
        }
    }

    public void cancelTextSelectionRunnable() {
        AndroidUtilities.cancelRunOnUIThread(this.startSelectionRunnable);
        this.tryCapture = false;
    }

    public void clear() {
        clear(false);
    }

    public void clear(boolean z) {
        onExitSelectionMode(z);
        this.selectionStart = -1;
        this.selectionEnd = -1;
        hideMagnifier();
        hideActions();
        invalidate();
        this.selectedView = null;
        this.selectedCellId = 0;
        AndroidUtilities.cancelRunOnUIThread(this.startSelectionRunnable);
        this.tryCapture = false;
        TextSelectionHelper<Cell>.TextSelectionOverlay textSelectionOverlay = this.textSelectionOverlay;
        if (textSelectionOverlay != null) {
            textSelectionOverlay.setVisibility(8);
        }
        this.handleViewProgress = BitmapDescriptorFactory.HUE_RED;
        Callback callback = this.callback;
        if (callback != null) {
            callback.onStateChanged(false);
        }
        this.capturedX = -1;
        this.capturedY = -1;
        this.maybeTextX = -1;
        this.maybeTextY = -1;
        this.movingOffsetX = BitmapDescriptorFactory.HUE_RED;
        this.movingOffsetY = BitmapDescriptorFactory.HUE_RED;
        this.movingHandle = false;
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public boolean isTryingSelect() {
        return this.tryCapture;
    }

    public void onParentScrolled() {
        TextSelectionHelper<Cell>.TextSelectionOverlay textSelectionOverlay;
        if (!isInSelectionMode() || (textSelectionOverlay = this.textSelectionOverlay) == null) {
            return;
        }
        this.parentIsScrolling = true;
        textSelectionOverlay.invalidate();
        hideActions();
    }

    public void stopScrolling() {
        this.parentIsScrolling = false;
        this.textSelectionOverlay.invalidate();
        AndroidUtilities.cancelRunOnUIThread(this.showActionsRunnable);
        AndroidUtilities.runOnUIThread(this.showActionsRunnable);
    }

    public static boolean isInterruptedCharacter(char c) {
        return Character.isLetter(c) || Character.isDigit(c) || c == '_';
    }

    public void setTopOffset(int i) {
        this.topOffset = i;
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$TextSelectionOverlay */
    /* loaded from: classes5.dex */
    public class TextSelectionOverlay extends View {
        float cancelPressedX;
        float cancelPressedY;
        Paint handleViewPaint;
        Path path;
        long pressedTime;
        float pressedX;
        float pressedY;

        public TextSelectionOverlay(Context context) {
            super(context);
            this.handleViewPaint = new Paint(1);
            this.pressedTime = 0L;
            this.path = new Path();
            this.handleViewPaint.setStyle(Paint.Style.FILL);
        }

        public boolean checkOnTap(MotionEvent motionEvent) {
            if (TextSelectionHelper.this.isInSelectionMode() && !TextSelectionHelper.this.movingHandle) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.pressedX = motionEvent.getX();
                    this.pressedY = motionEvent.getY();
                    this.pressedTime = System.currentTimeMillis();
                } else if (action == 1 && System.currentTimeMillis() - this.pressedTime < 200 && MathUtils.distance((int) this.pressedX, (int) this.pressedY, (int) motionEvent.getX(), (int) motionEvent.getY()) < TextSelectionHelper.this.touchSlop) {
                    TextSelectionHelper.this.hideActions();
                    TextSelectionHelper.this.clear();
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
            if (r4 != 3) goto L15;
         */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0117  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0130 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0154  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0169  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x01a7  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r22) {
            /*
                Method dump skipped, instructions count: 1567
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.TextSelectionHelper.TextSelectionOverlay.onTouchEvent(android.view.MotionEvent):boolean");
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            TextSelectionHelper textSelectionHelper;
            TextSelectionHelper textSelectionHelper2;
            if (TextSelectionHelper.this.isInSelectionMode()) {
                int m107dp = AndroidUtilities.m107dp(22);
                int i2 = TextSelectionHelper.this.topOffset;
                TextSelectionHelper.this.pickEndView();
                if (TextSelectionHelper.this.selectedView != null) {
                    canvas.save();
                    int[] coordsInParent = TextSelectionHelper.this.getCoordsInParent();
                    int i3 = coordsInParent[1];
                    TextSelectionHelper textSelectionHelper3 = TextSelectionHelper.this;
                    float f = i3 + textSelectionHelper3.textY;
                    float f2 = coordsInParent[0] + textSelectionHelper3.textX;
                    canvas.translate(f2, f);
                    Cell cell = TextSelectionHelper.this.selectedView;
                    MessageObject messageObject = cell instanceof ChatMessageCell ? ((ChatMessageCell) cell).getMessageObject() : null;
                    if (messageObject != null && messageObject.isOutOwner()) {
                        this.handleViewPaint.setColor(TextSelectionHelper.this.getThemedColor(Theme.key_chat_outTextSelectionCursor));
                    } else {
                        this.handleViewPaint.setColor(TextSelectionHelper.this.getThemedColor(Theme.key_chat_TextSelectionCursor));
                    }
                    TextSelectionHelper textSelectionHelper4 = TextSelectionHelper.this;
                    int length = textSelectionHelper4.getText(textSelectionHelper4.selectedView, false).length();
                    TextSelectionHelper textSelectionHelper5 = TextSelectionHelper.this;
                    int i4 = textSelectionHelper5.selectionEnd;
                    if (i4 >= 0 && i4 <= length) {
                        textSelectionHelper5.fillLayoutForOffset(i4, textSelectionHelper5.layoutBlock);
                        TextSelectionHelper textSelectionHelper6 = TextSelectionHelper.this;
                        LayoutBlock layoutBlock = textSelectionHelper6.layoutBlock;
                        Layout layout = layoutBlock.layout;
                        if (layout != null) {
                            int i5 = textSelectionHelper6.selectionEnd - layoutBlock.charOffset;
                            int length2 = layout.getText().length();
                            if (i5 > length2) {
                                i5 = length2;
                            }
                            int lineForOffset = layout.getLineForOffset(i5);
                            float primaryHorizontal = layout.getPrimaryHorizontal(i5);
                            LayoutBlock layoutBlock2 = TextSelectionHelper.this.layoutBlock;
                            float f3 = primaryHorizontal + layoutBlock2.xOffset;
                            float lineBottom = (int) (layout.getLineBottom(lineForOffset) + layoutBlock2.yOffset);
                            float f4 = f + lineBottom;
                            if (f4 <= textSelectionHelper2.keyboardSize + i2 || f4 >= textSelectionHelper2.parentView.getMeasuredHeight()) {
                                TextSelectionHelper.this.endArea.setEmpty();
                            } else if (!layout.isRtlCharAt(TextSelectionHelper.this.selectionEnd)) {
                                canvas.save();
                                canvas.translate(f3, lineBottom);
                                float interpolation = TextSelectionHelper.this.interpolator.getInterpolation(TextSelectionHelper.this.handleViewProgress);
                                float f5 = m107dp;
                                float f6 = f5 / 2.0f;
                                canvas.scale(interpolation, interpolation, f6, f6);
                                this.path.reset();
                                this.path.addCircle(f6, f6, f6, Path.Direction.CCW);
                                this.path.addRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f6, f6, Path.Direction.CCW);
                                canvas.drawPath(this.path, this.handleViewPaint);
                                canvas.restore();
                                float f7 = f2 + f3;
                                TextSelectionHelper.this.endArea.set(f7, f4 - f5, f7 + f5, f4 + f5);
                                TextSelectionHelper.this.endArea.inset(-AndroidUtilities.m107dp(8), -AndroidUtilities.m107dp(8));
                                i = 1;
                                canvas.restore();
                            } else {
                                canvas.save();
                                float f8 = m107dp;
                                canvas.translate(f3 - f8, lineBottom);
                                float interpolation2 = TextSelectionHelper.this.interpolator.getInterpolation(TextSelectionHelper.this.handleViewProgress);
                                float f9 = f8 / 2.0f;
                                canvas.scale(interpolation2, interpolation2, f9, f9);
                                this.path.reset();
                                this.path.addCircle(f9, f9, f9, Path.Direction.CCW);
                                this.path.addRect(f9, BitmapDescriptorFactory.HUE_RED, f8, f9, Path.Direction.CCW);
                                canvas.drawPath(this.path, this.handleViewPaint);
                                canvas.restore();
                                float f10 = f2 + f3;
                                TextSelectionHelper.this.endArea.set(f10 - f8, f4 - f8, f10, f4 + f8);
                                TextSelectionHelper.this.endArea.inset(-AndroidUtilities.m107dp(8), -AndroidUtilities.m107dp(8));
                            }
                        }
                    }
                    i = 0;
                    canvas.restore();
                } else {
                    i = 0;
                }
                TextSelectionHelper.this.pickStartView();
                if (TextSelectionHelper.this.selectedView != null) {
                    canvas.save();
                    int[] coordsInParent2 = TextSelectionHelper.this.getCoordsInParent();
                    int i6 = coordsInParent2[1];
                    TextSelectionHelper textSelectionHelper7 = TextSelectionHelper.this;
                    float f11 = i6 + textSelectionHelper7.textY;
                    float f12 = coordsInParent2[0] + textSelectionHelper7.textX;
                    canvas.translate(f12, f11);
                    TextSelectionHelper textSelectionHelper8 = TextSelectionHelper.this;
                    int length3 = textSelectionHelper8.getText(textSelectionHelper8.selectedView, false).length();
                    TextSelectionHelper textSelectionHelper9 = TextSelectionHelper.this;
                    int i7 = textSelectionHelper9.selectionStart;
                    if (i7 >= 0 && i7 <= length3) {
                        textSelectionHelper9.fillLayoutForOffset(i7, textSelectionHelper9.layoutBlock);
                        TextSelectionHelper textSelectionHelper10 = TextSelectionHelper.this;
                        LayoutBlock layoutBlock3 = textSelectionHelper10.layoutBlock;
                        Layout layout2 = layoutBlock3.layout;
                        if (layout2 != null) {
                            int i8 = textSelectionHelper10.selectionStart - layoutBlock3.charOffset;
                            int lineForOffset2 = layout2.getLineForOffset(i8);
                            float primaryHorizontal2 = layout2.getPrimaryHorizontal(i8);
                            LayoutBlock layoutBlock4 = TextSelectionHelper.this.layoutBlock;
                            float f13 = primaryHorizontal2 + layoutBlock4.xOffset;
                            float lineBottom2 = (int) (layout2.getLineBottom(lineForOffset2) + layoutBlock4.yOffset);
                            float f14 = f11 + lineBottom2;
                            if (f14 > i2 + textSelectionHelper.keyboardSize && f14 < textSelectionHelper.parentView.getMeasuredHeight()) {
                                if (!layout2.isRtlCharAt(TextSelectionHelper.this.selectionStart)) {
                                    canvas.save();
                                    float f15 = m107dp;
                                    canvas.translate(f13 - f15, lineBottom2);
                                    float interpolation3 = TextSelectionHelper.this.interpolator.getInterpolation(TextSelectionHelper.this.handleViewProgress);
                                    float f16 = f15 / 2.0f;
                                    canvas.scale(interpolation3, interpolation3, f16, f16);
                                    this.path.reset();
                                    this.path.addCircle(f16, f16, f16, Path.Direction.CCW);
                                    this.path.addRect(f16, BitmapDescriptorFactory.HUE_RED, f15, f16, Path.Direction.CCW);
                                    canvas.drawPath(this.path, this.handleViewPaint);
                                    canvas.restore();
                                    float f17 = f12 + f13;
                                    TextSelectionHelper.this.startArea.set(f17 - f15, f14 - f15, f17, f14 + f15);
                                    TextSelectionHelper.this.startArea.inset(-AndroidUtilities.m107dp(8), -AndroidUtilities.m107dp(8));
                                    i++;
                                } else {
                                    canvas.save();
                                    canvas.translate(f13, lineBottom2);
                                    float interpolation4 = TextSelectionHelper.this.interpolator.getInterpolation(TextSelectionHelper.this.handleViewProgress);
                                    float f18 = m107dp;
                                    float f19 = f18 / 2.0f;
                                    canvas.scale(interpolation4, interpolation4, f19, f19);
                                    this.path.reset();
                                    this.path.addCircle(f19, f19, f19, Path.Direction.CCW);
                                    this.path.addRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f19, f19, Path.Direction.CCW);
                                    canvas.drawPath(this.path, this.handleViewPaint);
                                    canvas.restore();
                                    float f20 = f12 + f13;
                                    TextSelectionHelper.this.startArea.set(f20, f14 - f18, f20 + f18, f14 + f18);
                                    TextSelectionHelper.this.startArea.inset(-AndroidUtilities.m107dp(8), -AndroidUtilities.m107dp(8));
                                }
                            } else {
                                if (f14 > BitmapDescriptorFactory.HUE_RED && f14 - TextSelectionHelper.this.getLineHeight() < TextSelectionHelper.this.parentView.getMeasuredHeight()) {
                                    i++;
                                }
                                TextSelectionHelper.this.startArea.setEmpty();
                            }
                        }
                    }
                    canvas.restore();
                }
                if (i != 0) {
                    TextSelectionHelper textSelectionHelper11 = TextSelectionHelper.this;
                    if (textSelectionHelper11.movingHandle) {
                        if (!textSelectionHelper11.movingHandleStart) {
                            textSelectionHelper11.pickEndView();
                        }
                        TextSelectionHelper textSelectionHelper12 = TextSelectionHelper.this;
                        textSelectionHelper12.showMagnifier(textSelectionHelper12.lastX);
                        if (TextSelectionHelper.this.magnifierY != TextSelectionHelper.this.magnifierYanimated || TextSelectionHelper.this.magnifierX != TextSelectionHelper.this.magnifierXanimated) {
                            invalidate();
                        }
                    }
                }
                if (!TextSelectionHelper.this.parentIsScrolling) {
                    AndroidUtilities.cancelRunOnUIThread(TextSelectionHelper.this.showActionsRunnable);
                    AndroidUtilities.runOnUIThread(TextSelectionHelper.this.showActionsRunnable);
                }
                if (Build.VERSION.SDK_INT >= 23 && TextSelectionHelper.this.actionMode != null) {
                    TextSelectionHelper.this.actionMode.invalidateContentRect();
                    if (TextSelectionHelper.this.actionMode != null) {
                        ((FloatingActionMode) TextSelectionHelper.this.actionMode).updateViewLocationInWindow();
                    }
                }
                if (TextSelectionHelper.this.isOneTouch) {
                    invalidate();
                }
            }
        }

        public void checkCancel(float f, float f2, boolean z) {
            if (!z) {
                int i = TextSelectionHelper.this.getCoordsInParent()[1];
                int i2 = TextSelectionHelper.this.textY;
            }
            TextSelectionHelper textSelectionHelper = TextSelectionHelper.this;
            if (textSelectionHelper.movingHandle || !textSelectionHelper.allowDiscard) {
                return;
            }
            textSelectionHelper.clear();
        }

        public void checkCancelAction(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                this.cancelPressedX = motionEvent.getX();
                this.cancelPressedY = motionEvent.getY();
                TextSelectionHelper textSelectionHelper = TextSelectionHelper.this;
                textSelectionHelper.allowDiscard = textSelectionHelper.isInSelectionMode();
            } else if (!TextSelectionHelper.this.allowDiscard || Math.abs(motionEvent.getX() - this.cancelPressedX) >= AndroidUtilities.touchSlop || Math.abs(motionEvent.getY() - this.cancelPressedY) >= AndroidUtilities.touchSlop) {
            } else {
                if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
                    checkCancel(motionEvent.getX(), motionEvent.getY(), true);
                }
            }
        }

        @Override // android.view.View
        public void invalidate() {
            ViewGroup viewGroup;
            super.invalidate();
            if (!TextSelectionHelper.this.invalidateParent || (viewGroup = TextSelectionHelper.this.parentView) == null) {
                return;
            }
            viewGroup.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] getCoordsInParent() {
        int i;
        int i2;
        View view = (View) this.selectedView;
        if (view != null && this.parentView != null) {
            i = 0;
            i2 = 0;
            while (view != this.parentView) {
                if (view != null) {
                    i = (int) (i + view.getY());
                    i2 = (int) (i2 + view.getX());
                    if (view instanceof NestedScrollView) {
                        i -= view.getScrollY();
                        i2 -= view.getScrollX();
                    }
                    if (view.getParent() instanceof View) {
                        view = (View) view.getParent();
                    }
                }
            }
            return new int[]{i2, i};
        }
        i = 0;
        i2 = 0;
        return new int[]{i2, i};
    }

    protected void jumpToLine(int i, int i2, boolean z, float f, float f2, Cell cell) {
        int i3;
        int i4;
        if (this.movingHandleStart) {
            this.selectionStart = i2;
            if (!z && i2 > (i4 = this.selectionEnd)) {
                this.selectionEnd = i2;
                this.selectionStart = i4;
                this.movingHandleStart = false;
            }
            this.snap = true;
            return;
        }
        this.selectionEnd = i2;
        if (!z && (i3 = this.selectionStart) > i2) {
            this.selectionEnd = i3;
            this.selectionStart = i2;
            this.movingHandleStart = true;
        }
        this.snap = true;
    }

    protected boolean canSelect(int i) {
        return (i == this.selectionStart || i == this.selectionEnd) ? false : true;
    }

    public void invalidate() {
        Cell cell = this.selectedView;
        if (cell != null) {
            cell.invalidate();
        }
        TextSelectionHelper<Cell>.TextSelectionOverlay textSelectionOverlay = this.textSelectionOverlay;
        if (textSelectionOverlay != null) {
            textSelectionOverlay.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$4 */
    /* loaded from: classes5.dex */
    public class ActionMode$CallbackC40804 implements ActionMode.Callback {
        private String translateFromLanguage = null;

        ActionMode$CallbackC40804() {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            menu.add(0, 16908321, 0, 17039361);
            menu.add(0, C3632R.C3635id.menu_quote, 1, LocaleController.getString(C3632R.string.Quote));
            menu.add(0, 16908319, 2, 17039373);
            menu.add(0, 3, 3, LocaleController.getString("TranslateMessage", C3632R.string.TranslateMessage));
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, final Menu menu) {
            menu.getItem(1).setVisible(TextSelectionHelper.this.canShowQuote());
            TextSelectionHelper textSelectionHelper = TextSelectionHelper.this;
            Cell cell = textSelectionHelper.selectedView;
            if (cell != null) {
                CharSequence text = textSelectionHelper.getText(cell, false);
                TextSelectionHelper textSelectionHelper2 = TextSelectionHelper.this;
                if (textSelectionHelper2.multiselect || (textSelectionHelper2.selectionStart <= 0 && textSelectionHelper2.selectionEnd >= text.length() - 1)) {
                    menu.getItem(2).setVisible(false);
                } else {
                    menu.getItem(2).setVisible(true);
                }
            }
            if (TextSelectionHelper.this.onTranslateListener != null && LanguageDetector.hasSupport() && TextSelectionHelper.this.getSelectedText() != null) {
                LanguageDetector.detectLanguage(TextSelectionHelper.this.getSelectedText().toString(), new LanguageDetector.StringCallback() { // from class: org.telegram.ui.Cells.TextSelectionHelper$4$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.LanguageDetector.StringCallback
                    public final void run(String str) {
                        TextSelectionHelper.ActionMode$CallbackC40804.this.lambda$onPrepareActionMode$0(menu, str);
                    }
                }, new LanguageDetector.ExceptionCallback() { // from class: org.telegram.ui.Cells.TextSelectionHelper$4$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.LanguageDetector.ExceptionCallback
                    public final void run(Exception exc) {
                        TextSelectionHelper.ActionMode$CallbackC40804.this.lambda$onPrepareActionMode$1(menu, exc);
                    }
                });
            } else {
                this.translateFromLanguage = null;
                updateTranslateButton(menu);
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPrepareActionMode$0(Menu menu, String str) {
            this.translateFromLanguage = str;
            updateTranslateButton(menu);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPrepareActionMode$1(Menu menu, Exception exc) {
            FileLog.m104e("mlkit: failed to detect language in selection");
            FileLog.m102e(exc);
            this.translateFromLanguage = null;
            updateTranslateButton(menu);
        }

        private void updateTranslateButton(Menu menu) {
            String str;
            menu.getItem(3).setVisible(TextSelectionHelper.this.onTranslateListener != null && (((str = this.translateFromLanguage) != null && ((!str.equals(LocaleController.getInstance().getCurrentLocale().getLanguage()) || this.translateFromLanguage.equals("und")) && !RestrictedLanguagesSelectActivity.getRestrictedLanguages().contains(this.translateFromLanguage))) || !LanguageDetector.hasSupport()));
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (TextSelectionHelper.this.isInSelectionMode()) {
                int itemId = menuItem.getItemId();
                if (itemId == 16908321) {
                    TextSelectionHelper.this.copyText();
                    return true;
                } else if (itemId == 16908319) {
                    TextSelectionHelper textSelectionHelper = TextSelectionHelper.this;
                    CharSequence text = textSelectionHelper.getText(textSelectionHelper.selectedView, false);
                    if (text == null) {
                        return true;
                    }
                    TextSelectionHelper textSelectionHelper2 = TextSelectionHelper.this;
                    textSelectionHelper2.selectionStart = 0;
                    textSelectionHelper2.selectionEnd = text.length();
                    TextSelectionHelper.this.hideActions();
                    TextSelectionHelper.this.invalidate();
                    AndroidUtilities.cancelRunOnUIThread(TextSelectionHelper.this.showActionsRunnable);
                    AndroidUtilities.runOnUIThread(TextSelectionHelper.this.showActionsRunnable);
                    return true;
                } else if (itemId == 3) {
                    if (TextSelectionHelper.this.onTranslateListener != null) {
                        TextSelectionHelper.this.onTranslateListener.run(TextSelectionHelper.this.getSelectedText(), this.translateFromLanguage, LocaleController.getInstance().getCurrentLocale().getLanguage(), new Runnable() { // from class: org.telegram.ui.Cells.TextSelectionHelper$4$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                TextSelectionHelper.ActionMode$CallbackC40804.this.lambda$onActionItemClicked$2();
                            }
                        });
                    }
                    TextSelectionHelper.this.hideActions();
                    return true;
                } else if (itemId == C3632R.C3635id.menu_quote) {
                    TextSelectionHelper.this.quoteText();
                    TextSelectionHelper.this.hideActions();
                    return true;
                } else {
                    TextSelectionHelper.this.clear();
                    return true;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onActionItemClicked$2() {
            TextSelectionHelper.this.showActions();
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            if (Build.VERSION.SDK_INT < 23) {
                TextSelectionHelper.this.clear();
            }
        }
    }

    private ActionMode.Callback createActionCallback() {
        final ActionMode$CallbackC40804 actionMode$CallbackC40804 = new ActionMode$CallbackC40804();
        return Build.VERSION.SDK_INT >= 23 ? new ActionMode.Callback2() { // from class: org.telegram.ui.Cells.TextSelectionHelper.5
            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return actionMode$CallbackC40804.onCreateActionMode(actionMode, menu);
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return actionMode$CallbackC40804.onPrepareActionMode(actionMode, menu);
            }

            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return actionMode$CallbackC40804.onActionItemClicked(actionMode, menuItem);
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                actionMode$CallbackC40804.onDestroyActionMode(actionMode);
            }

            @Override // android.view.ActionMode.Callback2
            public void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
                int i;
                if (TextSelectionHelper.this.isInSelectionMode()) {
                    TextSelectionHelper.this.pickStartView();
                    int[] coordsInParent = TextSelectionHelper.this.getCoordsInParent();
                    TextSelectionHelper textSelectionHelper = TextSelectionHelper.this;
                    int i2 = 1;
                    if (textSelectionHelper.selectedView != null) {
                        TextSelectionHelper textSelectionHelper2 = TextSelectionHelper.this;
                        int[] offsetToCord = textSelectionHelper2.offsetToCord(textSelectionHelper2.selectionStart);
                        int i3 = offsetToCord[0];
                        TextSelectionHelper textSelectionHelper3 = TextSelectionHelper.this;
                        i = i3 + textSelectionHelper3.textX;
                        int m107dp = (((offsetToCord[1] + textSelectionHelper3.textY) + coordsInParent[1]) + ((-textSelectionHelper.getLineHeight()) / 2)) - AndroidUtilities.m107dp(4);
                        if (m107dp >= 1) {
                            i2 = m107dp;
                        }
                    } else {
                        i = 0;
                    }
                    int width = TextSelectionHelper.this.parentView.getWidth();
                    TextSelectionHelper.this.pickEndView();
                    TextSelectionHelper textSelectionHelper4 = TextSelectionHelper.this;
                    if (textSelectionHelper4.selectedView != null) {
                        width = textSelectionHelper4.offsetToCord(textSelectionHelper4.selectionEnd)[0] + TextSelectionHelper.this.textX;
                    }
                    rect.set(Math.min(i, width), i2, Math.max(i, width), i2 + 1);
                }
            }
        } : actionMode$CallbackC40804;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyText() {
        CharSequence selectedText;
        if (isInSelectionMode() && (selectedText = getSelectedText()) != null) {
            AndroidUtilities.addToClipboard(selectedText);
            hideActions();
            clear(true);
            Callback callback = this.callback;
            if (callback != null) {
                callback.onTextCopied();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void quoteText() {
        CharSequence selectedText;
        if (isInSelectionMode()) {
            Cell cell = this.selectedView;
            MessageObject messageObject = cell instanceof ChatMessageCell ? ((ChatMessageCell) cell).getMessageObject() : null;
            if (messageObject == null || (selectedText = getSelectedText()) == null) {
                return;
            }
            onQuoteClick(messageObject, this.selectionStart, this.selectionEnd, selectedText);
            clear(true);
        }
    }

    private void translateText() {
        if (isInSelectionMode()) {
            getSelectedText();
        }
    }

    protected CharSequence getSelectedText() {
        CharSequence text = getText(this.selectedView, false);
        if (text != null) {
            return text.subSequence(this.selectionStart, this.selectionEnd);
        }
        return null;
    }

    protected int[] offsetToCord(int i) {
        fillLayoutForOffset(i, this.layoutBlock);
        LayoutBlock layoutBlock = this.layoutBlock;
        Layout layout = layoutBlock.layout;
        int i2 = i - layoutBlock.charOffset;
        if (layout == null || i2 < 0 || i2 > layout.getText().length()) {
            return this.tmpCoord;
        }
        int lineForOffset = layout.getLineForOffset(i2);
        this.tmpCoord[0] = (int) (layout.getPrimaryHorizontal(i2) + this.layoutBlock.xOffset);
        this.tmpCoord[1] = layout.getLineBottom(lineForOffset);
        int[] iArr = this.tmpCoord;
        iArr[1] = (int) (iArr[1] + this.layoutBlock.yOffset);
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0201  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawSelection(android.graphics.Canvas r25, android.text.Layout r26, int r27, int r28, boolean r29, boolean r30, float r31) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.TextSelectionHelper.drawSelection(android.graphics.Canvas, android.text.Layout, int, int, boolean, boolean, float):void");
    }

    private void drawLine(Layout layout, int i, int i2, int i3, boolean z, boolean z2, float f) {
        float f2;
        float f3;
        int lineTop;
        this.tempPath2.reset();
        layout.getSelectionPath(i2, i3, this.tempPath2);
        if (this.tempPath2.lastBottom < layout.getLineBottom(i)) {
            f3 = layout.getLineTop(i);
            f2 = (layout.getLineBottom(i) - lineTop) / (this.tempPath2.lastBottom - f3);
        } else {
            f2 = 1.0f;
            f3 = 0.0f;
        }
        for (int i4 = 0; i4 < this.tempPath2.rectsCount; i4++) {
            RectF rectF = (RectF) this.tempPath2.rects.get(i4);
            rectF.set((int) (Math.max(f, rectF.left) - (z ? this.cornerRadius / 2.0f : 0.0f)), (int) (((rectF.top - f3) * f2) + f3), (int) (Math.max(f, rectF.right) + (z2 ? this.cornerRadius / 2.0f : 0.0f)), (int) (((rectF.bottom - f3) * f2) + f3));
            this.selectionPath.addRect(rectF, Path.Direction.CW);
        }
        if (this.tempPath2.rectsCount != 0 || z2) {
            return;
        }
        int lineTop2 = layout.getLineTop(i);
        int lineBottom = layout.getLineBottom(i);
        Path path = this.selectionPath;
        float f4 = this.cornerRadius;
        path.addRect(((int) layout.getPrimaryHorizontal(i2)) - (f4 / 2.0f), lineTop2, ((int) layout.getPrimaryHorizontal(i3)) + (f4 / 4.0f), lineBottom, Path.Direction.CW);
    }

    protected void fillLayoutForOffset(int i, LayoutBlock layoutBlock) {
        fillLayoutForOffset(i, layoutBlock, false);
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$SimpleTextSelectionHelper */
    /* loaded from: classes5.dex */
    public static class SimpleTextSelectionHelper extends TextSelectionHelper<SimpleSelectabeleView> {
        SimpleSelectabeleView selectabeleView;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public void onTextSelected(SimpleSelectabeleView simpleSelectabeleView, SimpleSelectabeleView simpleSelectabeleView2) {
        }

        public SimpleTextSelectionHelper(SimpleSelectabeleView simpleSelectabeleView, Theme.ResourcesProvider resourcesProvider) {
            this.selectabeleView = simpleSelectabeleView;
            this.resourcesProvider = resourcesProvider;
        }

        public void setSelectabeleView(SimpleSelectabeleView simpleSelectabeleView) {
            this.selectabeleView = simpleSelectabeleView;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public CharSequence getText(SimpleSelectabeleView simpleSelectabeleView, boolean z) {
            return simpleSelectabeleView.getText();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public int getCharOffsetFromCord(int i, int i2, int i3, int i4, SimpleSelectabeleView simpleSelectabeleView, boolean z) {
            if (i2 < 0) {
                i2 = 1;
            }
            Layout staticTextLayout = simpleSelectabeleView.getStaticTextLayout();
            if (i2 > staticTextLayout.getLineBottom(staticTextLayout.getLineCount() - 1) + BitmapDescriptorFactory.HUE_RED) {
                i2 = (int) ((staticTextLayout.getLineBottom(staticTextLayout.getLineCount() - 1) + BitmapDescriptorFactory.HUE_RED) - 1.0f);
            }
            LayoutBlock layoutBlock = this.layoutBlock;
            Layout layout = layoutBlock.layout;
            if (layout == null) {
                return -1;
            }
            int i5 = (int) (i - layoutBlock.xOffset);
            int i6 = 0;
            while (true) {
                if (i6 >= layout.getLineCount()) {
                    i6 = -1;
                    break;
                } else if (i2 > layout.getLineTop(i6) + i4 && i2 < layout.getLineBottom(i6) + i4) {
                    break;
                } else {
                    i6++;
                }
            }
            if (i6 >= 0) {
                try {
                    return this.layoutBlock.charOffset + layout.getOffsetForHorizontal(i6, i5);
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
            }
            return -1;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected void fillLayoutForOffset(int i, LayoutBlock layoutBlock, boolean z) {
            layoutBlock.layout = this.selectabeleView.getStaticTextLayout();
            layoutBlock.yOffset = BitmapDescriptorFactory.HUE_RED;
            layoutBlock.xOffset = BitmapDescriptorFactory.HUE_RED;
            layoutBlock.charOffset = 0;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected int getLineHeight() {
            Layout staticTextLayout = this.selectabeleView.getStaticTextLayout();
            return staticTextLayout.getLineBottom(0) - staticTextLayout.getLineTop(0);
        }

        public void update(float f, float f2) {
            Layout staticTextLayout = this.selectabeleView.getStaticTextLayout();
            if (staticTextLayout == null) {
                this.textArea.setEmpty();
                this.maybeSelectedView = null;
                return;
            }
            this.maybeSelectedView = this.selectabeleView;
            int i = (int) f;
            this.maybeTextX = i;
            int i2 = (int) f2;
            this.maybeTextY = i2;
            LayoutBlock layoutBlock = this.layoutBlock;
            layoutBlock.layout = staticTextLayout;
            layoutBlock.xOffset = f;
            layoutBlock.yOffset = f2;
            layoutBlock.charOffset = 0;
            this.textArea.set(i, i2, (int) (f + staticTextLayout.getWidth()), (int) (f2 + staticTextLayout.getHeight()));
        }

        public void draw(Canvas canvas) {
            Layout staticTextLayout = this.selectabeleView.getStaticTextLayout();
            int color = Theme.getColor(Theme.key_chat_textSelectBackground, this.resourcesProvider);
            this.selectionPaint.setColor(color);
            this.selectionHandlePaint.setColor(color);
            drawSelection(canvas, staticTextLayout, this.selectionStart, this.selectionEnd, true, true, BitmapDescriptorFactory.HUE_RED);
        }

        public boolean isCurrent(SimpleSelectabeleView simpleSelectabeleView) {
            return this.selectabeleView == simpleSelectabeleView;
        }
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$ChatListTextSelectionHelper */
    /* loaded from: classes5.dex */
    public static class ChatListTextSelectionHelper extends TextSelectionHelper<ChatMessageCell> {
        public static int TYPE_CAPTION = 1;
        public static int TYPE_DESCRIPTION = 2;
        public static int TYPE_MESSAGE;
        SparseArray<Animator> animatorSparseArray = new SparseArray<>();
        public boolean isDescription;
        private boolean maybeIsDescription;

        public boolean isTouched() {
            return this.movingHandle;
        }

        public void select(ChatMessageCell chatMessageCell, int i, int i2) {
            if (chatMessageCell == null) {
                return;
            }
            this.selectedView = chatMessageCell;
            this.selectedCellId = chatMessageCell.getMessageObject().getId();
            this.selectionStart = i;
            this.selectionEnd = i2;
            invalidate();
            if (((TextSelectionHelper) this).callback != null) {
                ((TextSelectionHelper) this).callback.onStateChanged(true);
            }
            this.movingOffsetY = BitmapDescriptorFactory.HUE_RED;
            this.movingOffsetX = BitmapDescriptorFactory.HUE_RED;
            onOffsetChanged();
            this.allowDiscard = false;
            TextSelectionHelper<Cell>.TextSelectionOverlay textSelectionOverlay = this.textSelectionOverlay;
            if (textSelectionOverlay != null) {
                textSelectionOverlay.setVisibility(0);
            }
            showHandleViews();
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected int getLineHeight() {
            Cell cell = this.selectedView;
            if (cell == null || ((ChatMessageCell) cell).getMessageObject() == null) {
                return 0;
            }
            MessageObject messageObject = ((ChatMessageCell) this.selectedView).getMessageObject();
            StaticLayout staticLayout = null;
            if (this.isDescription) {
                staticLayout = ((ChatMessageCell) this.selectedView).getDescriptionlayout();
            } else if (((ChatMessageCell) this.selectedView).hasCaptionLayout()) {
                staticLayout = ((ChatMessageCell) this.selectedView).getCaptionLayout().textLayoutBlocks.get(0).textLayout;
            } else {
                ArrayList<MessageObject.TextLayoutBlock> arrayList = messageObject.textLayoutBlocks;
                if (arrayList != null) {
                    staticLayout = arrayList.get(0).textLayout;
                }
            }
            if (staticLayout == null) {
                return 0;
            }
            return staticLayout.getLineBottom(0) - staticLayout.getLineTop(0);
        }

        public void setMessageObject(ChatMessageCell chatMessageCell) {
            ArrayList<MessageObject.TextLayoutBlock> arrayList;
            this.maybeSelectedView = chatMessageCell;
            MessageObject messageObject = chatMessageCell.getMessageObject();
            if (this.maybeIsDescription && chatMessageCell.getDescriptionlayout() != null) {
                Rect rect = this.textArea;
                int i = this.maybeTextX;
                rect.set(i, this.maybeTextY, chatMessageCell.getDescriptionlayout().getWidth() + i, this.maybeTextY + chatMessageCell.getDescriptionlayout().getHeight());
            } else if (chatMessageCell.hasCaptionLayout() && chatMessageCell.getCaptionLayout().textLayoutBlocks.size() > 0) {
                ArrayList<MessageObject.TextLayoutBlock> arrayList2 = chatMessageCell.getCaptionLayout().textLayoutBlocks;
                MessageObject.TextLayoutBlock textLayoutBlock = arrayList2.get(arrayList2.size() - 1);
                Rect rect2 = this.textArea;
                int i2 = this.maybeTextX;
                rect2.set(i2, this.maybeTextY, textLayoutBlock.textLayout.getWidth() + i2, (int) (this.maybeTextY + textLayoutBlock.textYOffset + textLayoutBlock.padTop + textLayoutBlock.textLayout.getHeight()));
            } else if (messageObject != null && (arrayList = messageObject.textLayoutBlocks) != null && arrayList.size() > 0) {
                ArrayList<MessageObject.TextLayoutBlock> arrayList3 = messageObject.textLayoutBlocks;
                MessageObject.TextLayoutBlock textLayoutBlock2 = arrayList3.get(arrayList3.size() - 1);
                Rect rect3 = this.textArea;
                int i3 = this.maybeTextX;
                rect3.set(i3, this.maybeTextY, textLayoutBlock2.textLayout.getWidth() + i3, (int) (this.maybeTextY + textLayoutBlock2.textYOffset + textLayoutBlock2.padTop + textLayoutBlock2.textLayout.getHeight()));
            } else {
                this.maybeSelectedView = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public CharSequence getText(ChatMessageCell chatMessageCell, boolean z) {
            if (chatMessageCell == null || chatMessageCell.getMessageObject() == null) {
                return null;
            }
            if (!z ? this.isDescription : this.maybeIsDescription) {
                return chatMessageCell.getDescriptionlayout().getText();
            }
            if (chatMessageCell.hasCaptionLayout()) {
                return chatMessageCell.getCaptionLayout().text;
            }
            return chatMessageCell.getMessageObject().messageText;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public void onTextSelected(ChatMessageCell chatMessageCell, ChatMessageCell chatMessageCell2) {
            final boolean z = chatMessageCell2 == null || !(chatMessageCell2.getMessageObject() == null || chatMessageCell2.getMessageObject().getId() == chatMessageCell.getMessageObject().getId());
            this.selectedCellId = chatMessageCell.getMessageObject().getId();
            try {
                int i = chatMessageCell.getMessageObject().messageOwner.edit_date;
            } catch (Exception unused) {
            }
            this.enterProgress = BitmapDescriptorFactory.HUE_RED;
            this.isDescription = this.maybeIsDescription;
            Animator animator = this.animatorSparseArray.get(this.selectedCellId);
            if (animator != null) {
                animator.removeAllListeners();
                animator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.TextSelectionHelper$ChatListTextSelectionHelper$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TextSelectionHelper.ChatListTextSelectionHelper.this.lambda$onTextSelected$0(z, valueAnimator);
                }
            });
            ofFloat.setDuration(250L);
            ofFloat.start();
            this.animatorSparseArray.put(this.selectedCellId, ofFloat);
            if (!z) {
                chatMessageCell.setSelectedBackgroundProgress(BitmapDescriptorFactory.HUE_RED);
            }
            SharedConfig.removeTextSelectionHint();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTextSelected$0(boolean z, ValueAnimator valueAnimator) {
            this.enterProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            TextSelectionHelper<Cell>.TextSelectionOverlay textSelectionOverlay = this.textSelectionOverlay;
            if (textSelectionOverlay != null) {
                textSelectionOverlay.invalidate();
            }
            Cell cell = this.selectedView;
            if (cell != null && ((ChatMessageCell) cell).getCurrentMessagesGroup() == null && z) {
                ((ChatMessageCell) this.selectedView).setSelectedBackgroundProgress(1.0f - this.enterProgress);
            }
        }

        public void draw(MessageObject messageObject, MessageObject.TextLayoutBlock textLayoutBlock, Canvas canvas) {
            MessageObject messageObject2;
            Cell cell = this.selectedView;
            if (cell == null || ((ChatMessageCell) cell).getMessageObject() == null || this.isDescription || (messageObject2 = ((ChatMessageCell) this.selectedView).getMessageObject()) == null || messageObject2.textLayoutBlocks == null || messageObject.getId() != this.selectedCellId) {
                return;
            }
            int i = this.selectionStart;
            int i2 = textLayoutBlock.charactersOffset;
            int i3 = this.selectionEnd - i2;
            int i4 = 0;
            int clamp = Utilities.clamp(i - i2, textLayoutBlock.textLayout.getText().length(), 0);
            int clamp2 = Utilities.clamp(i3, textLayoutBlock.textLayout.getText().length(), 0);
            if (clamp != clamp2) {
                if (messageObject2.isOutOwner()) {
                    Paint paint = this.selectionPaint;
                    int i5 = Theme.key_chat_outTextSelectionHighlight;
                    paint.setColor(getThemedColor(i5));
                    this.selectionHandlePaint.setColor(getThemedColor(i5));
                } else {
                    Paint paint2 = this.selectionPaint;
                    int i6 = Theme.key_chat_inTextSelectionHighlight;
                    paint2.setColor(getThemedColor(i6));
                    this.selectionHandlePaint.setColor(getThemedColor(i6));
                }
                if (textLayoutBlock.quote) {
                    i4 = AndroidUtilities.m107dp(10);
                } else if (textLayoutBlock.code) {
                    i4 = AndroidUtilities.m107dp(0);
                }
                drawSelection(canvas, textLayoutBlock.textLayout, clamp, clamp2, true, true, i4);
            }
        }

        public void drawCaption(MessageObject messageObject, MessageObject.TextLayoutBlock textLayoutBlock, Canvas canvas) {
            Cell cell;
            if (messageObject == null || this.isDescription || (cell = this.selectedView) == null || ((ChatMessageCell) cell).getMessageObject() == null || ((ChatMessageCell) this.selectedView).getMessageObject().getId() != messageObject.getId()) {
                return;
            }
            int i = this.selectionStart;
            int i2 = textLayoutBlock.charactersOffset;
            int i3 = this.selectionEnd - i2;
            int i4 = 0;
            int clamp = Utilities.clamp(i - i2, textLayoutBlock.textLayout.getText().length(), 0);
            int clamp2 = Utilities.clamp(i3, textLayoutBlock.textLayout.getText().length(), 0);
            if (clamp != clamp2) {
                if (messageObject.isOutOwner()) {
                    Paint paint = this.selectionPaint;
                    int i5 = Theme.key_chat_outTextSelectionHighlight;
                    paint.setColor(getThemedColor(i5));
                    this.selectionHandlePaint.setColor(getThemedColor(i5));
                } else {
                    Paint paint2 = this.selectionPaint;
                    int i6 = Theme.key_chat_inTextSelectionHighlight;
                    paint2.setColor(getThemedColor(i6));
                    this.selectionHandlePaint.setColor(getThemedColor(i6));
                }
                if (textLayoutBlock.quote) {
                    i4 = AndroidUtilities.m107dp(10);
                } else if (textLayoutBlock.code) {
                    i4 = AndroidUtilities.m107dp(0);
                }
                drawSelection(canvas, textLayoutBlock.textLayout, clamp, clamp2, true, true, i4);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public int getCharOffsetFromCord(int i, int i2, int i3, int i4, ChatMessageCell chatMessageCell, boolean z) {
            StaticLayout staticLayout;
            float f;
            int i5;
            int i6 = 0;
            if (chatMessageCell == null) {
                return 0;
            }
            int i7 = i - i3;
            int i8 = i2 - i4;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (z ? this.maybeIsDescription : this.isDescription) {
                staticLayout = chatMessageCell.getDescriptionlayout();
            } else {
                if (chatMessageCell.hasCaptionLayout()) {
                    MessageObject.TextLayoutBlock textLayoutBlock = chatMessageCell.getCaptionLayout().textLayoutBlocks.get(chatMessageCell.getCaptionLayout().textLayoutBlocks.size() - 1);
                    staticLayout = textLayoutBlock.textLayout;
                    f = textLayoutBlock.textYOffset;
                    i5 = textLayoutBlock.padTop;
                } else {
                    MessageObject.TextLayoutBlock textLayoutBlock2 = chatMessageCell.getMessageObject().textLayoutBlocks.get(chatMessageCell.getMessageObject().textLayoutBlocks.size() - 1);
                    staticLayout = textLayoutBlock2.textLayout;
                    f = textLayoutBlock2.textYOffset;
                    i5 = textLayoutBlock2.padTop;
                }
                f2 = i5 + f;
            }
            if (staticLayout == null) {
                return -1;
            }
            if (i8 < 0) {
                i8 = 1;
            }
            if (i8 > staticLayout.getLineBottom(staticLayout.getLineCount() - 1) + f2) {
                i8 = (int) ((f2 + staticLayout.getLineBottom(staticLayout.getLineCount() - 1)) - 1.0f);
            }
            fillLayoutForCoords(i7, i8, chatMessageCell, this.layoutBlock, z);
            LayoutBlock layoutBlock = this.layoutBlock;
            Layout layout = layoutBlock.layout;
            if (layout == null) {
                return -1;
            }
            int i9 = (int) (i7 - layoutBlock.xOffset);
            while (true) {
                if (i6 >= layout.getLineCount()) {
                    i6 = -1;
                    break;
                }
                float f3 = i8;
                if (f3 > this.layoutBlock.yOffset + layout.getLineTop(i6) && f3 < this.layoutBlock.yOffset + layout.getLineBottom(i6)) {
                    break;
                }
                i6++;
            }
            if (i6 >= 0) {
                return this.layoutBlock.charOffset + layout.getOffsetForHorizontal(i6, i9);
            }
            return -1;
        }

        private void fillLayoutForCoords(int i, int i2, ChatMessageCell chatMessageCell, LayoutBlock layoutBlock, boolean z) {
            int m107dp;
            if (chatMessageCell == null) {
                return;
            }
            MessageObject messageObject = chatMessageCell.getMessageObject();
            if (!z ? this.isDescription : this.maybeIsDescription) {
                layoutBlock.layout = chatMessageCell.getDescriptionlayout();
                layoutBlock.xOffset = BitmapDescriptorFactory.HUE_RED;
                layoutBlock.yOffset = BitmapDescriptorFactory.HUE_RED;
                layoutBlock.charOffset = 0;
            } else if (chatMessageCell.hasCaptionLayout()) {
                MessageObject.TextLayoutBlocks captionLayout = chatMessageCell.getCaptionLayout();
                for (int i3 = 0; i3 < captionLayout.textLayoutBlocks.size(); i3++) {
                    MessageObject.TextLayoutBlock textLayoutBlock = captionLayout.textLayoutBlocks.get(i3);
                    float f = i2;
                    float f2 = textLayoutBlock.textYOffset;
                    if (f >= f2) {
                        int i4 = textLayoutBlock.padTop;
                        if (f <= i4 + f2 + textLayoutBlock.height) {
                            layoutBlock.layout = textLayoutBlock.textLayout;
                            layoutBlock.yOffset = f2 + i4;
                            float f3 = -(textLayoutBlock.isRtl() ? ((int) Math.ceil(captionLayout.textXOffset)) - (textLayoutBlock.quote ? AndroidUtilities.m107dp(10) : 0) : 0);
                            layoutBlock.xOffset = f3;
                            if (textLayoutBlock.code && !textLayoutBlock.quote) {
                                layoutBlock.xOffset = f3 + AndroidUtilities.m107dp(8);
                            }
                            layoutBlock.charOffset = textLayoutBlock.charactersOffset;
                            return;
                        }
                    }
                }
            } else {
                for (int i5 = 0; i5 < messageObject.textLayoutBlocks.size(); i5++) {
                    MessageObject.TextLayoutBlock textLayoutBlock2 = messageObject.textLayoutBlocks.get(i5);
                    float f4 = i2;
                    float f5 = textLayoutBlock2.textYOffset;
                    if (f4 >= f5) {
                        int i6 = textLayoutBlock2.padTop;
                        if (f4 <= i6 + f5 + textLayoutBlock2.height) {
                            layoutBlock.layout = textLayoutBlock2.textLayout;
                            layoutBlock.yOffset = f5 + i6;
                            if (textLayoutBlock2.quote) {
                                m107dp = AndroidUtilities.m107dp(10);
                            } else {
                                m107dp = textLayoutBlock2.code ? AndroidUtilities.m107dp(0) : 0;
                            }
                            float f6 = -(textLayoutBlock2.isRtl() ? ((int) Math.ceil(messageObject.textXOffset)) - m107dp : 0);
                            layoutBlock.xOffset = f6;
                            if (textLayoutBlock2.code && !textLayoutBlock2.quote) {
                                layoutBlock.xOffset = f6 + AndroidUtilities.m107dp(8);
                            }
                            layoutBlock.charOffset = textLayoutBlock2.charactersOffset;
                            return;
                        }
                    }
                }
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected void fillLayoutForOffset(int i, LayoutBlock layoutBlock, boolean z) {
            MessageObject.TextLayoutBlock textLayoutBlock;
            MessageObject.TextLayoutBlock textLayoutBlock2;
            ChatMessageCell chatMessageCell = (ChatMessageCell) (z ? this.maybeSelectedView : this.selectedView);
            if (chatMessageCell == null) {
                layoutBlock.layout = null;
                return;
            }
            MessageObject messageObject = chatMessageCell.getMessageObject();
            if (this.isDescription) {
                layoutBlock.layout = chatMessageCell.getDescriptionlayout();
                layoutBlock.yOffset = BitmapDescriptorFactory.HUE_RED;
                layoutBlock.xOffset = BitmapDescriptorFactory.HUE_RED;
                layoutBlock.charOffset = 0;
            } else if (chatMessageCell.hasCaptionLayout()) {
                MessageObject.TextLayoutBlocks captionLayout = chatMessageCell.getCaptionLayout();
                if (captionLayout.textLayoutBlocks.size() == 1) {
                    layoutBlock.layout = captionLayout.textLayoutBlocks.get(0).textLayout;
                    layoutBlock.yOffset = textLayoutBlock2.padTop;
                    MessageObject.TextLayoutBlock textLayoutBlock3 = captionLayout.textLayoutBlocks.get(0);
                    float f = -(textLayoutBlock3.isRtl() ? ((int) Math.ceil(captionLayout.textXOffset)) - (textLayoutBlock3.quote ? AndroidUtilities.m107dp(10) : 0) : 0);
                    layoutBlock.xOffset = f;
                    if (textLayoutBlock3.code && !textLayoutBlock3.quote) {
                        layoutBlock.xOffset = f + AndroidUtilities.m107dp(8);
                    }
                    layoutBlock.charOffset = 0;
                    return;
                }
                for (int i2 = 0; i2 < captionLayout.textLayoutBlocks.size(); i2++) {
                    MessageObject.TextLayoutBlock textLayoutBlock4 = captionLayout.textLayoutBlocks.get(i2);
                    int i3 = i - textLayoutBlock4.charactersOffset;
                    if (i3 >= 0 && i3 <= textLayoutBlock4.textLayout.getText().length()) {
                        layoutBlock.layout = textLayoutBlock4.textLayout;
                        layoutBlock.yOffset = textLayoutBlock4.textYOffset + textLayoutBlock4.padTop;
                        float f2 = -(textLayoutBlock4.isRtl() ? ((int) Math.ceil(captionLayout.textXOffset)) - (textLayoutBlock4.quote ? AndroidUtilities.m107dp(10) : 0) : 0);
                        layoutBlock.xOffset = f2;
                        if (textLayoutBlock4.code && !textLayoutBlock4.quote) {
                            layoutBlock.xOffset = f2 + AndroidUtilities.m107dp(8);
                        }
                        layoutBlock.charOffset = textLayoutBlock4.charactersOffset;
                        return;
                    }
                }
                layoutBlock.layout = null;
            } else {
                ArrayList<MessageObject.TextLayoutBlock> arrayList = messageObject.textLayoutBlocks;
                if (arrayList == null) {
                    layoutBlock.layout = null;
                } else if (arrayList.size() == 1) {
                    layoutBlock.layout = messageObject.textLayoutBlocks.get(0).textLayout;
                    layoutBlock.yOffset = textLayoutBlock.padTop;
                    MessageObject.TextLayoutBlock textLayoutBlock5 = messageObject.textLayoutBlocks.get(0);
                    float f3 = -(textLayoutBlock5.isRtl() ? ((int) Math.ceil(messageObject.textXOffset)) - (textLayoutBlock5.quote ? AndroidUtilities.m107dp(10) : 0) : 0);
                    layoutBlock.xOffset = f3;
                    if (textLayoutBlock5.code && !textLayoutBlock5.quote) {
                        layoutBlock.xOffset = f3 + AndroidUtilities.m107dp(8);
                    }
                    layoutBlock.charOffset = 0;
                } else {
                    for (int i4 = 0; i4 < messageObject.textLayoutBlocks.size(); i4++) {
                        MessageObject.TextLayoutBlock textLayoutBlock6 = messageObject.textLayoutBlocks.get(i4);
                        int i5 = i - textLayoutBlock6.charactersOffset;
                        if (i5 >= 0 && i5 <= textLayoutBlock6.textLayout.getText().length()) {
                            layoutBlock.layout = textLayoutBlock6.textLayout;
                            layoutBlock.yOffset = textLayoutBlock6.textYOffset + textLayoutBlock6.padTop;
                            float f4 = -(textLayoutBlock6.isRtl() ? ((int) Math.ceil(messageObject.textXOffset)) - (textLayoutBlock6.quote ? AndroidUtilities.m107dp(10) : 0) : 0);
                            layoutBlock.xOffset = f4;
                            if (textLayoutBlock6.code && !textLayoutBlock6.quote) {
                                layoutBlock.xOffset = f4 + AndroidUtilities.m107dp(8);
                            }
                            layoutBlock.charOffset = textLayoutBlock6.charactersOffset;
                            return;
                        }
                    }
                    layoutBlock.layout = null;
                }
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected void onExitSelectionMode(boolean z) {
            Cell cell = this.selectedView;
            if (cell == null || !((ChatMessageCell) cell).isDrawingSelectionBackground() || z) {
                return;
            }
            Cell cell2 = this.selectedView;
            final ChatMessageCell chatMessageCell = (ChatMessageCell) cell2;
            final int id = ((ChatMessageCell) cell2).getMessageObject().getId();
            Animator animator = this.animatorSparseArray.get(id);
            if (animator != null) {
                animator.removeAllListeners();
                animator.cancel();
            }
            chatMessageCell.setSelectedBackgroundProgress(0.01f);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.01f, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.TextSelectionHelper$ChatListTextSelectionHelper$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TextSelectionHelper.ChatListTextSelectionHelper.lambda$onExitSelectionMode$1(ChatMessageCell.this, id, valueAnimator);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.Cells.TextSelectionHelper.ChatListTextSelectionHelper.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    chatMessageCell.setSelectedBackgroundProgress(BitmapDescriptorFactory.HUE_RED);
                }
            });
            ofFloat.setDuration(300L);
            ofFloat.start();
            this.animatorSparseArray.put(id, ofFloat);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onExitSelectionMode$1(ChatMessageCell chatMessageCell, int i, ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (chatMessageCell.getMessageObject() == null || chatMessageCell.getMessageObject().getId() != i) {
                return;
            }
            chatMessageCell.setSelectedBackgroundProgress(floatValue);
        }

        public void onChatMessageCellAttached(ChatMessageCell chatMessageCell) {
            if (chatMessageCell.getMessageObject() == null || chatMessageCell.getMessageObject().getId() != this.selectedCellId) {
                return;
            }
            this.selectedView = chatMessageCell;
        }

        public void onChatMessageCellDetached(ChatMessageCell chatMessageCell) {
            if (chatMessageCell.getMessageObject() == null || chatMessageCell.getMessageObject().getId() != this.selectedCellId) {
                return;
            }
            this.selectedView = null;
        }

        public void drawDescription(boolean z, StaticLayout staticLayout, Canvas canvas) {
            if (this.isDescription) {
                if (z) {
                    Paint paint = this.selectionPaint;
                    int i = Theme.key_chat_outTextSelectionHighlight;
                    paint.setColor(getThemedColor(i));
                    this.selectionHandlePaint.setColor(getThemedColor(i));
                } else {
                    Paint paint2 = this.selectionPaint;
                    int i2 = Theme.key_chat_inTextSelectionHighlight;
                    paint2.setColor(getThemedColor(i2));
                    this.selectionHandlePaint.setColor(getThemedColor(i2));
                }
                drawSelection(canvas, staticLayout, this.selectionStart, this.selectionEnd, true, true, BitmapDescriptorFactory.HUE_RED);
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public void invalidate() {
            super.invalidate();
            Cell cell = this.selectedView;
            if (cell == null || ((ChatMessageCell) cell).getCurrentMessagesGroup() == null) {
                return;
            }
            this.parentView.invalidate();
        }

        public void cancelAllAnimators() {
            for (int i = 0; i < this.animatorSparseArray.size(); i++) {
                SparseArray<Animator> sparseArray = this.animatorSparseArray;
                sparseArray.get(sparseArray.keyAt(i)).cancel();
            }
            this.animatorSparseArray.clear();
        }

        public void setIsDescription(boolean z) {
            this.maybeIsDescription = z;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public void clear(boolean z) {
            super.clear(z);
            this.isDescription = false;
        }

        public int getTextSelectionType(ChatMessageCell chatMessageCell) {
            if (this.isDescription) {
                return TYPE_DESCRIPTION;
            }
            if (chatMessageCell.hasCaptionLayout()) {
                return TYPE_CAPTION;
            }
            return TYPE_MESSAGE;
        }

        public void updateTextPosition(int i, int i2) {
            if (this.textX == i && this.textY == i2) {
                return;
            }
            this.textX = i;
            this.textY = i2;
            invalidate();
        }

        public void checkDataChanged(MessageObject messageObject) {
            try {
                int i = messageObject.messageOwner.edit_date;
            } catch (Exception unused) {
            }
            if (this.selectedCellId == messageObject.getId()) {
                clear(true);
            }
        }
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$ArticleTextSelectionHelper */
    /* loaded from: classes5.dex */
    public static class ArticleTextSelectionHelper extends TextSelectionHelper<ArticleSelectableView> {
        int endViewOffset;
        public LinearLayoutManager layoutManager;
        boolean startPeek;
        int startViewOffset;
        int startViewPosition = -1;
        int startViewChildPosition = -1;
        int endViewPosition = -1;
        int endViewChildPosition = -1;
        int maybeTextIndex = -1;
        SparseArray<CharSequence> textByPosition = new SparseArray<>();
        SparseArray<CharSequence> prefixTextByPosition = new SparseArray<>();
        SparseIntArray childCountByPosition = new SparseIntArray();
        public ArrayList<TextLayoutBlock> arrayList = new ArrayList<>();

        public ArticleTextSelectionHelper() {
            this.multiselect = true;
            this.showActionsAsPopupAlways = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public CharSequence getText(ArticleSelectableView articleSelectableView, boolean z) {
            int i;
            this.arrayList.clear();
            articleSelectableView.fillTextLayoutBlocks(this.arrayList);
            if (z) {
                i = this.maybeTextIndex;
            } else {
                i = this.startPeek ? this.startViewChildPosition : this.endViewChildPosition;
            }
            return (this.arrayList.isEmpty() || i < 0) ? "" : this.arrayList.get(i).getLayout().getText();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public int getCharOffsetFromCord(int i, int i2, int i3, int i4, ArticleSelectableView articleSelectableView, boolean z) {
            int i5;
            if (articleSelectableView == null) {
                return -1;
            }
            int i6 = i - i3;
            int i7 = i2 - i4;
            this.arrayList.clear();
            articleSelectableView.fillTextLayoutBlocks(this.arrayList);
            if (z) {
                i5 = this.maybeTextIndex;
            } else {
                i5 = this.startPeek ? this.startViewChildPosition : this.endViewChildPosition;
            }
            StaticLayout layout = this.arrayList.get(i5).getLayout();
            if (i6 < 0) {
                i6 = 1;
            }
            if (i7 < 0) {
                i7 = 1;
            }
            if (i6 > layout.getWidth()) {
                i6 = layout.getWidth();
            }
            if (i7 > layout.getLineBottom(layout.getLineCount() - 1)) {
                i7 = layout.getLineBottom(layout.getLineCount() - 1) - 1;
            }
            int i8 = 0;
            while (true) {
                if (i8 >= layout.getLineCount()) {
                    i8 = -1;
                    break;
                } else if (i7 > layout.getLineTop(i8) && i7 < layout.getLineBottom(i8)) {
                    break;
                } else {
                    i8++;
                }
            }
            if (i8 >= 0) {
                return layout.getOffsetForHorizontal(i8, i6);
            }
            return -1;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected void fillLayoutForOffset(int i, LayoutBlock layoutBlock, boolean z) {
            this.arrayList.clear();
            ArticleSelectableView articleSelectableView = (ArticleSelectableView) (z ? this.maybeSelectedView : this.selectedView);
            if (articleSelectableView == null) {
                layoutBlock.layout = null;
                return;
            }
            articleSelectableView.fillTextLayoutBlocks(this.arrayList);
            if (z) {
                layoutBlock.layout = this.arrayList.get(this.maybeTextIndex).getLayout();
            } else {
                int i2 = this.startPeek ? this.startViewChildPosition : this.endViewChildPosition;
                if (i2 < 0 || i2 >= this.arrayList.size()) {
                    layoutBlock.layout = null;
                    return;
                }
                layoutBlock.layout = this.arrayList.get(i2).getLayout();
            }
            layoutBlock.yOffset = BitmapDescriptorFactory.HUE_RED;
            layoutBlock.xOffset = BitmapDescriptorFactory.HUE_RED;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected int getLineHeight() {
            if (this.selectedView == null) {
                return 0;
            }
            this.arrayList.clear();
            ((ArticleSelectableView) this.selectedView).fillTextLayoutBlocks(this.arrayList);
            int i = this.startPeek ? this.startViewChildPosition : this.endViewChildPosition;
            if (i < 0 || i >= this.arrayList.size()) {
                return 0;
            }
            StaticLayout layout = this.arrayList.get(i).getLayout();
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < layout.getLineCount(); i3++) {
                int lineBottom = layout.getLineBottom(i3) - layout.getLineTop(i3);
                if (lineBottom < i2) {
                    i2 = lineBottom;
                }
            }
            return i2;
        }

        public void trySelect(View view) {
            if (this.maybeSelectedView != null) {
                this.startSelectionRunnable.run();
            }
        }

        public void setMaybeView(int i, int i2, View view) {
            if (view instanceof ArticleSelectableView) {
                this.capturedX = i;
                this.capturedY = i2;
                ArticleSelectableView articleSelectableView = (ArticleSelectableView) view;
                this.maybeSelectedView = articleSelectableView;
                int findClosestLayoutIndex = findClosestLayoutIndex(i, i2, articleSelectableView);
                this.maybeTextIndex = findClosestLayoutIndex;
                if (findClosestLayoutIndex < 0) {
                    this.maybeSelectedView = null;
                    return;
                }
                this.maybeTextX = this.arrayList.get(findClosestLayoutIndex).getX();
                this.maybeTextY = this.arrayList.get(this.maybeTextIndex).getY();
            }
        }

        private int findClosestLayoutIndex(int i, int i2, ArticleSelectableView articleSelectableView) {
            int i3 = 0;
            if (articleSelectableView instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) articleSelectableView;
                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                    View childAt = viewGroup.getChildAt(i4);
                    if (childAt instanceof ArticleSelectableView) {
                        float f = i2;
                        if (f > childAt.getY() && f < childAt.getY() + childAt.getHeight()) {
                            return findClosestLayoutIndex((int) (i - childAt.getX()), (int) (f - childAt.getY()), (ArticleSelectableView) childAt);
                        }
                    }
                }
            }
            this.arrayList.clear();
            articleSelectableView.fillTextLayoutBlocks(this.arrayList);
            if (this.arrayList.isEmpty()) {
                return -1;
            }
            int size = this.arrayList.size() - 1;
            int i5 = Integer.MAX_VALUE;
            int i6 = -1;
            int i7 = Integer.MAX_VALUE;
            while (true) {
                if (size < 0) {
                    i3 = i7;
                    size = i6;
                    break;
                }
                TextLayoutBlock textLayoutBlock = this.arrayList.get(size);
                int y = textLayoutBlock.getY();
                int height = textLayoutBlock.getLayout().getHeight() + y;
                if (i2 >= y && i2 < height) {
                    break;
                }
                int min = Math.min(Math.abs(i2 - y), Math.abs(i2 - height));
                if (min < i7) {
                    i6 = size;
                    i7 = min;
                }
                size--;
            }
            if (size < 0) {
                return -1;
            }
            int row = this.arrayList.get(size).getRow();
            if (row > 0 && i3 < AndroidUtilities.m107dp(24)) {
                for (int size2 = this.arrayList.size() - 1; size2 >= 0; size2--) {
                    TextLayoutBlock textLayoutBlock2 = this.arrayList.get(size2);
                    if (textLayoutBlock2.getRow() == row) {
                        int x = textLayoutBlock2.getX();
                        int x2 = textLayoutBlock2.getX() + textLayoutBlock2.getLayout().getWidth();
                        if (i >= x && i <= x2) {
                            return size2;
                        }
                        int min2 = Math.min(Math.abs(i - x), Math.abs(i - x2));
                        if (min2 < i5) {
                            size = size2;
                            i5 = min2;
                        }
                    }
                }
            }
            return size;
        }

        public void draw(Canvas canvas, ArticleSelectableView articleSelectableView, int i) {
            Paint paint = this.selectionPaint;
            int i2 = Theme.key_chat_inTextSelectionHighlight;
            paint.setColor(getThemedColor(i2));
            this.selectionHandlePaint.setColor(getThemedColor(i2));
            int adapterPosition = getAdapterPosition(articleSelectableView);
            if (adapterPosition < 0) {
                return;
            }
            this.arrayList.clear();
            articleSelectableView.fillTextLayoutBlocks(this.arrayList);
            if (this.arrayList.isEmpty()) {
                return;
            }
            TextLayoutBlock textLayoutBlock = this.arrayList.get(i);
            int i3 = this.endViewOffset;
            int length = textLayoutBlock.getLayout().getText().length();
            int i4 = i3 > length ? length : i3;
            int i5 = this.startViewPosition;
            if (adapterPosition == i5 && adapterPosition == this.endViewPosition) {
                int i6 = this.startViewChildPosition;
                int i7 = this.endViewChildPosition;
                if (i6 == i7 && i6 == i) {
                    drawSelection(canvas, textLayoutBlock.getLayout(), this.startViewOffset, i4, true, true, BitmapDescriptorFactory.HUE_RED);
                } else if (i == i6) {
                    drawSelection(canvas, textLayoutBlock.getLayout(), this.startViewOffset, length, true, false, BitmapDescriptorFactory.HUE_RED);
                } else if (i == i7) {
                    drawSelection(canvas, textLayoutBlock.getLayout(), 0, i4, false, true, BitmapDescriptorFactory.HUE_RED);
                } else if (i <= i6 || i >= i7) {
                } else {
                    drawSelection(canvas, textLayoutBlock.getLayout(), 0, length, false, false, BitmapDescriptorFactory.HUE_RED);
                }
            } else if (adapterPosition == i5 && this.startViewChildPosition == i) {
                drawSelection(canvas, textLayoutBlock.getLayout(), this.startViewOffset, length, true, false, BitmapDescriptorFactory.HUE_RED);
            } else {
                int i8 = this.endViewPosition;
                if (adapterPosition == i8 && this.endViewChildPosition == i) {
                    drawSelection(canvas, textLayoutBlock.getLayout(), 0, i4, false, true, BitmapDescriptorFactory.HUE_RED);
                } else if ((adapterPosition <= i5 || adapterPosition >= i8) && ((adapterPosition != i5 || i <= this.startViewChildPosition) && (adapterPosition != i8 || i >= this.endViewChildPosition))) {
                } else {
                    drawSelection(canvas, textLayoutBlock.getLayout(), 0, length, false, false, BitmapDescriptorFactory.HUE_RED);
                }
            }
        }

        private int getAdapterPosition(ArticleSelectableView articleSelectableView) {
            ViewGroup viewGroup;
            View view = (View) articleSelectableView;
            ViewParent parent = view.getParent();
            while (true) {
                viewGroup = this.parentView;
                if (parent != viewGroup && parent != null) {
                    if (!(parent instanceof View)) {
                        parent = null;
                        break;
                    }
                    view = (View) parent;
                    parent = view.getParent();
                } else {
                    break;
                }
            }
            if (parent != null) {
                RecyclerListView recyclerListView = this.parentRecyclerView;
                if (recyclerListView != null) {
                    return recyclerListView.getChildAdapterPosition(view);
                }
                return viewGroup.indexOfChild(view);
            }
            return -1;
        }

        public boolean isSelectable(View view) {
            if (view instanceof ArticleSelectableView) {
                this.arrayList.clear();
                ((ArticleSelectableView) view).fillTextLayoutBlocks(this.arrayList);
                if (view instanceof ArticleViewer.BlockTableCell) {
                    return true;
                }
                return !this.arrayList.isEmpty();
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public void onTextSelected(ArticleSelectableView articleSelectableView, ArticleSelectableView articleSelectableView2) {
            int adapterPosition = getAdapterPosition(articleSelectableView);
            if (adapterPosition < 0) {
                return;
            }
            this.endViewPosition = adapterPosition;
            this.startViewPosition = adapterPosition;
            int i = this.maybeTextIndex;
            this.endViewChildPosition = i;
            this.startViewChildPosition = i;
            this.arrayList.clear();
            articleSelectableView.fillTextLayoutBlocks(this.arrayList);
            int size = this.arrayList.size();
            this.childCountByPosition.put(adapterPosition, size);
            for (int i2 = 0; i2 < size; i2++) {
                int i3 = (i2 << 16) + adapterPosition;
                this.textByPosition.put(i3, this.arrayList.get(i2).getLayout().getText());
                this.prefixTextByPosition.put(i3, this.arrayList.get(i2).getPrefix());
            }
        }

        protected void onNewViewSelected(ArticleSelectableView articleSelectableView, ArticleSelectableView articleSelectableView2, int i) {
            int i2;
            int adapterPosition = getAdapterPosition(articleSelectableView2);
            int adapterPosition2 = articleSelectableView != null ? getAdapterPosition(articleSelectableView) : -1;
            invalidate();
            if (this.movingDirectionSettling && (i2 = this.startViewPosition) == this.endViewPosition) {
                if (adapterPosition == i2) {
                    if (i < this.startViewChildPosition) {
                        this.startViewChildPosition = i;
                        pickStartView();
                        this.movingHandleStart = true;
                        int i3 = this.selectionEnd;
                        this.startViewOffset = i3;
                        this.selectionStart = i3 - 1;
                    } else {
                        this.endViewChildPosition = i;
                        pickEndView();
                        this.movingHandleStart = false;
                        this.endViewOffset = 0;
                    }
                } else if (adapterPosition < i2) {
                    this.startViewPosition = adapterPosition;
                    this.startViewChildPosition = i;
                    pickStartView();
                    this.movingHandleStart = true;
                    int i4 = this.selectionEnd;
                    this.startViewOffset = i4;
                    this.selectionStart = i4 - 1;
                } else {
                    this.endViewPosition = adapterPosition;
                    this.endViewChildPosition = i;
                    pickEndView();
                    this.movingHandleStart = false;
                    this.endViewOffset = 0;
                }
            } else if (this.movingHandleStart) {
                if (adapterPosition == adapterPosition2) {
                    int i5 = this.endViewChildPosition;
                    if (i <= i5 || adapterPosition < this.endViewPosition) {
                        this.startViewPosition = adapterPosition;
                        this.startViewChildPosition = i;
                        pickStartView();
                        this.startViewOffset = this.selectionEnd;
                    } else {
                        this.endViewPosition = adapterPosition;
                        this.startViewChildPosition = i5;
                        this.endViewChildPosition = i;
                        this.startViewOffset = this.endViewOffset;
                        pickEndView();
                        this.endViewOffset = 0;
                        this.movingHandleStart = false;
                    }
                } else if (adapterPosition <= this.endViewPosition) {
                    this.startViewPosition = adapterPosition;
                    this.startViewChildPosition = i;
                    pickStartView();
                    this.startViewOffset = this.selectionEnd;
                } else {
                    this.endViewPosition = adapterPosition;
                    this.startViewChildPosition = this.endViewChildPosition;
                    this.endViewChildPosition = i;
                    this.startViewOffset = this.endViewOffset;
                    pickEndView();
                    this.endViewOffset = 0;
                    this.movingHandleStart = false;
                }
            } else if (adapterPosition == adapterPosition2) {
                int i6 = this.startViewChildPosition;
                if (i >= i6 || adapterPosition > this.startViewPosition) {
                    this.endViewPosition = adapterPosition;
                    this.endViewChildPosition = i;
                    pickEndView();
                    this.endViewOffset = 0;
                } else {
                    this.startViewPosition = adapterPosition;
                    this.endViewChildPosition = i6;
                    this.startViewChildPosition = i;
                    this.endViewOffset = this.startViewOffset;
                    pickStartView();
                    this.movingHandleStart = true;
                    this.startViewOffset = this.selectionEnd;
                }
            } else if (adapterPosition >= this.startViewPosition) {
                this.endViewPosition = adapterPosition;
                this.endViewChildPosition = i;
                pickEndView();
                this.endViewOffset = 0;
            } else {
                this.startViewPosition = adapterPosition;
                this.endViewChildPosition = this.startViewChildPosition;
                this.startViewChildPosition = i;
                this.endViewOffset = this.startViewOffset;
                pickStartView();
                this.movingHandleStart = true;
                this.startViewOffset = this.selectionEnd;
            }
            this.arrayList.clear();
            articleSelectableView2.fillTextLayoutBlocks(this.arrayList);
            int size = this.arrayList.size();
            this.childCountByPosition.put(adapterPosition, size);
            for (int i7 = 0; i7 < size; i7++) {
                int i8 = (i7 << 16) + adapterPosition;
                this.textByPosition.put(i8, this.arrayList.get(i7).getLayout().getText());
                this.prefixTextByPosition.put(i8, this.arrayList.get(i7).getPrefix());
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected void pickEndView() {
            ArticleSelectableView articleSelectableView;
            if (isInSelectionMode()) {
                this.startPeek = false;
                int i = this.endViewPosition;
                if (i >= 0) {
                    LinearLayoutManager linearLayoutManager = this.layoutManager;
                    if (linearLayoutManager != null) {
                        articleSelectableView = (ArticleSelectableView) linearLayoutManager.findViewByPosition(i);
                    } else {
                        articleSelectableView = i < this.parentView.getChildCount() ? (ArticleSelectableView) this.parentView.getChildAt(this.endViewPosition) : null;
                    }
                    if (articleSelectableView == null) {
                        this.selectedView = null;
                        return;
                    }
                    this.selectedView = articleSelectableView;
                    if (this.startViewPosition != this.endViewPosition) {
                        this.selectionStart = 0;
                    } else if (this.startViewChildPosition != this.endViewChildPosition) {
                        this.selectionStart = 0;
                    } else {
                        this.selectionStart = this.startViewOffset;
                    }
                    this.selectionEnd = this.endViewOffset;
                    CharSequence text = getText(articleSelectableView, false);
                    if (this.selectionEnd > text.length()) {
                        this.selectionEnd = text.length();
                    }
                    this.arrayList.clear();
                    ((ArticleSelectableView) this.selectedView).fillTextLayoutBlocks(this.arrayList);
                    if (this.arrayList.isEmpty()) {
                        return;
                    }
                    this.textX = this.arrayList.get(this.endViewChildPosition).getX();
                    this.textY = this.arrayList.get(this.endViewChildPosition).getY();
                }
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected void pickStartView() {
            ArticleSelectableView articleSelectableView;
            if (isInSelectionMode()) {
                this.startPeek = true;
                int i = this.startViewPosition;
                if (i >= 0) {
                    LinearLayoutManager linearLayoutManager = this.layoutManager;
                    if (linearLayoutManager != null) {
                        articleSelectableView = (ArticleSelectableView) linearLayoutManager.findViewByPosition(i);
                    } else {
                        articleSelectableView = this.endViewPosition < this.parentView.getChildCount() ? (ArticleSelectableView) this.parentView.getChildAt(this.startViewPosition) : null;
                    }
                    if (articleSelectableView == null) {
                        this.selectedView = null;
                        return;
                    }
                    this.selectedView = articleSelectableView;
                    if (this.startViewPosition != this.endViewPosition) {
                        this.selectionEnd = getText(articleSelectableView, false).length();
                    } else if (this.startViewChildPosition != this.endViewChildPosition) {
                        this.selectionEnd = getText(articleSelectableView, false).length();
                    } else {
                        this.selectionEnd = this.endViewOffset;
                    }
                    this.selectionStart = this.startViewOffset;
                    this.arrayList.clear();
                    ((ArticleSelectableView) this.selectedView).fillTextLayoutBlocks(this.arrayList);
                    if (this.arrayList.isEmpty()) {
                        return;
                    }
                    this.textX = this.arrayList.get(this.startViewChildPosition).getX();
                    this.textY = this.arrayList.get(this.startViewChildPosition).getY();
                }
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected void onOffsetChanged() {
            int adapterPosition = getAdapterPosition((ArticleSelectableView) this.selectedView);
            int i = this.startPeek ? this.startViewChildPosition : this.endViewChildPosition;
            if (adapterPosition == this.startViewPosition && i == this.startViewChildPosition) {
                this.startViewOffset = this.selectionStart;
            }
            if (adapterPosition == this.endViewPosition && i == this.endViewChildPosition) {
                this.endViewOffset = this.selectionEnd;
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public void invalidate() {
            super.invalidate();
            for (int i = 0; i < this.parentView.getChildCount(); i++) {
                this.parentView.getChildAt(i).invalidate();
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public void clear(boolean z) {
            super.clear(z);
            this.startViewPosition = -1;
            this.endViewPosition = -1;
            this.startViewChildPosition = -1;
            this.endViewChildPosition = -1;
            this.textByPosition.clear();
            this.childCountByPosition.clear();
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected CharSequence getSelectedText() {
            IgnoreCopySpannable[] ignoreCopySpannableArr;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            int i = this.startViewPosition;
            while (true) {
                int i2 = this.endViewPosition;
                if (i > i2) {
                    break;
                }
                int i3 = this.startViewPosition;
                if (i == i3) {
                    int i4 = i3 == i2 ? this.endViewChildPosition : this.childCountByPosition.get(i) - 1;
                    for (int i5 = this.startViewChildPosition; i5 <= i4; i5++) {
                        int i6 = (i5 << 16) + i;
                        CharSequence charSequence = this.textByPosition.get(i6);
                        if (charSequence != null) {
                            int i7 = this.startViewPosition;
                            int i8 = this.endViewPosition;
                            if (i7 == i8 && i5 == this.endViewChildPosition && i5 == this.startViewChildPosition) {
                                int i9 = this.endViewOffset;
                                int i10 = this.startViewOffset;
                                if (i9 >= i10) {
                                    i10 = i9;
                                    i9 = i10;
                                }
                                if (i9 < charSequence.length()) {
                                    if (i10 > charSequence.length()) {
                                        i10 = charSequence.length();
                                    }
                                    spannableStringBuilder.append(charSequence.subSequence(i9, i10));
                                    spannableStringBuilder.append('\n');
                                }
                            } else if (i7 == i8 && i5 == this.endViewChildPosition) {
                                CharSequence charSequence2 = this.prefixTextByPosition.get(i6);
                                if (charSequence2 != null) {
                                    spannableStringBuilder.append(charSequence2).append(' ');
                                }
                                int i11 = this.endViewOffset;
                                if (i11 > charSequence.length()) {
                                    i11 = charSequence.length();
                                }
                                spannableStringBuilder.append(charSequence.subSequence(0, i11));
                                spannableStringBuilder.append('\n');
                            } else if (i5 == this.startViewChildPosition) {
                                int i12 = this.startViewOffset;
                                if (i12 < charSequence.length()) {
                                    spannableStringBuilder.append(charSequence.subSequence(i12, charSequence.length()));
                                    spannableStringBuilder.append('\n');
                                }
                            } else {
                                CharSequence charSequence3 = this.prefixTextByPosition.get(i6);
                                if (charSequence3 != null) {
                                    spannableStringBuilder.append(charSequence3).append(' ');
                                }
                                spannableStringBuilder.append(charSequence);
                                spannableStringBuilder.append('\n');
                            }
                        }
                    }
                } else if (i == i2) {
                    for (int i13 = 0; i13 <= this.endViewChildPosition; i13++) {
                        int i14 = (i13 << 16) + i;
                        CharSequence charSequence4 = this.textByPosition.get(i14);
                        if (charSequence4 != null) {
                            if (this.startViewPosition == this.endViewPosition && i13 == this.endViewChildPosition && i13 == this.startViewChildPosition) {
                                int i15 = this.endViewOffset;
                                int i16 = this.startViewOffset;
                                if (i16 < charSequence4.length()) {
                                    if (i15 > charSequence4.length()) {
                                        i15 = charSequence4.length();
                                    }
                                    spannableStringBuilder.append(charSequence4.subSequence(i16, i15));
                                    spannableStringBuilder.append('\n');
                                }
                            } else if (i13 == this.endViewChildPosition) {
                                CharSequence charSequence5 = this.prefixTextByPosition.get(i14);
                                if (charSequence5 != null) {
                                    spannableStringBuilder.append(charSequence5).append(' ');
                                }
                                int i17 = this.endViewOffset;
                                if (i17 > charSequence4.length()) {
                                    i17 = charSequence4.length();
                                }
                                spannableStringBuilder.append(charSequence4.subSequence(0, i17));
                                spannableStringBuilder.append('\n');
                            } else {
                                CharSequence charSequence6 = this.prefixTextByPosition.get(i14);
                                if (charSequence6 != null) {
                                    spannableStringBuilder.append(charSequence6).append(' ');
                                }
                                spannableStringBuilder.append(charSequence4);
                                spannableStringBuilder.append('\n');
                            }
                        }
                    }
                } else {
                    int i18 = this.childCountByPosition.get(i);
                    for (int i19 = this.startViewChildPosition; i19 < i18; i19++) {
                        int i20 = (i19 << 16) + i;
                        CharSequence charSequence7 = this.prefixTextByPosition.get(i20);
                        if (charSequence7 != null) {
                            spannableStringBuilder.append(charSequence7).append(' ');
                        }
                        spannableStringBuilder.append(this.textByPosition.get(i20));
                        spannableStringBuilder.append('\n');
                    }
                }
                i++;
            }
            if (spannableStringBuilder.length() > 0) {
                for (IgnoreCopySpannable ignoreCopySpannable : (IgnoreCopySpannable[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length() - 1, IgnoreCopySpannable.class)) {
                    spannableStringBuilder.delete(spannableStringBuilder.getSpanStart(ignoreCopySpannable), spannableStringBuilder.getSpanEnd(ignoreCopySpannable));
                }
                return spannableStringBuilder.subSequence(0, spannableStringBuilder.length() - 1);
            }
            return null;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected boolean selectLayout(int i, int i2) {
            if (this.multiselect) {
                if (i2 <= ((ArticleSelectableView) this.selectedView).getTop() || i2 >= ((ArticleSelectableView) this.selectedView).getBottom()) {
                    int childCount = this.parentView.getChildCount();
                    for (int i3 = 0; i3 < childCount; i3++) {
                        if (isSelectable(this.parentView.getChildAt(i3))) {
                            ArticleSelectableView articleSelectableView = (ArticleSelectableView) this.parentView.getChildAt(i3);
                            if (i2 > articleSelectableView.getTop() && i2 < articleSelectableView.getBottom()) {
                                int findClosestLayoutIndex = findClosestLayoutIndex((int) (i - articleSelectableView.getX()), (int) (i2 - articleSelectableView.getY()), articleSelectableView);
                                if (findClosestLayoutIndex >= 0) {
                                    onNewViewSelected((ArticleSelectableView) this.selectedView, articleSelectableView, findClosestLayoutIndex);
                                    this.selectedView = articleSelectableView;
                                    return true;
                                }
                                return false;
                            }
                        }
                    }
                    return false;
                }
                int i4 = this.startPeek ? this.startViewChildPosition : this.endViewChildPosition;
                int findClosestLayoutIndex2 = findClosestLayoutIndex((int) (i - ((ArticleSelectableView) this.selectedView).getX()), (int) (i2 - ((ArticleSelectableView) this.selectedView).getY()), (ArticleSelectableView) this.selectedView);
                if (findClosestLayoutIndex2 == i4 || findClosestLayoutIndex2 < 0) {
                    return false;
                }
                Cell cell = this.selectedView;
                onNewViewSelected((ArticleSelectableView) cell, (ArticleSelectableView) cell, findClosestLayoutIndex2);
                return true;
            }
            return false;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected boolean canSelect(int i) {
            if (this.startViewPosition == this.endViewPosition && this.startViewChildPosition == this.endViewChildPosition) {
                return super.canSelect(i);
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        public void jumpToLine(int i, int i2, boolean z, float f, float f2, ArticleSelectableView articleSelectableView) {
            if (z && articleSelectableView == this.selectedView && f2 == f) {
                if (this.movingHandleStart) {
                    this.selectionStart = i;
                    return;
                } else {
                    this.selectionEnd = i;
                    return;
                }
            }
            super.jumpToLine(i, i2, z, f, f2, (float) articleSelectableView);
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper
        protected boolean canShowActions() {
            LinearLayoutManager linearLayoutManager = this.layoutManager;
            if (linearLayoutManager == null) {
                return true;
            }
            int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int findLastVisibleItemPosition = this.layoutManager.findLastVisibleItemPosition();
            int i = this.startViewPosition;
            if ((findFirstVisibleItemPosition < i || findFirstVisibleItemPosition > this.endViewPosition) && (findLastVisibleItemPosition < i || findLastVisibleItemPosition > this.endViewPosition)) {
                return i >= findFirstVisibleItemPosition && this.endViewPosition <= findLastVisibleItemPosition;
            }
            return true;
        }
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$PathCopyTo */
    /* loaded from: classes5.dex */
    private static class PathCopyTo extends Path {
        private Path destination;

        public PathCopyTo(Path path) {
            this.destination = path;
        }

        @Override // android.graphics.Path
        public void reset() {
            super.reset();
        }

        @Override // android.graphics.Path
        public void addRect(float f, float f2, float f3, float f4, Path.Direction direction) {
            this.destination.addRect(f, f2, f3, f4, direction);
        }
    }

    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$PathWithSavedBottom */
    /* loaded from: classes5.dex */
    private static class PathWithSavedBottom extends Path {
        float lastBottom;

        private PathWithSavedBottom() {
            this.lastBottom = BitmapDescriptorFactory.HUE_RED;
        }

        @Override // android.graphics.Path
        public void reset() {
            super.reset();
            this.lastBottom = BitmapDescriptorFactory.HUE_RED;
        }

        @Override // android.graphics.Path
        public void addRect(float f, float f2, float f3, float f4, Path.Direction direction) {
            super.addRect(f, f2, f3, f4, direction);
            if (f4 > this.lastBottom) {
                this.lastBottom = f4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.TextSelectionHelper$ScalablePath */
    /* loaded from: classes5.dex */
    public static class ScalablePath extends Path {
        private static ArrayList<RectF> recycled;
        float lastBottom;
        private ArrayList<RectF> rects;
        private int rectsCount;

        private ScalablePath() {
            this.lastBottom = BitmapDescriptorFactory.HUE_RED;
            this.rects = new ArrayList<>(1);
            this.rectsCount = 0;
        }

        @Override // android.graphics.Path
        public void reset() {
            super.reset();
            if (recycled == null) {
                recycled = new ArrayList<>(this.rects.size());
            }
            recycled.addAll(this.rects);
            this.rects.clear();
            this.rectsCount = 0;
            this.lastBottom = BitmapDescriptorFactory.HUE_RED;
        }

        @Override // android.graphics.Path
        public void addRect(float f, float f2, float f3, float f4, Path.Direction direction) {
            RectF rectF;
            ArrayList<RectF> arrayList = recycled;
            if (arrayList != null && arrayList.size() > 0) {
                rectF = recycled.remove(0);
            } else {
                rectF = new RectF();
            }
            rectF.set(f, f2, f3, f4);
            this.rects.add(rectF);
            this.rectsCount++;
            super.addRect(f, f2, f3, f4, direction);
            if (f4 > this.lastBottom) {
                this.lastBottom = f4;
            }
        }
    }

    public void setKeyboardSize(int i) {
        this.keyboardSize = i;
        invalidate();
    }

    protected int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    protected Theme.ResourcesProvider getResourcesProvider() {
        return this.resourcesProvider;
    }
}
