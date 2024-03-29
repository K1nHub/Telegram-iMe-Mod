package org.telegram.p043ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.os.Build;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback;
import java.util.ArrayList;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SvgHelper;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.Easings;
import org.telegram.p043ui.Components.ForegroundColorSpanThemable;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumButtonView;
import org.telegram.p043ui.Components.RadialProgressView;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$StickerSet;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
/* renamed from: org.telegram.ui.Cells.StickerSetCell */
/* loaded from: classes5.dex */
public class StickerSetCell extends FrameLayout {
    private TextView addButtonView;
    private CheckBox2 checkBox;
    private boolean emojis;
    private BackupImageView imageView;
    private boolean needDivider;
    private Callbacks$Callback onAddButtonClick;
    private final int option;
    private ImageView optionsButton;
    private PremiumButtonView premiumButtonView;
    private RadialProgressView progressView;
    private Rect rect;
    private TextView removeButtonView;
    private ImageView reorderButton;
    private FrameLayout sideButtons;
    private AnimatorSet stateAnimator;
    private TLRPC$TL_messages_stickerSet stickersSet;
    private TextView textView;
    private TextView valueTextView;

    protected void onPremiumButtonClick() {
    }

    protected void onRemoveButtonClick() {
    }

    public void setCustomButtonText(String str) {
        updateButtonState(3, false);
        this.addButtonView.setText(str);
    }

    public void setCustomButtonAction(Callbacks$Callback callbacks$Callback) {
        this.onAddButtonClick = callbacks$Callback;
    }

    public StickerSetCell(Context context, int i) {
        this(context, null, i);
    }

