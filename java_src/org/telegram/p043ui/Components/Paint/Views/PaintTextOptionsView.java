package org.telegram.p043ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.ChatActivityEnterViewAnimatedIconView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Paint.PaintTypeface;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RLottieImageView;
/* renamed from: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView */
/* loaded from: classes6.dex */
public class PaintTextOptionsView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final List<AlignFramePair> ALIGN_PAIRS = Arrays.asList(new AlignFramePair(0, 1, 20, 0), new AlignFramePair(0, 2, 20, 40), new AlignFramePair(1, 0, 0, 20), new AlignFramePair(1, 2, 60, 40), new AlignFramePair(2, 0, 40, 20), new AlignFramePair(2, 1, 40, 60));
    private RLottieImageView alignView;
    private View colorClickableView;
    private int currentAlign;
    private Delegate delegate;
    private ChatActivityEnterViewAnimatedIconView emojiButton;
    private String lastTypefaceKey;
    private int outlineType;
    private ImageView outlineView;
    private int plusIcon;
    private ImageView plusView;
    private TypefaceCell typefaceCell;

    /* renamed from: x */
    private int f1779x;

    /* renamed from: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$Delegate */
    /* loaded from: classes6.dex */
    public interface Delegate {
        void onColorPickerSelected();

        void onNewTextSelected();

        void onTextAlignmentSelected(int i);

        void onTextOutlineSelected(View view);

        void onTypefaceButtonClicked();
    }

    public void setTypefaceListView(PaintTypefaceListView paintTypefaceListView) {
    }

    public PaintTextOptionsView(Context context) {
        super(context);
        this.currentAlign = 0;
        setWillNotDraw(false);
        View view = new View(context);
        this.colorClickableView = view;
        view.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PaintTextOptionsView.this.lambda$new$0(view2);
            }
        });
        addView(this.colorClickableView, LayoutHelper.createFrame(24, 24, 48, 0, 0, 16, 0));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.alignView = rLottieImageView;
        rLottieImageView.setAnimation(C3419R.raw.photo_text_allign, 24, 24);
        RLottieDrawable animatedDrawable = this.alignView.getAnimatedDrawable();
        animatedDrawable.setPlayInDirectionOfCustomEndFrame(true);
        animatedDrawable.setCustomEndFrame(20);
        animatedDrawable.setCurrentFrame(20);
        this.alignView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        this.alignView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PaintTextOptionsView.this.lambda$new$1(view2);
            }
        });
        this.alignView.setPadding(AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2));
        addView(this.alignView, LayoutHelper.createFrame(28, 28, 16, 0, 0, 16, 0));
        ImageView imageView = new ImageView(context);
        this.outlineView = imageView;
        imageView.setImageResource(C3419R.C3421drawable.msg_text_outlined);
        this.outlineView.setPadding(AndroidUtilities.m72dp(1), AndroidUtilities.m72dp(1), AndroidUtilities.m72dp(1), AndroidUtilities.m72dp(1));
        this.outlineView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PaintTextOptionsView.this.lambda$new$2(view2);
            }
        });
        addView(this.outlineView, LayoutHelper.createFrame(28, 28, 16, 0, 0, 16, 0));
        ImageView imageView2 = new ImageView(context);
        this.plusView = imageView2;
        imageView2.setImageResource(C3419R.C3421drawable.msg_add);
        this.plusView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        this.plusView.setBackground(Theme.createSelectorDrawable(1090519039));
        this.plusView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PaintTextOptionsView.this.lambda$new$3(view2);
            }
        });
        this.plusView.setPadding(AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2));
        addView(this.plusView, LayoutHelper.createFrame(28, 28, 16, 0, 0, 16, 0));
        TypefaceCell typefaceCell = new TypefaceCell(context);
        this.typefaceCell = typefaceCell;
        typefaceCell.setCurrent(true);
        this.typefaceCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PaintTextOptionsView.this.lambda$new$4(view2);
            }
        });
        addView(this.typefaceCell, LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED, 21));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.delegate.onColorPickerSelected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        setAlignment((this.currentAlign + 1) % 3, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        this.delegate.onTextOutlineSelected(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        this.delegate.onNewTextSelected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        this.delegate.onTypefaceButtonClicked();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f1779x = getPaddingLeft();
        layoutChild(this.colorClickableView);
        layoutChild(this.alignView);
        layoutChild(this.outlineView);
        layoutChild(this.plusView);
        this.typefaceCell.layout((getMeasuredWidth() - getPaddingRight()) - this.typefaceCell.getMeasuredWidth(), (getMeasuredHeight() - this.typefaceCell.getMeasuredHeight()) / 2, getMeasuredWidth() - getPaddingRight(), (getMeasuredHeight() + this.typefaceCell.getMeasuredHeight()) / 2);
    }

    private void layoutChild(View view) {
        if (view.getVisibility() != 8) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int i = this.f1779x + layoutParams.leftMargin;
            this.f1779x = i;
            view.layout(i, (getMeasuredHeight() - layoutParams.height) / 2, this.f1779x + layoutParams.width, (getMeasuredHeight() + layoutParams.height) / 2);
            this.f1779x += layoutParams.width + layoutParams.rightMargin;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            TypefaceCell typefaceCell = this.typefaceCell;
            if (childAt == typefaceCell) {
                typefaceCell.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
            } else {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                childAt.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
                paddingLeft -= (childAt.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin;
            }
        }
        setMeasuredDimension(size, size2);
    }

    public TypefaceCell getTypefaceCell() {
        return this.typefaceCell;
    }

    public View getColorClickableView() {
        return this.colorClickableView;
    }

    public void getTypefaceCellBounds(RectF rectF) {
        rectF.set(this.typefaceCell.getLeft() + AndroidUtilities.m72dp(8), this.typefaceCell.getTop(), this.typefaceCell.getRight() + AndroidUtilities.m72dp(8), this.typefaceCell.getBottom());
    }

    public void animatePlusToIcon(int i) {
        if (i == 0) {
            i = C3419R.C3421drawable.msg_add;
        }
        if (this.plusIcon != i) {
            ImageView imageView = this.plusView;
            this.plusIcon = i;
            AndroidUtilities.updateImageViewImageAnimated(imageView, i);
        }
    }

    public ChatActivityEnterViewAnimatedIconView getEmojiButton() {
        return this.emojiButton;
    }

    public void setOutlineType(int i) {
        setOutlineType(i, false);
    }

    public void setOutlineType(int i, boolean z) {
        int i2;
        if (this.outlineType == i) {
            return;
        }
        this.outlineType = i;
        if (i == 1) {
            i2 = C3419R.C3421drawable.msg_photo_text_framed2;
        } else if (i == 2) {
            i2 = C3419R.C3421drawable.msg_photo_text_framed3;
        } else if (i != 3) {
            i2 = C3419R.C3421drawable.msg_photo_text_framed;
        } else {
            i2 = C3419R.C3421drawable.msg_photo_text_regular;
        }
        if (z) {
            AndroidUtilities.updateImageViewImageAnimated(this.outlineView, i2);
        } else {
            this.outlineView.setImageResource(i2);
        }
    }

    public void setTypeface(String str) {
        this.lastTypefaceKey = str;
        if (this.typefaceCell == null) {
            return;
        }
        for (PaintTypeface paintTypeface : PaintTypeface.get()) {
            if (paintTypeface.getKey().equals(str)) {
                this.typefaceCell.bind(paintTypeface);
                return;
            }
        }
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    public void setAlignment(int i) {
        setAlignment(i, false);
    }

    public void setAlignment(int i, boolean z) {
        int i2 = this.currentAlign;
        this.currentAlign = i;
        if (i2 == i) {
            RLottieDrawable animatedDrawable = this.alignView.getAnimatedDrawable();
            List<AlignFramePair> list = ALIGN_PAIRS;
            AlignFramePair alignFramePair = list.get(0);
            Iterator<AlignFramePair> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AlignFramePair next = it.next();
                if (this.currentAlign == next.toAlign) {
                    alignFramePair = next;
                    break;
                }
            }
            animatedDrawable.setCurrentFrame(alignFramePair.toFrame);
            animatedDrawable.setCustomEndFrame(alignFramePair.toFrame);
            if (z) {
                this.delegate.onTextAlignmentSelected(i);
                return;
            }
            return;
        }
        List<AlignFramePair> list2 = ALIGN_PAIRS;
        AlignFramePair alignFramePair2 = list2.get(0);
        Iterator<AlignFramePair> it2 = list2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            AlignFramePair next2 = it2.next();
            if (i2 == next2.fromAlign && this.currentAlign == next2.toAlign) {
                alignFramePair2 = next2;
                break;
            }
        }
        RLottieDrawable animatedDrawable2 = this.alignView.getAnimatedDrawable();
        animatedDrawable2.setCurrentFrame(alignFramePair2.fromFrame);
        animatedDrawable2.setCustomEndFrame(alignFramePair2.toFrame);
        animatedDrawable2.start();
        if (z) {
            this.delegate.onTextAlignmentSelected(i);
        }
    }

    /* renamed from: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$TypefaceCell */
    /* loaded from: classes6.dex */
    public static final class TypefaceCell extends TextView {
        private Drawable expandDrawable;
        private boolean isCurrent;

        public TypefaceCell(Context context) {
            super(context);
            setTextColor(-1);
            setTextSize(1, 14.0f);
            setCurrent(false);
            setEllipsize(TextUtils.TruncateAt.END);
            setSingleLine();
        }

        @Override // android.widget.TextView, android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(-1));
            super.onDraw(canvas);
            canvas.restore();
            if (this.isCurrent) {
                int height = (getHeight() - AndroidUtilities.m72dp(16)) / 2;
                if (LocaleController.isRTL) {
                    this.expandDrawable.setBounds(AndroidUtilities.m72dp(7), height, AndroidUtilities.m72dp(23), AndroidUtilities.m72dp(16) + height);
                } else {
                    this.expandDrawable.setBounds(getWidth() - AndroidUtilities.m72dp(23), height, getWidth() - AndroidUtilities.m72dp(7), AndroidUtilities.m72dp(16) + height);
                }
                this.expandDrawable.draw(canvas);
            }
        }

        public void setCurrent(boolean z) {
            this.isCurrent = z;
            if (z) {
                setPadding(AndroidUtilities.m72dp(LocaleController.isRTL ? 27 : 12), AndroidUtilities.m72dp(6), AndroidUtilities.m72dp(LocaleController.isRTL ? 12 : 27), AndroidUtilities.m72dp(6));
                setBackground(Theme.AdaptiveRipple.rect(1090519039, AndroidUtilities.m72dp(32)));
            } else {
                setPadding(AndroidUtilities.m72dp(24), AndroidUtilities.m72dp(14), AndroidUtilities.m72dp(24), AndroidUtilities.m72dp(14));
                setBackground(Theme.AdaptiveRipple.rect(-14145495));
            }
            if (this.isCurrent && this.expandDrawable == null) {
                Drawable drawable = ContextCompat.getDrawable(getContext(), C3419R.C3421drawable.photo_expand);
                this.expandDrawable = drawable;
                drawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            }
            invalidate();
        }

        public void bind(PaintTypeface paintTypeface) {
            setTypeface(paintTypeface.getTypeface());
            setText(paintTypeface.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Paint.Views.PaintTextOptionsView$AlignFramePair */
    /* loaded from: classes6.dex */
    public static final class AlignFramePair {
        private final int fromAlign;
        private final int fromFrame;
        private final int toAlign;
        private final int toFrame;

        private AlignFramePair(int i, int i2, int i3, int i4) {
            this.fromAlign = i;
            this.toAlign = i2;
            this.fromFrame = i3;
            this.toFrame = i4;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.customTypefacesLoaded);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.customTypefacesLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        String str;
        if (i != NotificationCenter.customTypefacesLoaded || (str = this.lastTypefaceKey) == null) {
            return;
        }
        setTypeface(str);
        this.lastTypefaceKey = null;
    }
}
