package org.telegram.p043ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.EditTextCaption;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.PollEditTextCell */
/* loaded from: classes5.dex */
public class PollEditTextCell extends FrameLayout {
    private boolean alwaysShowText2;
    private CheckBox2 checkBox;
    private AnimatorSet checkBoxAnimation;
    private ImageView deleteImageView;
    private ImageView moveImageView;
    private boolean needDivider;
    public boolean needVerticalDivider;
    private boolean showNextButton;
    private EditTextBoldCursor textView;
    private SimpleTextView textView2;

    protected boolean drawDivider() {
        return true;
    }

    protected boolean isChecked(PollEditTextCell pollEditTextCell) {
        return false;
    }

    protected void onActionModeStart(EditTextBoldCursor editTextBoldCursor, ActionMode actionMode) {
    }

    protected void onEditTextDraw(EditTextBoldCursor editTextBoldCursor, Canvas canvas) {
    }

    protected void onFieldTouchUp(EditTextBoldCursor editTextBoldCursor) {
    }

    protected boolean shouldShowCheckBox() {
        return false;
    }

    public PollEditTextCell(Context context, View.OnClickListener onClickListener) {
        this(context, false, onClickListener);
    }

    public PollEditTextCell(Context context, boolean z, View.OnClickListener onClickListener) {
        super(context);
        if (z) {
            EditTextCaption editTextCaption = new EditTextCaption(context, null) { // from class: org.telegram.ui.Cells.PollEditTextCell.1
                @Override // android.widget.TextView, android.view.View
                public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
                    InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
                    if (PollEditTextCell.this.showNextButton) {
                        editorInfo.imeOptions &= -1073741825;
                    }
                    return onCreateInputConnection;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.EditTextCaption, org.telegram.p043ui.Components.EditTextBoldCursor, org.telegram.p043ui.Components.EditTextEffects, android.widget.TextView, android.view.View
                public void onDraw(Canvas canvas) {
                    super.onDraw(canvas);
                    PollEditTextCell.this.onEditTextDraw(this, canvas);
                }

                @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (isEnabled()) {
                        if (motionEvent.getAction() == 1) {
                            PollEditTextCell.this.onFieldTouchUp(this);
                        }
                        return super.onTouchEvent(motionEvent);
                    }
                    return false;
                }

                @Override // org.telegram.p043ui.Components.EditTextCaption, org.telegram.p043ui.Components.EditTextBoldCursor, android.view.View
                public ActionMode startActionMode(ActionMode.Callback callback, int i) {
                    ActionMode startActionMode = super.startActionMode(callback, i);
                    PollEditTextCell.this.onActionModeStart(this, startActionMode);
                    return startActionMode;
                }

                @Override // org.telegram.p043ui.Components.EditTextCaption, org.telegram.p043ui.Components.EditTextBoldCursor, android.view.View
                public ActionMode startActionMode(ActionMode.Callback callback) {
                    ActionMode startActionMode = super.startActionMode(callback);
                    PollEditTextCell.this.onActionModeStart(this, startActionMode);
                    return startActionMode;
                }
            };
            this.textView = editTextCaption;
            editTextCaption.setAllowTextEntitiesIntersection(true);
        } else {
            this.textView = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Cells.PollEditTextCell.2
                @Override // android.widget.TextView, android.view.View
                public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
                    InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
                    if (PollEditTextCell.this.showNextButton) {
                        editorInfo.imeOptions &= -1073741825;
                    }
                    return onCreateInputConnection;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.EditTextBoldCursor, org.telegram.p043ui.Components.EditTextEffects, android.widget.TextView, android.view.View
                public void onDraw(Canvas canvas) {
                    super.onDraw(canvas);
                    PollEditTextCell.this.onEditTextDraw(this, canvas);
                }

                @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (isEnabled()) {
                        if (motionEvent.getAction() == 1) {
                            PollEditTextCell.this.onFieldTouchUp(this);
                        }
                        return super.onTouchEvent(motionEvent);
                    }
                    return false;
                }
            };
        }
        this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.textView.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setBackgroundDrawable(null);
        EditTextBoldCursor editTextBoldCursor = this.textView;
        editTextBoldCursor.setImeOptions(editTextBoldCursor.getImeOptions() | 268435456);
        EditTextBoldCursor editTextBoldCursor2 = this.textView;
        editTextBoldCursor2.setInputType(editTextBoldCursor2.getInputType() | 16384);
        this.textView.setPadding(AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(11));
        if (onClickListener != null) {
            EditTextBoldCursor editTextBoldCursor3 = this.textView;
            boolean z2 = LocaleController.isRTL;
            addView(editTextBoldCursor3, LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 16, z2 ? 58 : 64, 0, z2 ? 64 : 58, 0));
            ImageView imageView = new ImageView(context);
            this.moveImageView = imageView;
            imageView.setFocusable(false);
            this.moveImageView.setScaleType(ImageView.ScaleType.CENTER);
            this.moveImageView.setImageResource(C3632R.C3634drawable.poll_reorder);
            ImageView imageView2 = this.moveImageView;
            int i = Theme.key_windowBackgroundWhiteGrayIcon;
            imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
            addView(this.moveImageView, LayoutHelper.createFrame(48, 48, (LocaleController.isRTL ? 5 : 3) | 48, 6, 2, 6, 0));
            ImageView imageView3 = new ImageView(context);
            this.deleteImageView = imageView3;
            imageView3.setFocusable(false);
            this.deleteImageView.setScaleType(ImageView.ScaleType.CENTER);
            this.deleteImageView.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(Theme.key_stickers_menuSelector)));
            this.deleteImageView.setImageResource(C3632R.C3634drawable.poll_remove);
            this.deleteImageView.setOnClickListener(onClickListener);
            this.deleteImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
            this.deleteImageView.setContentDescription(LocaleController.getString("Delete", C3632R.string.Delete));
            ImageView imageView4 = this.deleteImageView;
            boolean z3 = LocaleController.isRTL;
            addView(imageView4, LayoutHelper.createFrame(48, 50, (z3 ? 3 : 5) | 48, z3 ? 3 : 0, 0, z3 ? 0 : 3, 0));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView2 = simpleTextView;
            simpleTextView.setTextSize(13);
            this.textView2.setGravity((LocaleController.isRTL ? 3 : 5) | 48);
            SimpleTextView simpleTextView2 = this.textView2;
            boolean z4 = LocaleController.isRTL;
            addView(simpleTextView2, LayoutHelper.createFrame(48, 24, (z4 ? 3 : 5) | 48, z4 ? 20 : 0, 43, z4 ? 0 : 20, 0));
            CheckBox2 checkBox2 = new CheckBox2(context, 21);
            this.checkBox = checkBox2;
            checkBox2.setColor(-1, i, Theme.key_checkboxCheck);
            this.checkBox.setContentDescription(LocaleController.getString("AccDescrQuizCorrectAnswer", C3632R.string.AccDescrQuizCorrectAnswer));
            this.checkBox.setDrawUnchecked(true);
            this.checkBox.setChecked(true, false);
            this.checkBox.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.checkBox.setDrawBackgroundAsArc(8);
            addView(this.checkBox, LayoutHelper.createFrame(48, 48, (LocaleController.isRTL ? 5 : 3) | 48, 6, 2, 6, 0));
            this.checkBox.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.PollEditTextCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PollEditTextCell.this.lambda$new$0(view);
                }
            });
            return;
        }
        addView(this.textView, LayoutHelper.createFrame(-1, -2, (LocaleController.isRTL ? 5 : 3) | 16, 19, 0, 19, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (this.checkBox.getTag() == null) {
            return;
        }
        onCheckBoxClick(this, !this.checkBox.isChecked());
    }

    public void createErrorTextView() {
        this.alwaysShowText2 = true;
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        this.textView2 = simpleTextView;
        simpleTextView.setTextSize(13);
        this.textView2.setGravity((LocaleController.isRTL ? 3 : 5) | 48);
        SimpleTextView simpleTextView2 = this.textView2;
        boolean z = LocaleController.isRTL;
        addView(simpleTextView2, LayoutHelper.createFrame(48, 24, (z ? 3 : 5) | 48, z ? 20 : 0, 17, z ? 0 : 20, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i);
        ImageView imageView = this.deleteImageView;
        if (imageView != null) {
            imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824));
        }
        ImageView imageView2 = this.moveImageView;
        if (imageView2 != null) {
            imageView2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824));
        }
        SimpleTextView simpleTextView = this.textView2;
        if (simpleTextView != null) {
            simpleTextView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(24), 1073741824));
        }
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null) {
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824));
        }
        if (this.textView2 == null) {
            i3 = 42;
        } else {
            i3 = this.deleteImageView == null ? 70 : 122;
        }
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(((size - getPaddingLeft()) - getPaddingRight()) - AndroidUtilities.m107dp(i3), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredHeight = this.textView.getMeasuredHeight();
        setMeasuredDimension(size, Math.max(AndroidUtilities.m107dp(50), this.textView.getMeasuredHeight()) + (this.needDivider ? 1 : 0));
        SimpleTextView simpleTextView2 = this.textView2;
        if (simpleTextView2 == null || this.alwaysShowText2) {
            return;
        }
        simpleTextView2.setAlpha(measuredHeight >= AndroidUtilities.m107dp(52) ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.checkBox != null) {
            setShowCheckBox(shouldShowCheckBox(), false);
            this.checkBox.setChecked(isChecked(this), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCheckBoxClick(PollEditTextCell pollEditTextCell, boolean z) {
        this.checkBox.setChecked(z, true);
    }

    public void callOnDelete() {
        ImageView imageView = this.deleteImageView;
        if (imageView == null) {
            return;
        }
        imageView.callOnClick();
    }

    public void setShowNextButton(boolean z) {
        this.showNextButton = z;
    }

    public EditTextBoldCursor getTextView() {
        return this.textView;
    }

    public CheckBox2 getCheckBox() {
        return this.checkBox;
    }

    public void addTextWatcher(TextWatcher textWatcher) {
        this.textView.addTextChangedListener(textWatcher);
    }

    public void setChecked(boolean z, boolean z2) {
        this.checkBox.setChecked(z, z2);
    }

    public String getText() {
        return this.textView.getText().toString();
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public void setShowCheckBox(boolean z, boolean z2) {
        if (z == (this.checkBox.getTag() != null)) {
            return;
        }
        AnimatorSet animatorSet = this.checkBoxAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.checkBoxAnimation = null;
        }
        this.checkBox.setTag(z ? 1 : null);
        if (z2) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.checkBoxAnimation = animatorSet2;
            Animator[] animatorArr = new Animator[2];
            CheckBox2 checkBox2 = this.checkBox;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(checkBox2, property, fArr);
            ImageView imageView = this.moveImageView;
            Property property2 = View.ALPHA;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 0.0f : 1.0f;
            animatorArr[1] = ObjectAnimator.ofFloat(imageView, property2, fArr2);
            animatorSet2.playTogether(animatorArr);
            this.checkBoxAnimation.setDuration(180L);
            this.checkBoxAnimation.start();
            return;
        }
        this.checkBox.setAlpha(z ? 1.0f : 0.0f);
        this.moveImageView.setAlpha(z ? 0.0f : 1.0f);
    }

    public void setTextAndHint(CharSequence charSequence, String str, boolean z) {
        ImageView imageView = this.deleteImageView;
        if (imageView != null) {
            imageView.setTag(null);
        }
        this.textView.setText(charSequence);
        if (!TextUtils.isEmpty(charSequence)) {
            EditTextBoldCursor editTextBoldCursor = this.textView;
            editTextBoldCursor.setSelection(editTextBoldCursor.length());
        }
        this.textView.setHint(str);
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setText2(String str) {
        SimpleTextView simpleTextView = this.textView2;
        if (simpleTextView == null) {
            return;
        }
        simpleTextView.setText(str);
    }

    public SimpleTextView getTextView2() {
        return this.textView2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float m107dp;
        int i;
        int measuredWidth;
        int i2;
        if (this.needVerticalDivider) {
            int measuredHeight = getMeasuredHeight();
            canvas.drawRect(getMeasuredWidth() - 2, measuredHeight / 4, measuredWidth + 2, measuredHeight - i2, Theme.dividerPaint);
        }
        if (this.needDivider && drawDivider()) {
            if (LocaleController.isRTL) {
                m107dp = BitmapDescriptorFactory.HUE_RED;
            } else {
                m107dp = AndroidUtilities.m107dp(this.moveImageView != null ? 63 : 20);
            }
            float f = m107dp;
            float measuredHeight2 = getMeasuredHeight() - 1;
            int measuredWidth2 = getMeasuredWidth();
            if (LocaleController.isRTL) {
                i = AndroidUtilities.m107dp(this.moveImageView == null ? 20 : 63);
            } else {
                i = 0;
            }
            canvas.drawLine(f, measuredHeight2, measuredWidth2 - i, getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }
}
