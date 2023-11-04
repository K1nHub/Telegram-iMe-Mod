package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.TextStyleSpan;
import org.telegram.p043ui.Components.spoilers.SpoilersTextView;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.LinkCell */
/* loaded from: classes6.dex */
public class LinkCell extends FrameLayout {
    private ImageView imageView;
    private String link;
    private FrameLayout linkContainer;
    private SpoilersTextView linkView;
    private String slug;

    public LinkCell(Context context, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.linkContainer = new FrameLayout(context);
        SpoilersTextView spoilersTextView = new SpoilersTextView(context);
        this.linkView = spoilersTextView;
        spoilersTextView.setPadding(AndroidUtilities.m104dp(18), AndroidUtilities.m104dp(13), AndroidUtilities.m104dp(50), AndroidUtilities.m104dp(13));
        this.linkView.setTextSize(1, 16.0f);
        this.linkView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        this.linkView.setSingleLine(true);
        this.linkView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        SpoilersTextView spoilersTextView2 = this.linkView;
        spoilersTextView2.allowClickSpoilers = false;
        this.linkContainer.addView(spoilersTextView2, LayoutHelper.createFrame(-2, -2, 17));
        FrameLayout frameLayout = this.linkContainer;
        int m104dp = AndroidUtilities.m104dp(8);
        int color = Theme.getColor(Theme.key_graySection, resourcesProvider);
        int i = Theme.key_listSelector;
        frameLayout.setBackground(Theme.createSimpleSelectorRoundRectDrawable(m104dp, color, ColorUtils.setAlphaComponent(Theme.getColor(i, resourcesProvider), 76)));
        addView(this.linkContainer, LayoutHelper.createFrame(-1, -2, 0, 14, 0, 14, 0));
        this.linkContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.LinkCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkCell.this.lambda$new$0(view);
            }
        });
        ImageView imageView = new ImageView(getContext());
        this.imageView = imageView;
        imageView.setImageResource(C3634R.C3636drawable.msg_copy);
        this.imageView.setColorFilter(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        this.imageView.setPadding(AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8));
        this.imageView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m104dp(20), 0, ColorUtils.setAlphaComponent(Theme.getColor(i, resourcesProvider), 76)));
        addView(this.imageView, LayoutHelper.createFrame(40, 40, 21, 15, 0, 15, 0));
        this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.LinkCell$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkCell.this.lambda$new$1(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        AndroidUtilities.addToClipboard(this.link);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        AndroidUtilities.addToClipboard(this.link);
    }

    public void setSlug(String str) {
        this.slug = str;
        this.link = "https://t.me/giftcode/" + str;
        SpoilersTextView spoilersTextView = this.linkView;
        spoilersTextView.setText("t.me/giftcode/" + str);
    }

    public void hideSlug(final Runnable runnable) {
        this.imageView.setVisibility(4);
        this.linkView.setPadding(AndroidUtilities.m104dp(18), AndroidUtilities.m104dp(14), AndroidUtilities.m104dp(14), AndroidUtilities.m104dp(18));
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags |= 256;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("t.me/giftcode/" + this.slug);
        if (this.slug == null) {
            spannableStringBuilder.append((CharSequence) "1234567891011123654897566536223");
        }
        spannableStringBuilder.setSpan(new TextStyleSpan(textStyleRun), 0, spannableStringBuilder.length(), 33);
        this.linkView.setText(spannableStringBuilder);
        this.linkContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.LinkCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
    }
}
