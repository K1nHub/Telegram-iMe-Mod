package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadioButton;
import org.telegram.p043ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.BaseCell */
/* loaded from: classes6.dex */
public abstract class BaseCell extends FrameLayout {
    protected final AvatarDrawable avatarDrawable;
    protected View backgroundView;
    protected final Paint dividerPaint;
    protected final BackupImageView imageView;
    protected boolean needDivider;
    protected final RadioButton radioButton;
    protected final Theme.ResourcesProvider resourcesProvider;
    protected final SimpleTextView subtitleTextView;
    protected final SimpleTextView titleTextView;

    protected int dividerPadding() {
        return 0;
    }

    protected int getFullHeight() {
        return 56;
    }

    protected abstract boolean needCheck();

    public BaseCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        this.avatarDrawable = avatarDrawable;
        this.dividerPaint = new Paint(1);
        this.resourcesProvider = resourcesProvider;
        View view = new View(context);
        this.backgroundView = view;
        addView(view, LayoutHelper.createLinear(-1, -1));
        this.backgroundView.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
        avatarDrawable.setRoundRadius(AndroidUtilities.m104dp(40));
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m104dp(20));
        addView(backupImageView);
        SimpleTextView simpleTextView = new SimpleTextView(this, context) { // from class: org.telegram.ui.Components.Premium.boosts.cells.BaseCell.1
            @Override // org.telegram.p043ui.ActionBar.SimpleTextView
            public boolean setText(CharSequence charSequence) {
                return super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), AndroidUtilities.m104dp(15), false));
            }
        };
        this.titleTextView = simpleTextView;
        NotificationCenter.listenEmojiLoading(simpleTextView);
        NotificationCenter.listenEmojiLoading(backupImageView);
        simpleTextView.setTextSize(16);
        int i = Theme.key_dialogTextBlack;
        simpleTextView.setTextColor(Theme.getColor(i, resourcesProvider));
        simpleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        addView(simpleTextView);
        SimpleTextView simpleTextView2 = new SimpleTextView(context);
        this.subtitleTextView = simpleTextView2;
        simpleTextView2.setTextSize(14);
        simpleTextView2.setTextColor(Theme.getColor(i, resourcesProvider));
        simpleTextView2.setGravity(LocaleController.isRTL ? 5 : 3);
        addView(simpleTextView2);
        RadioButton radioButton = new RadioButton(context);
        this.radioButton = radioButton;
        radioButton.setSize(AndroidUtilities.m104dp(20));
        radioButton.setColor(Theme.getColor(Theme.key_checkboxDisabled, resourcesProvider), Theme.getColor(Theme.key_dialogRadioBackgroundChecked, resourcesProvider));
        addView(radioButton);
        updateLayouts();
        if (needCheck()) {
            return;
        }
        radioButton.setVisibility(8);
    }

    protected void updateLayouts() {
        this.imageView.setLayoutParams(LayoutHelper.createFrame(40, 40, (LocaleController.isRTL ? 5 : 3) | 16, needCheck() ? 53 : 16, 0, needCheck() ? 53 : 16, 0));
        SimpleTextView simpleTextView = this.titleTextView;
        boolean z = LocaleController.isRTL;
        simpleTextView.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z ? 5 : 3) | 16, z ? 20 : needCheck() ? 105 : 70, 0, LocaleController.isRTL ? needCheck() ? 105 : 70 : 20, 0));
        SimpleTextView simpleTextView2 = this.subtitleTextView;
        boolean z2 = LocaleController.isRTL;
        simpleTextView2.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 16, z2 ? 20 : needCheck() ? 105 : 70, 0, LocaleController.isRTL ? needCheck() ? 105 : 70 : 20, 0));
        RadioButton radioButton = this.radioButton;
        boolean z3 = LocaleController.isRTL;
        radioButton.setLayoutParams(LayoutHelper.createFrame(22, 22, (z3 ? 5 : 3) | 16, z3 ? 15 : 20, 0, z3 ? 20 : 15, 0));
    }

    public void setChecked(boolean z, boolean z2) {
        if (this.radioButton.getVisibility() == 0) {
            this.radioButton.setChecked(z, z2);
        }
    }

    public void markChecked(RecyclerListView recyclerListView) {
        if (needCheck()) {
            for (int i = 0; i < recyclerListView.getChildCount(); i++) {
                View childAt = recyclerListView.getChildAt(i);
                if (childAt.getClass().isInstance(this)) {
                    ((BaseCell) childAt).setChecked(childAt == this, true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CharSequence withArrow(CharSequence charSequence) {
        SpannableString spannableString = new SpannableString(">");
        Drawable drawable = getContext().getResources().getDrawable(C3632R.C3634drawable.attach_arrow_right);
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(drawable, 2);
        drawable.setBounds(0, AndroidUtilities.m104dp(1), AndroidUtilities.m104dp(11), AndroidUtilities.m104dp(12));
        spannableString.setSpan(coloredImageSpan, 0, spannableString.length(), 33);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(charSequence).append((CharSequence) " ").append((CharSequence) spannableString);
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSubtitle(CharSequence charSequence) {
        if (charSequence == null) {
            this.titleTextView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.subtitleTextView.setVisibility(8);
        } else {
            this.titleTextView.setTranslationY(AndroidUtilities.m104dp(-9));
            this.subtitleTextView.setTranslationY(AndroidUtilities.m104dp(12));
            this.subtitleTextView.setText(charSequence);
            this.subtitleTextView.setVisibility(0);
        }
        if (this.imageView.getVisibility() == 8) {
            if (LocaleController.isRTL) {
                this.titleTextView.setTranslationX(AndroidUtilities.m104dp(40));
                this.subtitleTextView.setTranslationX(AndroidUtilities.m104dp(40));
                return;
            }
            this.titleTextView.setTranslationX(AndroidUtilities.m104dp(-40));
            this.subtitleTextView.setTranslationX(AndroidUtilities.m104dp(-40));
        }
    }

    public void setDivider(boolean z) {
        this.needDivider = z;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(getFullHeight()), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.needDivider) {
            this.dividerPaint.setColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
            int i = needCheck() ? 105 : 70;
            if (this.imageView.getVisibility() == 8) {
                i -= 40;
            }
            int dividerPadding = i + dividerPadding();
            if (LocaleController.isRTL) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, getHeight() - 1, getWidth() - AndroidUtilities.m104dp(dividerPadding), getHeight(), this.dividerPaint);
            } else {
                canvas.drawRect(AndroidUtilities.m104dp(dividerPadding), getHeight() - 1, getWidth(), getHeight(), this.dividerPaint);
            }
        }
    }
}
