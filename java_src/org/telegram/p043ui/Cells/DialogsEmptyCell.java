package org.telegram.p043ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import androidx.core.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.p030ui.dialogs.EmptyCellType;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BlurredRecyclerView;
import org.telegram.p043ui.Components.Easings;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.TextViewSwitcher;
import org.telegram.tgnet.TLRPC$RecentMeUrl;
/* renamed from: org.telegram.ui.Cells.DialogsEmptyCell */
/* loaded from: classes5.dex */
public class DialogsEmptyCell extends LinearLayout {
    private int currentAccount;
    private int currentType;
    private RLottieImageView imageView;
    private Runnable onUtyanAnimationEndListener;
    private Consumer<Float> onUtyanAnimationUpdateListener;
    private int prevIcon;
    private TextViewSwitcher subtitleView;
    private TextView titleView;
    private boolean utyanAnimationTriggered;
    private ValueAnimator utyanAnimator;
    private float utyanCollapseProgress;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$0(View view, MotionEvent motionEvent) {
        return true;
    }

    public DialogsEmptyCell(final Context context) {
        super(context);
        this.currentType = -1;
        this.currentAccount = UserConfig.selectedAccount;
        setGravity(17);
        setOrientation(1);
        setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Cells.DialogsEmptyCell$$ExternalSyntheticLambda3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean lambda$new$0;
                lambda$new$0 = DialogsEmptyCell.lambda$new$0(view, motionEvent);
                return lambda$new$0;
            }
        });
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        addView(this.imageView, LayoutHelper.createFrame(100, 100, 17, 52, 4, 52, 0));
        this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.DialogsEmptyCell$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsEmptyCell.this.lambda$new$1(view);
            }
        });
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_chats_nameMessage_threeLines));
        this.titleView.setTextSize(1, 20.0f);
        this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleView.setGravity(17);
        addView(this.titleView, LayoutHelper.createFrame(-1, -2, 51, 52, 10, 52, 0));
        TextViewSwitcher textViewSwitcher = new TextViewSwitcher(context);
        this.subtitleView = textViewSwitcher;
        textViewSwitcher.setFactory(new ViewSwitcher.ViewFactory() { // from class: org.telegram.ui.Cells.DialogsEmptyCell$$ExternalSyntheticLambda4
            @Override // android.widget.ViewSwitcher.ViewFactory
            public final View makeView() {
                View lambda$new$2;
                lambda$new$2 = DialogsEmptyCell.lambda$new$2(context);
                return lambda$new$2;
            }
        });
        this.subtitleView.setInAnimation(context, C3632R.anim.alpha_in);
        this.subtitleView.setOutAnimation(context, C3632R.anim.alpha_out);
        addView(this.subtitleView, LayoutHelper.createFrame(-1, -2, 51, 52, 7, 52, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        if (this.imageView.isPlaying()) {
            return;
        }
        this.imageView.setProgress(BitmapDescriptorFactory.HUE_RED);
        this.imageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ View lambda$new$2(Context context) {
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(Theme.key_chats_message));
        textView.setTextSize(1, 14.0f);
        textView.setGravity(17);
        textView.setLineSpacing(AndroidUtilities.m107dp(2), 1.0f);
        return textView;
    }

    public void setOnUtyanAnimationEndListener(Runnable runnable) {
        this.onUtyanAnimationEndListener = runnable;
    }

    public void setOnUtyanAnimationUpdateListener(Consumer<Float> consumer) {
        this.onUtyanAnimationUpdateListener = consumer;
    }

    public void setType(int i, boolean z) {
        int i2;
        String string;
        if (this.currentType == i) {
            return;
        }
        this.currentType = i;
        if (i >= 100) {
            EmptyCellType emptyCellType = EmptyCellType.values()[i - 100];
            i2 = emptyCellType.getIconResId();
            string = LocaleController.getInternalString(emptyCellType.getSubtitleResId());
            this.titleView.setText(LocaleController.getInternalString(emptyCellType.getTitleResId()));
        } else if (i == 0 || i == 1) {
            i2 = C3632R.raw.utyan_newborn;
            string = LocaleController.getString("NoChatsHelp", C3632R.string.NoChatsHelp);
            this.titleView.setText(LocaleController.getString("NoChats", C3632R.string.NoChats));
        } else if (i == 2) {
            this.imageView.setAutoRepeat(false);
            int i3 = C3632R.raw.filter_no_chats;
            if (z) {
                this.titleView.setText(LocaleController.getString("FilterNoChatsToForward", C3632R.string.FilterNoChatsToForward));
                string = LocaleController.getString("FilterNoChatsToForwardInfo", C3632R.string.FilterNoChatsToForwardInfo);
            } else {
                this.titleView.setText(LocaleController.getString("FilterNoChatsToDisplay", C3632R.string.FilterNoChatsToDisplay));
                string = LocaleController.getString("FilterNoChatsToDisplayInfo", C3632R.string.FilterNoChatsToDisplayInfo);
            }
            i2 = i3;
        } else {
            this.imageView.setAutoRepeat(true);
            i2 = C3632R.raw.filter_new;
            string = LocaleController.getString("FilterAddingChatsInfo", C3632R.string.FilterAddingChatsInfo);
            this.titleView.setText(LocaleController.getString("FilterAddingChats", C3632R.string.FilterAddingChats));
        }
        if (i2 != 0) {
            this.imageView.setVisibility(0);
            if (this.currentType == 1) {
                if (isUtyanAnimationTriggered()) {
                    this.utyanCollapseProgress = 1.0f;
                    String string2 = LocaleController.getString("NoChatsContactsHelp", C3632R.string.NoChatsContactsHelp);
                    if (AndroidUtilities.isTablet() && !AndroidUtilities.isSmallTablet()) {
                        string2 = string2.replace('\n', ' ');
                    }
                    this.subtitleView.setText(string2, true);
                    requestLayout();
                } else {
                    startUtyanCollapseAnimation(true);
                }
            }
            if (this.prevIcon != i2) {
                this.imageView.setAnimation(i2, 100, 100);
                this.imageView.playAnimation();
                this.prevIcon = i2;
            }
        } else {
            this.imageView.setVisibility(8);
        }
        if (AndroidUtilities.isTablet() && !AndroidUtilities.isSmallTablet()) {
            string = string.replace('\n', ' ');
        }
        this.subtitleView.setText(string, false);
    }

    public boolean isUtyanAnimationTriggered() {
        return this.utyanAnimationTriggered;
    }

    public void startUtyanExpandAnimation() {
        ValueAnimator valueAnimator = this.utyanAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.utyanAnimationTriggered = false;
        ValueAnimator duration = ValueAnimator.ofFloat(this.utyanCollapseProgress, BitmapDescriptorFactory.HUE_RED).setDuration(250L);
        this.utyanAnimator = duration;
        duration.setInterpolator(Easings.easeOutQuad);
        this.utyanAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogsEmptyCell$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DialogsEmptyCell.this.lambda$startUtyanExpandAnimation$3(valueAnimator2);
            }
        });
        this.utyanAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogsEmptyCell.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (DialogsEmptyCell.this.onUtyanAnimationEndListener != null) {
                    DialogsEmptyCell.this.onUtyanAnimationEndListener.run();
                }
                if (animator == DialogsEmptyCell.this.utyanAnimator) {
                    DialogsEmptyCell.this.utyanAnimator = null;
                }
            }
        });
        this.utyanAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startUtyanExpandAnimation$3(ValueAnimator valueAnimator) {
        this.utyanCollapseProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        requestLayout();
        Consumer<Float> consumer = this.onUtyanAnimationUpdateListener;
        if (consumer != null) {
            consumer.accept(Float.valueOf(this.utyanCollapseProgress));
        }
    }

    public void startUtyanCollapseAnimation(boolean z) {
        ValueAnimator valueAnimator = this.utyanAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.utyanAnimationTriggered = true;
        if (z) {
            String string = LocaleController.getString("NoChatsContactsHelp", C3632R.string.NoChatsContactsHelp);
            if (AndroidUtilities.isTablet() && !AndroidUtilities.isSmallTablet()) {
                string = string.replace('\n', ' ');
            }
            this.subtitleView.setText(string, true);
        }
        ValueAnimator duration = ValueAnimator.ofFloat(this.utyanCollapseProgress, 1.0f).setDuration(250L);
        this.utyanAnimator = duration;
        duration.setInterpolator(Easings.easeOutQuad);
        this.utyanAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogsEmptyCell$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DialogsEmptyCell.this.lambda$startUtyanCollapseAnimation$4(valueAnimator2);
            }
        });
        this.utyanAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogsEmptyCell.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (DialogsEmptyCell.this.onUtyanAnimationEndListener != null) {
                    DialogsEmptyCell.this.onUtyanAnimationEndListener.run();
                }
                if (animator == DialogsEmptyCell.this.utyanAnimator) {
                    DialogsEmptyCell.this.utyanAnimator = null;
                }
            }
        });
        this.utyanAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startUtyanCollapseAnimation$4(ValueAnimator valueAnimator) {
        this.utyanCollapseProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        requestLayout();
        Consumer<Float> consumer = this.onUtyanAnimationUpdateListener;
        if (consumer != null) {
            consumer.accept(Float.valueOf(this.utyanCollapseProgress));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateLayout();
    }

    @Override // android.view.View
    public void offsetTopAndBottom(int i) {
        super.offsetTopAndBottom(i);
        updateLayout();
    }

    public void updateLayout() {
        int i;
        int i2 = 0;
        if ((getParent() instanceof View) && (((i = this.currentType) == 2 || i == 3) && ((View) getParent()).getPaddingTop() != 0)) {
            i2 = 0 - (getTop() / 2);
        }
        int i3 = this.currentType;
        if (i3 == 0 || i3 == 1) {
            i2 = (int) (i2 - (((int) (C3704ActionBar.getCurrentActionBarHeight() / 2.0f)) * (1.0f - this.utyanCollapseProgress)));
        }
        float f = i2;
        this.imageView.setTranslationY(f);
        this.titleView.setTranslationY(f);
        this.subtitleView.setTranslationY(f);
    }

    private int measureUtyanHeight(int i) {
        int size;
        if (getParent() instanceof View) {
            View view = (View) getParent();
            size = view.getMeasuredHeight();
            if (view.getPaddingTop() != 0 && Build.VERSION.SDK_INT >= 21) {
                size -= AndroidUtilities.statusBarHeight;
            }
        } else {
            size = View.MeasureSpec.getSize(i);
        }
        if (size == 0) {
            size = (AndroidUtilities.displaySize.y - C3704ActionBar.getCurrentActionBarHeight()) - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0);
        }
        if (getParent() instanceof BlurredRecyclerView) {
            size -= ((BlurredRecyclerView) getParent()).blurTopPadding;
        }
        return (int) (size + ((AndroidUtilities.m107dp(320) - size) * this.utyanCollapseProgress));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size;
        int i3 = this.currentType;
        if (i3 == 0 || i3 == 1) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(measureUtyanHeight(i2), 1073741824));
        } else if (i3 == 2 || i3 == 3) {
            if (getParent() instanceof View) {
                View view = (View) getParent();
                size = view.getMeasuredHeight();
                if (view.getPaddingTop() != 0 && Build.VERSION.SDK_INT >= 21) {
                    size -= AndroidUtilities.statusBarHeight;
                }
            } else {
                size = View.MeasureSpec.getSize(i2);
            }
            if (size == 0) {
                size = (AndroidUtilities.displaySize.y - C3704ActionBar.getCurrentActionBarHeight()) - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0);
            }
            if (getParent() instanceof BlurredRecyclerView) {
                size -= ((BlurredRecyclerView) getParent()).blurTopPadding;
            }
            ArrayList<TLRPC$RecentMeUrl> arrayList = MessagesController.getInstance(this.currentAccount).hintDialogs;
            if (!arrayList.isEmpty()) {
                size -= (((AndroidUtilities.m107dp(72) * arrayList.size()) + arrayList.size()) - 1) + AndroidUtilities.m107dp(50);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(size, 1073741824));
        } else {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(166), 1073741824));
        }
    }
}
