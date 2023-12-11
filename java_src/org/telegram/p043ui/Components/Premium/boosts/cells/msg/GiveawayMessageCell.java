package org.telegram.p043ui.Components.Premium.boosts.cells.msg;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.util.StateSet;
import android.view.MotionEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.Premium.boosts.BoostDialogs;
import org.telegram.p043ui.Components.StaticLayoutEx;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.msg.GiveawayMessageCell */
/* loaded from: classes6.dex */
public class GiveawayMessageCell {
    private static final Map<Integer, String> monthsToEmoticon;
    private AvatarDrawable[] avatarDrawables;
    private ImageReceiver[] avatarImageReceivers;
    private boolean[] avatarVisible;
    private int bottomHeight;
    private StaticLayout bottomLayout;
    private final Paint chatBgPaint;
    private final RectF chatRect;
    private final TextPaint chatTextPaint;
    private final Paint clipRectPaint;
    private final Rect containerRect;
    private final RectF countRect;
    private final Paint counterBgPaint;
    private String counterStr;
    private final Rect counterTextBounds;
    private final TextPaint counterTextPaint;
    private int countriesHeight;
    private StaticLayout countriesLayout;
    private final TextPaint countriesTextPaint;
    private int diffTextWidth;
    private final ImageReceiver giftReceiver;
    private boolean isButtonPressed;
    private boolean isContainerPressed;
    private MessageObject messageObject;
    private final ChatMessageCell parentView;
    private int pressedPos;
    private final int[] pressedState;
    private final Paint saveLayerPaint;
    private int selectorColor;
    private Drawable selectorDrawable;
    private final TextPaint textPaint;
    private int topHeight;
    private StaticLayout topLayout;
    private CharSequence[] chatTitles = new CharSequence[10];
    private float[] chatTitleWidths = new float[10];
    private boolean[] needNewRow = new boolean[10];
    private Rect[] clickRect = new Rect[10];
    private int measuredHeight = 0;
    private int measuredWidth = 0;

    static {
        HashMap hashMap = new HashMap();
        monthsToEmoticon = hashMap;
        hashMap.put(1, "1⃣");
        hashMap.put(3, "2⃣");
        hashMap.put(6, "3⃣");
        hashMap.put(12, "4⃣");
        hashMap.put(24, "5⃣");
    }

    public GiveawayMessageCell(ChatMessageCell chatMessageCell) {
        TextPaint textPaint = new TextPaint(1);
        this.counterTextPaint = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.chatTextPaint = textPaint2;
        TextPaint textPaint3 = new TextPaint(1);
        this.textPaint = textPaint3;
        TextPaint textPaint4 = new TextPaint(1);
        this.countriesTextPaint = textPaint4;
        this.counterBgPaint = new Paint(1);
        this.chatBgPaint = new Paint(1);
        this.saveLayerPaint = new Paint();
        Paint paint = new Paint();
        this.clipRectPaint = paint;
        this.countRect = new RectF();
        this.chatRect = new RectF();
        this.counterTextBounds = new Rect();
        this.containerRect = new Rect();
        this.pressedState = new int[]{16842910, 16842919};
        this.pressedPos = -1;
        this.isButtonPressed = false;
        this.isContainerPressed = false;
        this.parentView = chatMessageCell;
        ImageReceiver imageReceiver = new ImageReceiver(chatMessageCell);
        this.giftReceiver = imageReceiver;
        imageReceiver.setAllowLoadingOnAttachedOnly(true);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        textPaint.setTextSize(AndroidUtilities.m104dp(12));
        textPaint.setTextAlign(Paint.Align.CENTER);
        textPaint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textPaint2.setTextSize(AndroidUtilities.m104dp(13));
        textPaint4.setTextSize(AndroidUtilities.m104dp(13));
        textPaint3.setTextSize(AndroidUtilities.m104dp(14));
    }

