package org.telegram.p048ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.TextColorThemeCell;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.ThemeEditorView;
import org.telegram.p048ui.Components.WallpaperUpdater;
import org.telegram.p048ui.LaunchActivity;
/* renamed from: org.telegram.ui.Components.ThemeEditorView */
/* loaded from: classes6.dex */
public class ThemeEditorView {
    private static volatile ThemeEditorView Instance;
    private ArrayList<ThemeDescription> currentThemeDesription;
    private int currentThemeDesriptionPosition;
    private DecelerateInterpolator decelerateInterpolator;
    private EditorAlert editorAlert;
    private Activity parentActivity;
    private SharedPreferences preferences;
    private Theme.ThemeInfo themeInfo;
    private WallpaperUpdater wallpaperUpdater;
    private WindowManager.LayoutParams windowLayoutParams;
    private WindowManager windowManager;
    private FrameLayout windowView;
    private final int editorWidth = AndroidUtilities.m50dp(54);
    private final int editorHeight = AndroidUtilities.m50dp(54);

    public static ThemeEditorView getInstance() {
        return Instance;
    }

    public void destroy() {
        FrameLayout frameLayout;
        this.wallpaperUpdater.cleanup();
        if (this.parentActivity == null || (frameLayout = this.windowView) == null) {
            return;
        }
        try {
            this.windowManager.removeViewImmediate(frameLayout);
            this.windowView = null;
        } catch (Exception e) {
            FileLog.m44e((Throwable) e, false);
        }
        try {
            EditorAlert editorAlert = this.editorAlert;
            if (editorAlert != null) {
                editorAlert.dismiss();
                this.editorAlert = null;
            }
        } catch (Exception e2) {
            FileLog.m45e(e2);
        }
        this.parentActivity = null;
        Instance = null;
    }

    /* renamed from: org.telegram.ui.Components.ThemeEditorView$EditorAlert */
    /* loaded from: classes6.dex */
    public class EditorAlert extends BottomSheet {
        private boolean animationInProgress;
        private FrameLayout bottomLayout;
        private FrameLayout bottomSaveLayout;
        private AnimatorSet colorChangeAnimation;
        private ColorPicker colorPicker;
        private FrameLayout frameLayout;
        private boolean ignoreTextChange;
        private LinearLayoutManager layoutManager;
        private ListAdapter listAdapter;
        private RecyclerListView listView;
        private int previousScrollPosition;
        private int scrollOffsetY;
        private SearchAdapter searchAdapter;
        private EmptyTextProgressView searchEmptyView;
        private SearchField searchField;
        private View[] shadow;
        private AnimatorSet[] shadowAnimation;
        private Drawable shadowDrawable;
        private boolean startedColorChange;
        private int topBeforeSwitch;

        @Override // org.telegram.p048ui.ActionBar.BottomSheet
        protected boolean canDismissWithSwipe() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchField */
        /* loaded from: classes6.dex */
        public class SearchField extends FrameLayout {
            private ImageView clearSearchImageView;
            private EditTextBoldCursor searchEditText;