    public StickerSetCell(Context context, Theme.ResourcesProvider resourcesProvider, int i) {
        super(context);
        this.onAddButtonClick = null;
        this.rect = new Rect();
        this.option = i;
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setAspectFit(true);
        this.imageView.setLayerNum(1);
        BackupImageView backupImageView2 = this.imageView;
        boolean z = LocaleController.isRTL;
        addView(backupImageView2, LayoutHelper.createFrame(40, 40, (z ? 5 : 3) | 48, z ? 0 : 13, 9, z ? 13 : 0, 0));
        if (i != 0) {
            ImageView imageView = new ImageView(context);
            this.optionsButton = imageView;
            imageView.setFocusable(false);
            this.optionsButton.setScaleType(ImageView.ScaleType.CENTER);
            if (i != 3) {
                this.optionsButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_stickers_menuSelector)));
            }
            if (i == 1) {
                ImageView imageView2 = this.optionsButton;
                int i2 = Theme.key_stickers_menu;
                imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
                this.optionsButton.setImageResource(C3632R.C3634drawable.msg_actions);
                this.optionsButton.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
                addView(this.optionsButton, LayoutHelper.createFrame(40, 40, (LocaleController.isRTL ? 3 : 5) | 16));
                ImageView imageView3 = new ImageView(context);
                this.reorderButton = imageView3;
                imageView3.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.reorderButton.setVisibility(8);
                this.reorderButton.setScaleType(ImageView.ScaleType.CENTER);
                this.reorderButton.setImageResource(C3632R.C3634drawable.list_reorder);
                this.reorderButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
                addView(this.reorderButton, LayoutHelper.createFrameRelatively(58.0f, 58.0f, 8388613));
                CheckBox2 checkBox2 = new CheckBox2(context, 21);
                this.checkBox = checkBox2;
                checkBox2.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
                this.checkBox.setDrawUnchecked(false);
                this.checkBox.setDrawBackgroundAsArc(3);
                addView(this.checkBox, LayoutHelper.createFrameRelatively(24.0f, 24.0f, 8388611, 34.0f, 30.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            } else if (i == 3) {
                this.optionsButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_featuredStickers_addedIcon), PorterDuff.Mode.MULTIPLY));
                this.optionsButton.setImageResource(C3632R.C3634drawable.floating_check);
                ImageView imageView4 = this.optionsButton;
                boolean z2 = LocaleController.isRTL;
                addView(imageView4, LayoutHelper.createFrame(40, 40, (z2 ? 3 : 5) | 48, z2 ? 10 : 0, 9, z2 ? 0 : 10, 0));
            }
        }
        this.sideButtons = new FrameLayout(getContext());
        TextView textView = new TextView(context);
        this.addButtonView = textView;
        textView.setTextSize(1, 14.0f);
        this.addButtonView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.addButtonView.setText(LocaleController.getString("Add", C3632R.string.Add));
        this.addButtonView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
        TextView textView2 = this.addButtonView;
        int i3 = Theme.key_featuredStickers_addButton;
        textView2.setBackground(Theme.AdaptiveRipple.createRect(Theme.getColor(i3, resourcesProvider), Theme.getColor(Theme.key_featuredStickers_addButtonPressed, resourcesProvider), 4.0f));
        this.addButtonView.setPadding(AndroidUtilities.m107dp(14), 0, AndroidUtilities.m107dp(14), 0);
        this.addButtonView.setGravity(17);
        this.addButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.StickerSetCell$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerSetCell.this.lambda$new$0(view);
            }
        });
        this.sideButtons.addView(this.addButtonView, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, (LocaleController.isRTL ? 3 : 5) | 16));
        TextView textView3 = new TextView(context);
        this.removeButtonView = textView3;
        textView3.setTextSize(1, 14.0f);
        this.removeButtonView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.removeButtonView.setText(LocaleController.getString("StickersRemove", C3632R.string.StickersRemove));
        this.removeButtonView.setTextColor(Theme.getColor(Theme.key_featuredStickers_removeButtonText, resourcesProvider));
        this.removeButtonView.setBackground(Theme.AdaptiveRipple.createRect(0, Theme.getColor(i3, resourcesProvider) & 452984831, 4.0f));
        this.removeButtonView.setPadding(AndroidUtilities.m107dp(12), 0, AndroidUtilities.m107dp(12), 0);
        this.removeButtonView.setGravity(17);
        this.removeButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.StickerSetCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerSetCell.this.lambda$new$1(view);
            }
        });
        this.sideButtons.addView(this.removeButtonView, LayoutHelper.createFrameRelatively(-2.0f, 32.0f, (LocaleController.isRTL ? 3 : 5) | 16, BitmapDescriptorFactory.HUE_RED, -2.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        PremiumButtonView premiumButtonView = new PremiumButtonView(context, AndroidUtilities.m107dp(4), false, resourcesProvider);
        this.premiumButtonView = premiumButtonView;
        premiumButtonView.setIcon(C3632R.raw.unlock_icon);
        this.premiumButtonView.setButton(LocaleController.getString("Unlock", C3632R.string.Unlock), new View.OnClickListener() { // from class: org.telegram.ui.Cells.StickerSetCell$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerSetCell.this.lambda$new$2(view);
            }
        });
        try {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.premiumButtonView.getIconView().getLayoutParams();
            marginLayoutParams.leftMargin = AndroidUtilities.m107dp(1);
            marginLayoutParams.topMargin = AndroidUtilities.m107dp(1);
            int m107dp = AndroidUtilities.m107dp(20);
            marginLayoutParams.height = m107dp;
            marginLayoutParams.width = m107dp;
            ((ViewGroup.MarginLayoutParams) this.premiumButtonView.getTextView().getLayoutParams()).leftMargin = AndroidUtilities.m107dp(3);
            this.premiumButtonView.getChildAt(0).setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
        } catch (Exception unused) {
        }
        this.sideButtons.addView(this.premiumButtonView, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, (LocaleController.isRTL ? 3 : 5) | 16));
        this.sideButtons.setPadding(AndroidUtilities.m107dp(10), 0, AndroidUtilities.m107dp(10), 0);
        addView(this.sideButtons, LayoutHelper.createFrame(-2, -1, LocaleController.isRTL ? 3 : 5, 0, 0, 0, 0));
        this.sideButtons.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.StickerSetCell$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerSetCell.this.lambda$new$3(view);
            }
        });
        TextView textView4 = new TextView(this, context) { // from class: org.telegram.ui.Cells.StickerSetCell.1
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(14), false), bufferType);
            }
        };
        this.textView = textView4;
        NotificationCenter.listenEmojiLoading(textView4);
        this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        this.textView.setGravity(LayoutHelper.getAbsoluteGravityStart());
        addView(this.textView, LayoutHelper.createFrameRelatively(-2.0f, -2.0f, 8388611, 71.0f, 9.0f, 70.0f, BitmapDescriptorFactory.HUE_RED));
        TextView textView5 = new TextView(context);
        this.valueTextView = textView5;
        textView5.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        this.valueTextView.setTextSize(1, 13.0f);
        this.valueTextView.setLines(1);
        this.valueTextView.setMaxLines(1);
        this.valueTextView.setSingleLine(true);
        this.valueTextView.setGravity(LayoutHelper.getAbsoluteGravityStart());
        addView(this.valueTextView, LayoutHelper.createFrameRelatively(-2.0f, -2.0f, 8388611, 71.0f, 32.0f, 70.0f, BitmapDescriptorFactory.HUE_RED));
        updateButtonState(0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        onAddButtonClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        onRemoveButtonClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        onPremiumButtonClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        if (this.premiumButtonView.getVisibility() == 0 && this.premiumButtonView.isEnabled()) {
            this.premiumButtonView.performClick();
        } else if (this.addButtonView.getVisibility() == 0 && this.addButtonView.isEnabled()) {
            this.addButtonView.performClick();
        } else if (this.removeButtonView.getVisibility() == 0 && this.removeButtonView.isEnabled()) {
            this.removeButtonView.performClick();
        }
    }

    protected void onAddButtonClick() {
        Callbacks$Callback callbacks$Callback = this.onAddButtonClick;
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(58) + (this.needDivider ? 1 : 0), 1073741824));
    }

    public void setText(String str, String str2, int i, boolean z) {
        this.needDivider = z;
        this.stickersSet = null;
        this.textView.setText(str);
        this.valueTextView.setText(str2);
        if (TextUtils.isEmpty(str2)) {
            this.textView.setTranslationY(AndroidUtilities.m107dp(10));
        } else {
            this.textView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        }
        if (i != 0) {
            this.imageView.setImageResource(i, Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
            this.imageView.setVisibility(0);
            RadialProgressView radialProgressView = this.progressView;
            if (radialProgressView != null) {
                radialProgressView.setVisibility(4);
                return;
            }
            return;
        }
        this.imageView.setVisibility(4);
        RadialProgressView radialProgressView2 = this.progressView;
        if (radialProgressView2 != null) {
            radialProgressView2.setVisibility(0);
        }
    }

    public void setNeedDivider(boolean z) {
        this.needDivider = z;
    }

    public void setStickersSet(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, boolean z) {
        setStickersSet(tLRPC$TL_messages_stickerSet, z, false);
    }

    public void setSearchQuery(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, String str, Theme.ResourcesProvider resourcesProvider) {
        TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set;
        String str2 = tLRPC$StickerSet.title;
        Locale locale = Locale.ROOT;
        int indexOf = str2.toLowerCase(locale).indexOf(str);
        if (indexOf != -1) {
            SpannableString spannableString = new SpannableString(tLRPC$StickerSet.title);
            spannableString.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4, resourcesProvider), indexOf, str.length() + indexOf, 0);
            this.textView.setText(spannableString);
        }
        int indexOf2 = tLRPC$StickerSet.short_name.toLowerCase(locale).indexOf(str);
        if (indexOf2 != -1) {
            String str3 = tLRPC$StickerSet.emojis ? "t.me/addemoji/" : "t.me/addstickers/";
            int length = indexOf2 + str3.length();
            SpannableString spannableString2 = new SpannableString(str3 + tLRPC$StickerSet.short_name);
            spannableString2.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4, resourcesProvider), length, str.length() + length, 0);
            this.valueTextView.setText(spannableString2);
        }
    }

    public void setStickersSet(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, boolean z, boolean z2) {
        TLRPC$Document tLRPC$Document;
        ImageLocation forSticker;
        this.needDivider = z;
        this.stickersSet = tLRPC$TL_messages_stickerSet;
        this.imageView.setVisibility(0);
        RadialProgressView radialProgressView = this.progressView;
        if (radialProgressView != null) {
            radialProgressView.setVisibility(4);
        }
        this.textView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.textView.setText(this.stickersSet.set.title);
        if (this.stickersSet.set.archived) {
            this.textView.setAlpha(0.5f);
            this.valueTextView.setAlpha(0.5f);
            this.imageView.setAlpha(0.5f);
        } else {
            this.textView.setAlpha(1.0f);
            this.valueTextView.setAlpha(1.0f);
            this.imageView.setAlpha(1.0f);
        }
        boolean z3 = tLRPC$TL_messages_stickerSet.set.emojis;
        this.emojis = z3;
        this.sideButtons.setVisibility(z3 ? 0 : 8);
        this.optionsButton.setVisibility(this.emojis ? 8 : 0);
        this.imageView.setColorFilter(null);
        ArrayList<TLRPC$Document> arrayList = tLRPC$TL_messages_stickerSet.documents;
        if (arrayList != null && !arrayList.isEmpty()) {
            this.valueTextView.setText(LocaleController.formatPluralString(this.emojis ? "EmojiCount" : "Stickers", arrayList.size(), new Object[0]));
            int i = 0;
            while (true) {
                if (i >= arrayList.size()) {
                    tLRPC$Document = null;
                    break;
                }
                tLRPC$Document = arrayList.get(i);
                if (tLRPC$Document != null && tLRPC$Document.f1610id == tLRPC$TL_messages_stickerSet.set.thumb_document_id) {
                    break;
                }
                i++;
            }
            if (tLRPC$Document == null) {
                tLRPC$Document = arrayList.get(0);
            }
            TLRPC$Document tLRPC$Document2 = tLRPC$Document;
            LiteMode.isEnabled(1);
            TLObject closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$TL_messages_stickerSet.set.thumbs, 90);
            if (closestPhotoSizeWithSize == null) {
                closestPhotoSizeWithSize = tLRPC$Document2;
            }
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tLRPC$TL_messages_stickerSet.set.thumbs, Theme.key_windowBackgroundGray, 1.0f);
            boolean z4 = closestPhotoSizeWithSize instanceof TLRPC$Document;
            if (z4) {
                forSticker = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document2.thumbs, 90), tLRPC$Document2);
            } else {
                forSticker = ImageLocation.getForSticker((TLRPC$PhotoSize) closestPhotoSizeWithSize, tLRPC$Document2, tLRPC$TL_messages_stickerSet.set.thumb_version);
            }
            ImageLocation imageLocation = forSticker;
            boolean isEnabled = LiteMode.isEnabled(this.emojis ? LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD : 1);
            StringBuilder sb = new StringBuilder();
            sb.append("50_50");
            sb.append(!isEnabled ? "_firstframe" : "");
            String sb2 = sb.toString();
            if ((z4 && MessageObject.isAnimatedStickerDocument(tLRPC$Document2, true)) || MessageObject.isVideoSticker(tLRPC$Document2)) {
                if (svgThumb != null) {
                    this.imageView.setImage(ImageLocation.getForDocument(tLRPC$Document2), sb2, svgThumb, 0, tLRPC$TL_messages_stickerSet);
                } else {
                    this.imageView.setImage(ImageLocation.getForDocument(tLRPC$Document2), sb2, imageLocation, (String) null, 0, tLRPC$TL_messages_stickerSet);
                }
                if (MessageObject.isTextColorEmoji(tLRPC$Document2)) {
                    this.imageView.setColorFilter(Theme.getAnimatedEmojiColorFilter(null));
                }
            } else if (imageLocation != null && imageLocation.imageType == 1) {
                this.imageView.setImage(imageLocation, sb2, "tgs", svgThumb, tLRPC$TL_messages_stickerSet);
            } else {
                this.imageView.setImage(imageLocation, sb2, "webp", svgThumb, tLRPC$TL_messages_stickerSet);
            }
        } else {
            this.valueTextView.setText(LocaleController.formatPluralString(tLRPC$TL_messages_stickerSet.set.emojis ? "EmojiCount" : "Stickers", 0, new Object[0]));
            this.imageView.setImageDrawable(null);
        }
        if (z2) {
            TextView textView = this.valueTextView;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(tLRPC$TL_messages_stickerSet.set.emojis ? "t.me/addemoji/" : "t.me/addstickers/");
            sb3.append(tLRPC$TL_messages_stickerSet.set.short_name);
            textView.setText(sb3.toString());
        }
    }

    public void setChecked(boolean z) {
        setChecked(z, true);
    }

    public boolean isChecked() {
        int i = this.option;
        if (i == 1) {
            return this.checkBox.isChecked();
        }
        return i == 3 ? this.optionsButton.getVisibility() == 0 : this.emojis && this.sideButtons.getVisibility() == 0;
    }

    public void setChecked(final boolean z, boolean z2) {
        int i = this.option;
        if (i == 1) {
            this.checkBox.setChecked(z, z2);
            return;
        }
        boolean z3 = this.emojis;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z3) {
            if (z2) {
                this.sideButtons.animate().cancel();
                ViewPropertyAnimator listener = this.sideButtons.animate().setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.StickerSetCell.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z) {
                            return;
                        }
                        StickerSetCell.this.sideButtons.setVisibility(4);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        if (z) {
                            StickerSetCell.this.sideButtons.setVisibility(0);
                        }
                    }
                });
                if (z) {
                    f = 1.0f;
                }
                listener.alpha(f).scaleX(z ? 1.0f : 0.1f).scaleY(z ? 1.0f : 0.1f).setDuration(150L).start();
                return;
            }
            this.sideButtons.setVisibility(z ? 0 : 4);
            if (z) {
                return;
            }
            this.sideButtons.setScaleX(0.1f);
            this.sideButtons.setScaleY(0.1f);
        } else if (i == 3) {
            if (z2) {
                this.optionsButton.animate().cancel();
                ViewPropertyAnimator listener2 = this.optionsButton.animate().setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.StickerSetCell.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z) {
                            return;
                        }
                        StickerSetCell.this.optionsButton.setVisibility(4);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        if (z) {
                            StickerSetCell.this.optionsButton.setVisibility(0);
                        }
                    }
                });
                if (z) {
                    f = 1.0f;
                }
                listener2.alpha(f).scaleX(z ? 1.0f : 0.1f).scaleY(z ? 1.0f : 0.1f).setDuration(150L).start();
                return;
            }
            this.optionsButton.setVisibility(z ? 0 : 4);
            if (z) {
                return;
            }
            this.optionsButton.setScaleX(0.1f);
            this.optionsButton.setScaleY(0.1f);
        }
    }

    public void setReorderable(boolean z) {
        setReorderable(z, true);
    }

    public void setReorderable(final boolean z, boolean z2) {
        if (this.option == 1) {
            float[] fArr = new float[2];
            float f = BitmapDescriptorFactory.HUE_RED;
            fArr[0] = z ? 1.0f : 0.0f;
            if (!z) {
                f = 1.0f;
            }
            fArr[1] = f;
            float[] fArr2 = new float[2];
            fArr2[0] = z ? 1.0f : 0.66f;
            fArr2[1] = z ? 0.66f : 1.0f;
            if (z2) {
                this.reorderButton.setVisibility(0);
                ViewPropertyAnimator duration = this.reorderButton.animate().alpha(fArr[0]).scaleX(fArr2[0]).scaleY(fArr2[0]).setDuration(200L);
                Interpolator interpolator = Easings.easeOutSine;
                duration.setInterpolator(interpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Cells.StickerSetCell$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        StickerSetCell.this.lambda$setReorderable$4(z);
                    }
                }).start();
                if (this.emojis) {
                    this.sideButtons.setVisibility(0);
                    this.sideButtons.animate().alpha(fArr[1]).scaleX(fArr2[1]).scaleY(fArr2[1]).setDuration(200L).setInterpolator(interpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Cells.StickerSetCell$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            StickerSetCell.this.lambda$setReorderable$5(z);
                        }
                    }).start();
                    return;
                }
                this.optionsButton.setVisibility(0);
                this.optionsButton.animate().alpha(fArr[1]).scaleX(fArr2[1]).scaleY(fArr2[1]).setDuration(200L).setInterpolator(interpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Cells.StickerSetCell$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        StickerSetCell.this.lambda$setReorderable$6(z);
                    }
                }).start();
                return;
            }
            this.reorderButton.setVisibility(z ? 0 : 8);
            this.reorderButton.setAlpha(fArr[0]);
            this.reorderButton.setScaleX(fArr2[0]);
            this.reorderButton.setScaleY(fArr2[0]);
            if (this.emojis) {
                this.sideButtons.setVisibility(z ? 8 : 0);
                this.sideButtons.setAlpha(fArr[1]);
                this.sideButtons.setScaleX(fArr2[1]);
                this.sideButtons.setScaleY(fArr2[1]);
                return;
            }
            this.optionsButton.setVisibility(z ? 8 : 0);
            this.optionsButton.setAlpha(fArr[1]);
            this.optionsButton.setScaleX(fArr2[1]);
            this.optionsButton.setScaleY(fArr2[1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setReorderable$4(boolean z) {
        if (z) {
            return;
        }
        this.reorderButton.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setReorderable$5(boolean z) {
        if (z) {
            this.sideButtons.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setReorderable$6(boolean z) {
        if (z) {
            this.optionsButton.setVisibility(8);
        }
    }

    public void setOnReorderButtonTouchListener(View.OnTouchListener onTouchListener) {
        this.reorderButton.setOnTouchListener(onTouchListener);
    }

    public void setOnOptionsClick(View.OnClickListener onClickListener) {
        ImageView imageView = this.optionsButton;
        if (imageView == null) {
            return;
        }
        imageView.setOnClickListener(onClickListener);
    }

    public TLRPC$TL_messages_stickerSet getStickersSet() {
        return this.stickersSet;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        FrameLayout frameLayout;
        ImageView imageView;
        int i = Build.VERSION.SDK_INT;
        if (i >= 21 && getBackground() != null && (imageView = this.optionsButton) != null) {
            imageView.getHitRect(this.rect);
            if (this.rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return true;
            }
        }
        if (i >= 21 && getBackground() != null && this.emojis && (frameLayout = this.sideButtons) != null) {
            frameLayout.getHitRect(this.rect);
            if (this.rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m107dp(71), getHeight() - 1, (getWidth() - getPaddingRight()) - (LocaleController.isRTL ? AndroidUtilities.m107dp(71) : 0), getHeight() - 1, Theme.dividerPaint);
        }
    }

    public void updateRightMargin() {
        this.sideButtons.measure(View.MeasureSpec.makeMeasureSpec(999999, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(58), 1073741824));
        int m107dp = AndroidUtilities.m107dp(26) + this.sideButtons.getMeasuredWidth();
        if (LocaleController.isRTL) {
            ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).leftMargin = m107dp;
            ((ViewGroup.MarginLayoutParams) this.valueTextView.getLayoutParams()).leftMargin = m107dp;
            return;
        }
        ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).rightMargin = m107dp;
        ((ViewGroup.MarginLayoutParams) this.valueTextView.getLayoutParams()).rightMargin = m107dp;
    }

    public void updateButtonState(final int i, boolean z) {
        AnimatorSet animatorSet = this.stateAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.stateAnimator = null;
        }
        if (i == 1) {
            this.premiumButtonView.setButton(LocaleController.getString("Unlock", C3632R.string.Unlock), new View.OnClickListener() { // from class: org.telegram.ui.Cells.StickerSetCell$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StickerSetCell.this.lambda$updateButtonState$7(view);
                }
            });
        } else if (i == 2) {
            this.premiumButtonView.setButton(LocaleController.getString("Restore", C3632R.string.Restore), new View.OnClickListener() { // from class: org.telegram.ui.Cells.StickerSetCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StickerSetCell.this.lambda$updateButtonState$8(view);
                }
            });
        }
        this.premiumButtonView.setEnabled(i == 1 || i == 2);
        this.addButtonView.setEnabled(i == 3);
        this.removeButtonView.setEnabled(i == 4);
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.stateAnimator = animatorSet2;
            Animator[] animatorArr = new Animator[9];
            PremiumButtonView premiumButtonView = this.premiumButtonView;
            Property property = FrameLayout.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = (i == 1 || i == 2) ? 1.0f : 0.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(premiumButtonView, property, fArr);
            PremiumButtonView premiumButtonView2 = this.premiumButtonView;
            Property property2 = FrameLayout.SCALE_X;
            float[] fArr2 = new float[1];
            fArr2[0] = (i == 1 || i == 2) ? 1.0f : 0.6f;
            animatorArr[1] = ObjectAnimator.ofFloat(premiumButtonView2, property2, fArr2);
            PremiumButtonView premiumButtonView3 = this.premiumButtonView;
            Property property3 = FrameLayout.SCALE_Y;
            float[] fArr3 = new float[1];
            fArr3[0] = (i == 1 || i == 2) ? 1.0f : 0.6f;
            animatorArr[2] = ObjectAnimator.ofFloat(premiumButtonView3, property3, fArr3);
            TextView textView = this.addButtonView;
            Property property4 = FrameLayout.ALPHA;
            float[] fArr4 = new float[1];
            fArr4[0] = i == 3 ? 1.0f : 0.0f;
            animatorArr[3] = ObjectAnimator.ofFloat(textView, property4, fArr4);
            TextView textView2 = this.addButtonView;
            Property property5 = FrameLayout.SCALE_X;
            float[] fArr5 = new float[1];
            fArr5[0] = i == 3 ? 1.0f : 0.6f;
            animatorArr[4] = ObjectAnimator.ofFloat(textView2, property5, fArr5);
            TextView textView3 = this.addButtonView;
            Property property6 = FrameLayout.SCALE_Y;
            float[] fArr6 = new float[1];
            fArr6[0] = i == 3 ? 1.0f : 0.6f;
            animatorArr[5] = ObjectAnimator.ofFloat(textView3, property6, fArr6);
            TextView textView4 = this.removeButtonView;
            Property property7 = FrameLayout.ALPHA;
            float[] fArr7 = new float[1];
            if (i == 4) {
                f = 1.0f;
            }
            fArr7[0] = f;
            animatorArr[6] = ObjectAnimator.ofFloat(textView4, property7, fArr7);
            TextView textView5 = this.removeButtonView;
            Property property8 = FrameLayout.SCALE_X;
            float[] fArr8 = new float[1];
            fArr8[0] = i == 4 ? 1.0f : 0.6f;
            animatorArr[7] = ObjectAnimator.ofFloat(textView5, property8, fArr8);
            TextView textView6 = this.removeButtonView;
            Property property9 = FrameLayout.SCALE_Y;
            float[] fArr9 = new float[1];
            fArr9[0] = i == 4 ? 1.0f : 0.6f;
            animatorArr[8] = ObjectAnimator.ofFloat(textView6, property9, fArr9);
            animatorSet2.playTogether(animatorArr);
            this.stateAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.StickerSetCell.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    StickerSetCell.this.premiumButtonView.setVisibility(0);
                    StickerSetCell.this.addButtonView.setVisibility(0);
                    StickerSetCell.this.removeButtonView.setVisibility(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PremiumButtonView premiumButtonView4 = StickerSetCell.this.premiumButtonView;
                    int i2 = i;
                    premiumButtonView4.setVisibility((i2 == 1 || i2 == 2) ? 0 : 8);
                    StickerSetCell.this.addButtonView.setVisibility(i == 3 ? 0 : 8);
                    StickerSetCell.this.removeButtonView.setVisibility(i == 4 ? 0 : 8);
                    StickerSetCell.this.updateRightMargin();
                }
            });
            this.stateAnimator.setDuration(250L);
            this.stateAnimator.setInterpolator(new OvershootInterpolator(1.02f));
            this.stateAnimator.start();
            return;
        }
        this.premiumButtonView.setAlpha((i == 1 || i == 2) ? 1.0f : 0.0f);
        this.premiumButtonView.setScaleX((i == 1 || i == 2) ? 1.0f : 0.6f);
        this.premiumButtonView.setScaleY((i == 1 || i == 2) ? 1.0f : 0.6f);
        this.premiumButtonView.setVisibility((i == 1 || i == 2) ? 0 : 8);
        this.addButtonView.setAlpha(i == 3 ? 1.0f : 0.0f);
        this.addButtonView.setScaleX(i == 3 ? 1.0f : 0.6f);
        this.addButtonView.setScaleY(i == 3 ? 1.0f : 0.6f);
        this.addButtonView.setVisibility(i == 3 ? 0 : 8);
        TextView textView7 = this.removeButtonView;
        if (i == 4) {
            f = 1.0f;
        }
        textView7.setAlpha(f);
        this.removeButtonView.setScaleX(i == 4 ? 1.0f : 0.6f);
        this.removeButtonView.setScaleY(i == 4 ? 1.0f : 0.6f);
        this.removeButtonView.setVisibility(i != 4 ? 8 : 0);
        updateRightMargin();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonState$7(View view) {
        onPremiumButtonClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonState$8(View view) {
        onPremiumButtonClick();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 == null || !checkBox2.isChecked()) {
            return;
        }
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(true);
    }
}
