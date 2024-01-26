package org.telegram.p043ui.Components.Premium.boosts.cells.selector;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.GroupCreateSpan;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$TL_help_country;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell */
/* loaded from: classes6.dex */
public class SelectorSearchCell extends ScrollView {
    public ArrayList<GroupCreateSpan> allSpans;
    private final LinearGradient bottomGradient;
    private final AnimatedFloat bottomGradientAlpha;
    private final Matrix bottomGradientMatrix;
    private final Paint bottomGradientPaint;
    public float containerHeight;
    private GroupCreateSpan currentDeletingSpan;
    private EditTextBoldCursor editText;
    private int fieldY;
    private int hintTextWidth;
    private boolean ignoreScrollEvent;
    private boolean ignoreTextChange;
    private Utilities.Callback<String> onSearchTextChange;
    private int prevResultContainerHeight;
    private final Theme.ResourcesProvider resourcesProvider;
    public int resultContainerHeight;
    private boolean scroll;
    public SpansContainer spansContainer;
    private final LinearGradient topGradient;
    private final AnimatedFloat topGradientAlpha;
    private final Matrix topGradientMatrix;
    private final Paint topGradientPaint;
    private Runnable updateHeight;

    public EditTextBoldCursor getEditText() {
        return this.editText;
    }