            public SearchField(Context context) {
                super(context);
                View view = new View(context);
                view.setBackgroundDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m50dp(18), -854795));
                addView(view, LayoutHelper.createFrame(-1, 36, 51, 14, 11, 14, 0));
                ImageView imageView = new ImageView(context);
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                imageView.setImageResource(C3301R.C3303drawable.smiles_inputsearch);
                imageView.setColorFilter(new PorterDuffColorFilter(-6182737, PorterDuff.Mode.MULTIPLY));
                addView(imageView, LayoutHelper.createFrame(36, 36, 51, 16, 11, 0, 0));
                ImageView imageView2 = new ImageView(context);
                this.clearSearchImageView = imageView2;
                imageView2.setScaleType(ImageView.ScaleType.CENTER);
                ImageView imageView3 = this.clearSearchImageView;
                CloseProgressDrawable2 closeProgressDrawable2 = new CloseProgressDrawable2(this, EditorAlert.this) { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.SearchField.1
                    @Override // org.telegram.p048ui.Components.CloseProgressDrawable2
                    public int getCurrentColor() {
                        return -6182737;
                    }
                };
                imageView3.setImageDrawable(closeProgressDrawable2);
                closeProgressDrawable2.setSide(AndroidUtilities.m50dp(7));
                this.clearSearchImageView.setScaleX(0.1f);
                this.clearSearchImageView.setScaleY(0.1f);
                this.clearSearchImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                addView(this.clearSearchImageView, LayoutHelper.createFrame(36, 36, 53, 14, 11, 14, 0));
                this.clearSearchImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchField$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        ThemeEditorView.EditorAlert.SearchField.this.lambda$new$0(view2);
                    }
                });
                EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context, EditorAlert.this) { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.SearchField.2
                    @Override // org.telegram.p048ui.Components.EditTextEffects, android.view.View
                    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        obtain.setLocation(obtain.getRawX(), obtain.getRawY() - ((BottomSheet) EditorAlert.this).containerView.getTranslationY());
                        EditorAlert.this.listView.dispatchTouchEvent(obtain);
                        obtain.recycle();
                        return super.dispatchTouchEvent(motionEvent);
                    }
                };
                this.searchEditText = editTextBoldCursor;
                editTextBoldCursor.setTextSize(1, 16.0f);
                this.searchEditText.setHintTextColor(-6774617);
                this.searchEditText.setTextColor(-14540254);
                this.searchEditText.setBackgroundDrawable(null);
                this.searchEditText.setPadding(0, 0, 0, 0);
                this.searchEditText.setMaxLines(1);
                this.searchEditText.setLines(1);
                this.searchEditText.setSingleLine(true);
                this.searchEditText.setImeOptions(268435459);
                this.searchEditText.setHint(LocaleController.getString("Search", C3301R.string.Search));
                this.searchEditText.setCursorColor(-11491093);
                this.searchEditText.setCursorSize(AndroidUtilities.m50dp(20));
                this.searchEditText.setCursorWidth(1.5f);
                addView(this.searchEditText, LayoutHelper.createFrame(-1, 40, 51, 54, 9, 46, 0));
                this.searchEditText.addTextChangedListener(new TextWatcher(EditorAlert.this) { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.SearchField.3
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        boolean z = SearchField.this.searchEditText.length() > 0;
                        float alpha = SearchField.this.clearSearchImageView.getAlpha();
                        float f = BitmapDescriptorFactory.HUE_RED;
                        if (z != (alpha != BitmapDescriptorFactory.HUE_RED)) {
                            ViewPropertyAnimator animate = SearchField.this.clearSearchImageView.animate();
                            if (z) {
                                f = 1.0f;
                            }
                            animate.alpha(f).setDuration(150L).scaleX(z ? 1.0f : 0.1f).scaleY(z ? 1.0f : 0.1f).start();
                        }
                        String obj = SearchField.this.searchEditText.getText().toString();
                        if (obj.length() != 0) {
                            if (EditorAlert.this.searchEmptyView != null) {
                                EditorAlert.this.searchEmptyView.setText(LocaleController.getString("NoResult", C3301R.string.NoResult));
                            }
                        } else if (EditorAlert.this.listView.getAdapter() != EditorAlert.this.listAdapter) {
                            int currentTop = EditorAlert.this.getCurrentTop();
                            EditorAlert.this.searchEmptyView.setText(LocaleController.getString("NoChats", C3301R.string.NoChats));
                            EditorAlert.this.searchEmptyView.showTextView();
                            EditorAlert.this.listView.setAdapter(EditorAlert.this.listAdapter);
                            EditorAlert.this.listAdapter.notifyDataSetChanged();
                            if (currentTop > 0) {
                                EditorAlert.this.layoutManager.scrollToPositionWithOffset(0, -currentTop);
                            }
                        }
                        if (EditorAlert.this.searchAdapter != null) {
                            EditorAlert.this.searchAdapter.searchDialogs(obj);
                        }
                    }
                });
                this.searchEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchField$$ExternalSyntheticLambda1
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                        boolean lambda$new$1;
                        lambda$new$1 = ThemeEditorView.EditorAlert.SearchField.this.lambda$new$1(textView, i, keyEvent);
                        return lambda$new$1;
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$new$0(View view) {
                this.searchEditText.setText("");
                AndroidUtilities.showKeyboard(this.searchEditText);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ boolean lambda$new$1(TextView textView, int i, KeyEvent keyEvent) {
                if (keyEvent != null) {
                    if ((keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 84) || (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 66)) {
                        AndroidUtilities.hideKeyboard(this.searchEditText);
                        return false;
                    }
                    return false;
                }
                return false;
            }

            public void showKeyboard() {
                this.searchEditText.requestFocus();
                AndroidUtilities.showKeyboard(this.searchEditText);
            }

            @Override // android.view.ViewGroup, android.view.ViewParent
            public void requestDisallowInterceptTouchEvent(boolean z) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.ThemeEditorView$EditorAlert$ColorPicker */
        /* loaded from: classes6.dex */
        public class ColorPicker extends FrameLayout {
            private float alpha;
            private LinearGradient alphaGradient;
            private boolean alphaPressed;
            private Drawable circleDrawable;
            private Paint circlePaint;
            private boolean circlePressed;
            private EditTextBoldCursor[] colorEditText;
            private LinearGradient colorGradient;
            private float[] colorHSV;
            private boolean colorPressed;
            private Bitmap colorWheelBitmap;
            private Paint colorWheelPaint;
            private int colorWheelRadius;
            private DecelerateInterpolator decelerateInterpolator;
            private float[] hsvTemp;
            private LinearLayout linearLayout;
            private final int paramValueSliderWidth;
            private Paint valueSliderPaint;

            public ColorPicker(Context context) {
                super(context);
                this.paramValueSliderWidth = AndroidUtilities.m50dp(20);
                this.colorEditText = new EditTextBoldCursor[4];
                this.colorHSV = new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f};
                this.alpha = 1.0f;
                this.hsvTemp = new float[3];
                this.decelerateInterpolator = new DecelerateInterpolator();
                setWillNotDraw(false);
                this.circlePaint = new Paint(1);
                this.circleDrawable = context.getResources().getDrawable(C3301R.C3303drawable.knob_shadow).mutate();
                Paint paint = new Paint();
                this.colorWheelPaint = paint;
                paint.setAntiAlias(true);
                this.colorWheelPaint.setDither(true);
                Paint paint2 = new Paint();
                this.valueSliderPaint = paint2;
                paint2.setAntiAlias(true);
                this.valueSliderPaint.setDither(true);
                LinearLayout linearLayout = new LinearLayout(context);
                this.linearLayout = linearLayout;
                linearLayout.setOrientation(0);
                addView(this.linearLayout, LayoutHelper.createFrame(-2, -2, 49));
                int i = 0;
                while (i < 4) {
                    this.colorEditText[i] = new EditTextBoldCursor(context);
                    this.colorEditText[i].setInputType(2);
                    this.colorEditText[i].setTextColor(-14606047);
                    this.colorEditText[i].setCursorColor(-14606047);
                    this.colorEditText[i].setCursorSize(AndroidUtilities.m50dp(20));
                    this.colorEditText[i].setCursorWidth(1.5f);
                    this.colorEditText[i].setTextSize(1, 18.0f);
                    this.colorEditText[i].setBackground(null);
                    this.colorEditText[i].setLineColors(Theme.getColor("dialogInputField"), Theme.getColor("dialogInputFieldActivated"), Theme.getColor("dialogTextRed"));
                    this.colorEditText[i].setMaxLines(1);
                    this.colorEditText[i].setTag(Integer.valueOf(i));
                    this.colorEditText[i].setGravity(17);
                    if (i == 0) {
                        this.colorEditText[i].setHint("red");
                    } else if (i == 1) {
                        this.colorEditText[i].setHint("green");
                    } else if (i == 2) {
                        this.colorEditText[i].setHint("blue");
                    } else if (i == 3) {
                        this.colorEditText[i].setHint("alpha");
                    }
                    this.colorEditText[i].setImeOptions((i == 3 ? 6 : 5) | 268435456);
                    this.colorEditText[i].setFilters(new InputFilter[]{new InputFilter.LengthFilter(3)});
                    this.linearLayout.addView(this.colorEditText[i], LayoutHelper.createLinear(55, 36, 0, 0, i != 3 ? 16 : 0, 0));
                    this.colorEditText[i].addTextChangedListener(new TextWatcher(EditorAlert.this, i) { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.ColorPicker.1
                        final /* synthetic */ int val$num;

                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        {
                            this.val$num = i;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:24:0x00de A[LOOP:0: B:22:0x00ce->B:24:0x00de, LOOP_END] */
                        @Override // android.text.TextWatcher
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public void afterTextChanged(android.text.Editable r7) {
                            /*
                                Method dump skipped, instructions count: 258
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.ThemeEditorView.EditorAlert.ColorPicker.C52711.afterTextChanged(android.text.Editable):void");
                        }
                    });
                    this.colorEditText[i].setOnEditorActionListener(C5275x6ea38e02.INSTANCE);
                    i++;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ boolean lambda$new$0(TextView textView, int i, KeyEvent keyEvent) {
                if (i == 6) {
                    AndroidUtilities.hideKeyboard(textView);
                    return true;
                }
                return false;
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                int min = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
                measureChild(this.linearLayout, i, i2);
                setMeasuredDimension(min, min);
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                float f;
                int width = (getWidth() / 2) - (this.paramValueSliderWidth * 2);
                int height = (getHeight() / 2) - AndroidUtilities.m50dp(8);
                Bitmap bitmap = this.colorWheelBitmap;
                int i = this.colorWheelRadius;
                canvas.drawBitmap(bitmap, width - i, height - i, (Paint) null);
                double radians = (float) Math.toRadians(this.colorHSV[0]);
                float[] fArr = this.colorHSV;
                float[] fArr2 = this.hsvTemp;
                fArr2[0] = fArr[0];
                fArr2[1] = fArr[1];
                fArr2[2] = 1.0f;
                drawPointerArrow(canvas, ((int) ((-Math.cos(radians)) * this.colorHSV[1] * this.colorWheelRadius)) + width, ((int) ((-Math.sin(radians)) * fArr[1] * this.colorWheelRadius)) + height, Color.HSVToColor(fArr2));
                int i2 = this.colorWheelRadius;
                int i3 = width + i2 + this.paramValueSliderWidth;
                int i4 = height - i2;
                int m50dp = AndroidUtilities.m50dp(9);
                int i5 = this.colorWheelRadius * 2;
                if (this.colorGradient == null) {
                    this.colorGradient = new LinearGradient(i3, i4, i3 + m50dp, i4 + i5, new int[]{-16777216, Color.HSVToColor(this.hsvTemp)}, (float[]) null, Shader.TileMode.CLAMP);
                }
                this.valueSliderPaint.setShader(this.colorGradient);
                float f2 = i4;
                float f3 = i4 + i5;
                canvas.drawRect(i3, f2, i3 + m50dp, f3, this.valueSliderPaint);
                int i6 = m50dp / 2;
                float[] fArr3 = this.colorHSV;
                float f4 = i5;
                drawPointerArrow(canvas, i3 + i6, (int) ((fArr3[2] * f4) + f2), Color.HSVToColor(fArr3));
                int i7 = i3 + (this.paramValueSliderWidth * 2);
                if (this.alphaGradient == null) {
                    int HSVToColor = Color.HSVToColor(this.hsvTemp);
                    f = f3;
                    this.alphaGradient = new LinearGradient(i7, f2, i7 + m50dp, f, new int[]{HSVToColor, HSVToColor & 16777215}, (float[]) null, Shader.TileMode.CLAMP);
                } else {
                    f = f3;
                }
                this.valueSliderPaint.setShader(this.alphaGradient);
                canvas.drawRect(i7, f2, m50dp + i7, f, this.valueSliderPaint);
                drawPointerArrow(canvas, i7 + i6, (int) (f2 + ((1.0f - this.alpha) * f4)), (Color.HSVToColor(this.colorHSV) & 16777215) | (((int) (this.alpha * 255.0f)) << 24));
            }

            private void drawPointerArrow(Canvas canvas, int i, int i2, int i3) {
                int m50dp = AndroidUtilities.m50dp(13);
                this.circleDrawable.setBounds(i - m50dp, i2 - m50dp, i + m50dp, m50dp + i2);
                this.circleDrawable.draw(canvas);
                this.circlePaint.setColor(-1);
                float f = i;
                float f2 = i2;
                canvas.drawCircle(f, f2, AndroidUtilities.m50dp(11), this.circlePaint);
                this.circlePaint.setColor(i3);
                canvas.drawCircle(f, f2, AndroidUtilities.m50dp(9), this.circlePaint);
            }

            @Override // android.view.View
            protected void onSizeChanged(int i, int i2, int i3, int i4) {
                int max = Math.max(1, ((i / 2) - (this.paramValueSliderWidth * 2)) - AndroidUtilities.m50dp(20));
                this.colorWheelRadius = max;
                this.colorWheelBitmap = createColorWheelBitmap(max * 2, max * 2);
                this.colorGradient = null;
                this.alphaGradient = null;
            }

            private Bitmap createColorWheelBitmap(int i, int i2) {
                Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                int[] iArr = new int[13];
                float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};
                for (int i3 = 0; i3 < 13; i3++) {
                    fArr[0] = ((i3 * 30) + 180) % 360;
                    iArr[i3] = Color.HSVToColor(fArr);
                }
                iArr[12] = iArr[0];
                float f = i / 2;
                float f2 = i2 / 2;
                this.colorWheelPaint.setShader(new ComposeShader(new SweepGradient(f, f2, iArr, (float[]) null), new RadialGradient(f, f2, this.colorWheelRadius, -1, 16777215, Shader.TileMode.CLAMP), PorterDuff.Mode.SRC_OVER));
                new Canvas(createBitmap).drawCircle(f, f2, this.colorWheelRadius, this.colorWheelPaint);
                return createBitmap;
            }

            private void startColorChange(boolean z) {
                if (EditorAlert.this.startedColorChange == z) {
                    return;
                }
                if (EditorAlert.this.colorChangeAnimation != null) {
                    EditorAlert.this.colorChangeAnimation.cancel();
                }
                EditorAlert.this.startedColorChange = z;
                EditorAlert.this.colorChangeAnimation = new AnimatorSet();
                AnimatorSet animatorSet = EditorAlert.this.colorChangeAnimation;
                Animator[] animatorArr = new Animator[2];
                ColorDrawable colorDrawable = ((BottomSheet) EditorAlert.this).backDrawable;
                Property<ColorDrawable, Integer> property = AnimationProperties.COLOR_DRAWABLE_ALPHA;
                int[] iArr = new int[1];
                iArr[0] = z ? 0 : 51;
                animatorArr[0] = ObjectAnimator.ofInt(colorDrawable, property, iArr);
                ViewGroup viewGroup = ((BottomSheet) EditorAlert.this).containerView;
                Property property2 = View.ALPHA;
                float[] fArr = new float[1];
                fArr[0] = z ? 0.2f : 1.0f;
                animatorArr[1] = ObjectAnimator.ofFloat(viewGroup, property2, fArr);
                animatorSet.playTogether(animatorArr);
                EditorAlert.this.colorChangeAnimation.setDuration(150L);
                EditorAlert.this.colorChangeAnimation.setInterpolator(this.decelerateInterpolator);
                EditorAlert.this.colorChangeAnimation.start();
            }

            /* JADX WARN: Code restructure failed: missing block: B:35:0x00b7, code lost:
                if (r5 <= (r8 + r7)) goto L89;
             */
            /* JADX WARN: Code restructure failed: missing block: B:56:0x00fa, code lost:
                if (r5 <= (r8 + r7)) goto L82;
             */
            /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
                if (r1 != 2) goto L5;
             */
            /* JADX WARN: Removed duplicated region for block: B:45:0x00dd  */
            /* JADX WARN: Removed duplicated region for block: B:59:0x010f  */
            /* JADX WARN: Removed duplicated region for block: B:60:0x0112  */
            /* JADX WARN: Removed duplicated region for block: B:66:0x011e  */
            /* JADX WARN: Removed duplicated region for block: B:73:0x013c  */
            /* JADX WARN: Removed duplicated region for block: B:91:0x01af  */
            @Override // android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onTouchEvent(android.view.MotionEvent r16) {
                /*
                    Method dump skipped, instructions count: 555
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.ThemeEditorView.EditorAlert.ColorPicker.onTouchEvent(android.view.MotionEvent):boolean");
            }

            public void setColor(int i) {
                int red = Color.red(i);
                int green = Color.green(i);
                int blue = Color.blue(i);
                int alpha = Color.alpha(i);
                if (!EditorAlert.this.ignoreTextChange) {
                    EditorAlert.this.ignoreTextChange = true;
                    EditTextBoldCursor editTextBoldCursor = this.colorEditText[0];
                    editTextBoldCursor.setText("" + red);
                    EditTextBoldCursor editTextBoldCursor2 = this.colorEditText[1];
                    editTextBoldCursor2.setText("" + green);
                    EditTextBoldCursor editTextBoldCursor3 = this.colorEditText[2];
                    editTextBoldCursor3.setText("" + blue);
                    EditTextBoldCursor editTextBoldCursor4 = this.colorEditText[3];
                    editTextBoldCursor4.setText("" + alpha);
                    for (int i2 = 0; i2 < 4; i2++) {
                        EditTextBoldCursor[] editTextBoldCursorArr = this.colorEditText;
                        editTextBoldCursorArr[i2].setSelection(editTextBoldCursorArr[i2].length());
                    }
                    EditorAlert.this.ignoreTextChange = false;
                }
                this.alphaGradient = null;
                this.colorGradient = null;
                this.alpha = alpha / 255.0f;
                Color.colorToHSV(i, this.colorHSV);
                invalidate();
            }

            public int getColor() {
                return (Color.HSVToColor(this.colorHSV) & 16777215) | (((int) (this.alpha * 255.0f)) << 24);
            }
        }

        public EditorAlert(Context context, ArrayList<ThemeDescription> arrayList) {
            super(context, true);
            this.shadow = new View[2];
            this.shadowAnimation = new AnimatorSet[2];
            this.shadowDrawable = context.getResources().getDrawable(C3301R.C3303drawable.sheet_shadow_round).mutate();
            FrameLayout frameLayout = new FrameLayout(context, ThemeEditorView.this) { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.1
                private boolean ignoreLayout = false;
                private RectF rect1 = new RectF();
                private Boolean statusBarOpen;

                @Override // android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0 && EditorAlert.this.scrollOffsetY != 0 && motionEvent.getY() < EditorAlert.this.scrollOffsetY) {
                        EditorAlert.this.dismiss();
                        return true;
                    }
                    return super.onInterceptTouchEvent(motionEvent);
                }

                @Override // android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    return !EditorAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    int size = View.MeasureSpec.getSize(i);
                    int size2 = View.MeasureSpec.getSize(i2);
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 21 && !((BottomSheet) EditorAlert.this).isFullscreen) {
                        this.ignoreLayout = true;
                        setPadding(((BottomSheet) EditorAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) EditorAlert.this).backgroundPaddingLeft, 0);
                        this.ignoreLayout = false;
                    }
                    int m50dp = ((size2 - (i3 >= 21 ? AndroidUtilities.statusBarHeight : 0)) + AndroidUtilities.m50dp(8)) - Math.min(size, size2 - (i3 >= 21 ? AndroidUtilities.statusBarHeight : 0));
                    if (EditorAlert.this.listView.getPaddingTop() != m50dp) {
                        this.ignoreLayout = true;
                        EditorAlert.this.listView.getPaddingTop();
                        EditorAlert.this.listView.setPadding(0, m50dp, 0, AndroidUtilities.m50dp(48));
                        if (EditorAlert.this.colorPicker.getVisibility() == 0) {
                            EditorAlert editorAlert = EditorAlert.this;
                            editorAlert.setScrollOffsetY(editorAlert.listView.getPaddingTop());
                            EditorAlert.this.previousScrollPosition = 0;
                        }
                        this.ignoreLayout = false;
                    }
                    super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                }

                @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                    super.onLayout(z, i, i2, i3, i4);
                    EditorAlert.this.updateLayout();
                }

                @Override // android.view.View, android.view.ViewParent
                public void requestLayout() {
                    if (this.ignoreLayout) {
                        return;
                    }
                    super.requestLayout();
                }

                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    int i;
                    float f;
                    int m50dp = (EditorAlert.this.scrollOffsetY - ((BottomSheet) EditorAlert.this).backgroundPaddingTop) + AndroidUtilities.m50dp(6);
                    int m50dp2 = (EditorAlert.this.scrollOffsetY - ((BottomSheet) EditorAlert.this).backgroundPaddingTop) - AndroidUtilities.m50dp(13);
                    int measuredHeight = getMeasuredHeight() + AndroidUtilities.m50dp(30) + ((BottomSheet) EditorAlert.this).backgroundPaddingTop;
                    if (((BottomSheet) EditorAlert.this).isFullscreen || Build.VERSION.SDK_INT < 21) {
                        i = 0;
                        f = 1.0f;
                    } else {
                        int i2 = AndroidUtilities.statusBarHeight;
                        m50dp2 += i2;
                        m50dp += i2;
                        measuredHeight -= i2;
                        int i3 = ((BottomSheet) EditorAlert.this).backgroundPaddingTop + m50dp2;
                        int i4 = AndroidUtilities.statusBarHeight;
                        if (i3 < i4 * 2) {
                            int min = Math.min(i4, ((i4 * 2) - m50dp2) - ((BottomSheet) EditorAlert.this).backgroundPaddingTop);
                            m50dp2 -= min;
                            measuredHeight += min;
                            f = 1.0f - Math.min(1.0f, (min * 2) / AndroidUtilities.statusBarHeight);
                        } else {
                            f = 1.0f;
                        }
                        int i5 = ((BottomSheet) EditorAlert.this).backgroundPaddingTop + m50dp2;
                        int i6 = AndroidUtilities.statusBarHeight;
                        i = i5 < i6 ? Math.min(i6, (i6 - m50dp2) - ((BottomSheet) EditorAlert.this).backgroundPaddingTop) : 0;
                    }
                    EditorAlert.this.shadowDrawable.setBounds(0, m50dp2, getMeasuredWidth(), measuredHeight);
                    EditorAlert.this.shadowDrawable.draw(canvas);
                    if (f != 1.0f) {
                        Theme.dialogs_onlineCirclePaint.setColor(-1);
                        this.rect1.set(((BottomSheet) EditorAlert.this).backgroundPaddingLeft, ((BottomSheet) EditorAlert.this).backgroundPaddingTop + m50dp2, getMeasuredWidth() - ((BottomSheet) EditorAlert.this).backgroundPaddingLeft, ((BottomSheet) EditorAlert.this).backgroundPaddingTop + m50dp2 + AndroidUtilities.m50dp(24));
                        canvas.drawRoundRect(this.rect1, AndroidUtilities.m50dp(12) * f, AndroidUtilities.m50dp(12) * f, Theme.dialogs_onlineCirclePaint);
                    }
                    int m50dp3 = AndroidUtilities.m50dp(36);
                    this.rect1.set((getMeasuredWidth() - m50dp3) / 2, m50dp, (getMeasuredWidth() + m50dp3) / 2, m50dp + AndroidUtilities.m50dp(4));
                    Theme.dialogs_onlineCirclePaint.setColor(-1973016);
                    Theme.dialogs_onlineCirclePaint.setAlpha((int) (EditorAlert.this.listView.getAlpha() * 255.0f));
                    canvas.drawRoundRect(this.rect1, AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), Theme.dialogs_onlineCirclePaint);
                    if (i > 0) {
                        Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor("dialogBackground"));
                        canvas.drawRect(((BottomSheet) EditorAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight - i, getMeasuredWidth() - ((BottomSheet) EditorAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, Theme.dialogs_onlineCirclePaint);
                    }
                    updateLightStatusBar(i > AndroidUtilities.statusBarHeight / 2);
                }

                private void updateLightStatusBar(boolean z) {
                    Boolean bool = this.statusBarOpen;
                    if (bool == null || bool.booleanValue() != z) {
                        boolean z2 = AndroidUtilities.computePerceivedBrightness(EditorAlert.this.getThemedColor("dialogBackground")) > 0.721f;
                        boolean z3 = AndroidUtilities.computePerceivedBrightness(Theme.blendOver(EditorAlert.this.getThemedColor("actionBarDefault"), AndroidUtilities.DARK_STATUS_BAR_OVERLAY)) > 0.721f;
                        Boolean valueOf = Boolean.valueOf(z);
                        this.statusBarOpen = valueOf;
                        if (!valueOf.booleanValue()) {
                            z2 = z3;
                        }
                        AndroidUtilities.setLightStatusBar(EditorAlert.this.getWindow(), z2);
                    }
                }
            };
            this.containerView = frameLayout;
            frameLayout.setWillNotDraw(false);
            ViewGroup viewGroup = this.containerView;
            int i = this.backgroundPaddingLeft;
            viewGroup.setPadding(i, 0, i, 0);
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.frameLayout = frameLayout2;
            frameLayout2.setBackgroundColor(-1);
            SearchField searchField = new SearchField(context);
            this.searchField = searchField;
            this.frameLayout.addView(searchField, LayoutHelper.createFrame(-1, -1, 51));
            RecyclerListView recyclerListView = new RecyclerListView(context, ThemeEditorView.this) { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.2
                @Override // org.telegram.p048ui.Components.RecyclerListView
                protected boolean allowSelectChildAtPosition(float f, float f2) {
                    return f2 >= ((float) ((EditorAlert.this.scrollOffsetY + AndroidUtilities.m50dp(48)) + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)));
                }
            };
            this.listView = recyclerListView;
            recyclerListView.setSelectorDrawableColor(AndroidUtilities.LIGHT_STATUS_BAR_OVERLAY);
            this.listView.setPadding(0, 0, 0, AndroidUtilities.m50dp(48));
            this.listView.setClipToPadding(false);
            RecyclerListView recyclerListView2 = this.listView;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
            this.layoutManager = linearLayoutManager;
            recyclerListView2.setLayoutManager(linearLayoutManager);
            this.listView.setHorizontalScrollBarEnabled(false);
            this.listView.setVerticalScrollBarEnabled(false);
            this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
            RecyclerListView recyclerListView3 = this.listView;
            ListAdapter listAdapter = new ListAdapter(this, context, arrayList);
            this.listAdapter = listAdapter;
            recyclerListView3.setAdapter(listAdapter);
            this.searchAdapter = new SearchAdapter(context);
            this.listView.setGlowColor(-657673);
            this.listView.setItemAnimator(null);
            this.listView.setLayoutAnimation(null);
            this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda5
                @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i2) {
                    ThemeEditorView.EditorAlert.this.lambda$new$0(view, i2);
                }
            });
            this.listView.setOnScrollListener(new RecyclerView.OnScrollListener(ThemeEditorView.this) { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.3
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                    EditorAlert.this.updateLayout();
                }
            });
            EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context);
            this.searchEmptyView = emptyTextProgressView;
            emptyTextProgressView.setShowAtCenter(true);
            this.searchEmptyView.showTextView();
            this.searchEmptyView.setText(LocaleController.getString("NoResult", C3301R.string.NoResult));
            this.listView.setEmptyView(this.searchEmptyView);
            this.containerView.addView(this.searchEmptyView, LayoutHelper.createFrame(-1, -1, 51, 0, 52, 0, 0));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 51);
            layoutParams.topMargin = AndroidUtilities.m50dp(58);
            this.shadow[0] = new View(context);
            this.shadow[0].setBackgroundColor(301989888);
            this.shadow[0].setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.shadow[0].setTag(1);
            this.containerView.addView(this.shadow[0], layoutParams);
            this.containerView.addView(this.frameLayout, LayoutHelper.createFrame(-1, 58, 51));
            ColorPicker colorPicker = new ColorPicker(context);
            this.colorPicker = colorPicker;
            colorPicker.setVisibility(8);
            this.containerView.addView(this.colorPicker, LayoutHelper.createFrame(-1, -1, 1));
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 83);
            layoutParams2.bottomMargin = AndroidUtilities.m50dp(48);
            this.shadow[1] = new View(context);
            this.shadow[1].setBackgroundColor(301989888);
            this.containerView.addView(this.shadow[1], layoutParams2);
            FrameLayout frameLayout3 = new FrameLayout(context);
            this.bottomSaveLayout = frameLayout3;
            frameLayout3.setBackgroundColor(-1);
            this.containerView.addView(this.bottomSaveLayout, LayoutHelper.createFrame(-1, 48, 83));
            TextView textView = new TextView(context);
            textView.setTextSize(1, 14.0f);
            textView.setTextColor(-15095832);
            textView.setGravity(17);
            textView.setBackgroundDrawable(Theme.createSelectorDrawable(788529152, 0));
            textView.setPadding(AndroidUtilities.m50dp(18), 0, AndroidUtilities.m50dp(18), 0);
            textView.setText(LocaleController.getString("CloseEditor", C3301R.string.CloseEditor).toUpperCase());
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.bottomSaveLayout.addView(textView, LayoutHelper.createFrame(-2, -1, 51));
            textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThemeEditorView.EditorAlert.this.lambda$new$1(view);
                }
            });
            TextView textView2 = new TextView(context);
            textView2.setTextSize(1, 14.0f);
            textView2.setTextColor(-15095832);
            textView2.setGravity(17);
            textView2.setBackgroundDrawable(Theme.createSelectorDrawable(788529152, 0));
            textView2.setPadding(AndroidUtilities.m50dp(18), 0, AndroidUtilities.m50dp(18), 0);
            textView2.setText(LocaleController.getString("SaveTheme", C3301R.string.SaveTheme).toUpperCase());
            textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.bottomSaveLayout.addView(textView2, LayoutHelper.createFrame(-2, -1, 53));
            textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThemeEditorView.EditorAlert.this.lambda$new$2(view);
                }
            });
            FrameLayout frameLayout4 = new FrameLayout(context);
            this.bottomLayout = frameLayout4;
            frameLayout4.setVisibility(8);
            this.bottomLayout.setBackgroundColor(-1);
            this.containerView.addView(this.bottomLayout, LayoutHelper.createFrame(-1, 48, 83));
            TextView textView3 = new TextView(context);
            textView3.setTextSize(1, 14.0f);
            textView3.setTextColor(-15095832);
            textView3.setGravity(17);
            textView3.setBackgroundDrawable(Theme.createSelectorDrawable(788529152, 0));
            textView3.setPadding(AndroidUtilities.m50dp(18), 0, AndroidUtilities.m50dp(18), 0);
            textView3.setText(LocaleController.getString("Cancel", C3301R.string.Cancel).toUpperCase());
            textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.bottomLayout.addView(textView3, LayoutHelper.createFrame(-2, -1, 51));
            textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThemeEditorView.EditorAlert.this.lambda$new$3(view);
                }
            });
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            this.bottomLayout.addView(linearLayout, LayoutHelper.createFrame(-2, -1, 53));
            TextView textView4 = new TextView(context);
            textView4.setTextSize(1, 14.0f);
            textView4.setTextColor(-15095832);
            textView4.setGravity(17);
            textView4.setBackgroundDrawable(Theme.createSelectorDrawable(788529152, 0));
            textView4.setPadding(AndroidUtilities.m50dp(18), 0, AndroidUtilities.m50dp(18), 0);
            textView4.setText(LocaleController.getString("Default", C3301R.string.Default).toUpperCase());
            textView4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            linearLayout.addView(textView4, LayoutHelper.createFrame(-2, -1, 51));
            textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThemeEditorView.EditorAlert.this.lambda$new$4(view);
                }
            });
            TextView textView5 = new TextView(context);
            textView5.setTextSize(1, 14.0f);
            textView5.setTextColor(-15095832);
            textView5.setGravity(17);
            textView5.setBackgroundDrawable(Theme.createSelectorDrawable(788529152, 0));
            textView5.setPadding(AndroidUtilities.m50dp(18), 0, AndroidUtilities.m50dp(18), 0);
            textView5.setText(LocaleController.getString("Save", C3301R.string.Save).toUpperCase());
            textView5.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            linearLayout.addView(textView5, LayoutHelper.createFrame(-2, -1, 51));
            textView5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThemeEditorView.EditorAlert.this.lambda$new$5(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i) {
            if (i == 0) {
                return;
            }
            RecyclerView.Adapter adapter = this.listView.getAdapter();
            ListAdapter listAdapter = this.listAdapter;
            if (adapter == listAdapter) {
                ThemeEditorView.this.currentThemeDesription = listAdapter.getItem(i - 1);
            } else {
                ThemeEditorView.this.currentThemeDesription = this.searchAdapter.getItem(i - 1);
            }
            ThemeEditorView.this.currentThemeDesriptionPosition = i;
            for (int i2 = 0; i2 < ThemeEditorView.this.currentThemeDesription.size(); i2++) {
                ThemeDescription themeDescription = (ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i2);
                if (themeDescription.getCurrentKey().equals("chat_wallpaper")) {
                    ThemeEditorView.this.wallpaperUpdater.showAlert(true);
                    return;
                }
                themeDescription.startEditing();
                if (i2 == 0) {
                    this.colorPicker.setColor(themeDescription.getCurrentColor());
                }
            }
            setColorPickerVisible(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            Theme.saveCurrentTheme(ThemeEditorView.this.themeInfo, true, false, false);
            setOnDismissListener(null);
            dismiss();
            ThemeEditorView.this.close();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            for (int i = 0; i < ThemeEditorView.this.currentThemeDesription.size(); i++) {
                ((ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i)).setPreviousColor();
            }
            setColorPickerVisible(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(View view) {
            for (int i = 0; i < ThemeEditorView.this.currentThemeDesription.size(); i++) {
                ((ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i)).setDefaultColor();
            }
            setColorPickerVisible(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(View view) {
            setColorPickerVisible(false);
        }

        private void runShadowAnimation(final int i, final boolean z) {
            if ((!z || this.shadow[i].getTag() == null) && (z || this.shadow[i].getTag() != null)) {
                return;
            }
            this.shadow[i].setTag(z ? null : 1);
            if (z) {
                this.shadow[i].setVisibility(0);
            }
            AnimatorSet[] animatorSetArr = this.shadowAnimation;
            if (animatorSetArr[i] != null) {
                animatorSetArr[i].cancel();
            }
            this.shadowAnimation[i] = new AnimatorSet();
            AnimatorSet animatorSet = this.shadowAnimation[i];
            Animator[] animatorArr = new Animator[1];
            View view = this.shadow[i];
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
            animatorSet.playTogether(animatorArr);
            this.shadowAnimation[i].setDuration(150L);
            this.shadowAnimation[i].addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (EditorAlert.this.shadowAnimation[i] == null || !EditorAlert.this.shadowAnimation[i].equals(animator)) {
                        return;
                    }
                    if (!z) {
                        EditorAlert.this.shadow[i].setVisibility(4);
                    }
                    EditorAlert.this.shadowAnimation[i] = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (EditorAlert.this.shadowAnimation[i] == null || !EditorAlert.this.shadowAnimation[i].equals(animator)) {
                        return;
                    }
                    EditorAlert.this.shadowAnimation[i] = null;
                }
            });
            this.shadowAnimation[i].start();
        }

        @Override // org.telegram.p048ui.ActionBar.BottomSheet
        public void dismissInternal() {
            super.dismissInternal();
            if (this.searchField.searchEditText.isFocused()) {
                AndroidUtilities.hideKeyboard(this.searchField.searchEditText);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setColorPickerVisible(boolean z) {
            float f = BitmapDescriptorFactory.HUE_RED;
            if (!z) {
                if (ThemeEditorView.this.parentActivity != null) {
                    ((LaunchActivity) ThemeEditorView.this.parentActivity).rebuildAllFragments(false);
                }
                Theme.saveCurrentTheme(ThemeEditorView.this.themeInfo, false, false, false);
                if (this.listView.getAdapter() == this.listAdapter) {
                    AndroidUtilities.hideKeyboard(getCurrentFocus());
                }
                this.animationInProgress = true;
                this.listView.setVisibility(0);
                this.bottomSaveLayout.setVisibility(0);
                this.searchField.setVisibility(0);
                this.listView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                AnimatorSet animatorSet = new AnimatorSet();
                Animator[] animatorArr = new Animator[8];
                animatorArr[0] = ObjectAnimator.ofFloat(this.colorPicker, View.ALPHA, BitmapDescriptorFactory.HUE_RED);
                animatorArr[1] = ObjectAnimator.ofFloat(this.bottomLayout, View.ALPHA, BitmapDescriptorFactory.HUE_RED);
                animatorArr[2] = ObjectAnimator.ofFloat(this.listView, View.ALPHA, 1.0f);
                animatorArr[3] = ObjectAnimator.ofFloat(this.frameLayout, View.ALPHA, 1.0f);
                View[] viewArr = this.shadow;
                View view = viewArr[0];
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                if (viewArr[0].getTag() == null) {
                    f = 1.0f;
                }
                fArr[0] = f;
                animatorArr[4] = ObjectAnimator.ofFloat(view, property, fArr);
                animatorArr[5] = ObjectAnimator.ofFloat(this.searchEmptyView, View.ALPHA, 1.0f);
                animatorArr[6] = ObjectAnimator.ofFloat(this.bottomSaveLayout, View.ALPHA, 1.0f);
                animatorArr[7] = ObjectAnimator.ofInt(this, "scrollOffsetY", this.previousScrollPosition);
                animatorSet.playTogether(animatorArr);
                animatorSet.setDuration(150L);
                animatorSet.setInterpolator(ThemeEditorView.this.decelerateInterpolator);
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (EditorAlert.this.listView.getAdapter() == EditorAlert.this.searchAdapter) {
                            EditorAlert.this.searchField.showKeyboard();
                        }
                        EditorAlert.this.colorPicker.setVisibility(8);
                        EditorAlert.this.bottomLayout.setVisibility(8);
                        EditorAlert.this.animationInProgress = false;
                    }
                });
                animatorSet.start();
                this.listView.getAdapter().notifyItemChanged(ThemeEditorView.this.currentThemeDesriptionPosition);
                return;
            }
            this.animationInProgress = true;
            this.colorPicker.setVisibility(0);
            this.bottomLayout.setVisibility(0);
            this.colorPicker.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.bottomLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.previousScrollPosition = this.scrollOffsetY;
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this.colorPicker, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.bottomLayout, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.listView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.frameLayout, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.shadow[0], View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.searchEmptyView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.bottomSaveLayout, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofInt(this, "scrollOffsetY", this.listView.getPaddingTop()));
            animatorSet2.setDuration(150L);
            animatorSet2.setInterpolator(ThemeEditorView.this.decelerateInterpolator);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ThemeEditorView.EditorAlert.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    EditorAlert.this.listView.setVisibility(4);
                    EditorAlert.this.searchField.setVisibility(4);
                    EditorAlert.this.bottomSaveLayout.setVisibility(4);
                    EditorAlert.this.animationInProgress = false;
                }
            });
            animatorSet2.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getCurrentTop() {
            if (this.listView.getChildCount() != 0) {
                int i = 0;
                View childAt = this.listView.getChildAt(0);
                RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
                if (holder != null) {
                    int paddingTop = this.listView.getPaddingTop();
                    if (holder.getAdapterPosition() == 0 && childAt.getTop() >= 0) {
                        i = childAt.getTop();
                    }
                    return paddingTop - i;
                }
                return -1000;
            }
            return -1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateLayout() {
            int paddingTop;
            if (this.listView.getChildCount() <= 0 || this.listView.getVisibility() != 0 || this.animationInProgress) {
                return;
            }
            int i = 0;
            View childAt = this.listView.getChildAt(0);
            RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
            if (this.listView.getVisibility() != 0 || this.animationInProgress) {
                paddingTop = this.listView.getPaddingTop();
            } else {
                paddingTop = childAt.getTop() - AndroidUtilities.m50dp(8);
            }
            if (paddingTop > (-AndroidUtilities.m50dp(1)) && holder != null && holder.getAdapterPosition() == 0) {
                runShadowAnimation(0, false);
                i = paddingTop;
            } else {
                runShadowAnimation(0, true);
            }
            if (this.scrollOffsetY != i) {
                setScrollOffsetY(i);
            }
        }

        @Keep
        public int getScrollOffsetY() {
            return this.scrollOffsetY;
        }

        @Keep
        public void setScrollOffsetY(int i) {
            RecyclerListView recyclerListView = this.listView;
            this.scrollOffsetY = i;
            recyclerListView.setTopGlowOffset(i);
            this.frameLayout.setTranslationY(this.scrollOffsetY);
            this.colorPicker.setTranslationY(this.scrollOffsetY);
            this.searchEmptyView.setTranslationY(this.scrollOffsetY);
            this.containerView.invalidate();
        }

        /* renamed from: org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchAdapter */
        /* loaded from: classes6.dex */
        public class SearchAdapter extends RecyclerListView.SelectionAdapter {
            private Context context;
            private int lastSearchId;
            private String lastSearchText;
            private Runnable searchRunnable;
            private ArrayList<ArrayList<ThemeDescription>> searchResult = new ArrayList<>();
            private ArrayList<CharSequence> searchNames = new ArrayList<>();

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return i == 0 ? 1 : 0;
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            public SearchAdapter(Context context) {
                this.context = context;
            }

            public CharSequence generateSearchName(String str, String str2) {
                if (TextUtils.isEmpty(str)) {
                    return "";
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                String trim = str.trim();
                String lowerCase = trim.toLowerCase();
                int i = 0;
                while (true) {
                    int indexOf = lowerCase.indexOf(str2, i);
                    if (indexOf == -1) {
                        break;
                    }
                    int length = str2.length() + indexOf;
                    if (i != 0 && i != indexOf + 1) {
                        spannableStringBuilder.append((CharSequence) trim.substring(i, indexOf));
                    } else if (i == 0 && indexOf != 0) {
                        spannableStringBuilder.append((CharSequence) trim.substring(0, indexOf));
                    }
                    String substring = trim.substring(indexOf, Math.min(trim.length(), length));
                    if (substring.startsWith(" ")) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    String trim2 = substring.trim();
                    int length2 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) trim2);
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(-11697229), length2, trim2.length() + length2, 33);
                    i = length;
                }
                if (i != -1 && i < trim.length()) {
                    spannableStringBuilder.append((CharSequence) trim.substring(i));
                }
                return spannableStringBuilder;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: searchDialogsInternal */
            public void lambda$searchDialogs$1(String str, int i) {
                try {
                    String lowerCase = str.trim().toLowerCase();
                    if (lowerCase.length() == 0) {
                        this.lastSearchId = -1;
                        updateSearchResults(new ArrayList<>(), new ArrayList<>(), this.lastSearchId);
                        return;
                    }
                    String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
                    translitString = (lowerCase.equals(translitString) || translitString.length() == 0) ? null : null;
                    int i2 = (translitString != null ? 1 : 0) + 1;
                    String[] strArr = new String[i2];
                    strArr[0] = lowerCase;
                    if (translitString != null) {
                        strArr[1] = translitString;
                    }
                    ArrayList<ArrayList<ThemeDescription>> arrayList = new ArrayList<>();
                    ArrayList<CharSequence> arrayList2 = new ArrayList<>();
                    int size = EditorAlert.this.listAdapter.items.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        ArrayList<ThemeDescription> arrayList3 = (ArrayList) EditorAlert.this.listAdapter.items.get(i3);
                        String currentKey = arrayList3.get(0).getCurrentKey();
                        String lowerCase2 = currentKey.toLowerCase();
                        int i4 = 0;
                        while (true) {
                            if (i4 < i2) {
                                String str2 = strArr[i4];
                                if (lowerCase2.contains(str2)) {
                                    arrayList.add(arrayList3);
                                    arrayList2.add(generateSearchName(currentKey, str2));
                                    break;
                                }
                                i4++;
                            }
                        }
                    }
                    updateSearchResults(arrayList, arrayList2, i);
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }

            private void updateSearchResults(final ArrayList<ArrayList<ThemeDescription>> arrayList, final ArrayList<CharSequence> arrayList2, final int i) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchAdapter$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ThemeEditorView.EditorAlert.SearchAdapter.this.lambda$updateSearchResults$0(i, arrayList, arrayList2);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$updateSearchResults$0(int i, ArrayList arrayList, ArrayList arrayList2) {
                if (i != this.lastSearchId) {
                    return;
                }
                if (EditorAlert.this.listView.getAdapter() != EditorAlert.this.searchAdapter) {
                    EditorAlert editorAlert = EditorAlert.this;
                    editorAlert.topBeforeSwitch = editorAlert.getCurrentTop();
                    EditorAlert.this.listView.setAdapter(EditorAlert.this.searchAdapter);
                    EditorAlert.this.searchAdapter.notifyDataSetChanged();
                }
                boolean z = true;
                boolean z2 = !this.searchResult.isEmpty() && arrayList.isEmpty();
                if (!this.searchResult.isEmpty() || !arrayList.isEmpty()) {
                    z = false;
                }
                if (z2) {
                    EditorAlert editorAlert2 = EditorAlert.this;
                    editorAlert2.topBeforeSwitch = editorAlert2.getCurrentTop();
                }
                this.searchResult = arrayList;
                this.searchNames = arrayList2;
                notifyDataSetChanged();
                if (!z && !z2 && EditorAlert.this.topBeforeSwitch > 0) {
                    EditorAlert.this.layoutManager.scrollToPositionWithOffset(0, -EditorAlert.this.topBeforeSwitch);
                    EditorAlert.this.topBeforeSwitch = -1000;
                }
                EditorAlert.this.searchEmptyView.showTextView();
            }

            public void searchDialogs(final String str) {
                if (str == null || !str.equals(this.lastSearchText)) {
                    this.lastSearchText = str;
                    if (this.searchRunnable != null) {
                        Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                        this.searchRunnable = null;
                    }
                    if (str == null || str.length() == 0) {
                        this.searchResult.clear();
                        EditorAlert editorAlert = EditorAlert.this;
                        editorAlert.topBeforeSwitch = editorAlert.getCurrentTop();
                        this.lastSearchId = -1;
                        notifyDataSetChanged();
                        return;
                    }
                    final int i = this.lastSearchId + 1;
                    this.lastSearchId = i;
                    this.searchRunnable = new Runnable() { // from class: org.telegram.ui.Components.ThemeEditorView$EditorAlert$SearchAdapter$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ThemeEditorView.EditorAlert.SearchAdapter.this.lambda$searchDialogs$1(str, i);
                        }
                    };
                    Utilities.searchQueue.postRunnable(this.searchRunnable, 300L);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                if (this.searchResult.isEmpty()) {
                    return 0;
                }
                return this.searchResult.size() + 1;
            }

            public ArrayList<ThemeDescription> getItem(int i) {
                if (i < 0 || i >= this.searchResult.size()) {
                    return null;
                }
                return this.searchResult.get(i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View textColorThemeCell;
                if (i == 0) {
                    textColorThemeCell = new TextColorThemeCell(this.context);
                    textColorThemeCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                } else {
                    textColorThemeCell = new View(this.context);
                    textColorThemeCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m50dp(56)));
                }
                return new RecyclerListView.Holder(textColorThemeCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (viewHolder.getItemViewType() == 0) {
                    int i2 = i - 1;
                    ThemeDescription themeDescription = this.searchResult.get(i2).get(0);
                    ((TextColorThemeCell) viewHolder.itemView).setTextAndColor(this.searchNames.get(i2), themeDescription.getCurrentKey().equals("chat_wallpaper") ? 0 : themeDescription.getSetColor());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.ThemeEditorView$EditorAlert$ListAdapter */
        /* loaded from: classes6.dex */
        public class ListAdapter extends RecyclerListView.SelectionAdapter {
            private Context context;
            private ArrayList<ArrayList<ThemeDescription>> items = new ArrayList<>();

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return i == 0 ? 1 : 0;
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            public ListAdapter(EditorAlert editorAlert, Context context, ArrayList<ThemeDescription> arrayList) {
                this.context = context;
                HashMap hashMap = new HashMap();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ThemeDescription themeDescription = arrayList.get(i);
                    String currentKey = themeDescription.getCurrentKey();
                    ArrayList<ThemeDescription> arrayList2 = (ArrayList) hashMap.get(currentKey);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                        hashMap.put(currentKey, arrayList2);
                        this.items.add(arrayList2);
                    }
                    arrayList2.add(themeDescription);
                }
                if (Build.VERSION.SDK_INT < 26 || hashMap.containsKey("windowBackgroundGray")) {
                    return;
                }
                ArrayList<ThemeDescription> arrayList3 = new ArrayList<>();
                arrayList3.add(new ThemeDescription(null, 0, null, null, null, null, "windowBackgroundGray"));
                this.items.add(arrayList3);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                if (this.items.isEmpty()) {
                    return 0;
                }
                return this.items.size() + 1;
            }

            public ArrayList<ThemeDescription> getItem(int i) {
                if (i < 0 || i >= this.items.size()) {
                    return null;
                }
                return this.items.get(i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View textColorThemeCell;
                if (i == 0) {
                    textColorThemeCell = new TextColorThemeCell(this.context);
                    textColorThemeCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                } else {
                    textColorThemeCell = new View(this.context);
                    textColorThemeCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m50dp(56)));
                }
                return new RecyclerListView.Holder(textColorThemeCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (viewHolder.getItemViewType() == 0) {
                    ThemeDescription themeDescription = this.items.get(i - 1).get(0);
                    ((TextColorThemeCell) viewHolder.itemView).setTextAndColor(themeDescription.getTitle(), themeDescription.getCurrentKey().equals("chat_wallpaper") ? 0 : themeDescription.getSetColor());
                }
            }
        }
    }

    public void show(Activity activity, Theme.ThemeInfo themeInfo) {
        if (Instance != null) {
            Instance.destroy();
        }
        this.themeInfo = themeInfo;
        this.windowView = new C52611(activity);
        this.windowManager = (WindowManager) activity.getSystemService("window");
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0);
        this.preferences = sharedPreferences;
        int i = sharedPreferences.getInt("sidex", 1);
        int i2 = this.preferences.getInt("sidey", 0);
        float f = this.preferences.getFloat("px", BitmapDescriptorFactory.HUE_RED);
        float f2 = this.preferences.getFloat("py", BitmapDescriptorFactory.HUE_RED);
        try {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.windowLayoutParams = layoutParams;
            int i3 = this.editorWidth;
            layoutParams.width = i3;
            layoutParams.height = this.editorHeight;
            layoutParams.x = getSideCoord(true, i, f, i3);
            this.windowLayoutParams.y = getSideCoord(false, i2, f2, this.editorHeight);
            WindowManager.LayoutParams layoutParams2 = this.windowLayoutParams;
            layoutParams2.format = -3;
            layoutParams2.gravity = 51;
            layoutParams2.type = 99;
            layoutParams2.flags = 16777736;
            this.windowManager.addView(this.windowView, layoutParams2);
            this.wallpaperUpdater = new WallpaperUpdater(activity, null, new WallpaperUpdater.WallpaperUpdaterDelegate() { // from class: org.telegram.ui.Components.ThemeEditorView.2
                @Override // org.telegram.p048ui.Components.WallpaperUpdater.WallpaperUpdaterDelegate
                public void didSelectWallpaper(File file, Bitmap bitmap, boolean z) {
                    Theme.setThemeWallpaper(ThemeEditorView.this.themeInfo, bitmap, file);
                }

                @Override // org.telegram.p048ui.Components.WallpaperUpdater.WallpaperUpdaterDelegate
                public void needOpenColorPicker() {
                    for (int i4 = 0; i4 < ThemeEditorView.this.currentThemeDesription.size(); i4++) {
                        ThemeDescription themeDescription = (ThemeDescription) ThemeEditorView.this.currentThemeDesription.get(i4);
                        themeDescription.startEditing();
                        if (i4 == 0) {
                            ThemeEditorView.this.editorAlert.colorPicker.setColor(themeDescription.getCurrentColor());
                        }
                    }
                    ThemeEditorView.this.editorAlert.setColorPickerVisible(true);
                }
            });
            Instance = this;
            this.parentActivity = activity;
            showWithAnimation();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ThemeEditorView$1 */
    /* loaded from: classes6.dex */
    public class C52611 extends FrameLayout {
        private boolean dragging;
        private float startX;
        private float startY;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onTouchEvent$0(DialogInterface dialogInterface) {
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return true;
        }

        C52611(Context context) {
            super(context);
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x008c, code lost:
            if (r6.getFragmentStack().isEmpty() != false) goto L72;
         */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r11) {
            /*
                Method dump skipped, instructions count: 567
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.ThemeEditorView.C52611.onTouchEvent(android.view.MotionEvent):boolean");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$1(DialogInterface dialogInterface) {
            ThemeEditorView.this.editorAlert = null;
            ThemeEditorView.this.show();
        }
    }

    private void showWithAnimation() {
        this.windowView.setBackgroundResource(C3301R.C3303drawable.theme_picker);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.windowView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(this.windowView, View.SCALE_X, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(this.windowView, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED, 1.0f));
        animatorSet.setInterpolator(this.decelerateInterpolator);
        animatorSet.setDuration(150L);
        animatorSet.start();
    }

    private static int getSideCoord(boolean z, int i, float f, int i2) {
        int i3;
        int round;
        if (z) {
            i3 = AndroidUtilities.displaySize.x;
        } else {
            i3 = AndroidUtilities.displaySize.y - i2;
            i2 = C3366ActionBar.getCurrentActionBarHeight();
        }
        int i4 = i3 - i2;
        if (i == 0) {
            round = AndroidUtilities.m50dp(10);
        } else if (i == 1) {
            round = i4 - AndroidUtilities.m50dp(10);
        } else {
            round = Math.round((i4 - AndroidUtilities.m50dp(20)) * f) + AndroidUtilities.m50dp(10);
        }
        return !z ? round + C3366ActionBar.getCurrentActionBarHeight() : round;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hide() {
        if (this.parentActivity == null) {
            return;
        }
        try {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofFloat(this.windowView, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.windowView, View.SCALE_X, 1.0f, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.windowView, View.SCALE_Y, 1.0f, BitmapDescriptorFactory.HUE_RED));
            animatorSet.setInterpolator(this.decelerateInterpolator);
            animatorSet.setDuration(150L);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ThemeEditorView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ThemeEditorView.this.windowView != null) {
                        ThemeEditorView.this.windowView.setBackground(null);
                        ThemeEditorView.this.windowManager.removeView(ThemeEditorView.this.windowView);
                    }
                }
            });
            animatorSet.start();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void show() {
        if (this.parentActivity == null) {
            return;
        }
        try {
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
            showWithAnimation();
        } catch (Exception unused) {
        }
    }

    public void close() {
        try {
            this.windowManager.removeView(this.windowView);
        } catch (Exception unused) {
        }
        this.parentActivity = null;
    }

    public void onConfigurationChanged() {
        int i = this.preferences.getInt("sidex", 1);
        int i2 = this.preferences.getInt("sidey", 0);
        float f = this.preferences.getFloat("px", BitmapDescriptorFactory.HUE_RED);
        float f2 = this.preferences.getFloat("py", BitmapDescriptorFactory.HUE_RED);
        this.windowLayoutParams.x = getSideCoord(true, i, f, this.editorWidth);
        this.windowLayoutParams.y = getSideCoord(false, i2, f2, this.editorHeight);
        try {
            if (this.windowView.getParent() != null) {
                this.windowManager.updateViewLayout(this.windowView, this.windowLayoutParams);
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        WallpaperUpdater wallpaperUpdater = this.wallpaperUpdater;
        if (wallpaperUpdater != null) {
            wallpaperUpdater.onActivityResult(i, i2, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void animateToBoundsMaybe() {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.ThemeEditorView.animateToBoundsMaybe():void");
    }

    @Keep
    public int getX() {
        return this.windowLayoutParams.x;
    }

    @Keep
    public int getY() {
        return this.windowLayoutParams.y;
    }

    @Keep
    public void setX(int i) {
        WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
        layoutParams.x = i;
        this.windowManager.updateViewLayout(this.windowView, layoutParams);
    }

    @Keep
    public void setY(int i) {
        WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
        layoutParams.y = i;
        this.windowManager.updateViewLayout(this.windowView, layoutParams);
    }
}
