package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.Premium.GLIcon.GLIconRenderer;
import org.telegram.p043ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.p043ui.Components.Premium.StarParticlesView;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.HeaderCell */
/* loaded from: classes6.dex */
public class HeaderCell extends FrameLayout {
    private final GLIconTextureView iconTextureView;
    private final LinearLayout linearLayout;
    private LinkSpanDrawable.LinkCollector links;
    private final Theme.ResourcesProvider resourcesProvider;
    private final StarParticlesView starParticlesView;
    private final LinkSpanDrawable.LinksTextView subtitleView;
    private final TextView titleView;

    public HeaderCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        LinearLayout linearLayout = new LinearLayout(context);
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(1);
        GLIconTextureView gLIconTextureView = new GLIconTextureView(this, context, 1) { // from class: org.telegram.ui.Components.Premium.boosts.cells.HeaderCell.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.Premium.GLIcon.GLIconTextureView, android.view.TextureView, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                setPaused(false);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.Premium.GLIcon.GLIconTextureView, android.view.View
            public void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                setPaused(true);
            }
        };
        this.iconTextureView = gLIconTextureView;
        Bitmap createBitmap = Bitmap.createBitmap(50, 50, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        int i = Theme.key_premiumGradient2;
        canvas.drawColor(ColorUtils.blendARGB(Theme.getColor(i, resourcesProvider), Theme.getColor(Theme.key_dialogBackground, resourcesProvider), 0.5f));
        gLIconTextureView.setBackgroundBitmap(createBitmap);
        GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
        gLIconRenderer.colorKey1 = i;
        gLIconRenderer.colorKey2 = Theme.key_premiumGradient1;
        gLIconRenderer.updateColors();
        linearLayout.addView(gLIconTextureView, LayoutHelper.createLinear(160, 160, 1));
        StarParticlesView starParticlesView = new StarParticlesView(context) { // from class: org.telegram.ui.Components.Premium.boosts.cells.HeaderCell.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.Premium.StarParticlesView, android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                this.drawable.rect2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight() - AndroidUtilities.m104dp(52));
            }

            @Override // android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                HeaderCell.this.starParticlesView.setPaused(false);
            }

            @Override // android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                HeaderCell.this.starParticlesView.setPaused(true);
            }
        };
        this.starParticlesView = starParticlesView;
        StarParticlesView.Drawable drawable = starParticlesView.drawable;
        drawable.useGradient = true;
        drawable.useBlur = false;
        drawable.forceMaxAlpha = true;
        drawable.checkBounds = true;
        drawable.init();
        gLIconTextureView.setStarParticlesView(starParticlesView);
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 22.0f);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setGravity(1);
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 1, 24, -8, 24, 0));
        LinkSpanDrawable.LinkCollector linkCollector = new LinkSpanDrawable.LinkCollector(this);
        this.links = linkCollector;
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, linkCollector, resourcesProvider);
        this.subtitleView = linksTextView;
        linksTextView.setTextSize(1, 15.0f);
        linksTextView.setGravity(17);
        linksTextView.setTextColor(Theme.getColor(i2, resourcesProvider));
        linksTextView.setMovementMethod(LinkMovementMethod.getInstance());
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, resourcesProvider));
        linksTextView.setImportantForAccessibility(2);
        linearLayout.addView(linksTextView, LayoutHelper.createFrame(-1, -2, 17, 24, 8, 24, 18));
        setClipChildren(false);
        addView(starParticlesView, LayoutHelper.createFrame(-1, 234, 48));
        addView(linearLayout);
        setWillNotDraw(false);
    }

    public void setBoostViaGifsText() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.Components.Premium.boosts.cells.HeaderCell.3
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    float m104dp = AndroidUtilities.m104dp(12);
                    outline.setRoundRect(0, 0, view.getWidth(), (int) (view.getHeight() + m104dp), m104dp);
                }
            });
            setClipToOutline(true);
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        marginLayoutParams.topMargin = -AndroidUtilities.m104dp(6);
        setLayoutParams(marginLayoutParams);
        setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider));
        this.titleView.setText(LocaleController.formatString("BoostingBoostsViaGifts", C3632R.string.BoostingBoostsViaGifts, new Object[0]));
        this.subtitleView.setText(LocaleController.formatString("BoostingGetMoreBoost", C3632R.string.BoostingGetMoreBoost, new Object[0]));
        this.subtitleView.setTextColor(Theme.getColor(Theme.key_dialogTextGray3, this.resourcesProvider));
    }

    public void setUsedGiftLinkText() {
        this.titleView.setText(LocaleController.formatString("BoostingUsedGiftLink", C3632R.string.BoostingUsedGiftLink, new Object[0]));
        this.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingLinkUsed", C3632R.string.BoostingLinkUsed, new Object[0])));
    }

    public void setGiftLinkText() {
        this.titleView.setText(LocaleController.formatString("BoostingGiftLink", C3632R.string.BoostingGiftLink, new Object[0]));
        this.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingLinkAllows", C3632R.string.BoostingLinkAllows, new Object[0])));
    }

    public void setUnclaimedText() {
        this.titleView.setText(LocaleController.formatString("BoostingGiftLink", C3632R.string.BoostingGiftLink, new Object[0]));
        this.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingLinkAllowsAnyone", C3632R.string.BoostingLinkAllowsAnyone, new Object[0])));
    }

    public void setGiftLinkToUserText(long j, final Utilities.Callback<TLObject> callback) {
        this.titleView.setText(LocaleController.formatString("BoostingGiftLink", C3632R.string.BoostingGiftLink, new Object[0]));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        try {
            String string = LocaleController.getString("BoostingLinkAllowsToUser", C3632R.string.BoostingLinkAllowsToUser);
            String substring = string.substring(0, string.indexOf("**%1$s**") + 8);
            String substring2 = string.substring(string.indexOf("**%1$s**") + 8);
            final TLRPC$User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(j));
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) "**");
            spannableStringBuilder2.append(Emoji.replaceEmoji((CharSequence) UserObject.getUserName(user), this.subtitleView.getPaint().getFontMetricsInt(), AndroidUtilities.m104dp(12), false));
            spannableStringBuilder2.append((CharSequence) "**");
            SpannableStringBuilder replaceSingleTag = AndroidUtilities.replaceSingleTag(substring.toString().replace("**%1$s**", spannableStringBuilder2), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.cells.HeaderCell$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(user);
                }
            }, this.resourcesProvider);
            SpannableStringBuilder replaceTags = AndroidUtilities.replaceTags(substring2.toString());
            spannableStringBuilder.append((CharSequence) replaceSingleTag);
            spannableStringBuilder.append((CharSequence) replaceTags);
        } catch (Exception e) {
            FileLog.m99e(e);
        }
        this.subtitleView.setText(spannableStringBuilder);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        float top = this.iconTextureView.getTop() + (this.iconTextureView.getMeasuredHeight() / 2.0f);
        StarParticlesView starParticlesView = this.starParticlesView;
        starParticlesView.setTranslationY(top - (starParticlesView.getMeasuredHeight() / 2.0f));
    }

    public void setPaused(boolean z) {
        this.iconTextureView.setPaused(z);
        this.starParticlesView.setPaused(z);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.links != null) {
            canvas.save();
            canvas.translate(this.subtitleView.getLeft(), this.subtitleView.getTop());
            if (this.links.draw(canvas)) {
                invalidate();
            }
            canvas.restore();
        }
    }
}
