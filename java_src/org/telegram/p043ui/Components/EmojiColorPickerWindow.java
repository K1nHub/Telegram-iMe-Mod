package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.CompoundEmoji;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.EmojiColorPickerWindow */
/* loaded from: classes6.dex */
public class EmojiColorPickerWindow extends PopupWindow {
    private static final ViewTreeObserver.OnScrollChangedListener NOP = new ViewTreeObserver.OnScrollChangedListener() { // from class: org.telegram.ui.Components.EmojiColorPickerWindow$$ExternalSyntheticLambda1
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public final void onScrollChanged() {
            EmojiColorPickerWindow.lambda$static$0();
        }
    };
    private static Field superListenerField;
    private final int emojiSize;
    private boolean isCompound;
    private ViewTreeObserver.OnScrollChangedListener mSuperScrollListener;
    private ViewTreeObserver mViewTreeObserver;
    public EmojiColorPickerView pickerView;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$0() {
    }

    public static EmojiColorPickerWindow create(Context context, Theme.ResourcesProvider resourcesProvider) {
        EmojiColorPickerWindow emojiColorPickerWindow = new EmojiColorPickerWindow(new EmojiColorPickerView(context, resourcesProvider));
        emojiColorPickerWindow.init();
        return emojiColorPickerWindow;
    }