    public SelectorSearchCell(Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
        super(context);
        this.allSpans = new ArrayList<>();
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.topGradientAlpha = new AnimatedFloat(this, 0L, 300L, cubicBezierInterpolator);
        LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(8), new int[]{-16777216, 0}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
        this.topGradient = linearGradient;
        Paint paint = new Paint(1);
        this.topGradientPaint = paint;
        this.topGradientMatrix = new Matrix();
        this.bottomGradientAlpha = new AnimatedFloat(this, 0L, 300L, cubicBezierInterpolator);
        LinearGradient linearGradient2 = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(8), new int[]{0, -16777216}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
        this.bottomGradient = linearGradient2;
        Paint paint2 = new Paint(1);
        this.bottomGradientPaint = paint2;
        this.bottomGradientMatrix = new Matrix();
        paint.setShader(linearGradient);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        paint2.setShader(linearGradient2);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.resourcesProvider = resourcesProvider;
        this.updateHeight = runnable;
        setVerticalScrollBarEnabled(false);
        AndroidUtilities.setScrollViewEdgeEffectColor(this, Theme.getColor(Theme.key_windowBackgroundWhite));
        SpansContainer spansContainer = new SpansContainer(context);
        this.spansContainer = spansContainer;
        addView(spansContainer, LayoutHelper.createFrame(-1, -2));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.1
            @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (SelectorSearchCell.this.currentDeletingSpan != null) {
                    SelectorSearchCell.this.currentDeletingSpan.cancelDeleteAnimation();
                    SelectorSearchCell.this.currentDeletingSpan = null;
                }
                if (motionEvent.getAction() == 0 && !AndroidUtilities.showKeyboard(this)) {
                    SelectorSearchCell.this.fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                    clearFocus();
                    requestFocus();
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.editText = editTextBoldCursor;
        if (Build.VERSION.SDK_INT >= 25) {
            editTextBoldCursor.setRevealOnFocusHint(false);
        }
        this.editText.setTextSize(1, 16.0f);
        this.editText.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, resourcesProvider));
        this.editText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        EditTextBoldCursor editTextBoldCursor2 = this.editText;
        int i = Theme.key_groupcreate_cursor;
        editTextBoldCursor2.setCursorColor(Theme.getColor(i, resourcesProvider));
        this.editText.setHandlesColor(Theme.getColor(i, resourcesProvider));
        this.editText.setCursorWidth(1.5f);
        this.editText.setInputType(655536);
        this.editText.setSingleLine(true);
        this.editText.setBackgroundDrawable(null);
        this.editText.setVerticalScrollBarEnabled(false);
        this.editText.setHorizontalScrollBarEnabled(false);
        this.editText.setTextIsSelectable(false);
        this.editText.setPadding(0, 0, 0, 0);
        this.editText.setImeOptions(268435462);
        this.editText.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.spansContainer.addView(this.editText);
        EditTextBoldCursor editTextBoldCursor3 = this.editText;
        int i2 = C3632R.string.Search;
        editTextBoldCursor3.setHintText(LocaleController.getString("Search", i2));
        this.hintTextWidth = (int) this.editText.getPaint().measureText(LocaleController.getString("Search", i2));
        this.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (SelectorSearchCell.this.ignoreTextChange || SelectorSearchCell.this.onSearchTextChange == null || editable == null) {
                    return;
                }
                SelectorSearchCell.this.onSearchTextChange.run(editable.toString());
            }
        });
    }

    public void setHintText(String str, boolean z) {
        this.editText.setHintText(str, z);
    }

    public void updateSpans(boolean z, final HashSet<Long> hashSet, final Runnable runnable, List<TLRPC$TL_help_country> list) {
        boolean z2;
        Object chat;
        TLRPC$TL_help_country tLRPC$TL_help_country;
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ArrayList<GroupCreateSpan> arrayList = new ArrayList<>();
        ArrayList<GroupCreateSpan> arrayList2 = new ArrayList<>();
        for (int i = 0; i < this.allSpans.size(); i++) {
            GroupCreateSpan groupCreateSpan = this.allSpans.get(i);
            if (!hashSet.contains(Long.valueOf(groupCreateSpan.getUid()))) {
                arrayList.add(groupCreateSpan);
            }
        }
        Iterator<Long> it = hashSet.iterator();
        while (it.hasNext()) {
            long longValue = it.next().longValue();
            int i2 = 0;
            while (true) {
                if (i2 >= this.allSpans.size()) {
                    z2 = false;
                    break;
                } else if (this.allSpans.get(i2).getUid() == longValue) {
                    z2 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (!z2) {
                if (longValue >= 0) {
                    chat = messagesController.getUser(Long.valueOf(longValue));
                } else {
                    chat = messagesController.getChat(Long.valueOf(-longValue));
                }
                if (list != null) {
                    for (TLRPC$TL_help_country tLRPC$TL_help_country2 : list) {
                        if (tLRPC$TL_help_country2.default_name.hashCode() == longValue) {
                            tLRPC$TL_help_country = tLRPC$TL_help_country2;
                            break;
                        }
                    }
                }
                tLRPC$TL_help_country = chat;
                if (tLRPC$TL_help_country != null) {
                    GroupCreateSpan groupCreateSpan2 = new GroupCreateSpan(getContext(), tLRPC$TL_help_country, null, true, this.resourcesProvider);
                    groupCreateSpan2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SelectorSearchCell.this.lambda$updateSpans$0(hashSet, runnable, view);
                        }
                    });
                    arrayList2.add(groupCreateSpan2);
                }
            }
        }
        if (!arrayList.isEmpty() || !arrayList2.isEmpty()) {
            this.spansContainer.updateSpans(arrayList, arrayList2, z);
        }
        this.editText.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.3
            private boolean wasEmpty;

            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i3, KeyEvent keyEvent) {
                if (i3 == 67) {
                    if (keyEvent.getAction() == 0) {
                        this.wasEmpty = SelectorSearchCell.this.editText.length() == 0;
                    } else if (keyEvent.getAction() == 1 && this.wasEmpty && !SelectorSearchCell.this.allSpans.isEmpty()) {
                        ArrayList<GroupCreateSpan> arrayList3 = SelectorSearchCell.this.allSpans;
                        SelectorSearchCell.this.lambda$updateSpans$0(arrayList3.get(arrayList3.size() - 1), hashSet, runnable);
                        return true;
                    }
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onDeleteSpanClicked */
    public void lambda$updateSpans$0(View view, HashSet<Long> hashSet, Runnable runnable) {
        if (this.allSpans.contains(view)) {
            GroupCreateSpan groupCreateSpan = (GroupCreateSpan) view;
            if (groupCreateSpan.isDeleting()) {
                this.currentDeletingSpan = null;
                this.spansContainer.removeSpan(groupCreateSpan);
                hashSet.remove(Long.valueOf(groupCreateSpan.getUid()));
                runnable.run();
                return;
            }
            GroupCreateSpan groupCreateSpan2 = this.currentDeletingSpan;
            if (groupCreateSpan2 != null) {
                groupCreateSpan2.cancelDeleteAnimation();
                this.currentDeletingSpan = null;
            }
            this.currentDeletingSpan = groupCreateSpan;
            groupCreateSpan.startDeleteAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int scrollY;
        float scrollY2 = getScrollY();
        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, scrollY2, getWidth(), getHeight() + scrollY, 255, 31);
        super.dispatchDraw(canvas);
        canvas.save();
        float f = this.topGradientAlpha.set(canScrollVertically(-1));
        this.topGradientMatrix.reset();
        this.topGradientMatrix.postTranslate(BitmapDescriptorFactory.HUE_RED, scrollY2);
        this.topGradient.setLocalMatrix(this.topGradientMatrix);
        this.topGradientPaint.setAlpha((int) (f * 255.0f));
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, scrollY2, getWidth(), AndroidUtilities.m107dp(8) + scrollY, this.topGradientPaint);
        float f2 = this.bottomGradientAlpha.set(canScrollVertically(1));
        this.bottomGradientMatrix.reset();
        this.bottomGradientMatrix.postTranslate(BitmapDescriptorFactory.HUE_RED, (getHeight() + scrollY) - AndroidUtilities.m107dp(8));
        this.bottomGradient.setLocalMatrix(this.bottomGradientMatrix);
        this.bottomGradientPaint.setAlpha((int) (f2 * 255.0f));
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, (getHeight() + scrollY) - AndroidUtilities.m107dp(8), getWidth(), scrollY + getHeight(), this.bottomGradientPaint);
        canvas.restore();
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setText(CharSequence charSequence) {
        this.ignoreTextChange = true;
        this.editText.setText(charSequence);
        this.ignoreTextChange = false;
    }

    public void setOnSearchTextChange(Utilities.Callback<String> callback) {
        this.onSearchTextChange = callback;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        if (this.ignoreScrollEvent) {
            this.ignoreScrollEvent = false;
            return false;
        }
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        rect.top += this.fieldY + AndroidUtilities.m107dp(20);
        rect.bottom += this.fieldY + AndroidUtilities.m107dp(50);
        return super.requestChildRectangleOnScreen(view, rect, z);
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), Integer.MIN_VALUE));
    }

    public void setContainerHeight(float f) {
        this.containerHeight = f;
        SpansContainer spansContainer = this.spansContainer;
        if (spansContainer != null) {
            spansContainer.requestLayout();
        }
    }

    protected Animator getContainerHeightAnimator(float f) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.containerHeight, f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SelectorSearchCell.this.lambda$getContainerHeightAnimator$1(valueAnimator);
            }
        });
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getContainerHeightAnimator$1(ValueAnimator valueAnimator) {
        setContainerHeight(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* renamed from: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell$SpansContainer */
    /* loaded from: classes6.dex */
    public class SpansContainer extends ViewGroup {
        private View addingSpan;
        private ArrayList<View> animAddingSpans;
        private ArrayList<View> animRemovingSpans;
        private boolean animationStarted;
        private ArrayList<Animator> animators;
        private AnimatorSet currentAnimation;
        private final ArrayList<View> removingSpans;

        public SpansContainer(Context context) {
            super(context);
            this.animAddingSpans = new ArrayList<>();
            this.animRemovingSpans = new ArrayList<>();
            this.animators = new ArrayList<>();
            this.removingSpans = new ArrayList<>();
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00d8  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r17, int r18) {
            /*
                Method dump skipped, instructions count: 693
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.SpansContainer.onMeasure(int, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0() {
            SelectorSearchCell.this.fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
            }
        }

        public void removeSpan(final GroupCreateSpan groupCreateSpan) {
            SelectorSearchCell.this.ignoreScrollEvent = true;
            SelectorSearchCell.this.allSpans.remove(groupCreateSpan);
            groupCreateSpan.setOnClickListener(null);
            setupEndValues();
            this.animationStarted = false;
            AnimatorSet animatorSet = new AnimatorSet();
            this.currentAnimation = animatorSet;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.SpansContainer.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SpansContainer.this.removeView(groupCreateSpan);
                    SpansContainer.this.removingSpans.clear();
                    SpansContainer.this.currentAnimation = null;
                    SpansContainer.this.animationStarted = false;
                    SelectorSearchCell.this.editText.setAllowDrawCursor(true);
                    if (SelectorSearchCell.this.updateHeight != null) {
                        SelectorSearchCell.this.updateHeight.run();
                    }
                    if (SelectorSearchCell.this.scroll) {
                        SelectorSearchCell.this.fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                        SelectorSearchCell.this.scroll = false;
                    }
                }
            });
            this.removingSpans.clear();
            this.removingSpans.add(groupCreateSpan);
            this.animAddingSpans.clear();
            this.animRemovingSpans.clear();
            this.animAddingSpans.add(groupCreateSpan);
            this.animators.clear();
            this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_X, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_Y, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
            requestLayout();
        }

        public void updateSpans(final ArrayList<GroupCreateSpan> arrayList, ArrayList<GroupCreateSpan> arrayList2, boolean z) {
            SelectorSearchCell.this.ignoreScrollEvent = true;
            SelectorSearchCell.this.allSpans.removeAll(arrayList);
            SelectorSearchCell.this.allSpans.addAll(arrayList2);
            this.removingSpans.clear();
            this.removingSpans.addAll(arrayList);
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList.get(i).setOnClickListener(null);
            }
            setupEndValues();
            if (z) {
                this.animationStarted = false;
                AnimatorSet animatorSet = new AnimatorSet();
                this.currentAnimation = animatorSet;
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.SpansContainer.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            SpansContainer.this.removeView((View) arrayList.get(i2));
                        }
                        SpansContainer.this.addingSpan = null;
                        SpansContainer.this.removingSpans.clear();
                        SpansContainer.this.currentAnimation = null;
                        SpansContainer.this.animationStarted = false;
                        SelectorSearchCell.this.editText.setAllowDrawCursor(true);
                        if (SelectorSearchCell.this.updateHeight != null) {
                            SelectorSearchCell.this.updateHeight.run();
                        }
                        if (SelectorSearchCell.this.scroll) {
                            SelectorSearchCell.this.fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                            SelectorSearchCell.this.scroll = false;
                        }
                    }
                });
                this.animators.clear();
                this.animAddingSpans.clear();
                this.animRemovingSpans.clear();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    GroupCreateSpan groupCreateSpan = arrayList.get(i2);
                    this.animRemovingSpans.add(groupCreateSpan);
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_X, 1.0f, 0.01f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_Y, 1.0f, 0.01f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                }
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    GroupCreateSpan groupCreateSpan2 = arrayList2.get(i3);
                    this.animAddingSpans.add(groupCreateSpan2);
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan2, View.SCALE_X, 0.01f, 1.0f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan2, View.SCALE_Y, 0.01f, 1.0f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan2, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                }
            } else {
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    removeView(arrayList.get(i4));
                }
                this.removingSpans.clear();
                this.currentAnimation = null;
                this.animationStarted = false;
                SelectorSearchCell.this.editText.setAllowDrawCursor(true);
            }
            for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                addView(arrayList2.get(i5));
            }
            requestLayout();
        }

        public void removeAllSpans(boolean z) {
            SelectorSearchCell.this.ignoreScrollEvent = true;
            final ArrayList arrayList = new ArrayList(SelectorSearchCell.this.allSpans);
            this.removingSpans.clear();
            this.removingSpans.addAll(SelectorSearchCell.this.allSpans);
            SelectorSearchCell.this.allSpans.clear();
            for (int i = 0; i < arrayList.size(); i++) {
                ((GroupCreateSpan) arrayList.get(i)).setOnClickListener(null);
            }
            setupEndValues();
            if (z) {
                this.animationStarted = false;
                AnimatorSet animatorSet = new AnimatorSet();
                this.currentAnimation = animatorSet;
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorSearchCell.SpansContainer.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            SpansContainer.this.removeView((View) arrayList.get(i2));
                        }
                        SpansContainer.this.removingSpans.clear();
                        SpansContainer.this.currentAnimation = null;
                        SpansContainer.this.animationStarted = false;
                        SelectorSearchCell.this.editText.setAllowDrawCursor(true);
                        if (SelectorSearchCell.this.updateHeight != null) {
                            SelectorSearchCell.this.updateHeight.run();
                        }
                        if (SelectorSearchCell.this.scroll) {
                            SelectorSearchCell.this.fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                            SelectorSearchCell.this.scroll = false;
                        }
                    }
                });
                this.animators.clear();
                this.animAddingSpans.clear();
                this.animRemovingSpans.clear();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    GroupCreateSpan groupCreateSpan = (GroupCreateSpan) arrayList.get(i2);
                    this.animAddingSpans.add(groupCreateSpan);
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_X, 1.0f, 0.01f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_Y, 1.0f, 0.01f));
                    this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                }
            } else {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    removeView((View) arrayList.get(i3));
                }
                this.removingSpans.clear();
                this.currentAnimation = null;
                this.animationStarted = false;
                SelectorSearchCell.this.editText.setAllowDrawCursor(true);
            }
            requestLayout();
        }

        private void setupEndValues() {
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            for (int i = 0; i < this.animAddingSpans.size(); i++) {
                this.animAddingSpans.get(i).setScaleX(1.0f);
                this.animAddingSpans.get(i).setScaleY(1.0f);
                this.animAddingSpans.get(i).setAlpha(1.0f);
            }
            for (int i2 = 0; i2 < this.animRemovingSpans.size(); i2++) {
                this.animRemovingSpans.get(i2).setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.animRemovingSpans.get(i2).setScaleY(BitmapDescriptorFactory.HUE_RED);
                this.animRemovingSpans.get(i2).setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            this.animAddingSpans.clear();
            this.animRemovingSpans.clear();
        }
    }
}
