package org.telegram.p043ui.Components.Premium;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EmojiPacksAlert;
import org.telegram.p043ui.Components.FireworksOverlay;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.LoadingSpan;
import org.telegram.p043ui.Components.Premium.GLIcon.GLIconRenderer;
import org.telegram.p043ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.p043ui.Components.Premium.GiftPremiumBottomSheet;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.p043ui.Components.Premium.StarParticlesView;
import org.telegram.p043ui.Components.Premium.boosts.cells.TextInfoCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.PremiumFeatureCell;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet */
/* loaded from: classes6.dex */
public class PremiumPreviewBottomSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    public Integer accentColor;
    protected int additionEndRow;
    protected int additionStartRow;
    boolean animateConfetti;
    boolean animateConfettiWithStars;
    FrameLayout bulletinContainer;
    FrameLayout buttonContainer;
    protected int buttonRow;
    int[] coords;
    int currentAccount;
    PremiumFeatureCell dummyCell;
    ValueAnimator enterAnimator;
    boolean enterTransitionInProgress;
    float enterTransitionProgress;
    protected int featuresEndRow;
    protected int featuresStartRow;
    FireworksOverlay fireworksOverlay;
    BaseFragment fragment;
    protected GiftPremiumBottomSheet.GiftTier giftTier;
    PremiumGradient.PremiumGradientTools gradientTools;
    protected int helpUsRow;
    ViewGroup iconContainer;
    GLIconTextureView iconTextureView;
    public boolean isEmojiStatus;
    boolean isOutboundGift;
    public View overrideTitleIcon;
    protected int paddingRow;
    protected ArrayList<PremiumPreviewFragment.PremiumFeatureData> premiumFeatures;
    protected int rowCount;
    protected int sectionRow;
    StarParticlesView starParticlesView;
    public float startEnterFromScale;
    public View startEnterFromView;
    public float startEnterFromX;
    public float startEnterFromX1;
    public float startEnterFromY;
    public float startEnterFromY1;
    public TLRPC$InputStickerSet statusStickerSet;
    protected TextView subtitleView;
    protected int termsRow;
    protected LinkSpanDrawable.LinksTextView[] titleView;
    private FrameLayout titleViewContainer;
    int totalGradientHeight;
    protected TLRPC$User user;

    protected void afterCellCreated(int i, View view) {
    }

    protected int getAdditionItemViewType(int i) {
        return 0;
    }

    protected boolean isAdditionViewClickable(int i) {
        return false;
    }

    protected boolean needDefaultPremiumBtn() {
        return true;
    }

    protected void onAdditionItemClicked(View view) {
    }

    protected void onBindAdditionCell(View view, int i) {
    }

    protected View onCreateAdditionCell(int i, Context context) {
        return null;
    }

    public PremiumPreviewBottomSheet(BaseFragment baseFragment, int i, TLRPC$User tLRPC$User, Theme.ResourcesProvider resourcesProvider) {
        this(baseFragment, i, tLRPC$User, null, resourcesProvider);
    }

    public PremiumPreviewBottomSheet(final BaseFragment baseFragment, final int i, TLRPC$User tLRPC$User, GiftPremiumBottomSheet.GiftTier giftTier, Theme.ResourcesProvider resourcesProvider) {
        super(baseFragment, false, false, false, resourcesProvider);
        this.premiumFeatures = new ArrayList<>();
        this.coords = new int[2];
        this.enterTransitionProgress = BitmapDescriptorFactory.HUE_RED;
        fixNavigationBar();
        this.fragment = baseFragment;
        this.topPadding = 0.26f;
        this.user = tLRPC$User;
        this.currentAccount = i;
        this.giftTier = giftTier;
        this.dummyCell = new PremiumFeatureCell(getContext());
        PremiumPreviewFragment.fillPremiumFeaturesList(this.premiumFeatures, i);
        if (this.giftTier != null || UserConfig.getInstance(i).isPremium()) {
            this.buttonContainer.setVisibility(8);
        }
        PremiumGradient.PremiumGradientTools premiumGradientTools = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, Theme.key_premiumGradient3, Theme.key_premiumGradient4);
        this.gradientTools = premiumGradientTools;
        premiumGradientTools.exactly = true;
        premiumGradientTools.f1915x1 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1917y1 = 1.0f;
        premiumGradientTools.f1916x2 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1918y2 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1913cx = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1914cy = BitmapDescriptorFactory.HUE_RED;
        updateRows();
        this.recyclerListView.setPadding(AndroidUtilities.m107dp(6), 0, AndroidUtilities.m107dp(6), 0);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$$ExternalSyntheticLambda7
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                PremiumPreviewBottomSheet.this.lambda$new$0(i, baseFragment, view, i2);
            }
        });
        MediaDataController.getInstance(i).preloadPremiumPreviewStickers();
        PremiumPreviewFragment.sentShowScreenStat("profile");
        FireworksOverlay fireworksOverlay = new FireworksOverlay(getContext());
        this.fireworksOverlay = fireworksOverlay;
        this.container.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.bulletinContainer = frameLayout;
        this.containerView.addView(frameLayout, LayoutHelper.createFrame(-1, 140, 87));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i, BaseFragment baseFragment, View view, int i2) {
        if (view instanceof PremiumFeatureCell) {
            PremiumFeatureCell premiumFeatureCell = (PremiumFeatureCell) view;
            PremiumPreviewFragment.sentShowFeaturePreview(i, premiumFeatureCell.data.type);
            showDialog(new PremiumFeatureBottomSheet(baseFragment, premiumFeatureCell.data.type, false));
        }
        onAdditionItemClicked(view);
    }

    protected void updateRows() {
        int i = this.rowCount;
        int i2 = i + 1;
        this.rowCount = i2;
        this.paddingRow = i;
        this.featuresStartRow = i2;
        int size = i2 + this.premiumFeatures.size();
        this.rowCount = size;
        this.featuresEndRow = size;
        this.rowCount = size + 1;
        this.sectionRow = size;
        if (UserConfig.getInstance(this.currentAccount).isPremium() || this.giftTier != null) {
            return;
        }
        int i3 = this.rowCount;
        this.rowCount = i3 + 1;
        this.buttonRow = i3;
    }

    public PremiumPreviewBottomSheet setOutboundGift(boolean z) {
        this.isOutboundGift = z;
        return this;
    }

    public PremiumPreviewBottomSheet setAnimateConfetti(boolean z) {
        this.animateConfetti = z;
        return this;
    }

    public PremiumPreviewBottomSheet setAnimateConfettiWithStars(boolean z) {
        this.animateConfettiWithStars = z;
        return this;
    }

    private void showDialog(Dialog dialog) {
        GLIconTextureView gLIconTextureView = this.iconTextureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setDialogVisible(true);
        }
        this.starParticlesView.setPaused(true);
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                PremiumPreviewBottomSheet.this.lambda$showDialog$1(dialogInterface);
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$1(DialogInterface dialogInterface) {
        GLIconTextureView gLIconTextureView = this.iconTextureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setDialogVisible(false);
        }
        this.starParticlesView.setPaused(false);
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    public void onViewCreated(FrameLayout frameLayout) {
        super.onViewCreated(frameLayout);
        this.currentAccount = UserConfig.selectedAccount;
        PremiumButtonView premiumButtonView = new PremiumButtonView(getContext(), false, this.resourcesProvider);
        premiumButtonView.setButton(PremiumPreviewFragment.getPremiumButtonText(this.currentAccount, null), new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PremiumPreviewBottomSheet.this.lambda$onViewCreated$2(view);
            }
        });
        this.buttonContainer = new FrameLayout(getContext());
        View view = new View(getContext());
        view.setBackgroundColor(getThemedColor(Theme.key_divider));
        this.buttonContainer.addView(view, LayoutHelper.createFrame(-1, 1));
        view.getLayoutParams().height = 1;
        AndroidUtilities.updateViewVisibilityAnimated(view, true, 1.0f, false);
        if (UserConfig.getInstance(this.currentAccount).isPremium() || !needDefaultPremiumBtn()) {
            return;
        }
        this.buttonContainer.addView(premiumButtonView, LayoutHelper.createFrame(-1, 48, 16, 16, 0, 16, 0));
        this.buttonContainer.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        frameLayout.addView(this.buttonContainer, LayoutHelper.createFrame(-1, 68, 80));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$2(View view) {
        PremiumPreviewFragment.sentPremiumButtonClick();
        PremiumPreviewFragment.buyPremium(this.fragment, "profile");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    public void onPreMeasure(int i, int i2) {
        super.onPreMeasure(i, i2);
        measureGradient(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        this.container.getLocationOnScreen(this.coords);
    }

    private void titleLoaded(CharSequence charSequence, boolean z) {
        LinkSpanDrawable.LinksTextView[] linksTextViewArr = this.titleView;
        if (linksTextViewArr == null) {
            return;
        }
        linksTextViewArr[1].setText(charSequence);
        if (this.titleView[1].getVisibility() != 0) {
            if (z) {
                this.titleView[1].setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.titleView[1].setVisibility(0);
                ViewPropertyAnimator alpha = this.titleView[1].animate().alpha(1.0f);
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
                alpha.setInterpolator(cubicBezierInterpolator).setDuration(200L).start();
                this.titleView[0].animate().alpha(BitmapDescriptorFactory.HUE_RED).setInterpolator(cubicBezierInterpolator).setDuration(200L).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        PremiumPreviewBottomSheet.this.lambda$titleLoaded$3();
                    }
                }).start();
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PremiumPreviewBottomSheet.this.lambda$titleLoaded$4(valueAnimator);
                    }
                });
                ofFloat.setInterpolator(cubicBezierInterpolator);
                ofFloat.setDuration(200L);
                ofFloat.start();
                return;
            }
            this.titleView[1].setAlpha(1.0f);
            this.titleView[1].setVisibility(0);
            this.titleView[0].setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.titleView[0].setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$titleLoaded$3() {
        this.titleView[0].setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$titleLoaded$4(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.titleViewContainer.getLayoutParams().height = AndroidUtilities.lerp(this.titleView[0].getHeight(), this.titleView[1].getHeight(), floatValue);
        this.titleViewContainer.requestLayout();
    }

    public void setTitle(boolean z) {
        TLRPC$Document tLRPC$Document;
        SpannableStringBuilder spannableStringBuilder;
        LinkSpanDrawable.LinksTextView[] linksTextViewArr = this.titleView;
        if (linksTextViewArr == null || this.subtitleView == null) {
            return;
        }
        if (this.statusStickerSet != null) {
            int i = C3632R.string.TelegramPremiumUserStatusDialogTitle;
            TLRPC$User tLRPC$User = this.user;
            String formatString = LocaleController.formatString(i, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name), "<STICKERSET>");
            Integer num = this.accentColor;
            CharSequence replaceSingleLink = AndroidUtilities.replaceSingleLink(formatString, num == null ? getThemedColor(Theme.key_windowBackgroundWhiteBlueButton) : num.intValue());
            try {
                replaceSingleLink = Emoji.replaceEmoji(replaceSingleLink, this.titleView[0].getPaint().getFontMetricsInt(), false);
            } catch (Exception unused) {
            }
            SpannableStringBuilder spannableStringBuilder2 = replaceSingleLink instanceof SpannableStringBuilder ? (SpannableStringBuilder) replaceSingleLink : new SpannableStringBuilder(replaceSingleLink);
            int indexOf = replaceSingleLink.toString().indexOf("<STICKERSET>");
            if (indexOf >= 0) {
                TLRPC$TL_messages_stickerSet stickerSet = MediaDataController.getInstance(this.currentAccount).getStickerSet(this.statusStickerSet, false);
                if (stickerSet == null || stickerSet.documents.isEmpty()) {
                    tLRPC$Document = null;
                } else {
                    tLRPC$Document = stickerSet.documents.get(0);
                    if (stickerSet.set != null) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= stickerSet.documents.size()) {
                                break;
                            } else if (stickerSet.documents.get(i2).f1610id == stickerSet.set.thumb_document_id) {
                                tLRPC$Document = stickerSet.documents.get(i2);
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                if (tLRPC$Document != null) {
                    spannableStringBuilder = new SpannableStringBuilder("x");
                    spannableStringBuilder.setSpan(new AnimatedEmojiSpan(tLRPC$Document, this.titleView[0].getPaint().getFontMetricsInt()), 0, spannableStringBuilder.length(), 33);
                    if (stickerSet != null && stickerSet.set != null) {
                        spannableStringBuilder.append((CharSequence) " ").append((CharSequence) stickerSet.set.title);
                    }
                } else {
                    spannableStringBuilder = new SpannableStringBuilder("xxxxxx");
                    spannableStringBuilder.setSpan(new LoadingSpan(this.titleView[0], AndroidUtilities.m107dp(100)), 0, spannableStringBuilder.length(), 33);
                }
                spannableStringBuilder2.replace(indexOf, indexOf + 12, (CharSequence) spannableStringBuilder);
                spannableStringBuilder2.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet.1
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View view) {
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint textPaint) {
                        super.updateDrawState(textPaint);
                        textPaint.setUnderlineText(false);
                        Integer num2 = PremiumPreviewBottomSheet.this.accentColor;
                        if (num2 != null) {
                            textPaint.setColor(num2.intValue());
                        }
                    }
                }, indexOf, spannableStringBuilder.length() + indexOf, 33);
                this.titleView[1].setOnLinkPressListener(new LinkSpanDrawable.LinksTextView.OnLinkPress() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$$ExternalSyntheticLambda6
                    @Override // org.telegram.p043ui.Components.LinkSpanDrawable.LinksTextView.OnLinkPress
                    public final void run(ClickableSpan clickableSpan) {
                        PremiumPreviewBottomSheet.this.lambda$setTitle$5(clickableSpan);
                    }
                });
                if (tLRPC$Document != null) {
                    titleLoaded(spannableStringBuilder2, z);
                } else {
                    this.titleView[0].setText(spannableStringBuilder2, (TextView.BufferType) null);
                }
            }
            this.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C3632R.string.TelegramPremiumUserStatusDialogSubtitle)));
        } else if (this.isEmojiStatus) {
            LinkSpanDrawable.LinksTextView linksTextView = linksTextViewArr[0];
            int i3 = C3632R.string.TelegramPremiumUserStatusDefaultDialogTitle;
            TLRPC$User tLRPC$User2 = this.user;
            linksTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(i3, ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name))));
            TextView textView = this.subtitleView;
            int i4 = C3632R.string.TelegramPremiumUserStatusDialogSubtitle;
            TLRPC$User tLRPC$User3 = this.user;
            textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(i4, ContactsController.formatName(tLRPC$User3.first_name, tLRPC$User3.last_name))));
        } else {
            GiftPremiumBottomSheet.GiftTier giftTier = this.giftTier;
            if (giftTier != null) {
                if (this.isOutboundGift) {
                    LinkSpanDrawable.LinksTextView linksTextView2 = linksTextViewArr[0];
                    int i5 = C3632R.string.TelegramPremiumUserGiftedPremiumOutboundDialogTitleWithPlural;
                    Object[] objArr = new Object[2];
                    TLRPC$User tLRPC$User4 = this.user;
                    objArr[0] = tLRPC$User4 != null ? tLRPC$User4.first_name : "";
                    objArr[1] = LocaleController.formatPluralString("GiftMonths", giftTier.getMonths(), new Object[0]);
                    String formatString2 = LocaleController.formatString(i5, objArr);
                    Integer num2 = this.accentColor;
                    linksTextView2.setText(AndroidUtilities.replaceSingleLink(formatString2, num2 == null ? getThemedColor(Theme.key_windowBackgroundWhiteBlueButton) : num2.intValue()));
                    TextView textView2 = this.subtitleView;
                    int i6 = C3632R.string.TelegramPremiumUserGiftedPremiumOutboundDialogSubtitle;
                    Object[] objArr2 = new Object[1];
                    TLRPC$User tLRPC$User5 = this.user;
                    objArr2[0] = tLRPC$User5 != null ? tLRPC$User5.first_name : "";
                    String formatString3 = LocaleController.formatString(i6, objArr2);
                    Integer num3 = this.accentColor;
                    textView2.setText(AndroidUtilities.replaceSingleLink(formatString3, num3 == null ? getThemedColor(Theme.key_windowBackgroundWhiteBlueButton) : num3.intValue()));
                } else {
                    TLRPC$User tLRPC$User6 = this.user;
                    if (tLRPC$User6 != null && !TextUtils.isEmpty(tLRPC$User6.first_name)) {
                        TLRPC$User tLRPC$User7 = this.user;
                        if (tLRPC$User7.f1751id != 777000) {
                            LinkSpanDrawable.LinksTextView linksTextView3 = this.titleView[0];
                            String formatString4 = LocaleController.formatString(C3632R.string.TelegramPremiumUserGiftedPremiumDialogTitleWithPlural, tLRPC$User7.first_name, LocaleController.formatPluralString("GiftMonths", this.giftTier.getMonths(), new Object[0]));
                            Integer num4 = this.accentColor;
                            linksTextView3.setText(AndroidUtilities.replaceSingleLink(formatString4, num4 == null ? getThemedColor(Theme.key_windowBackgroundWhiteBlueButton) : num4.intValue()));
                            this.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C3632R.string.TelegramPremiumUserGiftedPremiumDialogSubtitle)));
                        }
                    }
                    LinkSpanDrawable.LinksTextView linksTextView4 = this.titleView[0];
                    String formatString5 = LocaleController.formatString(C3632R.string.TelegramPremiumUserGiftedPremiumDialogTitleWithPluralSomeone, LocaleController.formatPluralString("GiftMonths", this.giftTier.getMonths(), new Object[0]));
                    Integer num5 = this.accentColor;
                    linksTextView4.setText(AndroidUtilities.replaceSingleLink(formatString5, num5 == null ? getThemedColor(Theme.key_windowBackgroundWhiteBlueButton) : num5.intValue()));
                    this.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C3632R.string.TelegramPremiumUserGiftedPremiumDialogSubtitle)));
                }
            } else {
                TLRPC$User tLRPC$User8 = this.user;
                if (tLRPC$User8 == null) {
                    linksTextViewArr[0].setText(LocaleController.getString(C3632R.string.TelegramPremium));
                    this.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C3632R.string.TelegramPremiumSubscribedSubtitle)));
                } else {
                    LinkSpanDrawable.LinksTextView linksTextView5 = linksTextViewArr[0];
                    String formatString6 = LocaleController.formatString(C3632R.string.TelegramPremiumUserDialogTitle, ContactsController.formatName(tLRPC$User8.first_name, tLRPC$User8.last_name));
                    Integer num6 = this.accentColor;
                    linksTextView5.setText(AndroidUtilities.replaceSingleLink(formatString6, num6 == null ? getThemedColor(Theme.key_windowBackgroundWhiteBlueButton) : num6.intValue()));
                    this.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C3632R.string.TelegramPremiumUserDialogSubtitle)));
                }
            }
        }
        try {
            LinkSpanDrawable.LinksTextView[] linksTextViewArr2 = this.titleView;
            linksTextViewArr2[0].setText(Emoji.replaceEmoji(linksTextViewArr2[0].getText(), this.titleView[0].getPaint().getFontMetricsInt(), false));
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTitle$5(ClickableSpan clickableSpan) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.statusStickerSet);
        BaseFragment baseFragment = new BaseFragment() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet.2
            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public Activity getParentActivity() {
                BaseFragment baseFragment2 = PremiumPreviewBottomSheet.this.fragment;
                if (baseFragment2 == null) {
                    return null;
                }
                return baseFragment2.getParentActivity();
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public int getCurrentAccount() {
                return this.currentAccount;
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public FrameLayout getLayoutContainer() {
                return PremiumPreviewBottomSheet.this.bulletinContainer;
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public View getFragmentView() {
                return ((BottomSheet) PremiumPreviewBottomSheet.this).containerView;
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public Dialog showDialog(Dialog dialog) {
                dialog.show();
                return dialog;
            }
        };
        BaseFragment baseFragment2 = this.fragment;
        if (baseFragment2 != null) {
            baseFragment.setParentFragment(baseFragment2);
        }
        new EmojiPacksAlert(baseFragment, getContext(), this.resourcesProvider, arrayList) { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet.3
            @Override // org.telegram.p043ui.Components.EmojiPacksAlert
            protected void onCloseByLink() {
                PremiumPreviewBottomSheet.this.dismiss();
            }
        }.show();
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString("TelegramPremium", C3632R.string.TelegramPremium);
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter() {
        return new Adapter();
    }

    protected void attachIconContainer(LinearLayout linearLayout) {
        linearLayout.addView(this.overrideTitleIcon, LayoutHelper.createLinear(140, 140, 1.0f, 17, 10, 10, 10, 10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$Adapter */
    /* loaded from: classes6.dex */
    public class Adapter extends RecyclerListView.SelectionAdapter {
        private Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            Context context = viewGroup.getContext();
            View onCreateAdditionCell = PremiumPreviewBottomSheet.this.onCreateAdditionCell(i, context);
            if (onCreateAdditionCell != null) {
                onCreateAdditionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(onCreateAdditionCell);
            }
            if (i == 0) {
                LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet.Adapter.1
                    @Override // android.view.ViewGroup
                    protected boolean drawChild(Canvas canvas, View view2, long j) {
                        PremiumPreviewBottomSheet premiumPreviewBottomSheet = PremiumPreviewBottomSheet.this;
                        if (view2 == premiumPreviewBottomSheet.iconTextureView && premiumPreviewBottomSheet.enterTransitionInProgress) {
                            return true;
                        }
                        return super.drawChild(canvas, view2, j);
                    }
                };
                PremiumPreviewBottomSheet.this.iconContainer = linearLayout;
                linearLayout.setOrientation(1);
                PremiumPreviewBottomSheet premiumPreviewBottomSheet = PremiumPreviewBottomSheet.this;
                View view2 = premiumPreviewBottomSheet.overrideTitleIcon;
                if (view2 == null) {
                    premiumPreviewBottomSheet.iconTextureView = new GLIconTextureView(this, context, 1) { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet.Adapter.2
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
                    Bitmap createBitmap = Bitmap.createBitmap(50, 50, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    PremiumPreviewBottomSheet premiumPreviewBottomSheet2 = PremiumPreviewBottomSheet.this;
                    int i2 = Theme.key_premiumGradient2;
                    canvas.drawColor(ColorUtils.blendARGB(premiumPreviewBottomSheet2.getThemedColor(i2), PremiumPreviewBottomSheet.this.getThemedColor(Theme.key_dialogBackground), 0.5f));
                    PremiumPreviewBottomSheet.this.iconTextureView.setBackgroundBitmap(createBitmap);
                    GLIconRenderer gLIconRenderer = PremiumPreviewBottomSheet.this.iconTextureView.mRenderer;
                    gLIconRenderer.colorKey1 = i2;
                    gLIconRenderer.colorKey2 = Theme.key_premiumGradient1;
                    gLIconRenderer.updateColors();
                    linearLayout.addView(PremiumPreviewBottomSheet.this.iconTextureView, LayoutHelper.createLinear(160, 160, 1));
                } else {
                    if (view2.getParent() != null) {
                        ((ViewGroup) PremiumPreviewBottomSheet.this.overrideTitleIcon.getParent()).removeView(PremiumPreviewBottomSheet.this.overrideTitleIcon);
                    }
                    PremiumPreviewBottomSheet.this.attachIconContainer(linearLayout);
                }
                if (PremiumPreviewBottomSheet.this.titleViewContainer == null) {
                    PremiumPreviewBottomSheet.this.titleViewContainer = new FrameLayout(context);
                    PremiumPreviewBottomSheet.this.titleViewContainer.setClipChildren(false);
                    PremiumPreviewBottomSheet premiumPreviewBottomSheet3 = PremiumPreviewBottomSheet.this;
                    Integer num = premiumPreviewBottomSheet3.accentColor;
                    final PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(num == null ? premiumPreviewBottomSheet3.getThemedColor(Theme.key_windowBackgroundWhiteBlueIcon) : num.intValue(), PorterDuff.Mode.SRC_IN);
                    PremiumPreviewBottomSheet.this.titleView = new LinkSpanDrawable.LinksTextView[2];
                    int i3 = 0;
                    while (i3 < 2) {
                        PremiumPreviewBottomSheet.this.titleView[i3] = new LinkSpanDrawable.LinksTextView(context, ((BottomSheet) PremiumPreviewBottomSheet.this).resourcesProvider) { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet.Adapter.3
                            private Layout lastLayout;
                            AnimatedEmojiSpan.EmojiGroupedSpans stack;

                            @Override // android.view.View
                            protected void onDetachedFromWindow() {
                                super.onDetachedFromWindow();
                                AnimatedEmojiSpan.release(this, this.stack);
                                this.lastLayout = null;
                            }

                            @Override // android.view.View
                            protected void dispatchDraw(Canvas canvas2) {
                                super.dispatchDraw(canvas2);
                                if (this.lastLayout != getLayout()) {
                                    AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.stack;
                                    Layout layout = getLayout();
                                    this.lastLayout = layout;
                                    this.stack = AnimatedEmojiSpan.update(3, this, emojiGroupedSpans, layout);
                                }
                                AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, getLayout(), this.stack, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, porterDuffColorFilter);
                            }

                            @Override // android.widget.TextView, android.view.View
                            protected void onMeasure(int i4, int i5) {
                                super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(99999999, Integer.MIN_VALUE));
                            }

                            @Override // org.telegram.p043ui.Components.LinkSpanDrawable.LinksTextView
                            public int overrideColor() {
                                Integer num2 = PremiumPreviewBottomSheet.this.accentColor;
                                return num2 != null ? Theme.multAlpha(num2.intValue(), 0.1f) : super.overrideColor();
                            }
                        };
                        PremiumPreviewBottomSheet.this.titleView[i3].setVisibility(i3 == 0 ? 0 : 8);
                        PremiumPreviewBottomSheet.this.titleView[i3].setTextSize(1, 16.0f);
                        PremiumPreviewBottomSheet.this.titleView[i3].setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                        PremiumPreviewBottomSheet.this.titleView[i3].setGravity(1);
                        PremiumPreviewBottomSheet premiumPreviewBottomSheet4 = PremiumPreviewBottomSheet.this;
                        premiumPreviewBottomSheet4.titleView[i3].setTextColor(premiumPreviewBottomSheet4.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                        PremiumPreviewBottomSheet premiumPreviewBottomSheet5 = PremiumPreviewBottomSheet.this;
                        premiumPreviewBottomSheet5.titleView[i3].setLinkTextColor(premiumPreviewBottomSheet5.getThemedColor(Theme.key_windowBackgroundWhiteLinkText));
                        PremiumPreviewBottomSheet.this.titleViewContainer.addView(PremiumPreviewBottomSheet.this.titleView[i3], LayoutHelper.createFrame(-1, -2));
                        i3++;
                    }
                }
                if (PremiumPreviewBottomSheet.this.titleViewContainer.getParent() != null) {
                    ((ViewGroup) PremiumPreviewBottomSheet.this.titleViewContainer.getParent()).removeView(PremiumPreviewBottomSheet.this.titleViewContainer);
                }
                linearLayout.addView(PremiumPreviewBottomSheet.this.titleViewContainer, LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED, 1, 40, 0, 40, 0));
                PremiumPreviewBottomSheet premiumPreviewBottomSheet6 = PremiumPreviewBottomSheet.this;
                if (premiumPreviewBottomSheet6.subtitleView == null) {
                    premiumPreviewBottomSheet6.subtitleView = new LinkSpanDrawable.LinksTextView(PremiumPreviewBottomSheet.this.getContext(), ((BottomSheet) PremiumPreviewBottomSheet.this).resourcesProvider);
                    PremiumPreviewBottomSheet.this.subtitleView.setTextSize(1, 14.0f);
                    PremiumPreviewBottomSheet.this.subtitleView.setGravity(1);
                    PremiumPreviewBottomSheet premiumPreviewBottomSheet7 = PremiumPreviewBottomSheet.this;
                    premiumPreviewBottomSheet7.subtitleView.setTextColor(premiumPreviewBottomSheet7.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                    PremiumPreviewBottomSheet premiumPreviewBottomSheet8 = PremiumPreviewBottomSheet.this;
                    premiumPreviewBottomSheet8.subtitleView.setLinkTextColor(premiumPreviewBottomSheet8.getThemedColor(Theme.key_windowBackgroundWhiteLinkText));
                }
                if (PremiumPreviewBottomSheet.this.subtitleView.getParent() != null) {
                    ((ViewGroup) PremiumPreviewBottomSheet.this.subtitleView.getParent()).removeView(PremiumPreviewBottomSheet.this.subtitleView);
                }
                linearLayout.addView(PremiumPreviewBottomSheet.this.subtitleView, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 16, 9, 16, 20));
                PremiumPreviewBottomSheet.this.setTitle(false);
                PremiumPreviewBottomSheet.this.starParticlesView = new StarParticlesView(this, context) { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet.Adapter.4
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // org.telegram.p043ui.Components.Premium.StarParticlesView, android.view.View
                    public void onMeasure(int i4, int i5) {
                        super.onMeasure(i4, i5);
                        this.drawable.rect2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight() - AndroidUtilities.m107dp(52));
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // org.telegram.p043ui.Components.Premium.StarParticlesView
                    public void configure() {
                        super.configure();
                        StarParticlesView.Drawable drawable = this.drawable;
                        drawable.useGradient = true;
                        drawable.useBlur = false;
                        drawable.forceMaxAlpha = true;
                        drawable.checkBounds = true;
                        drawable.init();
                    }
                };
                FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet.Adapter.5
                    @Override // android.widget.FrameLayout, android.view.View
                    protected void onMeasure(int i4, int i5) {
                        float f;
                        float top;
                        int measuredHeight;
                        StarParticlesView starParticlesView;
                        super.onMeasure(i4, i5);
                        PremiumPreviewBottomSheet premiumPreviewBottomSheet9 = PremiumPreviewBottomSheet.this;
                        GLIconTextureView gLIconTextureView = premiumPreviewBottomSheet9.iconTextureView;
                        if (gLIconTextureView != null) {
                            top = gLIconTextureView.getTop();
                            measuredHeight = PremiumPreviewBottomSheet.this.iconTextureView.getMeasuredHeight();
                        } else {
                            View view3 = premiumPreviewBottomSheet9.overrideTitleIcon;
                            if (view3 != null) {
                                top = view3.getTop();
                                measuredHeight = PremiumPreviewBottomSheet.this.overrideTitleIcon.getMeasuredHeight();
                            } else {
                                f = BitmapDescriptorFactory.HUE_RED;
                                PremiumPreviewBottomSheet.this.starParticlesView.setTranslationY(f - (starParticlesView.getMeasuredHeight() / 2.0f));
                            }
                        }
                        f = top + (measuredHeight / 2.0f);
                        PremiumPreviewBottomSheet.this.starParticlesView.setTranslationY(f - (starParticlesView.getMeasuredHeight() / 2.0f));
                    }
                };
                frameLayout.setClipChildren(false);
                frameLayout.addView(PremiumPreviewBottomSheet.this.starParticlesView);
                frameLayout.addView(linearLayout);
                PremiumPreviewBottomSheet premiumPreviewBottomSheet9 = PremiumPreviewBottomSheet.this;
                GLIconTextureView gLIconTextureView = premiumPreviewBottomSheet9.iconTextureView;
                view = frameLayout;
                if (gLIconTextureView != null) {
                    gLIconTextureView.setStarParticlesView(premiumPreviewBottomSheet9.starParticlesView);
                    view = frameLayout;
                }
            } else if (i == 2) {
                view = new ShadowSectionCell(context, 12, PremiumPreviewBottomSheet.this.getThemedColor(Theme.key_windowBackgroundGray));
            } else if (i == 3) {
                view = new View(this, context) { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet.Adapter.7
                    @Override // android.view.View
                    protected void onMeasure(int i4, int i5) {
                        super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(68), 1073741824));
                    }
                };
            } else if (i == 4) {
                view = new AboutPremiumView(context);
            } else if (i != 5) {
                view = new PremiumFeatureCell(context, ((BottomSheet) PremiumPreviewBottomSheet.this).resourcesProvider) { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet.Adapter.6
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // org.telegram.p043ui.PremiumFeatureCell, android.view.ViewGroup, android.view.View
                    public void dispatchDraw(Canvas canvas2) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(this.imageView.getLeft(), this.imageView.getTop(), this.imageView.getRight(), this.imageView.getBottom());
                        PremiumPreviewBottomSheet.this.gradientTools.gradientMatrix(0, 0, getMeasuredWidth(), PremiumPreviewBottomSheet.this.totalGradientHeight, BitmapDescriptorFactory.HUE_RED, -this.data.yOffset);
                        canvas2.drawRoundRect(rectF, AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), PremiumPreviewBottomSheet.this.gradientTools.paint);
                        super.dispatchDraw(canvas2);
                    }
                };
            } else {
                TextInfoCell textInfoCell = new TextInfoCell(context, ((BottomSheet) PremiumPreviewBottomSheet.this).resourcesProvider);
                textInfoCell.setBackground(true);
                String string = LocaleController.getString("GiftPremiumPrivacyPolicyAndTerms", C3632R.string.GiftPremiumPrivacyPolicyAndTerms);
                int i4 = Theme.key_chat_messageLinkIn;
                textInfoCell.setText(AndroidUtilities.replaceCharSequence("%1$s", AndroidUtilities.replaceSingleTag(string, i4, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$Adapter$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PremiumPreviewBottomSheet.Adapter.this.lambda$onCreateViewHolder$0();
                    }
                }), AndroidUtilities.replaceSingleTag(LocaleController.getString("GiftPremiumPrivacyPolicy", C3632R.string.GiftPremiumPrivacyPolicy), i4, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$Adapter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        PremiumPreviewBottomSheet.Adapter.this.lambda$onCreateViewHolder$1();
                    }
                })));
                view = textInfoCell;
            }
            view.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            PremiumPreviewBottomSheet.this.afterCellCreated(i, view);
            return new RecyclerListView.Holder(view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0() {
            Browser.openUrl(PremiumPreviewBottomSheet.this.fragment.getParentActivity(), LocaleController.getString("TermsOfServiceUrl", C3632R.string.TermsOfServiceUrl));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1() {
            Browser.openUrl(PremiumPreviewBottomSheet.this.fragment.getParentActivity(), LocaleController.getString("PrivacyPolicyUrl", C3632R.string.PrivacyPolicyUrl));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            PremiumPreviewBottomSheet premiumPreviewBottomSheet = PremiumPreviewBottomSheet.this;
            int i2 = premiumPreviewBottomSheet.featuresStartRow;
            if (i >= i2 && i < premiumPreviewBottomSheet.featuresEndRow) {
                ((PremiumFeatureCell) viewHolder.itemView).setData(premiumPreviewBottomSheet.premiumFeatures.get(i - i2), i != PremiumPreviewBottomSheet.this.featuresEndRow - 1);
            } else if (i < premiumPreviewBottomSheet.additionStartRow || i >= premiumPreviewBottomSheet.additionEndRow) {
            } else {
                premiumPreviewBottomSheet.onBindAdditionCell(viewHolder.itemView, i);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return PremiumPreviewBottomSheet.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            PremiumPreviewBottomSheet premiumPreviewBottomSheet = PremiumPreviewBottomSheet.this;
            if (i == premiumPreviewBottomSheet.paddingRow) {
                return 0;
            }
            if (i >= premiumPreviewBottomSheet.additionStartRow && i < premiumPreviewBottomSheet.additionEndRow) {
                return premiumPreviewBottomSheet.getAdditionItemViewType(i);
            }
            if (i < premiumPreviewBottomSheet.featuresStartRow || i >= premiumPreviewBottomSheet.featuresEndRow) {
                if (i == premiumPreviewBottomSheet.sectionRow) {
                    return 2;
                }
                if (i == premiumPreviewBottomSheet.buttonRow) {
                    return 3;
                }
                if (i == premiumPreviewBottomSheet.helpUsRow) {
                    return 4;
                }
                if (i == premiumPreviewBottomSheet.termsRow) {
                    return 5;
                }
                return super.getItemViewType(i);
            }
            return 1;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1 || PremiumPreviewBottomSheet.this.isAdditionViewClickable(viewHolder.getItemViewType());
        }
    }

    private void measureGradient(int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < this.premiumFeatures.size(); i4++) {
            this.dummyCell.setData(this.premiumFeatures.get(i4), false);
            this.dummyCell.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
            this.premiumFeatures.get(i4).yOffset = i3;
            i3 += this.dummyCell.getMeasuredHeight();
        }
        this.totalGradientHeight = i3;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 4);
        if (this.animateConfetti) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    PremiumPreviewBottomSheet.this.lambda$show$6();
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$6() {
        try {
            this.container.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        this.fireworksOverlay.start(this.animateConfettiWithStars);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 4);
        ValueAnimator valueAnimator = this.enterAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (this.fireworksOverlay.isStarted()) {
            this.fireworksOverlay.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void mainContainerDispatchDraw(Canvas canvas) {
        View view = this.overrideTitleIcon;
        if (view != null) {
            view.setVisibility(this.enterTransitionInProgress ? 4 : 0);
        }
        super.mainContainerDispatchDraw(canvas);
        if (this.startEnterFromView == null || !this.enterTransitionInProgress) {
            return;
        }
        View view2 = this.overrideTitleIcon;
        View view3 = view2 == null ? this.iconTextureView : view2;
        if (view3 == view2) {
            view2.setVisibility(0);
        }
        canvas.save();
        float[] fArr = {this.startEnterFromX, this.startEnterFromY};
        this.startEnterFromView.getMatrix().mapPoints(fArr);
        Drawable drawable = null;
        View view4 = this.startEnterFromView;
        if (view4 instanceof SimpleTextView) {
            drawable = ((SimpleTextView) view4).getRightDrawable();
        } else if (view4 instanceof ChatMessageCell) {
            drawable = ((ChatMessageCell) view4).currentNameStatusDrawable;
        }
        if (drawable == null) {
            canvas.restore();
            return;
        }
        int[] iArr = this.coords;
        float f = (-iArr[0]) + this.startEnterFromX1 + fArr[0];
        float f2 = (-iArr[1]) + this.startEnterFromY1 + fArr[1];
        if (AndroidUtilities.isTablet()) {
            ViewGroup view5 = this.fragment.getParentLayout().getView();
            f += view5.getX() + view5.getPaddingLeft();
            f2 += view5.getY() + view5.getPaddingTop();
        }
        float intrinsicWidth = this.startEnterFromScale * drawable.getIntrinsicWidth();
        float measuredHeight = view3.getMeasuredHeight() * 0.8f;
        float f3 = measuredHeight / intrinsicWidth;
        float f4 = intrinsicWidth / measuredHeight;
        float measuredWidth = view3.getMeasuredWidth() / 2.0f;
        for (View view6 = view3; view6 != this.container && view6 != null; view6 = (View) view6.getParent()) {
            measuredWidth += view6.getX();
        }
        float y = view3.getY() + BitmapDescriptorFactory.HUE_RED + ((View) view3.getParent()).getY() + ((View) view3.getParent().getParent()).getY() + (view3.getMeasuredHeight() / 2.0f);
        float lerp = AndroidUtilities.lerp(f, measuredWidth, CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(this.enterTransitionProgress));
        float lerp2 = AndroidUtilities.lerp(f2, y, this.enterTransitionProgress);
        float f5 = this.startEnterFromScale;
        float f6 = this.enterTransitionProgress;
        float f7 = (f5 * (1.0f - f6)) + (f3 * f6);
        canvas.save();
        canvas.scale(f7, f7, lerp, lerp2);
        int i = (int) lerp;
        int i2 = (int) lerp2;
        drawable.setBounds(i - (drawable.getIntrinsicWidth() / 2), i2 - (drawable.getIntrinsicHeight() / 2), i + (drawable.getIntrinsicWidth() / 2), i2 + (drawable.getIntrinsicHeight() / 2));
        drawable.setAlpha((int) ((1.0f - Utilities.clamp(this.enterTransitionProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED)) * 255.0f));
        drawable.draw(canvas);
        drawable.setAlpha(0);
        canvas.restore();
        float lerp3 = AndroidUtilities.lerp(f4, 1.0f, this.enterTransitionProgress);
        canvas.scale(lerp3, lerp3, lerp, lerp2);
        canvas.translate(lerp - (view3.getMeasuredWidth() / 2.0f), lerp2 - (view3.getMeasuredHeight() / 2.0f));
        view3.draw(canvas);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public boolean onCustomOpenAnimation() {
        Drawable drawable;
        if (this.startEnterFromView == null) {
            return false;
        }
        this.enterAnimator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.enterTransitionProgress = BitmapDescriptorFactory.HUE_RED;
        this.enterTransitionInProgress = true;
        this.iconContainer.invalidate();
        View view = this.startEnterFromView;
        if (view instanceof SimpleTextView) {
            drawable = ((SimpleTextView) view).getRightDrawable();
        } else if (view instanceof ChatMessageCell) {
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = ((ChatMessageCell) view).currentNameStatusDrawable;
            ((ChatMessageCell) view).invalidateOutbounds();
            drawable = swapAnimatedEmojiDrawable;
        } else {
            drawable = null;
        }
        if (drawable != null) {
            drawable.setAlpha(0);
        }
        View view2 = this.startEnterFromView;
        if (view2 instanceof ChatMessageCell) {
            ((ChatMessageCell) view2).invalidateOutbounds();
        } else {
            view2.invalidate();
        }
        GLIconTextureView gLIconTextureView = this.iconTextureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.startEnterAnimation(-360, 100L);
        }
        this.enterAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PremiumPreviewBottomSheet.this.lambda$onCustomOpenAnimation$7(valueAnimator);
            }
        });
        this.enterAnimator.addListener(new C54474(drawable));
        this.enterAnimator.setDuration(600L);
        this.enterAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.enterAnimator.start();
        return super.onCustomOpenAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomOpenAnimation$7(ValueAnimator valueAnimator) {
        this.enterTransitionProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.container.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$4 */
    /* loaded from: classes6.dex */
    public class C54474 extends AnimatorListenerAdapter {
        final /* synthetic */ Drawable val$startEnterFromDrawable;

        C54474(Drawable drawable) {
            this.val$startEnterFromDrawable = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            PremiumPreviewBottomSheet premiumPreviewBottomSheet = PremiumPreviewBottomSheet.this;
            premiumPreviewBottomSheet.enterTransitionInProgress = false;
            premiumPreviewBottomSheet.enterTransitionProgress = 1.0f;
            premiumPreviewBottomSheet.iconContainer.invalidate();
            if (this.val$startEnterFromDrawable != null) {
                ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
                final Drawable drawable = this.val$startEnterFromDrawable;
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet$4$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PremiumPreviewBottomSheet.C54474.this.lambda$onAnimationEnd$0(drawable, valueAnimator);
                    }
                });
                ofInt.start();
            }
            super.onAnimationEnd(animator);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0(Drawable drawable, ValueAnimator valueAnimator) {
            drawable.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
            View view = PremiumPreviewBottomSheet.this.startEnterFromView;
            if (view instanceof ChatMessageCell) {
                ((ChatMessageCell) view).invalidateOutbounds();
            } else {
                view.invalidate();
            }
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(UserConfig.selectedAccount).addObserver(this, NotificationCenter.groupStickersDidLoad);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(UserConfig.selectedAccount).removeObserver(this, NotificationCenter.groupStickersDidLoad);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        TLRPC$InputStickerSet tLRPC$InputStickerSet;
        if (i == NotificationCenter.groupStickersDidLoad && (tLRPC$InputStickerSet = this.statusStickerSet) != null && tLRPC$InputStickerSet.f1625id == ((Long) objArr[0]).longValue()) {
            setTitle(true);
        }
    }
}
