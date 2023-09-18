package com.tbuonomo.viewpagerdotsindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BaseDotsIndicator.kt */
/* loaded from: classes6.dex */
public abstract class BaseDotsIndicator extends FrameLayout {
    protected final ArrayList<ImageView> dots;
    private boolean dotsClickable;
    private int dotsColor;
    private float dotsCornerRadius;
    private float dotsSize;
    private float dotsSpacing;
    private Pager pager;

    /* compiled from: BaseDotsIndicator.kt */
    /* loaded from: classes6.dex */
    public interface Pager {
        void addOnPageChangeListener(OnPageChangeListenerHelper onPageChangeListenerHelper);

        int getCount();

        int getCurrentItem();

        boolean isNotEmpty();

        void removeOnPageChangeListener();

        void setCurrentItem(int i, boolean z);
    }

    static {
        new Companion(null);
    }

    public BaseDotsIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public abstract void addDot(int i);

    public abstract OnPageChangeListenerHelper buildOnPageChangedListener();

    public abstract Type getType();

    public abstract void refreshDotColor(int i);

    public abstract void removeDot(int i);

    public /* synthetic */ BaseDotsIndicator(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseDotsIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.dots = new ArrayList<>();
        this.dotsClickable = true;
        this.dotsColor = -16711681;
        float dpToPxF = dpToPxF(getType().getDefaultSize());
        this.dotsSize = dpToPxF;
        this.dotsCornerRadius = dpToPxF / 2.0f;
        this.dotsSpacing = dpToPxF(getType().getDefaultSpacing());
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, getType().getStyleableId());
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…(attrs, type.styleableId)");
            setDotsColor(obtainStyledAttributes.getColor(getType().getDotsColorId(), -16711681));
            this.dotsSize = obtainStyledAttributes.getDimension(getType().getDotsSizeId(), this.dotsSize);
            this.dotsCornerRadius = obtainStyledAttributes.getDimension(getType().getDotsCornerRadiusId(), this.dotsCornerRadius);
            this.dotsSpacing = obtainStyledAttributes.getDimension(getType().getDotsSpacingId(), this.dotsSpacing);
            this.dotsClickable = obtainStyledAttributes.getBoolean(getType().getDotsClickableId(), true);
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: BaseDotsIndicator.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum DEFAULT uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* compiled from: BaseDotsIndicator.kt */
    /* loaded from: classes6.dex */
    public static final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type DEFAULT;
        public static final Type SPRING;
        public static final Type WORM;
        private final float defaultSize;
        private final float defaultSpacing;
        private final int dotsClickableId;
        private final int dotsColorId;
        private final int dotsCornerRadiusId;
        private final int dotsSizeId;
        private final int dotsSpacingId;
        private final int[] styleableId;

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }

        private Type(String str, int i, float f, float f2, int[] iArr, int i2, int i3, int i4, int i5, int i6) {
            this.defaultSize = f;
            this.defaultSpacing = f2;
            this.styleableId = iArr;
            this.dotsColorId = i2;
            this.dotsSizeId = i3;
            this.dotsSpacingId = i4;
            this.dotsCornerRadiusId = i5;
            this.dotsClickableId = i6;
        }

        public final float getDefaultSize() {
            return this.defaultSize;
        }

        public final float getDefaultSpacing() {
            return this.defaultSpacing;
        }

        public final int[] getStyleableId() {
            return this.styleableId;
        }

        public final int getDotsColorId() {
            return this.dotsColorId;
        }

        public final int getDotsSizeId() {
            return this.dotsSizeId;
        }

        public final int getDotsSpacingId() {
            return this.dotsSpacingId;
        }

        public final int getDotsCornerRadiusId() {
            return this.dotsCornerRadiusId;
        }

        public final int getDotsClickableId() {
            return this.dotsClickableId;
        }

        static {
            int[] iArr = R$styleable.SpringDotsIndicator;
            Intrinsics.checkNotNullExpressionValue(iArr, "R.styleable.SpringDotsIndicator");
            int i = R$styleable.SpringDotsIndicator_dotsColor;
            int i2 = R$styleable.SpringDotsIndicator_dotsSize;
            int i3 = R$styleable.SpringDotsIndicator_dotsSpacing;
            int i4 = R$styleable.SpringDotsIndicator_dotsCornerRadius;
            int i5 = R$styleable.SpringDotsIndicator_dotsClickable;
            Type type = new Type("DEFAULT", 0, 16.0f, 8.0f, iArr, i, i2, i3, i4, i5);
            DEFAULT = type;
            int[] iArr2 = R$styleable.DotsIndicator;
            Intrinsics.checkNotNullExpressionValue(iArr2, "R.styleable.DotsIndicator");
            Type type2 = new Type("SPRING", 1, 16.0f, 4.0f, iArr2, R$styleable.DotsIndicator_dotsColor, R$styleable.DotsIndicator_dotsSize, R$styleable.DotsIndicator_dotsSpacing, R$styleable.DotsIndicator_dotsCornerRadius, i5);
            SPRING = type2;
            int[] iArr3 = R$styleable.WormDotsIndicator;
            Intrinsics.checkNotNullExpressionValue(iArr3, "R.styleable.WormDotsIndicator");
            Type type3 = new Type("WORM", 2, 16.0f, 4.0f, iArr3, R$styleable.WormDotsIndicator_dotsColor, R$styleable.WormDotsIndicator_dotsSize, R$styleable.WormDotsIndicator_dotsSpacing, R$styleable.WormDotsIndicator_dotsCornerRadius, i5);
            WORM = type3;
            $VALUES = new Type[]{type, type2, type3};
        }
    }

    public final boolean getDotsClickable() {
        return this.dotsClickable;
    }

    public final void setDotsClickable(boolean z) {
        this.dotsClickable = z;
    }

    public final int getDotsColor() {
        return this.dotsColor;
    }

    public final void setDotsColor(int i) {
        this.dotsColor = i;
        refreshDotsColors();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float getDotsSize() {
        return this.dotsSize;
    }

    protected final void setDotsSize(float f) {
        this.dotsSize = f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float getDotsCornerRadius() {
        return this.dotsCornerRadius;
    }

    protected final void setDotsCornerRadius(float f) {
        this.dotsCornerRadius = f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float getDotsSpacing() {
        return this.dotsSpacing;
    }

    protected final void setDotsSpacing(float f) {
        this.dotsSpacing = f;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        refreshDots();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshDotsCount() {
        int size = this.dots.size();
        Pager pager = this.pager;
        Intrinsics.checkNotNull(pager);
        if (size < pager.getCount()) {
            Pager pager2 = this.pager;
            Intrinsics.checkNotNull(pager2);
            addDots(pager2.getCount() - this.dots.size());
            return;
        }
        int size2 = this.dots.size();
        Pager pager3 = this.pager;
        Intrinsics.checkNotNull(pager3);
        if (size2 > pager3.getCount()) {
            int size3 = this.dots.size();
            Pager pager4 = this.pager;
            Intrinsics.checkNotNull(pager4);
            removeDots(size3 - pager4.getCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void refreshDotsColors() {
        int size = this.dots.size();
        for (int i = 0; i < size; i++) {
            refreshDotColor(i);
        }
    }

    protected final float dpToPxF(float f) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        Resources resources = context.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "context.resources");
        return resources.getDisplayMetrics().density * f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void addDots(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            addDot(i2);
        }
    }

    private final void removeDots(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            removeDot(i2);
        }
    }

    public final void refreshDots() {
        if (this.pager == null) {
            return;
        }
        post(new Runnable() { // from class: com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator$refreshDots$1
            @Override // java.lang.Runnable
            public final void run() {
                BaseDotsIndicator.this.refreshDotsCount();
                BaseDotsIndicator.this.refreshDotsColors();
                BaseDotsIndicator.this.refreshDotsSize();
                BaseDotsIndicator.this.refreshOnPageChangedListener();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshOnPageChangedListener() {
        Pager pager = this.pager;
        Intrinsics.checkNotNull(pager);
        if (pager.isNotEmpty()) {
            Pager pager2 = this.pager;
            Intrinsics.checkNotNull(pager2);
            pager2.removeOnPageChangeListener();
            OnPageChangeListenerHelper buildOnPageChangedListener = buildOnPageChangedListener();
            Pager pager3 = this.pager;
            Intrinsics.checkNotNull(pager3);
            pager3.addOnPageChangeListener(buildOnPageChangedListener);
            Pager pager4 = this.pager;
            Intrinsics.checkNotNull(pager4);
            buildOnPageChangedListener.onPageScrolled(pager4.getCurrentItem(), BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshDotsSize() {
        Pager pager = this.pager;
        Intrinsics.checkNotNull(pager);
        int currentItem = pager.getCurrentItem();
        for (int i = 0; i < currentItem; i++) {
            ImageView imageView = this.dots.get(i);
            Intrinsics.checkNotNullExpressionValue(imageView, "dots[i]");
            setWidth(imageView, (int) this.dotsSize);
        }
    }

    public final void setPointsColor(int i) {
        setDotsColor(i);
        refreshDotsColors();
    }

    public final void setViewPager(final ViewPager viewPager) {
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("You have to set an adapter to the view pager before initializing the dots indicator !");
        }
        PagerAdapter adapter = viewPager.getAdapter();
        Intrinsics.checkNotNull(adapter);
        adapter.registerDataSetObserver(new DataSetObserver() { // from class: com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator$setViewPager$1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                BaseDotsIndicator.this.refreshDots();
            }
        });
        this.pager = new Pager() { // from class: com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator$setViewPager$2
            private ViewPager.OnPageChangeListener onPageChangeListener;

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public boolean isNotEmpty() {
                return BaseDotsIndicator.this.isNotEmpty(viewPager);
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public int getCurrentItem() {
                return viewPager.getCurrentItem();
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public int getCount() {
                PagerAdapter adapter2 = viewPager.getAdapter();
                if (adapter2 != null) {
                    return adapter2.getCount();
                }
                return 0;
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public void setCurrentItem(int i, boolean z) {
                viewPager.setCurrentItem(i, z);
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public void removeOnPageChangeListener() {
                ViewPager.OnPageChangeListener onPageChangeListener = this.onPageChangeListener;
                if (onPageChangeListener != null) {
                    viewPager.removeOnPageChangeListener(onPageChangeListener);
                }
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public void addOnPageChangeListener(final OnPageChangeListenerHelper onPageChangeListenerHelper) {
                Intrinsics.checkNotNullParameter(onPageChangeListenerHelper, "onPageChangeListenerHelper");
                ViewPager.OnPageChangeListener onPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator$setViewPager$2$addOnPageChangeListener$1
                    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                    public void onPageScrollStateChanged(int i) {
                    }

                    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                    public void onPageSelected(int i) {
                    }

                    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                    public void onPageScrolled(int i, float f, int i2) {
                        OnPageChangeListenerHelper.this.onPageScrolled(i, f);
                    }
                };
                this.onPageChangeListener = onPageChangeListener;
                ViewPager viewPager2 = viewPager;
                Intrinsics.checkNotNull(onPageChangeListener);
                viewPager2.addOnPageChangeListener(onPageChangeListener);
            }
        };
        refreshDots();
    }

    public final void setViewPager2(final ViewPager2 viewPager2) {
        Intrinsics.checkNotNullParameter(viewPager2, "viewPager2");
        if (viewPager2.getAdapter() == null) {
            throw new IllegalStateException("You have to set an adapter to the view pager before initializing the dots indicator !");
        }
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        Intrinsics.checkNotNull(adapter);
        adapter.registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator$setViewPager2$1
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                BaseDotsIndicator.this.refreshDots();
            }
        });
        this.pager = new Pager() { // from class: com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator$setViewPager2$2
            private ViewPager2.OnPageChangeCallback onPageChangeCallback;

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public boolean isNotEmpty() {
                return BaseDotsIndicator.this.isNotEmpty(viewPager2);
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public int getCurrentItem() {
                return viewPager2.getCurrentItem();
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public int getCount() {
                RecyclerView.Adapter adapter2 = viewPager2.getAdapter();
                if (adapter2 != null) {
                    return adapter2.getItemCount();
                }
                return 0;
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public void setCurrentItem(int i, boolean z) {
                viewPager2.setCurrentItem(i, z);
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public void removeOnPageChangeListener() {
                ViewPager2.OnPageChangeCallback onPageChangeCallback = this.onPageChangeCallback;
                if (onPageChangeCallback != null) {
                    viewPager2.unregisterOnPageChangeCallback(onPageChangeCallback);
                }
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator.Pager
            public void addOnPageChangeListener(final OnPageChangeListenerHelper onPageChangeListenerHelper) {
                Intrinsics.checkNotNullParameter(onPageChangeListenerHelper, "onPageChangeListenerHelper");
                ViewPager2.OnPageChangeCallback onPageChangeCallback = new ViewPager2.OnPageChangeCallback(onPageChangeListenerHelper) { // from class: com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator$setViewPager2$2$addOnPageChangeListener$1
                };
                this.onPageChangeCallback = onPageChangeCallback;
                ViewPager2 viewPager22 = viewPager2;
                Intrinsics.checkNotNull(onPageChangeCallback);
                viewPager22.registerOnPageChangeCallback(onPageChangeCallback);
            }
        };
        refreshDots();
    }

    public final void setWidth(View setWidth, int i) {
        Intrinsics.checkNotNullParameter(setWidth, "$this$setWidth");
        setWidth.getLayoutParams().width = i;
        setWidth.requestLayout();
    }

    public final <T> boolean isInBounds(ArrayList<T> isInBounds, int i) {
        Intrinsics.checkNotNullParameter(isInBounds, "$this$isInBounds");
        return i >= 0 && isInBounds.size() > i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isNotEmpty(ViewPager isNotEmpty) {
        Intrinsics.checkNotNullParameter(isNotEmpty, "$this$isNotEmpty");
        PagerAdapter adapter = isNotEmpty.getAdapter();
        Intrinsics.checkNotNull(adapter);
        Intrinsics.checkNotNullExpressionValue(adapter, "adapter!!");
        return adapter.getCount() > 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isNotEmpty(ViewPager2 isNotEmpty) {
        Intrinsics.checkNotNullParameter(isNotEmpty, "$this$isNotEmpty");
        RecyclerView.Adapter adapter = isNotEmpty.getAdapter();
        Intrinsics.checkNotNull(adapter);
        Intrinsics.checkNotNullExpressionValue(adapter, "adapter!!");
        return adapter.getItemCount() > 0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT < 17 || getLayoutDirection() != 1) {
            return;
        }
        setLayoutDirection(0);
        setRotation(180.0f);
        requestLayout();
    }
}