    public boolean checkMotionEvent(MotionEvent motionEvent) {
        MessageObject messageObject = this.messageObject;
        if (messageObject != null && messageObject.isGiveaway()) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                int i = 0;
                while (true) {
                    Rect[] rectArr = this.clickRect;
                    if (i < rectArr.length) {
                        if (rectArr[i].contains(x, y)) {
                            this.pressedPos = i;
                            if (Build.VERSION.SDK_INT >= 21) {
                                this.selectorDrawable.setHotspot(x, y);
                            }
                            this.isButtonPressed = true;
                            setButtonPressed(true);
                            return true;
                        }
                        i++;
                    } else if (this.containerRect.contains(x, y)) {
                        this.isContainerPressed = true;
                        return true;
                    }
                }
            } else if (motionEvent.getAction() == 1) {
                if (this.isButtonPressed) {
                    if (this.parentView.getDelegate() != null) {
                        this.parentView.getDelegate().didPressGiveawayChatButton(this.parentView, this.pressedPos);
                    }
                    this.parentView.playSoundEffect(0);
                    setButtonPressed(false);
                    this.isButtonPressed = false;
                }
                if (this.isContainerPressed) {
                    this.isContainerPressed = false;
                    BoostDialogs.showBulletinAbout(this.messageObject);
                }
            } else if (motionEvent.getAction() != 2 && motionEvent.getAction() == 3) {
                if (this.isButtonPressed) {
                    setButtonPressed(false);
                }
                this.isButtonPressed = false;
                this.isContainerPressed = false;
            }
        }
        return false;
    }

    public void setButtonPressed(boolean z) {
        MessageObject messageObject = this.messageObject;
        if (messageObject == null || !messageObject.isGiveaway()) {
            return;
        }
        if (z) {
            this.selectorDrawable.setCallback(new Drawable.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.cells.msg.GiveawayMessageCell.1
                @Override // android.graphics.drawable.Drawable.Callback
                public void invalidateDrawable(Drawable drawable) {
                    GiveawayMessageCell.this.parentView.invalidate();
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                    GiveawayMessageCell.this.parentView.invalidate();
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                    GiveawayMessageCell.this.parentView.invalidate();
                }
            });
            this.selectorDrawable.setState(this.pressedState);
            this.parentView.invalidate();
            return;
        }
        this.selectorDrawable.setState(StateSet.NOTHING);
        this.parentView.invalidate();
    }

    public void setMessageContent(MessageObject messageObject, int i, int i2) {
        int m104dp;
        this.messageObject = null;
        this.topLayout = null;
        this.bottomLayout = null;
        this.countriesLayout = null;
        this.measuredHeight = 0;
        this.measuredWidth = 0;
        if (messageObject.isGiveaway()) {
            this.messageObject = messageObject;
            createImages();
            setGiftImage(messageObject);
            TLRPC$TL_messageMediaGiveaway tLRPC$TL_messageMediaGiveaway = (TLRPC$TL_messageMediaGiveaway) messageObject.messageOwner.media;
            checkArraysLimits(tLRPC$TL_messageMediaGiveaway.channels.size());
            int m104dp2 = AndroidUtilities.m104dp(148);
            if (AndroidUtilities.isTablet()) {
                m104dp = AndroidUtilities.getMinTabletSide() - AndroidUtilities.m104dp(80);
            } else {
                m104dp = i - AndroidUtilities.m104dp(80);
            }
            SpannableStringBuilder replaceTags = AndroidUtilities.replaceTags(LocaleController.getString("BoostingGiveawayPrizes", C3632R.string.BoostingGiveawayPrizes));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(replaceTags);
            spannableStringBuilder.setSpan(new RelativeSizeSpan(1.05f), 0, replaceTags.length(), 33);
            spannableStringBuilder.append((CharSequence) "\n");
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("BoostingGiveawayMsgInfoPlural1", tLRPC$TL_messageMediaGiveaway.quantity)));
            spannableStringBuilder2.append((CharSequence) "\n");
            boolean z = true;
            spannableStringBuilder2.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayMsgInfoPlural2", tLRPC$TL_messageMediaGiveaway.quantity, LocaleController.formatPluralString("BoldMonths", tLRPC$TL_messageMediaGiveaway.months, new Object[0]))));
            spannableStringBuilder.append((CharSequence) spannableStringBuilder2);
            spannableStringBuilder.append((CharSequence) "\n\n");
            spannableStringBuilder.setSpan(new RelativeSizeSpan(0.5f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
            SpannableStringBuilder replaceTags2 = AndroidUtilities.replaceTags(LocaleController.getString("BoostingGiveawayMsgParticipants", C3632R.string.BoostingGiveawayMsgParticipants));
            spannableStringBuilder.append((CharSequence) replaceTags2);
            spannableStringBuilder.setSpan(new RelativeSizeSpan(1.05f), replaceTags.length() + spannableStringBuilder2.length() + 2, replaceTags.length() + spannableStringBuilder2.length() + 3 + replaceTags2.length(), 33);
            spannableStringBuilder.append((CharSequence) "\n");
            if (tLRPC$TL_messageMediaGiveaway.only_new_subscribers) {
                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("BoostingGiveawayMsgNewSubsPlural", tLRPC$TL_messageMediaGiveaway.channels.size(), new Object[0]));
            } else {
                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("BoostingGiveawayMsgAllSubsPlural", tLRPC$TL_messageMediaGiveaway.channels.size(), new Object[0]));
            }
            SpannableStringBuilder replaceTags3 = AndroidUtilities.replaceTags(LocaleController.getString("BoostingWinnersDate", C3632R.string.BoostingWinnersDate));
            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(replaceTags3);
            spannableStringBuilder3.setSpan(new RelativeSizeSpan(1.05f), 0, replaceTags3.length(), 33);
            Date date = new Date(tLRPC$TL_messageMediaGiveaway.until_date * 1000);
            String format = LocaleController.getInstance().formatterGiveawayCard.format(date);
            String format2 = LocaleController.getInstance().formatterDay.format(date);
            spannableStringBuilder3.append((CharSequence) "\n");
            spannableStringBuilder3.append((CharSequence) LocaleController.formatString("formatDateAtTime", C3632R.string.formatDateAtTime, format, format2));
            int i3 = m104dp;
            int i4 = m104dp;
            this.topLayout = StaticLayoutEx.createStaticLayout(spannableStringBuilder, this.textPaint, i3, Layout.Alignment.ALIGN_CENTER, 1.0f, AndroidUtilities.m104dp(2), false, TextUtils.TruncateAt.END, i4, 10);
            this.bottomLayout = StaticLayoutEx.createStaticLayout(spannableStringBuilder3, this.textPaint, i3, Layout.Alignment.ALIGN_CENTER, 1.0f, AndroidUtilities.m104dp(2), false, TextUtils.TruncateAt.END, i4, 10);
            int i5 = 0;
            for (int i6 = 0; i6 < this.topLayout.getLineCount(); i6++) {
                i5 = (int) Math.max(i5, Math.ceil(this.topLayout.getLineWidth(i6)));
            }
            for (int i7 = 0; i7 < this.bottomLayout.getLineCount(); i7++) {
                i5 = (int) Math.max(i5, Math.ceil(this.bottomLayout.getLineWidth(i7)));
            }
            if (i5 < AndroidUtilities.m104dp(180)) {
                i5 = AndroidUtilities.m104dp(180);
            }
            if (tLRPC$TL_messageMediaGiveaway.countries_iso2.size() > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<String> it = tLRPC$TL_messageMediaGiveaway.countries_iso2.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    String displayCountry = new Locale("", next).getDisplayCountry(Locale.getDefault());
                    String languageFlag = LocaleController.getLanguageFlag(next);
                    SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                    if (languageFlag != null) {
                        spannableStringBuilder4.append((CharSequence) languageFlag).append((CharSequence) " ");
                    }
                    spannableStringBuilder4.append((CharSequence) displayCountry);
                    arrayList.add(spannableStringBuilder4);
                }
                if (!arrayList.isEmpty()) {
                    this.countriesLayout = StaticLayoutEx.createStaticLayout(Emoji.replaceEmoji(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingGiveAwayFromCountries", C3632R.string.BoostingGiveAwayFromCountries, TextUtils.join(", ", arrayList))), this.countriesTextPaint.getFontMetricsInt(), false), this.countriesTextPaint, i5, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, i5, 10);
                }
            }
            int max = Math.max(i2, Math.min(i5 + AndroidUtilities.m104dp(38), m104dp));
            this.diffTextWidth = max - m104dp;
            float f = max;
            float f2 = m104dp2;
            float f3 = f2 / 2.0f;
            this.giftReceiver.setImageCoords((f / 2.0f) - f3, AndroidUtilities.m104dp(42) - f3, f2, f2);
            StaticLayout staticLayout = this.topLayout;
            this.topHeight = staticLayout.getLineBottom(staticLayout.getLineCount() - 1);
            StaticLayout staticLayout2 = this.bottomLayout;
            this.bottomHeight = staticLayout2.getLineBottom(staticLayout2.getLineCount() - 1);
            StaticLayout staticLayout3 = this.countriesLayout;
            int lineBottom = staticLayout3 != null ? staticLayout3.getLineBottom(staticLayout3.getLineCount() - 1) + AndroidUtilities.m104dp(12) : 0;
            this.countriesHeight = lineBottom;
            int i8 = this.measuredHeight + this.topHeight;
            this.measuredHeight = i8;
            int i9 = i8 + lineBottom;
            this.measuredHeight = i9;
            int i10 = i9 + this.bottomHeight;
            this.measuredHeight = i10;
            this.measuredHeight = i10 + AndroidUtilities.m104dp(128);
            this.measuredWidth = max;
            String str = "x" + tLRPC$TL_messageMediaGiveaway.quantity;
            this.counterStr = str;
            this.counterTextPaint.getTextBounds(str, 0, str.length(), this.counterTextBounds);
            Arrays.fill(this.avatarVisible, false);
            this.measuredHeight += AndroidUtilities.m104dp(30);
            ArrayList arrayList2 = new ArrayList(tLRPC$TL_messageMediaGiveaway.channels.size());
            Iterator<Long> it2 = tLRPC$TL_messageMediaGiveaway.channels.iterator();
            while (it2.hasNext()) {
                Long next2 = it2.next();
                if (MessagesController.getInstance(UserConfig.selectedAccount).getChat(next2) != null) {
                    arrayList2.add(next2);
                }
            }
            float f4 = 0.0f;
            int i11 = 0;
            while (i11 < arrayList2.size()) {
                long longValue = ((Long) arrayList2.get(i11)).longValue();
                TLRPC$Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(longValue));
                if (chat != null) {
                    this.avatarVisible[i11] = z;
                    this.chatTitles[i11] = TextUtils.ellipsize(Emoji.replaceEmoji((CharSequence) chat.title, this.chatTextPaint.getFontMetricsInt(), AndroidUtilities.m104dp(14), false), this.chatTextPaint, 0.8f * f, TextUtils.TruncateAt.END);
                    float[] fArr = this.chatTitleWidths;
                    TextPaint textPaint = this.chatTextPaint;
                    CharSequence[] charSequenceArr = this.chatTitles;
                    fArr[i11] = textPaint.measureText(charSequenceArr[i11], 0, charSequenceArr[i11].length());
                    float m104dp3 = this.chatTitleWidths[i11] + AndroidUtilities.m104dp(42);
                    f4 += m104dp3;
                    if (i11 > 0) {
                        boolean[] zArr = this.needNewRow;
                        zArr[i11] = f4 > 0.9f * f;
                        if (zArr[i11]) {
                            this.measuredHeight += AndroidUtilities.m104dp(30);
                            f4 = m104dp3;
                        }
                    } else {
                        this.needNewRow[i11] = false;
                    }
                    this.avatarDrawables[i11].setInfo(chat);
                    this.avatarImageReceivers[i11].setForUserOrChat(chat, this.avatarDrawables[i11]);
                    this.avatarImageReceivers[i11].setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(24), AndroidUtilities.m104dp(24));
                } else {
                    this.avatarVisible[i11] = false;
                    this.chatTitles[i11] = "";
                    this.needNewRow[i11] = false;
                    this.chatTitleWidths[i11] = AndroidUtilities.m104dp(20);
                    this.avatarDrawables[i11].setInfo(longValue, "", "");
                }
                i11++;
                z = true;
            }
        }
    }

    public void draw(Canvas canvas, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        boolean[] zArr;
        MessageObject messageObject = this.messageObject;
        if (messageObject == null || !messageObject.isGiveaway()) {
            return;
        }
        if (this.selectorDrawable == null) {
            int color = Theme.getColor(Theme.key_listSelector);
            this.selectorColor = color;
            this.selectorDrawable = Theme.createRadSelectorDrawable(color, 12, 12);
        }
        int multAlpha = Theme.multAlpha(this.chatTextPaint.getColor(), Theme.isCurrentThemeDark() ? 0.12f : 0.1f);
        if (this.selectorColor != multAlpha) {
            Drawable drawable = this.selectorDrawable;
            this.selectorColor = multAlpha;
            Theme.setSelectorDrawableColor(drawable, multAlpha, true);
        }
        this.textPaint.setColor(Theme.chat_msgTextPaint.getColor());
        this.countriesTextPaint.setColor(Theme.chat_msgTextPaint.getColor());
        if (this.messageObject.isOutOwner()) {
            TextPaint textPaint = this.chatTextPaint;
            int i3 = Theme.key_chat_outPreviewInstantText;
            textPaint.setColor(Theme.getColor(i3, resourcesProvider));
            this.counterBgPaint.setColor(Theme.getColor(i3, resourcesProvider));
            this.chatBgPaint.setColor(Theme.getColor(Theme.key_chat_outReplyLine, resourcesProvider));
        } else {
            TextPaint textPaint2 = this.chatTextPaint;
            int i4 = Theme.key_chat_inPreviewInstantText;
            textPaint2.setColor(Theme.getColor(i4, resourcesProvider));
            this.counterBgPaint.setColor(Theme.getColor(i4, resourcesProvider));
            this.chatBgPaint.setColor(Theme.getColor(Theme.key_chat_inReplyLine, resourcesProvider));
        }
        this.chatBgPaint.setAlpha((int) (this.chatTextPaint.getAlpha() * 0.1f));
        canvas.save();
        int m104dp = i2 - AndroidUtilities.m104dp(4);
        canvas.translate(m104dp, i);
        this.containerRect.set(m104dp, i, getMeasuredWidth() + m104dp, getMeasuredHeight() + i);
        canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.saveLayerPaint, 31);
        this.giftReceiver.draw(canvas);
        float measuredWidth = getMeasuredWidth() / 2.0f;
        float m104dp2 = AndroidUtilities.m104dp(106);
        int width = this.counterTextBounds.width() + AndroidUtilities.m104dp(12);
        int height = this.counterTextBounds.height() + AndroidUtilities.m104dp(10);
        this.countRect.set(measuredWidth - ((AndroidUtilities.m104dp(2) + width) / 2.0f), m104dp2 - ((height + AndroidUtilities.m104dp(2)) / 2.0f), ((width + AndroidUtilities.m104dp(2)) / 2.0f) + measuredWidth, ((AndroidUtilities.m104dp(2) + height) / 2.0f) + m104dp2);
        canvas.drawRoundRect(this.countRect, AndroidUtilities.m104dp(11), AndroidUtilities.m104dp(11), this.clipRectPaint);
        float f = width / 2.0f;
        float f2 = height / 2.0f;
        this.countRect.set(measuredWidth - f, m104dp2 - f2, f + measuredWidth, m104dp2 + f2);
        canvas.drawRoundRect(this.countRect, AndroidUtilities.m104dp(10), AndroidUtilities.m104dp(10), this.counterBgPaint);
        canvas.drawText(this.counterStr, this.countRect.centerX(), this.countRect.centerY() + AndroidUtilities.m104dp(4), this.counterTextPaint);
        canvas.restore();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(128));
        canvas.save();
        canvas.translate(this.diffTextWidth / 2.0f, BitmapDescriptorFactory.HUE_RED);
        this.topLayout.draw(canvas);
        canvas.restore();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.topHeight + AndroidUtilities.m104dp(6));
        int i5 = 0;
        int m104dp3 = AndroidUtilities.m104dp(128) + i + this.topHeight + AndroidUtilities.m104dp(6);
        while (true) {
            boolean[] zArr2 = this.avatarVisible;
            if (i5 >= zArr2.length) {
                break;
            } else if (zArr2[i5]) {
                canvas.save();
                int i6 = i5;
                float f3 = 0.0f;
                do {
                    f3 += this.chatTitleWidths[i6] + AndroidUtilities.m104dp(42);
                    i6++;
                    zArr = this.avatarVisible;
                    if (i6 >= zArr.length || this.needNewRow[i6]) {
                        break;
                    }
                } while (zArr[i6]);
                float f4 = measuredWidth - (f3 / 2.0f);
                canvas.translate(f4, BitmapDescriptorFactory.HUE_RED);
                int i7 = ((int) f4) + m104dp;
                int i8 = i5;
                while (true) {
                    this.avatarImageReceivers[i8].draw(canvas);
                    CharSequence[] charSequenceArr = this.chatTitles;
                    int i9 = i7;
                    canvas.drawText(charSequenceArr[i8], 0, charSequenceArr[i8].length(), AndroidUtilities.m104dp(30), AndroidUtilities.m104dp(16), this.chatTextPaint);
                    this.chatRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.chatTitleWidths[i8] + AndroidUtilities.m104dp(42), AndroidUtilities.m104dp(24));
                    canvas.drawRoundRect(this.chatRect, AndroidUtilities.m104dp(12), AndroidUtilities.m104dp(12), this.chatBgPaint);
                    float f5 = i9;
                    this.clickRect[i8].set(i9, m104dp3, (int) (this.chatRect.width() + f5), AndroidUtilities.m104dp(24) + m104dp3);
                    canvas.translate(this.chatRect.width() + AndroidUtilities.m104dp(6), BitmapDescriptorFactory.HUE_RED);
                    i7 = (int) (f5 + this.chatRect.width() + AndroidUtilities.m104dp(6));
                    i5 = i8 + 1;
                    boolean[] zArr3 = this.avatarVisible;
                    if (i5 >= zArr3.length || this.needNewRow[i5] || !zArr3[i5]) {
                        break;
                    }
                    i8 = i5;
                }
                canvas.restore();
                canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(30));
                m104dp3 += AndroidUtilities.m104dp(30);
            } else {
                i5++;
            }
        }
        if (this.countriesLayout != null) {
            canvas.save();
            canvas.translate((this.measuredWidth - this.countriesLayout.getWidth()) / 2.0f, AndroidUtilities.m104dp(4));
            this.countriesLayout.draw(canvas);
            canvas.restore();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, this.countriesHeight);
        }
        canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(6));
        canvas.save();
        canvas.translate(this.diffTextWidth / 2.0f, BitmapDescriptorFactory.HUE_RED);
        this.bottomLayout.draw(canvas);
        canvas.restore();
        canvas.restore();
        int i10 = this.pressedPos;
        if (i10 >= 0) {
            this.selectorDrawable.setBounds(this.clickRect[i10]);
            this.selectorDrawable.draw(canvas);
        }
    }

    public void onDetachedFromWindow() {
        this.giftReceiver.onDetachedFromWindow();
        ImageReceiver[] imageReceiverArr = this.avatarImageReceivers;
        if (imageReceiverArr != null) {
            for (ImageReceiver imageReceiver : imageReceiverArr) {
                imageReceiver.onDetachedFromWindow();
            }
        }
    }

    public void onAttachedToWindow() {
        this.giftReceiver.onAttachedToWindow();
        ImageReceiver[] imageReceiverArr = this.avatarImageReceivers;
        if (imageReceiverArr != null) {
            for (ImageReceiver imageReceiver : imageReceiverArr) {
                imageReceiver.onAttachedToWindow();
            }
        }
    }

    public int getMeasuredHeight() {
        return this.measuredHeight;
    }

    public int getMeasuredWidth() {
        return this.measuredWidth;
    }

    private void createImages() {
        if (this.avatarImageReceivers != null) {
            return;
        }
        this.avatarImageReceivers = new ImageReceiver[10];
        this.avatarDrawables = new AvatarDrawable[10];
        this.avatarVisible = new boolean[10];
        int i = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.avatarImageReceivers;
            if (i >= imageReceiverArr.length) {
                return;
            }
            imageReceiverArr[i] = new ImageReceiver(this.parentView);
            this.avatarImageReceivers[i].setAllowLoadingOnAttachedOnly(true);
            this.avatarImageReceivers[i].setRoundRadius(AndroidUtilities.m104dp(12));
            this.avatarDrawables[i] = new AvatarDrawable();
            this.avatarDrawables[i].setTextSize(AndroidUtilities.m104dp(18));
            this.clickRect[i] = new Rect();
            i++;
        }
    }

    private void checkArraysLimits(int i) {
        ImageReceiver[] imageReceiverArr = this.avatarImageReceivers;
        if (imageReceiverArr.length < i) {
            int length = imageReceiverArr.length;
            this.avatarImageReceivers = (ImageReceiver[]) Arrays.copyOf(imageReceiverArr, i);
            this.avatarDrawables = (AvatarDrawable[]) Arrays.copyOf(this.avatarDrawables, i);
            this.avatarVisible = Arrays.copyOf(this.avatarVisible, i);
            this.chatTitles = (CharSequence[]) Arrays.copyOf(this.chatTitles, i);
            this.chatTitleWidths = Arrays.copyOf(this.chatTitleWidths, i);
            this.needNewRow = Arrays.copyOf(this.needNewRow, i);
            this.clickRect = (Rect[]) Arrays.copyOf(this.clickRect, i);
            for (int i2 = length - 1; i2 < i; i2++) {
                this.avatarImageReceivers[i2] = new ImageReceiver(this.parentView);
                this.avatarImageReceivers[i2].setAllowLoadingOnAttachedOnly(true);
                this.avatarImageReceivers[i2].setRoundRadius(AndroidUtilities.m104dp(12));
                this.avatarDrawables[i2] = new AvatarDrawable();
                this.avatarDrawables[i2].setTextSize(AndroidUtilities.m104dp(18));
                this.clickRect[i2] = new Rect();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x008e, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setGiftImage(org.telegram.messenger.MessageObject r13) {
        /*
            r12 = this;
            org.telegram.tgnet.TLRPC$Message r13 = r13.messageOwner
            org.telegram.tgnet.TLRPC$MessageMedia r13 = r13.media
            org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway r13 = (org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway) r13
            int r0 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.UserConfig r0 = org.telegram.messenger.UserConfig.getInstance(r0)
            java.lang.String r0 = r0.premiumGiftsStickerPack
            if (r0 != 0) goto L1a
            int r13 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.MediaDataController r13 = org.telegram.messenger.MediaDataController.getInstance(r13)
            r13.checkPremiumGiftStickers()
            return
        L1a:
            int r1 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.MediaDataController r1 = org.telegram.messenger.MediaDataController.getInstance(r1)
            org.telegram.tgnet.TLRPC$TL_messages_stickerSet r1 = r1.getStickerSetByName(r0)
            if (r1 != 0) goto L30
            int r1 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.MediaDataController r1 = org.telegram.messenger.MediaDataController.getInstance(r1)
            org.telegram.tgnet.TLRPC$TL_messages_stickerSet r1 = r1.getStickerSetByEmojiOrName(r0)
        L30:
            r7 = r1
            r1 = 0
            r2 = 0
            if (r7 == 0) goto La3
            int r13 = r13.months
            java.util.Map<java.lang.Integer, java.lang.String> r3 = org.telegram.p043ui.Components.Premium.boosts.cells.msg.GiveawayMessageCell.monthsToEmoticon
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            java.lang.Object r13 = r3.get(r13)
            java.lang.String r13 = (java.lang.String) r13
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_stickerPack> r3 = r7.packs
            java.util.Iterator r3 = r3.iterator()
        L49:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L90
            java.lang.Object r4 = r3.next()
            org.telegram.tgnet.TLRPC$TL_stickerPack r4 = (org.telegram.tgnet.TLRPC$TL_stickerPack) r4
            java.lang.String r5 = r4.emoticon
            boolean r5 = java.util.Objects.equals(r5, r13)
            if (r5 == 0) goto L8e
            java.util.ArrayList<java.lang.Long> r4 = r4.documents
            java.util.Iterator r4 = r4.iterator()
        L63:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L8e
            java.lang.Object r5 = r4.next()
            java.lang.Long r5 = (java.lang.Long) r5
            long r5 = r5.longValue()
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Document> r8 = r7.documents
            java.util.Iterator r8 = r8.iterator()
        L79:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto L8c
            java.lang.Object r9 = r8.next()
            org.telegram.tgnet.TLRPC$Document r9 = (org.telegram.tgnet.TLRPC$Document) r9
            long r10 = r9.f1610id
            int r10 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r10 != 0) goto L79
            r2 = r9
        L8c:
            if (r2 == 0) goto L63
        L8e:
            if (r2 == 0) goto L49
        L90:
            if (r2 != 0) goto La3
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Document> r13 = r7.documents
            boolean r13 = r13.isEmpty()
            if (r13 != 0) goto La3
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Document> r13 = r7.documents
            java.lang.Object r13 = r13.get(r1)
            r2 = r13
            org.telegram.tgnet.TLRPC$Document r2 = (org.telegram.tgnet.TLRPC$Document) r2
        La3:
            if (r2 == 0) goto Lc7
            java.util.ArrayList<org.telegram.tgnet.TLRPC$PhotoSize> r13 = r2.thumbs
            int r0 = org.telegram.p043ui.ActionBar.Theme.key_emptyListPlaceholder
            r1 = 1045220557(0x3e4ccccd, float:0.2)
            org.telegram.messenger.SvgHelper$SvgDrawable r5 = org.telegram.messenger.DocumentObject.getSvgThumb(r13, r0, r1)
            if (r5 == 0) goto Lb7
            r13 = 512(0x200, float:7.175E-43)
            r5.overrideWidthAndHeight(r13, r13)
        Lb7:
            org.telegram.messenger.ImageReceiver r13 = r12.giftReceiver
            org.telegram.messenger.ImageLocation r3 = org.telegram.messenger.ImageLocation.getForDocument(r2)
            r8 = 1
            java.lang.String r4 = "160_160_firstframe"
            java.lang.String r6 = "tgs"
            r2 = r13
            r2.setImage(r3, r4, r5, r6, r7, r8)
            goto Ld5
        Lc7:
            int r13 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.MediaDataController r13 = org.telegram.messenger.MediaDataController.getInstance(r13)
            if (r7 != 0) goto Ld1
            r2 = 1
            goto Ld2
        Ld1:
            r2 = r1
        Ld2:
            r13.loadStickersByEmojiOrName(r0, r1, r2)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Premium.boosts.cells.msg.GiveawayMessageCell.setGiftImage(org.telegram.messenger.MessageObject):void");
    }
}
