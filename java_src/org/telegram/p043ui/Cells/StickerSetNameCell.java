package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.ColorSpanUnderline;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.Cells.StickerSetNameCell */
/* loaded from: classes5.dex */
public class StickerSetNameCell extends FrameLayout {
    private ImageView buttonView;
    private boolean empty;
    private boolean isEmoji;
    public int position;
    private final Theme.ResourcesProvider resourcesProvider;
    private CharSequence stickerSetName;
    private int stickerSetNameSearchIndex;
    private int stickerSetNameSearchLength;
    private TextView textView;
    private CharSequence url;
    private int urlSearchLength;
    private TextView urlTextView;

    public StickerSetNameCell(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, z, false, resourcesProvider);
    }

    public StickerSetNameCell(Context context, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        FrameLayout.LayoutParams createFrame;
        FrameLayout.LayoutParams createFrame2;
        FrameLayout.LayoutParams createFrame3;
        this.resourcesProvider = resourcesProvider;
        this.isEmoji = z;
        TextView textView = new TextView(context);
        this.textView = textView;
        int i = Theme.key_chat_emojiPanelStickerSetName;
        textView.setTextColor(getThemedColor(i));
        this.textView.setTextSize(1, 15.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        this.textView.setSingleLine(true);
        if (z) {
            this.textView.setGravity(17);
            if (Build.VERSION.SDK_INT >= 17) {
                this.textView.setTextAlignment(4);
            }
        }
        if (z2) {
            createFrame = LayoutHelper.createFrameRelatively(-2.0f, -2.0f, 8388659, z ? 5.0f : 15.0f, 5.0f, z ? 15.0f : 25.0f, BitmapDescriptorFactory.HUE_RED);
        } else {
            createFrame = LayoutHelper.createFrame(-2, -2, 51, z ? 5 : 15, 5, z ? 15 : 25, 0);
        }
        addView(this.textView, createFrame);
        TextView textView2 = new TextView(context);
        this.urlTextView = textView2;
        textView2.setTextColor(getThemedColor(i));
        this.urlTextView.setTextSize(1, 12.0f);
        this.urlTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.urlTextView.setSingleLine(true);
        this.urlTextView.setVisibility(4);
        if (z2) {
            createFrame2 = LayoutHelper.createFrameRelatively(-2.0f, -2.0f, 8388661, 12.0f, 6.0f, 17.0f, BitmapDescriptorFactory.HUE_RED);
        } else {
            createFrame2 = LayoutHelper.createFrame(-2, -2, 53, 12, 6, 17, 0);
        }
        addView(this.urlTextView, createFrame2);
        ImageView imageView = new ImageView(context);
        this.buttonView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.buttonView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_emojiPanelStickerSetNameIcon), PorterDuff.Mode.MULTIPLY));
        this.buttonView.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 3));
        if (z2) {
            createFrame3 = LayoutHelper.createFrameRelatively(24.0f, 24.0f, 8388661, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.isEmoji ? BitmapDescriptorFactory.HUE_RED : 10.0f, BitmapDescriptorFactory.HUE_RED);
        } else {
            createFrame3 = LayoutHelper.createFrame(24, 24, 53, 0, 0, this.isEmoji ? 0 : 10, 0);
        }
        this.buttonView.setTranslationY(AndroidUtilities.m107dp(4));
        addView(this.buttonView, createFrame3);
    }

    public void setUrl(CharSequence charSequence, int i) {
        this.url = charSequence;
        this.urlSearchLength = i;
        this.urlTextView.setVisibility(charSequence != null ? 0 : 8);
        updateUrlSearchSpan();
    }

    private void updateUrlSearchSpan() {
        if (this.url != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.url);
            try {
                spannableStringBuilder.setSpan(new ColorSpanUnderline(getThemedColor(Theme.key_chat_emojiPanelStickerSetNameHighlight)), 0, this.urlSearchLength, 33);
                spannableStringBuilder.setSpan(new ColorSpanUnderline(getThemedColor(Theme.key_chat_emojiPanelStickerSetName)), this.urlSearchLength, this.url.length(), 33);
            } catch (Exception unused) {
            }
            this.urlTextView.setText(spannableStringBuilder);
        }
    }

    public void setText(CharSequence charSequence, int i) {
        setText(charSequence, i, null, 0, 0);
    }

    public void setText(CharSequence charSequence, int i, CharSequence charSequence2) {
        setText(charSequence, i, charSequence2, 0, 0);
    }

    public void setTitleColor(int i) {
        this.textView.setTextColor(i);
    }

    public void setText(CharSequence charSequence, int i, int i2, int i3) {
        setText(charSequence, i, null, i2, i3);
    }

    public void setText(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3) {
        this.stickerSetName = charSequence;
        this.stickerSetNameSearchIndex = i2;
        this.stickerSetNameSearchLength = i3;
        if (charSequence == null) {
            this.empty = true;
            this.textView.setText("");
            this.buttonView.setVisibility(4);
            return;
        }
        this.empty = false;
        if (i3 != 0) {
            updateTextSearchSpan();
        } else {
            TextView textView = this.textView;
            textView.setText(Emoji.replaceEmoji(charSequence, textView.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(14), false));
        }
        if (i != 0) {
            this.buttonView.setImageResource(i);
            this.buttonView.setContentDescription(charSequence2);
            this.buttonView.setVisibility(0);
            return;
        }
        this.buttonView.setVisibility(4);
    }

    private void updateTextSearchSpan() {
        if (this.stickerSetName == null || this.stickerSetNameSearchLength <= 0) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.stickerSetName);
        try {
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(getThemedColor(Theme.key_chat_emojiPanelStickerSetNameHighlight));
            int i = this.stickerSetNameSearchIndex;
            spannableStringBuilder.setSpan(foregroundColorSpan, i, this.stickerSetNameSearchLength + i, 33);
        } catch (Exception unused) {
        }
        TextView textView = this.textView;
        textView.setText(Emoji.replaceEmoji((CharSequence) spannableStringBuilder, textView.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(14), false));
    }

    public void setOnIconClickListener(View.OnClickListener onClickListener) {
        this.buttonView.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void invalidate() {
        this.textView.invalidate();
        super.invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.empty) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(1, 1073741824));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(27), 1073741824));
        }
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        if (view == this.urlTextView) {
            i2 += this.textView.getMeasuredWidth() + AndroidUtilities.m107dp(16);
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    public void updateColors() {
        updateTextSearchSpan();
        updateUrlSearchSpan();
    }

    public static void createThemeDescriptions(List<ThemeDescription> list, RecyclerListView recyclerListView, ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate) {
        int i = Theme.key_chat_emojiPanelStickerSetName;
        list.add(new ThemeDescription(recyclerListView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{StickerSetNameCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        list.add(new ThemeDescription(recyclerListView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{StickerSetNameCell.class}, new String[]{"urlTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        list.add(new ThemeDescription(recyclerListView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{StickerSetNameCell.class}, new String[]{"buttonView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chat_emojiPanelStickerSetNameIcon));
        list.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_chat_emojiPanelStickerSetNameHighlight));
        list.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, i));
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public TextView getTextView() {
        return this.textView;
    }
}