    private EmojiColorPickerWindow(EmojiColorPickerView emojiColorPickerView) {
        super(emojiColorPickerView);
        this.emojiSize = AndroidUtilities.m107dp(AndroidUtilities.isTablet() ? 40 : 32);
        this.pickerView = emojiColorPickerView;
        setOutsideTouchable(true);
        setClippingEnabled(true);
        setInputMethodMode(2);
        setSoftInputMode(0);
        this.pickerView.setFocusableInTouchMode(true);
        this.pickerView.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.Components.EmojiColorPickerWindow$$ExternalSyntheticLambda0
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                boolean lambda$new$1;
                lambda$new$1 = EmojiColorPickerWindow.this.lambda$new$1(view, i, keyEvent);
                return lambda$new$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(View view, int i, KeyEvent keyEvent) {
        if (i == 82 && keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 1 && isShowing()) {
            dismiss();
            return true;
        }
        return false;
    }

    public int getPopupWidth() {
        return (this.emojiSize * 6) + AndroidUtilities.m107dp((this.isCompound ? 3 : 0) + 30);
    }

    public int getPopupHeight() {
        return AndroidUtilities.m108dp(this.isCompound ? 11.66f : 15.0f) + ((this.isCompound ? 2 : 1) * this.emojiSize);
    }

    public int getSelection() {
        return this.pickerView.getSelection(0);
    }

    public String getSkinTone(int i) {
        int selection = this.pickerView.getSelection(i);
        if (selection < 1 || selection > 5) {
            return null;
        }
        return CompoundEmoji.skinTones.get(selection - 1);
    }

    public void setSelection(int i) {
        this.pickerView.setSelection(0, i);
    }

    public void onTouchMove(int i) {
        int max;
        if (this.isCompound || getSelection() == (max = Math.max(0, Math.min(5, i / (this.emojiSize + AndroidUtilities.m107dp(4)))))) {
            return;
        }
        try {
            this.pickerView.performHapticFeedback(9, 1);
        } catch (Exception unused) {
        }
        setSelection(max);
    }

    public boolean isCompound() {
        return this.isCompound;
    }

    public void setupArrow(int i) {
        this.pickerView.setArrowX(i);
    }

    public void setEmoji(String str) {
        boolean z = CompoundEmoji.getCompoundEmojiDrawable(str) != null;
        this.isCompound = z;
        this.pickerView.setEmoji(z, str);
        setWidth(getPopupWidth());
        setHeight(getPopupHeight());
    }

    public void updateColors() {
        this.pickerView.updateColors();
    }

    public void setOnSelectionUpdateListener(Utilities.Callback2<Integer, Integer> callback2) {
        this.pickerView.setOnSelectionUpdateListener(callback2);
    }

    /* renamed from: org.telegram.ui.Components.EmojiColorPickerWindow$EmojiColorPickerView */
    /* loaded from: classes6.dex */
    public static class EmojiColorPickerView extends View {
        private Drawable arrowDrawable;
        private int arrowX;
        private Drawable backgroundDrawable;
        private boolean both;
        private String currentEmoji;
        private long downStart;
        private Drawable[] drawables;
        private final int emojiSize;
        private boolean ignore;
        private boolean isCompound;
        private int[] lastSelection;
        private Utilities.Callback2<Integer, Integer> onSelectionUpdate;
        private RectF rect;
        private Paint rectPaint;
        private Theme.ResourcesProvider resourcesProvider;
        private int[] selection;
        private AnimatedFloat selection1Animated;
        private AnimatedFloat selection2Animated;
        private int touchY;

        public void setOnSelectionUpdateListener(Utilities.Callback2<Integer, Integer> callback2) {
            this.onSelectionUpdate = callback2;
        }

        public EmojiColorPickerView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.emojiSize = AndroidUtilities.m107dp(AndroidUtilities.isTablet() ? 40 : 32);
            this.drawables = new Drawable[11];
            this.selection = new int[]{0, 0};
            this.lastSelection = new int[]{0, 0};
            this.rectPaint = new Paint(1);
            this.rect = new RectF();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.selection1Animated = new AnimatedFloat(this, 125L, cubicBezierInterpolator);
            this.selection2Animated = new AnimatedFloat(this, 125L, cubicBezierInterpolator);
            this.touchY = -1;
            this.both = true;
            this.resourcesProvider = resourcesProvider;
            this.backgroundDrawable = getResources().getDrawable(C3632R.C3634drawable.stickers_back_all);
            this.arrowDrawable = getResources().getDrawable(C3632R.C3634drawable.stickers_back_arrow);
            updateColors();
        }

        public void updateColors() {
            Drawable drawable = this.backgroundDrawable;
            int i = Theme.key_dialogBackground;
            Theme.setDrawableColor(drawable, Theme.getColor(i, this.resourcesProvider));
            Theme.setDrawableColor(this.arrowDrawable, Theme.getColor(i, this.resourcesProvider));
            CompoundEmoji.setPlaceholderColor(Theme.getColor(Theme.key_chat_emojiPanelIcon, this.resourcesProvider));
        }

        public void setArrowX(int i) {
            this.arrowX = i;
            invalidate();
        }

        public void setEmoji(boolean z, String str) {
            this.isCompound = z;
            this.currentEmoji = str;
            int i = 0;
            if (z) {
                this.drawables[0] = CompoundEmoji.getCompoundEmojiDrawable(str, -1, -1);
                this.drawables[1] = CompoundEmoji.getCompoundEmojiDrawable(this.currentEmoji, 0, -2);
                this.drawables[2] = CompoundEmoji.getCompoundEmojiDrawable(this.currentEmoji, 1, -2);
                this.drawables[3] = CompoundEmoji.getCompoundEmojiDrawable(this.currentEmoji, 2, -2);
                this.drawables[4] = CompoundEmoji.getCompoundEmojiDrawable(this.currentEmoji, 3, -2);
                this.drawables[5] = CompoundEmoji.getCompoundEmojiDrawable(this.currentEmoji, 4, -2);
                this.drawables[6] = CompoundEmoji.getCompoundEmojiDrawable(this.currentEmoji, -2, 0);
                this.drawables[7] = CompoundEmoji.getCompoundEmojiDrawable(this.currentEmoji, -2, 1);
                this.drawables[8] = CompoundEmoji.getCompoundEmojiDrawable(this.currentEmoji, -2, 2);
                this.drawables[9] = CompoundEmoji.getCompoundEmojiDrawable(this.currentEmoji, -2, 3);
                this.drawables[10] = CompoundEmoji.getCompoundEmojiDrawable(this.currentEmoji, -2, 4);
                Pair<Integer, Integer> isHandshake = CompoundEmoji.isHandshake(str);
                if (isHandshake != null) {
                    setSelection(0, ((Integer) isHandshake.first).intValue());
                    setSelection(1, ((Integer) isHandshake.second).intValue());
                    int[] iArr = this.selection;
                    this.both = iArr[0] == iArr[1];
                }
                this.ignore = true;
            } else {
                while (i < 6) {
                    this.drawables[i] = Emoji.getEmojiBigDrawable(i != 0 ? EmojiView.addColorToCode(str, CompoundEmoji.skinTones.get(i - 1)) : str);
                    i++;
                }
            }
            invalidate();
        }

        public String getEmoji() {
            return this.currentEmoji;
        }

        public void setSelection(int i, int i2) {
            int[] iArr = this.selection;
            if (iArr[i] == i2) {
                return;
            }
            iArr[i] = i2;
            invalidate();
        }

        public int getSelection(int i) {
            return this.selection[i];
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int i;
            int i2;
            int i3;
            if (this.ignore) {
                this.ignore = false;
                return false;
            } else if (!this.isCompound) {
                return super.onTouchEvent(motionEvent);
            } else {
                int i4 = 0;
                while (true) {
                    Drawable[] drawableArr = this.drawables;
                    if (i4 >= drawableArr.length) {
                        i4 = -1;
                        break;
                    } else if (drawableArr[i4].getBounds().contains((int) motionEvent.getX(), (int) motionEvent.getY()) || ((i3 = this.touchY) != -1 && ((i4 == 0 || ((i3 == 0 && i4 >= 1 && i4 <= 5) || (i3 == 1 && i4 >= 6 && i4 <= 10))) && ((int) motionEvent.getX()) >= this.drawables[i4].getBounds().left && ((int) motionEvent.getX()) <= this.drawables[i4].getBounds().right))) {
                        break;
                    } else {
                        i4++;
                    }
                }
                if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2 || motionEvent.getAction() == 1) {
                    if (motionEvent.getAction() == 0) {
                        this.touchY = -1;
                        this.downStart = System.currentTimeMillis();
                        int[] iArr = this.selection;
                        this.both = iArr[0] == iArr[1];
                    }
                    int[] iArr2 = this.lastSelection;
                    int[] iArr3 = this.selection;
                    iArr2[0] = iArr3[0];
                    iArr2[1] = iArr3[1];
                    boolean z = System.currentTimeMillis() - this.downStart > 300 && motionEvent.getAction() == 2;
                    if (i4 == 0) {
                        int[] iArr4 = this.selection;
                        iArr4[0] = -1;
                        iArr4[1] = -1;
                    } else if (i4 >= 1 && i4 <= 5 && ((i2 = this.touchY) == -1 || i2 == 0)) {
                        this.touchY = 0;
                        int[] iArr5 = this.selection;
                        iArr5[0] = i4 - 1;
                        if (iArr5[1] == -1 || (this.both && z)) {
                            iArr5[1] = iArr5[0];
                        }
                    } else if (i4 >= 6 && i4 <= 10 && ((i = this.touchY) == -1 || i == 1)) {
                        this.touchY = 1;
                        int[] iArr6 = this.selection;
                        iArr6[1] = i4 - 6;
                        if (iArr6[0] == -1 || (this.both && z)) {
                            iArr6[0] = iArr6[1];
                        }
                    }
                    int[] iArr7 = this.lastSelection;
                    int i5 = iArr7[0];
                    int[] iArr8 = this.selection;
                    if (i5 != iArr8[0] || iArr7[1] != iArr8[1]) {
                        try {
                            performHapticFeedback(9, 1);
                        } catch (Exception unused) {
                        }
                        Utilities.Callback2<Integer, Integer> callback2 = this.onSelectionUpdate;
                        if (callback2 != null) {
                            callback2.run(Integer.valueOf(this.selection[0]), Integer.valueOf(this.selection[1]));
                        }
                    }
                    invalidate();
                    if (motionEvent.getAction() == 1) {
                        this.touchY = -1;
                    }
                    return true;
                }
                return false;
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int m108dp;
            float f;
            int i = 2;
            this.backgroundDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight() - AndroidUtilities.m107dp(2));
            this.backgroundDrawable.draw(canvas);
            this.arrowDrawable.setBounds(this.arrowX - AndroidUtilities.m107dp(9), getMeasuredHeight() - AndroidUtilities.m108dp(6.34f), this.arrowX + AndroidUtilities.m107dp(9), getMeasuredHeight());
            this.arrowDrawable.draw(canvas);
            if (this.currentEmoji != null) {
                float f2 = 0.5f;
                float f3 = 4.0f;
                float f4 = 5.0f;
                if (this.isCompound) {
                    int i2 = 0;
                    while (i2 < i) {
                        float f5 = (i2 == 0 ? this.selection1Animated : this.selection2Animated).set(this.selection[i2]);
                        int m108dp2 = (int) ((this.emojiSize * (f5 + 1.0f)) + AndroidUtilities.m108dp((Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, f)) * 3.0f) + f4 + (f * f3)));
                        float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, -f5));
                        int lerp = AndroidUtilities.lerp(AndroidUtilities.m107dp(3) + ((this.emojiSize + AndroidUtilities.m107dp(1)) * i2), (getMeasuredHeight() - this.emojiSize) / i, max);
                        int i3 = this.emojiSize;
                        this.rect.set(m108dp2, lerp, m108dp2 + i3, lerp + i3);
                        this.rect.inset(AndroidUtilities.m107dp(-2), AndroidUtilities.m108dp((-2.0f) * max));
                        this.rectPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), AndroidUtilities.lerp(1.0f, 0.5f, max)));
                        canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), this.rectPaint);
                        int i4 = 0;
                        while (i4 < 5) {
                            i4++;
                            int i5 = (i2 * 5) + i4;
                            int m107dp = (this.emojiSize * i4) + AndroidUtilities.m107dp((i4 * 4) + 8);
                            int m107dp2 = AndroidUtilities.m107dp(3) + ((this.emojiSize + AndroidUtilities.m107dp(1)) * i2);
                            Drawable drawable = this.drawables[i5];
                            int i6 = this.emojiSize;
                            drawable.setBounds(m107dp, m107dp2, m107dp + i6, i6 + m107dp2);
                            this.drawables[i5].draw(canvas);
                        }
                        i2++;
                        i = 2;
                        f3 = 4.0f;
                        f4 = 5.0f;
                    }
                    this.drawables[0].setBounds(AndroidUtilities.m107dp(5), (getMeasuredHeight() - this.emojiSize) / 2, AndroidUtilities.m107dp(5) + this.emojiSize, (getMeasuredHeight() + this.emojiSize) / 2);
                    this.drawables[0].draw(canvas);
                    canvas.drawRect(AndroidUtilities.m108dp(8.45f) + this.emojiSize, AndroidUtilities.m107dp(2), AndroidUtilities.m108dp(8.45f) + this.emojiSize + 1, getMeasuredHeight() - AndroidUtilities.m107dp(6), Theme.dividerPaint);
                    return;
                }
                float f6 = this.selection1Animated.set(this.selection[0]);
                int m107dp3 = AndroidUtilities.m107dp(5);
                float f7 = m107dp3;
                int i7 = this.emojiSize;
                this.rect.set((int) ((this.emojiSize * f6) + AndroidUtilities.m108dp((f6 * 4.0f) + 5.0f)), f7, m108dp + i7, i7 + m107dp3);
                this.rect.inset(AndroidUtilities.m107dp(-2), AndroidUtilities.m107dp(-2));
                this.rectPaint.setColor(Theme.getColor(Theme.key_listSelector, this.resourcesProvider));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), this.rectPaint);
                int i8 = 0;
                while (i8 < 6) {
                    Drawable drawable2 = this.drawables[i8];
                    if (drawable2 != null) {
                        int m107dp4 = (this.emojiSize * i8) + AndroidUtilities.m107dp((i8 * 4) + 5);
                        float min = ((1.0f - (Math.min(f2, Math.abs(i8 - f6)) * 2.0f)) * 0.1f) + 0.9f;
                        canvas.save();
                        int i9 = this.emojiSize;
                        canvas.scale(min, min, m107dp4 + (i9 / 2.0f), (i9 / 2.0f) + f7);
                        int i10 = this.emojiSize;
                        drawable2.setBounds(m107dp4, m107dp3, m107dp4 + i10, i10 + m107dp3);
                        drawable2.draw(canvas);
                        canvas.restore();
                    }
                    i8++;
                    f2 = 0.5f;
                }
            }
        }
    }

    private void init() {
        Field field;
        if (superListenerField == null) {
            try {
                field = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
                try {
                    field.setAccessible(true);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                field = null;
            }
            superListenerField = field;
        }
        Field field2 = superListenerField;
        if (field2 != null) {
            try {
                this.mSuperScrollListener = (ViewTreeObserver.OnScrollChangedListener) field2.get(this);
                superListenerField.set(this, NOP);
            } catch (Exception unused3) {
                this.mSuperScrollListener = null;
            }
        }
    }

    private void unregisterListener() {
        ViewTreeObserver viewTreeObserver;
        if (this.mSuperScrollListener == null || (viewTreeObserver = this.mViewTreeObserver) == null) {
            return;
        }
        if (viewTreeObserver.isAlive()) {
            this.mViewTreeObserver.removeOnScrollChangedListener(this.mSuperScrollListener);
        }
        this.mViewTreeObserver = null;
    }

    private void registerListener(View view) {
        if (this.mSuperScrollListener != null) {
            ViewTreeObserver viewTreeObserver = view.getWindowToken() != null ? view.getViewTreeObserver() : null;
            ViewTreeObserver viewTreeObserver2 = this.mViewTreeObserver;
            if (viewTreeObserver != viewTreeObserver2) {
                if (viewTreeObserver2 != null && viewTreeObserver2.isAlive()) {
                    this.mViewTreeObserver.removeOnScrollChangedListener(this.mSuperScrollListener);
                }
                this.mViewTreeObserver = viewTreeObserver;
                if (viewTreeObserver != null) {
                    viewTreeObserver.addOnScrollChangedListener(this.mSuperScrollListener);
                }
            }
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        try {
            super.showAsDropDown(view, i, i2);
            registerListener(view);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        super.update(view, i, i2, i3, i4);
        registerListener(view);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2) {
        super.update(view, i, i2);
        registerListener(view);
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View view, int i, int i2, int i3) {
        super.showAtLocation(view, i, i2, i3);
        unregisterListener();
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        setFocusable(false);
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
        unregisterListener();
    }
}
