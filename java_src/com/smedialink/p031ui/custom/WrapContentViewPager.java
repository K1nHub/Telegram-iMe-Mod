package com.smedialink.p031ui.custom;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: WrapContentViewPager.kt */
/* renamed from: com.smedialink.ui.custom.WrapContentViewPager */
/* loaded from: classes3.dex */
public final class WrapContentViewPager extends ViewPager {
    private boolean dataChangedFlag;
    private DataSetObserver dataSetObserver;
    private Field inLayout;
    private int lastHeightWithoutPadding;
    private Field needsMeasure;
    private Method pop;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrapContentViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNull(context);
        this.dataSetObserver = new DataSetObserver() { // from class: com.smedialink.ui.custom.WrapContentViewPager$dataSetObserver$1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                WrapContentViewPager.this.dataChangedFlag = true;
            }
        };
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setAdapter(PagerAdapter pagerAdapter) {
        PagerAdapter adapter = getAdapter();
        if (adapter != null) {
            adapter.unregisterDataSetObserver(this.dataSetObserver);
        }
        super.setAdapter(pagerAdapter);
        if (pagerAdapter != null) {
            pagerAdapter.registerDataSetObserver(this.dataSetObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public void onMeasure(int i, int i2) {
        int makeMeasureSpec;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int i3 = this.lastHeightWithoutPadding;
        if (this.dataChangedFlag) {
            this.dataChangedFlag = false;
            i3 = 0;
        }
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight(), View.MeasureSpec.getMode(i));
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (size - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        setInLayout(true);
        populateSuper();
        setInLayout(false);
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            childAt.measure(makeMeasureSpec2, makeMeasureSpec);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.viewpager.widget.ViewPager.LayoutParams");
            clearNeedsMeasure((ViewPager.LayoutParams) layoutParams);
            int measuredHeight = childAt.getMeasuredHeight();
            if (measuredHeight > i3) {
                i3 = measuredHeight;
            }
        }
        int paddingTop = i3 + getPaddingTop() + getPaddingBottom();
        if (mode == Integer.MIN_VALUE ? paddingTop <= size : mode != 1073741824) {
            size = paddingTop;
        }
        this.lastHeightWithoutPadding = Math.max(0, (size - getPaddingTop()) - getPaddingBottom());
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
    }

    private final void clearNeedsMeasure(ViewPager.LayoutParams layoutParams) {
        if (this.needsMeasure == null) {
            try {
                Field declaredField = ViewPager.LayoutParams.class.getDeclaredField("needsMeasure");
                this.needsMeasure = declaredField;
                Intrinsics.checkNotNull(declaredField);
                declaredField.setAccessible(true);
            } catch (Exception e) {
                Timber.m4e(e);
            }
        }
        try {
            Field field = this.needsMeasure;
            if (field != null) {
                Intrinsics.checkNotNull(field);
                field.set(layoutParams, Boolean.FALSE);
            }
        } catch (Exception e2) {
            Timber.m4e(e2);
        }
    }

    private final void populateSuper() {
        if (this.pop == null) {
            try {
                Method declaredMethod = ViewPager.class.getDeclaredMethod("populate", new Class[0]);
                this.pop = declaredMethod;
                Intrinsics.checkNotNull(declaredMethod);
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
                Timber.m4e(e);
            }
        }
        try {
            Method method = this.pop;
            if (method != null) {
                Intrinsics.checkNotNull(method);
                method.invoke(this, new Object[0]);
            }
        } catch (Exception e2) {
            Timber.m4e(e2);
        }
    }

    public final void setInLayout(boolean z) {
        assureInLayoutField();
        try {
            Field field = this.inLayout;
            if (field != null) {
                Intrinsics.checkNotNull(field);
                field.set(this, Boolean.valueOf(z));
            }
        } catch (Exception e) {
            Timber.m4e(e);
        }
    }

    private final void assureInLayoutField() {
        if (this.inLayout == null) {
            try {
                Field declaredField = ViewPager.class.getDeclaredField("mInLayout");
                this.inLayout = declaredField;
                Intrinsics.checkNotNull(declaredField);
                declaredField.setAccessible(true);
            } catch (Exception e) {
                Timber.m4e(e);
            }
        }
    }
}
