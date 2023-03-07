package org.telegram.p048ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
/* renamed from: org.telegram.ui.Components.ColorPicker */
/* loaded from: classes6.dex */
public class ColorPicker extends FrameLayout {
    private ImageView addButton;
    private Drawable circleDrawable;
    private Paint circlePaint;
    private boolean circlePressed;
    private ImageView clearButton;
    private EditTextBoldCursor[] colorEditText;
    private LinearGradient colorGradient;
    private float[] colorHSV;
    private boolean colorPressed;
    private Bitmap colorWheelBitmap;
    private Paint colorWheelPaint;
    private int colorWheelWidth;
    private AnimatorSet colorsAnimator;
    private int colorsCount;
    private int currentResetType;
    private final ColorPickerDelegate delegate;
    private float[] hsvTemp;
    boolean ignoreTextChange;
    private long lastUpdateTime;
    private Paint linePaint;
    private LinearLayout linearLayout;
    private float maxBrightness;
    private int maxColorsCount;
    private float maxHsvBrightness;
    private ActionBarMenuItem menuItem;
    private float minBrightness;
    private float minHsvBrightness;
    private boolean myMessagesColor;
    private float pressedMoveProgress;
    private int prevSelectedColor;
    private RadioButton[] radioButton;
    private FrameLayout radioContainer;
    private TextView resetButton;
    private int selectedColor;
    private RectF sliderRect;
    private Paint valueSliderPaint;

    /* renamed from: org.telegram.ui.Components.ColorPicker$ColorPickerDelegate */
    /* loaded from: classes6.dex */
    public interface ColorPickerDelegate {

        /* renamed from: org.telegram.ui.Components.ColorPicker$ColorPickerDelegate$-CC  reason: invalid class name */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static void $default$deleteTheme(ColorPickerDelegate colorPickerDelegate) {
            }

            public static int $default$getDefaultColor(ColorPickerDelegate colorPickerDelegate, int i) {
                return 0;
            }

            public static void $default$openThemeCreate(ColorPickerDelegate colorPickerDelegate, boolean z) {
            }
        }

        void deleteTheme();

        int getDefaultColor(int i);

        void openThemeCreate(boolean z);

        void setColor(int i, int i2, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$4(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.ColorPicker$RadioButton */
    /* loaded from: classes6.dex */
    public static class RadioButton extends View {
        private ObjectAnimator checkAnimator;
        private boolean checked;
        private float checkedState;
        private int currentColor;
        private final Paint paint;

        public RadioButton(Context context) {
            super(context);
            this.paint = new Paint(1);
        }

        void updateCheckedState(boolean z) {
            ObjectAnimator objectAnimator = this.checkAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            if (z) {
                float[] fArr = new float[1];
                fArr[0] = this.checked ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "checkedState", fArr);
                this.checkAnimator = ofFloat;
                ofFloat.setDuration(200L);
                this.checkAnimator.start();
                return;
            }
            setCheckedState(this.checked ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        }

        public void setChecked(boolean z, boolean z2) {
            this.checked = z;
            updateCheckedState(z2);
        }

        public void setColor(int i) {
            this.currentColor = i;
            invalidate();
        }

        public int getColor() {
            return this.currentColor;
        }

        @Keep
        public void setCheckedState(float f) {
            this.checkedState = f;
            invalidate();
        }

        @Keep
        public float getCheckedState() {
            return this.checkedState;
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            updateCheckedState(false);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(30), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(30), 1073741824));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float m50dp = AndroidUtilities.m50dp(15);
            float measuredWidth = getMeasuredWidth() * 0.5f;
            float measuredHeight = getMeasuredHeight() * 0.5f;
            this.paint.setColor(this.currentColor);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(AndroidUtilities.m50dp(3));
            this.paint.setAlpha(Math.round(this.checkedState * 255.0f));
            canvas.drawCircle(measuredWidth, measuredHeight, m50dp - (this.paint.getStrokeWidth() * 0.5f), this.paint);
            this.paint.setAlpha(255);
            this.paint.setStyle(Paint.Style.FILL);
            canvas.drawCircle(measuredWidth, measuredHeight, m50dp - (AndroidUtilities.m50dp(5) * this.checkedState), this.paint);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setText(LocaleController.getString("ColorPickerMainColor", C3158R.string.ColorPickerMainColor));
            accessibilityNodeInfo.setClassName(Button.class.getName());
            accessibilityNodeInfo.setChecked(this.checked);
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setEnabled(true);
        }
    }

    public ColorPicker(Context context, boolean z, ColorPickerDelegate colorPickerDelegate) {
        super(context);
        this.sliderRect = new RectF();
        this.radioButton = new RadioButton[4];
        this.colorsCount = 1;
        this.maxColorsCount = 1;
        this.colorHSV = new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f};
        this.hsvTemp = new float[3];
        this.pressedMoveProgress = 1.0f;
        this.minBrightness = BitmapDescriptorFactory.HUE_RED;
        this.maxBrightness = 1.0f;
        this.minHsvBrightness = BitmapDescriptorFactory.HUE_RED;
        this.maxHsvBrightness = 1.0f;
        this.delegate = colorPickerDelegate;
        this.colorEditText = new EditTextBoldCursor[2];
        setWillNotDraw(false);
        this.circleDrawable = context.getResources().getDrawable(C3158R.C3160drawable.knob_shadow).mutate();
        this.circlePaint = new Paint(1);
        this.colorWheelPaint = new Paint(5);
        this.valueSliderPaint = new Paint(5);
        Paint paint = new Paint();
        this.linePaint = paint;
        paint.setColor(301989888);
        setClipChildren(false);
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.ColorPicker.1
            private Paint paint;
            private RectF rect = new RectF();

            {
                Paint paint2 = new Paint(1);
                this.paint = paint2;
                paint2.setColor(Theme.getColor("dialogBackgroundGray"));
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected void onDraw(Canvas canvas) {
                int left = ColorPicker.this.colorEditText[0].getLeft() - AndroidUtilities.m50dp(13);
                this.rect.set(left, AndroidUtilities.m50dp(5), left + ((int) (AndroidUtilities.m50dp(91) + (ColorPicker.this.clearButton.getVisibility() == 0 ? AndroidUtilities.m50dp(25) * ColorPicker.this.clearButton.getAlpha() : BitmapDescriptorFactory.HUE_RED))), AndroidUtilities.m50dp(37));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), this.paint);
            }
        };
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(0);
        addView(this.linearLayout, LayoutHelper.createFrame(-1, 54, 51, 27, -6, 17, 0));
        this.linearLayout.setWillNotDraw(false);
        FrameLayout frameLayout = new FrameLayout(context);
        this.radioContainer = frameLayout;
        frameLayout.setClipChildren(false);
        addView(this.radioContainer, LayoutHelper.createFrame(174, 30, 49, 72, 1, 0, 0));
        int i = 0;
        while (i < 4) {
            this.radioButton[i] = new RadioButton(context);
            this.radioButton[i].setChecked(this.selectedColor == i, false);
            this.radioContainer.addView(this.radioButton[i], LayoutHelper.createFrame(30, 30, 48, 0, 0, 0, 0));
            this.radioButton[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ColorPicker.this.lambda$new$0(view);
                }
            });
            i++;
        }
        final int i2 = 0;
        while (true) {
            EditTextBoldCursor[] editTextBoldCursorArr = this.colorEditText;
            if (i2 >= editTextBoldCursorArr.length) {
                break;
            }
            if (i2 % 2 == 0) {
                editTextBoldCursorArr[i2] = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.ColorPicker.2
                    @Override // org.telegram.p048ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                    public boolean onTouchEvent(MotionEvent motionEvent) {
                        if (getAlpha() == 1.0f && motionEvent.getAction() == 0) {
                            if (ColorPicker.this.colorEditText[i2 + 1].isFocused()) {
                                AndroidUtilities.showKeyboard(ColorPicker.this.colorEditText[i2 + 1]);
                            } else {
                                ColorPicker.this.colorEditText[i2 + 1].requestFocus();
                            }
                        }
                        return false;
                    }
                };
                this.colorEditText[i2].setBackgroundDrawable(null);
                this.colorEditText[i2].setText("#");
                this.colorEditText[i2].setEnabled(false);
                this.colorEditText[i2].setFocusable(false);
                this.colorEditText[i2].setPadding(0, AndroidUtilities.m50dp(5), 0, AndroidUtilities.m50dp(16));
                this.linearLayout.addView(this.colorEditText[i2], LayoutHelper.createLinear(-2, -1, 0, 0, 0, 0));
            } else {
                editTextBoldCursorArr[i2] = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.ColorPicker.3
                    @Override // org.telegram.p048ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                    public boolean onTouchEvent(MotionEvent motionEvent) {
                        if (getAlpha() != 1.0f) {
                            return false;
                        }
                        if (!isFocused()) {
                            requestFocus();
                            return false;
                        }
                        AndroidUtilities.showKeyboard(this);
                        return super.onTouchEvent(motionEvent);
                    }

                    @Override // android.view.View
                    public boolean getGlobalVisibleRect(Rect rect, Point point) {
                        boolean globalVisibleRect = super.getGlobalVisibleRect(rect, point);
                        rect.bottom += AndroidUtilities.m50dp(40);
                        return globalVisibleRect;
                    }

                    @Override // android.view.View
                    public void invalidate() {
                        super.invalidate();
                        ColorPicker.this.colorEditText[i2 - 1].invalidate();
                    }
                };
                this.colorEditText[i2].setBackgroundDrawable(null);
                this.colorEditText[i2].setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
                this.colorEditText[i2].setHint("8BC6ED");
                this.colorEditText[i2].setPadding(0, AndroidUtilities.m50dp(5), 0, AndroidUtilities.m50dp(16));
                this.linearLayout.addView(this.colorEditText[i2], LayoutHelper.createLinear(71, -1, 0, 0, 0, 0));
                this.colorEditText[i2].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.ColorPicker.4
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        ColorPicker colorPicker = ColorPicker.this;
                        if (colorPicker.ignoreTextChange) {
                            return;
                        }
                        colorPicker.ignoreTextChange = true;
                        int i3 = 0;
                        while (i3 < editable.length()) {
                            char charAt = editable.charAt(i3);
                            if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'f') && (charAt < 'A' || charAt > 'F'))) {
                                editable.replace(i3, i3 + 1, "");
                                i3--;
                            }
                            i3++;
                        }
                        if (editable.length() == 0) {
                            ColorPicker.this.ignoreTextChange = false;
                            return;
                        }
                        ColorPicker colorPicker2 = ColorPicker.this;
                        colorPicker2.setColorInner(colorPicker2.getFieldColor(i2, -1));
                        int color = ColorPicker.this.getColor();
                        if (editable.length() == 6) {
                            editable.replace(0, editable.length(), String.format("%02x%02x%02x", Byte.valueOf((byte) Color.red(color)), Byte.valueOf((byte) Color.green(color)), Byte.valueOf((byte) Color.blue(color))).toUpperCase());
                            ColorPicker.this.colorEditText[i2].setSelection(editable.length());
                        }
                        ColorPicker.this.radioButton[ColorPicker.this.selectedColor].setColor(color);
                        ColorPicker.this.delegate.setColor(color, ColorPicker.this.selectedColor, true);
                        ColorPicker.this.ignoreTextChange = false;
                    }
                });
                this.colorEditText[i2].setOnEditorActionListener(ColorPicker$$ExternalSyntheticLambda5.INSTANCE);
            }
            this.colorEditText[i2].setTextSize(1, 16.0f);
            this.colorEditText[i2].setHintTextColor(Theme.getColor("windowBackgroundWhiteHintText"));
            this.colorEditText[i2].setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.colorEditText[i2].setCursorColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.colorEditText[i2].setCursorSize(AndroidUtilities.m50dp(18));
            this.colorEditText[i2].setCursorWidth(1.5f);
            this.colorEditText[i2].setSingleLine(true);
            this.colorEditText[i2].setGravity(19);
            this.colorEditText[i2].setHeaderHintColor(Theme.getColor("windowBackgroundWhiteBlueHeader"));
            this.colorEditText[i2].setTransformHintToHeader(true);
            this.colorEditText[i2].setInputType(524416);
            this.colorEditText[i2].setImeOptions(268435462);
            if (i2 == 1) {
                this.colorEditText[i2].requestFocus();
            } else if (i2 == 2 || i2 == 3) {
                this.colorEditText[i2].setVisibility(8);
            }
            i2++;
        }
        ImageView imageView = new ImageView(getContext());
        this.addButton = imageView;
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor("dialogButtonSelector"), 1));
        this.addButton.setImageResource(C3158R.C3160drawable.msg_add);
        this.addButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteBlackText"), PorterDuff.Mode.MULTIPLY));
        this.addButton.setScaleType(ImageView.ScaleType.CENTER);
        this.addButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ColorPicker.this.lambda$new$2(view);
            }
        });
        this.addButton.setContentDescription(LocaleController.getString("Add", C3158R.string.Add));
        addView(this.addButton, LayoutHelper.createFrame(30, 30, 49, 36, 1, 0, 0));
        ImageView imageView2 = new ImageView(getContext()) { // from class: org.telegram.ui.Components.ColorPicker.6
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                ColorPicker.this.linearLayout.invalidate();
            }
        };
        this.clearButton = imageView2;
        imageView2.setBackground(Theme.createSelectorDrawable(Theme.getColor("dialogButtonSelector"), 1));
        this.clearButton.setImageResource(C3158R.C3160drawable.msg_close);
        this.clearButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteBlackText"), PorterDuff.Mode.MULTIPLY));
        this.clearButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.clearButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
        this.clearButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.clearButton.setScaleType(ImageView.ScaleType.CENTER);
        this.clearButton.setVisibility(4);
        this.clearButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ColorPicker.this.lambda$new$3(view);
            }
        });
        this.clearButton.setContentDescription(LocaleController.getString("ClearButton", C3158R.string.ClearButton));
        addView(this.clearButton, LayoutHelper.createFrame(30, 30, 51, 97, 1, 0, 0));
        TextView textView = new TextView(context);
        this.resetButton = textView;
        textView.setTextSize(1, 15.0f);
        this.resetButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.resetButton.setGravity(17);
        this.resetButton.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
        this.resetButton.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        addView(this.resetButton, LayoutHelper.createFrame(-2, 36, 53, 0, 3, 14, 0));
        this.resetButton.setOnClickListener(ColorPicker$$ExternalSyntheticLambda4.INSTANCE);
        if (z) {
            ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, null, 0, Theme.getColor("windowBackgroundWhiteBlackText"));
            this.menuItem = actionBarMenuItem;
            actionBarMenuItem.setLongClickEnabled(false);
            this.menuItem.setIcon(C3158R.C3160drawable.ic_ab_other);
            this.menuItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3158R.string.AccDescrMoreOptions));
            this.menuItem.addSubItem(1, C3158R.C3160drawable.msg_edit, LocaleController.getString("OpenInEditor", C3158R.string.OpenInEditor));
            this.menuItem.addSubItem(2, C3158R.C3160drawable.msg_share, LocaleController.getString("ShareTheme", C3158R.string.ShareTheme));
            this.menuItem.addSubItem(3, C3158R.C3160drawable.msg_delete, LocaleController.getString("DeleteTheme", C3158R.string.DeleteTheme));
            this.menuItem.setMenuYOffset(-AndroidUtilities.m50dp(80));
            this.menuItem.setSubMenuOpenSide(2);
            this.menuItem.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda6
                @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
                public final void onItemClick(int i3) {
                    ColorPicker.this.lambda$new$5(i3);
                }
            });
            this.menuItem.setAdditionalYOffset(AndroidUtilities.m50dp(72));
            this.menuItem.setTranslationX(AndroidUtilities.m50dp(6));
            this.menuItem.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor("dialogButtonSelector"), 1));
            addView(this.menuItem, LayoutHelper.createFrame(30, 30, 53, 0, 2, 10, 0));
            this.menuItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ColorPicker.this.lambda$new$6(view);
                }
            });
        }
        updateColorsPosition(null, 0, false, getMeasuredWidth());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        RadioButton radioButton = (RadioButton) view;
        int i = 0;
        while (true) {
            RadioButton[] radioButtonArr = this.radioButton;
            if (i < radioButtonArr.length) {
                boolean z = radioButtonArr[i] == radioButton;
                radioButtonArr[i].setChecked(z, true);
                if (z) {
                    this.prevSelectedColor = this.selectedColor;
                    this.selectedColor = i;
                }
                i++;
            } else {
                int color = radioButton.getColor();
                setColorInner(color);
                this.colorEditText[1].setText(String.format("%02x%02x%02x", Byte.valueOf((byte) Color.red(color)), Byte.valueOf((byte) Color.green(color)), Byte.valueOf((byte) Color.blue(color))).toUpperCase());
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$1(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            AndroidUtilities.hideKeyboard(textView);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        if (this.colorsAnimator != null) {
            return;
        }
        int i = this.colorsCount;
        if (i == 1) {
            if (this.radioButton[1].getColor() == 0) {
                RadioButton[] radioButtonArr = this.radioButton;
                radioButtonArr[1].setColor(generateGradientColors(radioButtonArr[0].getColor()));
            }
            if (this.myMessagesColor) {
                this.delegate.setColor(this.radioButton[0].getColor(), 0, true);
            }
            this.delegate.setColor(this.radioButton[1].getColor(), 1, true);
            this.colorsCount = 2;
        } else if (i == 2) {
            this.colorsCount = 3;
            if (this.radioButton[2].getColor() == 0) {
                float[] fArr = new float[3];
                Color.colorToHSV(this.radioButton[0].getColor(), fArr);
                if (fArr[0] > 180.0f) {
                    fArr[0] = fArr[0] - 60.0f;
                } else {
                    fArr[0] = fArr[0] + 60.0f;
                }
                this.radioButton[2].setColor(Color.HSVToColor(255, fArr));
            }
            this.delegate.setColor(this.radioButton[2].getColor(), 2, true);
        } else if (i != 3) {
            return;
        } else {
            this.colorsCount = 4;
            if (this.radioButton[3].getColor() == 0) {
                RadioButton[] radioButtonArr2 = this.radioButton;
                radioButtonArr2[3].setColor(generateGradientColors(radioButtonArr2[2].getColor()));
            }
            this.delegate.setColor(this.radioButton[3].getColor(), 3, true);
        }
        ArrayList<Animator> arrayList = new ArrayList<>();
        if (this.colorsCount < this.maxColorsCount) {
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.ALPHA, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.SCALE_X, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.SCALE_Y, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.TRANSLATION_X, (AndroidUtilities.m50dp(30) * (this.colorsCount - 1)) + (AndroidUtilities.m50dp(13) * (this.colorsCount - 1))));
        } else {
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.TRANSLATION_X, (AndroidUtilities.m50dp(30) * (this.colorsCount - 1)) + (AndroidUtilities.m50dp(13) * (this.colorsCount - 1))));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
        }
        if (this.colorsCount > 1) {
            if (this.clearButton.getVisibility() != 0) {
                this.clearButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.clearButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
            }
            this.clearButton.setVisibility(0);
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, View.ALPHA, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, View.SCALE_X, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, View.SCALE_Y, 1.0f));
        }
        this.radioButton[this.colorsCount - 1].callOnClick();
        this.colorsAnimator = new AnimatorSet();
        updateColorsPosition(arrayList, 0, false, getMeasuredWidth());
        this.colorsAnimator.playTogether(arrayList);
        this.colorsAnimator.setDuration(180L);
        this.colorsAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.colorsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ColorPicker.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ColorPicker.this.colorsCount == ColorPicker.this.maxColorsCount) {
                    ColorPicker.this.addButton.setVisibility(4);
                }
                ColorPicker.this.colorsAnimator = null;
            }
        });
        this.colorsAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        RadioButton[] radioButtonArr;
        if (this.colorsAnimator != null) {
            return;
        }
        ArrayList<Animator> arrayList = new ArrayList<>();
        int i = this.colorsCount;
        if (i == 2) {
            this.colorsCount = 1;
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.clearButton, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
        } else if (i == 3) {
            this.colorsCount = 2;
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.TRANSLATION_X, AndroidUtilities.m50dp(30) + AndroidUtilities.m50dp(13)));
        } else if (i != 4) {
            return;
        } else {
            this.colorsCount = 3;
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.TRANSLATION_X, (AndroidUtilities.m50dp(30) * 2) + (AndroidUtilities.m50dp(13) * 2)));
        }
        if (this.colorsCount < this.maxColorsCount) {
            this.addButton.setVisibility(0);
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.ALPHA, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.SCALE_X, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.SCALE_Y, 1.0f));
        } else {
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.addButton, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
        }
        int i2 = this.selectedColor;
        if (i2 != 3) {
            RadioButton radioButton = this.radioButton[i2];
            int i3 = i2 + 1;
            while (true) {
                radioButtonArr = this.radioButton;
                if (i3 >= radioButtonArr.length) {
                    break;
                }
                radioButtonArr[i3 - 1] = radioButtonArr[i3];
                i3++;
            }
            radioButtonArr[3] = radioButton;
        }
        int i4 = this.prevSelectedColor;
        if (i4 >= 0 && i4 < this.selectedColor) {
            this.radioButton[i4].callOnClick();
        } else {
            this.radioButton[this.colorsCount - 1].callOnClick();
        }
        int i5 = 0;
        while (true) {
            RadioButton[] radioButtonArr2 = this.radioButton;
            if (i5 < radioButtonArr2.length) {
                if (i5 < this.colorsCount) {
                    this.delegate.setColor(radioButtonArr2[i5].getColor(), i5, i5 == this.radioButton.length - 1);
                } else {
                    this.delegate.setColor(0, i5, i5 == radioButtonArr2.length - 1);
                }
                i5++;
            } else {
                this.colorsAnimator = new AnimatorSet();
                updateColorsPosition(arrayList, this.selectedColor, true, getMeasuredWidth());
                this.colorsAnimator.playTogether(arrayList);
                this.colorsAnimator.setDuration(180L);
                this.colorsAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                this.colorsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ColorPicker.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (ColorPicker.this.colorsCount == 1) {
                            ColorPicker.this.clearButton.setVisibility(4);
                        }
                        for (int i6 = 0; i6 < ColorPicker.this.radioButton.length; i6++) {
                            if (ColorPicker.this.radioButton[i6].getTag(C3158R.C3161id.index_tag) == null) {
                                ColorPicker.this.radioButton[i6].setVisibility(4);
                            }
                        }
                        ColorPicker.this.colorsAnimator = null;
                    }
                });
                this.colorsAnimator.start();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(int i) {
        if (i == 1 || i == 2) {
            this.delegate.openThemeCreate(i == 2);
        } else if (i == 3) {
            this.delegate.deleteTheme();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        this.menuItem.toggleSubMenu();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateColorsPosition(null, 0, false, getMeasuredWidth());
    }

    private void updateColorsPosition(ArrayList<Animator> arrayList, int i, boolean z, int i2) {
        int i3 = this.colorsCount;
        int left = this.radioContainer.getLeft() + (AndroidUtilities.m50dp(30) * i3) + ((i3 - 1) * AndroidUtilities.m50dp(13));
        int m50dp = i2 - AndroidUtilities.m50dp(this.currentResetType == 1 ? 50 : 0);
        float f = left > m50dp ? left - m50dp : BitmapDescriptorFactory.HUE_RED;
        if (arrayList != null) {
            arrayList.add(ObjectAnimator.ofFloat(this.radioContainer, View.TRANSLATION_X, -f));
        } else {
            this.radioContainer.setTranslationX(-f);
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            RadioButton[] radioButtonArr = this.radioButton;
            if (i4 >= radioButtonArr.length) {
                return;
            }
            RadioButton radioButton = radioButtonArr[i4];
            int i6 = C3158R.C3161id.index_tag;
            boolean z2 = radioButton.getTag(i6) != null;
            if (i4 < this.colorsCount) {
                this.radioButton[i4].setVisibility(0);
                if (arrayList != null) {
                    if (!z2) {
                        arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], View.ALPHA, 1.0f));
                        arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], View.SCALE_X, 1.0f));
                        arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], View.SCALE_Y, 1.0f));
                    }
                    if (z || !(z || i4 == this.colorsCount - 1)) {
                        arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], View.TRANSLATION_X, i5));
                    } else {
                        this.radioButton[i4].setTranslationX(i5);
                    }
                } else {
                    this.radioButton[i4].setVisibility(0);
                    if (this.colorsAnimator == null) {
                        this.radioButton[i4].setAlpha(1.0f);
                        this.radioButton[i4].setScaleX(1.0f);
                        this.radioButton[i4].setScaleY(1.0f);
                    }
                    this.radioButton[i4].setTranslationX(i5);
                }
                this.radioButton[i4].setTag(i6, 1);
            } else {
                if (arrayList == null) {
                    this.radioButton[i4].setVisibility(4);
                    if (this.colorsAnimator == null) {
                        this.radioButton[i4].setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.radioButton[i4].setScaleX(BitmapDescriptorFactory.HUE_RED);
                        this.radioButton[i4].setScaleY(BitmapDescriptorFactory.HUE_RED);
                    }
                } else if (z2) {
                    arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(this.radioButton[i4], View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                }
                if (!z) {
                    this.radioButton[i4].setTranslationX(i5);
                }
                this.radioButton[i4].setTag(i6, null);
            }
            i5 += AndroidUtilities.m50dp(30) + AndroidUtilities.m50dp(13);
            i4++;
        }
    }

    public void hideKeyboard() {
        AndroidUtilities.hideKeyboard(this.colorEditText[1]);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a7  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r24) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.ColorPicker.onDraw(android.graphics.Canvas):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFieldColor(int i, int i2) {
        try {
            return Integer.parseInt(this.colorEditText[i].getText().toString(), 16) | (-16777216);
        } catch (Exception unused) {
            return i2;
        }
    }

    private void drawPointerArrow(Canvas canvas, int i, int i2, int i3, boolean z) {
        int m50dp = AndroidUtilities.m50dp(z ? 12 : 16);
        this.circleDrawable.setBounds(i - m50dp, i2 - m50dp, i + m50dp, m50dp + i2);
        this.circleDrawable.draw(canvas);
        this.circlePaint.setColor(-1);
        float f = i;
        float f2 = i2;
        canvas.drawCircle(f, f2, AndroidUtilities.m50dp(z ? 11 : 15), this.circlePaint);
        this.circlePaint.setColor(i3);
        canvas.drawCircle(f, f2, AndroidUtilities.m50dp(z ? 9 : 13), this.circlePaint);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (this.colorWheelWidth != i) {
            this.colorWheelWidth = i;
            this.colorWheelBitmap = createColorWheelBitmap(i, AndroidUtilities.m50dp(180));
            this.colorGradient = null;
        }
    }

    private Bitmap createColorWheelBitmap(int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        float f = i;
        float f2 = i2;
        this.colorWheelPaint.setShader(new ComposeShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, i2 / 3, (float) BitmapDescriptorFactory.HUE_RED, f2, new int[]{-1, 0}, (float[]) null, Shader.TileMode.CLAMP), new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, f, (float) BitmapDescriptorFactory.HUE_RED, new int[]{-65536, -256, -16711936, -16711681, -16776961, -65281, -65536}, (float[]) null, Shader.TileMode.CLAMP), PorterDuff.Mode.MULTIPLY));
        new Canvas(createBitmap).drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f2, this.colorWheelPaint);
        return createBitmap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f9, code lost:
        if (r12 <= (r11.sliderRect.bottom + org.telegram.messenger.AndroidUtilities.m50dp(7))) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
        if (r0 != 2) goto L5;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0140  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.ColorPicker.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setColorInner(int i) {
        Color.colorToHSV(i, this.colorHSV);
        int defaultColor = this.delegate.getDefaultColor(this.selectedColor);
        if (defaultColor == 0 || defaultColor != i) {
            updateHsvMinMaxBrightness();
        }
        this.colorGradient = null;
        invalidate();
    }

    public void setColor(int i, int i2) {
        if (!this.ignoreTextChange) {
            this.ignoreTextChange = true;
            if (this.selectedColor == i2) {
                String upperCase = String.format("%02x%02x%02x", Byte.valueOf((byte) Color.red(i)), Byte.valueOf((byte) Color.green(i)), Byte.valueOf((byte) Color.blue(i))).toUpperCase();
                this.colorEditText[1].setText(upperCase);
                this.colorEditText[1].setSelection(upperCase.length());
            }
            this.radioButton[i2].setColor(i);
            this.ignoreTextChange = false;
        }
        setColorInner(i);
    }

    public void setHasChanges(final boolean z) {
        if (!z || this.resetButton.getTag() == null) {
            if ((z || this.resetButton.getTag() != null) && this.clearButton.getTag() == null) {
                this.resetButton.setTag(z ? 1 : null);
                AnimatorSet animatorSet = new AnimatorSet();
                ArrayList arrayList = new ArrayList();
                if (z) {
                    this.resetButton.setVisibility(0);
                }
                TextView textView = this.resetButton;
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                arrayList.add(ObjectAnimator.ofFloat(textView, property, fArr));
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ColorPicker.8
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z) {
                            return;
                        }
                        ColorPicker.this.resetButton.setVisibility(8);
                    }
                });
                animatorSet.playTogether(arrayList);
                animatorSet.setDuration(180L);
                animatorSet.start();
            }
        }
    }

    public void setType(int i, boolean z, final int i2, int i3, boolean z2, int i4, boolean z3) {
        if (i != this.currentResetType) {
            this.prevSelectedColor = 0;
            this.selectedColor = 0;
            int i5 = 0;
            while (i5 < 4) {
                this.radioButton[i5].setChecked(i5 == this.selectedColor, true);
                i5++;
            }
        }
        this.maxColorsCount = i2;
        this.currentResetType = i;
        this.myMessagesColor = z2;
        this.colorsCount = i3;
        if (i3 == 1) {
            this.addButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        } else if (i3 == 2) {
            this.addButton.setTranslationX(AndroidUtilities.m50dp(30) + AndroidUtilities.m50dp(13));
        } else if (i3 == 3) {
            this.addButton.setTranslationX((AndroidUtilities.m50dp(30) * 2) + (AndroidUtilities.m50dp(13) * 2));
        } else {
            this.addButton.setTranslationX((AndroidUtilities.m50dp(30) * 3) + (AndroidUtilities.m50dp(13) * 3));
        }
        ActionBarMenuItem actionBarMenuItem = this.menuItem;
        if (actionBarMenuItem != null) {
            if (i == 1) {
                actionBarMenuItem.setVisibility(0);
            } else {
                actionBarMenuItem.setVisibility(8);
                this.clearButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            }
        }
        if (i2 <= 1) {
            this.addButton.setVisibility(8);
            this.clearButton.setVisibility(8);
        } else {
            if (i3 < i2) {
                this.addButton.setVisibility(0);
                this.addButton.setScaleX(1.0f);
                this.addButton.setScaleY(1.0f);
                this.addButton.setAlpha(1.0f);
            } else {
                this.addButton.setVisibility(8);
            }
            if (i3 > 1) {
                this.clearButton.setVisibility(0);
                this.clearButton.setScaleX(1.0f);
                this.clearButton.setScaleY(1.0f);
                this.clearButton.setAlpha(1.0f);
            } else {
                this.clearButton.setVisibility(8);
            }
        }
        this.linearLayout.invalidate();
        updateColorsPosition(null, 0, false, getMeasuredWidth());
        ArrayList arrayList = z3 ? new ArrayList() : null;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(180L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ColorPicker.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (i2 <= 1) {
                    ColorPicker.this.clearButton.setVisibility(8);
                }
            }
        });
        animatorSet.start();
    }

    public int getColor() {
        float[] fArr = this.hsvTemp;
        float[] fArr2 = this.colorHSV;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = getBrightness();
        return (Color.HSVToColor(this.hsvTemp) & 16777215) | (-16777216);
    }

    private float getBrightness() {
        return Math.max(this.minHsvBrightness, Math.min(this.colorHSV[2], this.maxHsvBrightness));
    }

    private void updateHsvMinMaxBrightness() {
        ImageView imageView = this.clearButton;
        if (imageView == null) {
            return;
        }
        float f = imageView.getTag() != null ? BitmapDescriptorFactory.HUE_RED : this.minBrightness;
        float f2 = this.clearButton.getTag() != null ? 1.0f : this.maxBrightness;
        float[] fArr = this.colorHSV;
        float f3 = fArr[2];
        if (f == BitmapDescriptorFactory.HUE_RED && f2 == 1.0f) {
            this.minHsvBrightness = BitmapDescriptorFactory.HUE_RED;
            this.maxHsvBrightness = 1.0f;
            return;
        }
        fArr[2] = 1.0f;
        int HSVToColor = Color.HSVToColor(fArr);
        this.colorHSV[2] = f3;
        float computePerceivedBrightness = AndroidUtilities.computePerceivedBrightness(HSVToColor);
        float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(f / computePerceivedBrightness, 1.0f));
        this.minHsvBrightness = max;
        this.maxHsvBrightness = Math.max(max, Math.min(f2 / computePerceivedBrightness, 1.0f));
    }

    public void setMinBrightness(float f) {
        this.minBrightness = f;
        updateHsvMinMaxBrightness();
    }

    public void setMaxBrightness(float f) {
        this.maxBrightness = f;
        updateHsvMinMaxBrightness();
    }

    public void provideThemeDescriptions(List<ThemeDescription> list) {
        for (int i = 0; i < this.colorEditText.length; i++) {
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_CURSORCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, "windowBackgroundWhiteHintText"));
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_HINTTEXTCOLOR | ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, "windowBackgroundWhiteBlueHeader"));
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "windowBackgroundWhiteInputField"));
            list.add(new ThemeDescription(this.colorEditText[i], ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, "windowBackgroundWhiteInputFieldActivated"));
        }
        list.add(new ThemeDescription(this.clearButton, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        list.add(new ThemeDescription(this.clearButton, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "dialogButtonSelector"));
        if (this.menuItem != null) {
            ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.ColorPicker$$ExternalSyntheticLambda7
                @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public final void didSetColor() {
                    ColorPicker.this.lambda$provideThemeDescriptions$7();
                }

                @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public /* synthetic */ void onAnimationProgress(float f) {
                    ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
                }
            };
            list.add(new ThemeDescription(this.menuItem, 0, null, null, null, themeDescriptionDelegate, "windowBackgroundWhiteBlackText"));
            list.add(new ThemeDescription(this.menuItem, 0, null, null, null, themeDescriptionDelegate, "dialogButtonSelector"));
            list.add(new ThemeDescription(this.menuItem, 0, null, null, null, themeDescriptionDelegate, "actionBarDefaultSubmenuItem"));
            list.add(new ThemeDescription(this.menuItem, 0, null, null, null, themeDescriptionDelegate, "actionBarDefaultSubmenuItemIcon"));
            list.add(new ThemeDescription(this.menuItem, 0, null, null, null, themeDescriptionDelegate, "actionBarDefaultSubmenuBackground"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$provideThemeDescriptions$7() {
        this.menuItem.setIconColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        Theme.setDrawableColor(this.menuItem.getBackground(), Theme.getColor("dialogButtonSelector"));
        this.menuItem.setPopupItemsColor(Theme.getColor("actionBarDefaultSubmenuItem"), false);
        this.menuItem.setPopupItemsColor(Theme.getColor("actionBarDefaultSubmenuItemIcon"), true);
        this.menuItem.redrawPopup(Theme.getColor("actionBarDefaultSubmenuBackground"));
    }

    public static int generateGradientColors(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        if (fArr[1] > 0.5f) {
            fArr[1] = fArr[1] - 0.15f;
        } else {
            fArr[1] = fArr[1] + 0.15f;
        }
        if (fArr[0] > 180.0f) {
            fArr[0] = fArr[0] - 20.0f;
        } else {
            fArr[0] = fArr[0] + 20.0f;
        }
        return Color.HSVToColor(255, fArr);
    }
}
