package org.telegram.p043ui.Stories;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileRefController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EmojiPacksAlert;
import org.telegram.p043ui.Components.LoadingDrawable;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$StickerSet;
import org.telegram.tgnet.TLRPC$StickerSetCovered;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputDocument;
import org.telegram.tgnet.TLRPC$TL_inputPhoto;
import org.telegram.tgnet.TLRPC$TL_inputStickeredMediaDocument;
import org.telegram.tgnet.TLRPC$TL_inputStickeredMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_messages_getAttachedStickers;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_stickerSetFullCovered;
import org.telegram.tgnet.TLRPC$Vector;
/* renamed from: org.telegram.ui.Stories.StoryContainsEmojiButton */
/* loaded from: classes6.dex */
public class StoryContainsEmojiButton extends View {
    private static Object lastRequestParentObject;
    private static TLRPC$Vector lastResponse;
    private final ColorFilter colorFilter;
    private boolean emoji;
    private ArrayList<TLRPC$InputStickerSet> inputSets;
    private int lastContentWidth;
    private StaticLayout layout;
    private float layoutLeft;
    private ValueAnimator loadAnimator;
    private float loadT;
    private final LoadingDrawable loadingDrawable;
    private final Path loadingPath;
    private Object parentObject;
    private final Theme.ResourcesProvider resourcesProvider;
    private ArrayList<TLRPC$StickerSetCovered> sets;
    private int shiftDp;
    private AnimatedEmojiSpan.EmojiGroupedSpans stack;
    private boolean stickers;
    private final TextPaint textPaint;
    private CharSequence toSetText;

    public StoryContainsEmojiButton(Context context, int i, TLObject tLObject, Object obj, boolean z, ArrayList<TLRPC$InputStickerSet> arrayList, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.shiftDp = -12;
        this.resourcesProvider = resourcesProvider;
        setMinimumWidth(AndroidUtilities.m107dp(196));
        setPadding(AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(8));
        setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 0, 8));
        setClickable(true);
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        textPaint.setTextSize(AndroidUtilities.m107dp(13));
        int i2 = Theme.key_actionBarDefaultSubmenuItem;
        textPaint.setColor(Theme.getColor(i2, resourcesProvider));
        this.colorFilter = new PorterDuffColorFilter(Theme.getColor(i2, resourcesProvider), PorterDuff.Mode.SRC_IN);
        LoadingDrawable loadingDrawable = new LoadingDrawable(resourcesProvider);
        this.loadingDrawable = loadingDrawable;
        loadingDrawable.setCallback(this);
        loadingDrawable.setColors(Theme.multAlpha(-1, 0.2f), Theme.multAlpha(-1, 0.05f));
        Path path = new Path();
        this.loadingPath = path;
        loadingDrawable.usePath(path);
        loadingDrawable.setRadiiDp(4.0f);
        load(i, z, tLObject, arrayList, obj);
    }

    public EmojiPacksAlert getAlert() {
        if (this.inputSets == null) {
            int i = -this.shiftDp;
            this.shiftDp = i;
            AndroidUtilities.shakeViewSpring(this, i);
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            return null;
        }
        return new EmojiPacksAlert(null, getContext(), this.resourcesProvider, this.inputSets);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.loadingDrawable || super.verifyDrawable(drawable);
    }

    public void setText(CharSequence charSequence) {
        if (getMeasuredWidth() <= 0) {
            this.toSetText = charSequence;
            return;
        }
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        if (measuredWidth <= 0) {
            this.toSetText = charSequence;
            return;
        }
        StaticLayout staticLayout = new StaticLayout(charSequence, this.textPaint, measuredWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.layout = staticLayout;
        this.layoutLeft = staticLayout.getLineCount() > 0 ? this.layout.getLineLeft(0) : BitmapDescriptorFactory.HUE_RED;
        if (this.layout.getLineCount() > 0) {
            this.layout.getLineWidth(0);
        }
        this.stack = AnimatedEmojiSpan.update(0, this, this.stack, this.layout);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z = View.MeasureSpec.getMode(i) == 1073741824;
        int paddingTop = getPaddingTop();
        int m107dp = AndroidUtilities.m107dp(29);
        StaticLayout staticLayout = this.layout;
        setMeasuredDimension(z ? View.MeasureSpec.getSize(i) : getMinimumWidth(), paddingTop + AndroidUtilities.lerp(m107dp, staticLayout == null ? AndroidUtilities.m107dp(29) : staticLayout.getHeight(), this.loadT) + getPaddingBottom());
        int size = (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        if (z) {
            CharSequence charSequence = this.toSetText;
            if (charSequence == null && (this.layout == null || this.lastContentWidth == size)) {
                return;
            }
            if (charSequence == null) {
                charSequence = this.layout.getText();
            }
            setText(charSequence);
            this.toSetText = null;
            this.lastContentWidth = size;
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        float f = this.loadT;
        if (f < 1.0f) {
            this.loadingDrawable.setAlpha((int) ((1.0f - f) * 255.0f));
            this.loadingPath.rewind();
            this.loadingPath.addRect(getPaddingLeft(), getPaddingTop(), getMeasuredWidth() - getPaddingRight(), getPaddingTop() + AndroidUtilities.m107dp(12), Path.Direction.CW);
            this.loadingPath.addRect(getPaddingLeft(), getPaddingTop() + AndroidUtilities.m107dp(16), getPaddingLeft() + (((getMeasuredWidth() - getPaddingRight()) - getPaddingLeft()) * 0.46f), getPaddingTop() + AndroidUtilities.m107dp(28), Path.Direction.CW);
            this.loadingDrawable.draw(canvas);
            invalidate();
        }
        if (this.layout != null) {
            float f2 = this.loadT;
            float f3 = BitmapDescriptorFactory.HUE_RED;
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                float paddingLeft = getPaddingLeft();
                if (!LocaleController.isRTL) {
                    f3 = this.layoutLeft;
                }
                canvas.translate(paddingLeft - f3, getPaddingTop());
                this.textPaint.setAlpha((int) (this.loadT * 255.0f));
                this.layout.draw(canvas);
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.stack, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.loadT, this.colorFilter);
                canvas.restore();
            }
        }
    }

    public void load(final int i, boolean z, TLObject tLObject, final ArrayList<TLRPC$InputStickerSet> arrayList, final Object obj) {
        TLRPC$Vector tLRPC$Vector;
        final boolean[] zArr = {true};
        this.parentObject = obj;
        if (z) {
            this.sets = new ArrayList<>();
            this.inputSets = new ArrayList<>();
            this.emoji = false;
            this.stickers = false;
            final TLRPC$TL_messages_getAttachedStickers tLRPC$TL_messages_getAttachedStickers = new TLRPC$TL_messages_getAttachedStickers();
            if (tLObject instanceof TLRPC$Photo) {
                TLRPC$Photo tLRPC$Photo = (TLRPC$Photo) tLObject;
                TLRPC$TL_inputStickeredMediaPhoto tLRPC$TL_inputStickeredMediaPhoto = new TLRPC$TL_inputStickeredMediaPhoto();
                TLRPC$TL_inputPhoto tLRPC$TL_inputPhoto = new TLRPC$TL_inputPhoto();
                tLRPC$TL_inputStickeredMediaPhoto.f1677id = tLRPC$TL_inputPhoto;
                tLRPC$TL_inputPhoto.f1624id = tLRPC$Photo.f1632id;
                tLRPC$TL_inputPhoto.access_hash = tLRPC$Photo.access_hash;
                byte[] bArr = tLRPC$Photo.file_reference;
                tLRPC$TL_inputPhoto.file_reference = bArr;
                if (bArr == null) {
                    tLRPC$TL_inputPhoto.file_reference = new byte[0];
                }
                tLRPC$TL_messages_getAttachedStickers.media = tLRPC$TL_inputStickeredMediaPhoto;
            } else if (tLObject instanceof TLRPC$Document) {
                TLRPC$Document tLRPC$Document = (TLRPC$Document) tLObject;
                TLRPC$TL_inputStickeredMediaDocument tLRPC$TL_inputStickeredMediaDocument = new TLRPC$TL_inputStickeredMediaDocument();
                TLRPC$TL_inputDocument tLRPC$TL_inputDocument = new TLRPC$TL_inputDocument();
                tLRPC$TL_inputStickeredMediaDocument.f1676id = tLRPC$TL_inputDocument;
                tLRPC$TL_inputDocument.f1618id = tLRPC$Document.f1610id;
                tLRPC$TL_inputDocument.access_hash = tLRPC$Document.access_hash;
                byte[] bArr2 = tLRPC$Document.file_reference;
                tLRPC$TL_inputDocument.file_reference = bArr2;
                if (bArr2 == null) {
                    tLRPC$TL_inputDocument.file_reference = new byte[0];
                }
                tLRPC$TL_messages_getAttachedStickers.media = tLRPC$TL_inputStickeredMediaDocument;
            }
            final RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.Stories.StoryContainsEmojiButton$$ExternalSyntheticLambda6
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error) {
                    StoryContainsEmojiButton.this.lambda$load$2(obj, arrayList, zArr, i, tLObject2, tLRPC$TL_error);
                }
            };
            if (lastRequestParentObject == obj && (tLRPC$Vector = lastResponse) != null) {
                zArr[0] = false;
                requestDelegate.run(tLRPC$Vector, null);
                return;
            }
            ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_messages_getAttachedStickers, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoryContainsEmojiButton$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error) {
                    StoryContainsEmojiButton.lambda$load$3(obj, i, tLRPC$TL_messages_getAttachedStickers, requestDelegate, tLObject2, tLRPC$TL_error);
                }
            });
            return;
        }
        this.emoji = true;
        this.stickers = false;
        ArrayList<TLRPC$InputStickerSet> arrayList2 = new ArrayList<>();
        this.inputSets = arrayList2;
        arrayList2.addAll(arrayList);
        if (this.inputSets.size() == 1) {
            MediaDataController.getInstance(i).getStickerSet(this.inputSets.get(0), 0, false, new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoryContainsEmojiButton$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj2) {
                    StoryContainsEmojiButton.this.lambda$load$4((TLRPC$TL_messages_stickerSet) obj2);
                }
            });
            return;
        }
        set(this.inputSets.size());
        animateLoad(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$2(final Object obj, final ArrayList arrayList, final boolean[] zArr, final int i, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryContainsEmojiButton$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                StoryContainsEmojiButton.this.lambda$load$1(tLObject, obj, arrayList, zArr, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$1(TLObject tLObject, Object obj, ArrayList arrayList, boolean[] zArr, int i) {
        boolean z;
        if (tLObject == null) {
            return;
        }
        TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
        lastRequestParentObject = obj;
        lastResponse = tLRPC$Vector;
        for (int i2 = 0; i2 < tLRPC$Vector.objects.size(); i2++) {
            TLRPC$StickerSetCovered tLRPC$StickerSetCovered = (TLRPC$StickerSetCovered) tLRPC$Vector.objects.get(i2);
            this.sets.add(tLRPC$StickerSetCovered);
            TLRPC$StickerSet tLRPC$StickerSet = tLRPC$StickerSetCovered.set;
            if (tLRPC$StickerSet != null) {
                this.inputSets.add(MediaDataController.getInputStickerSet(tLRPC$StickerSet));
                TLRPC$StickerSet tLRPC$StickerSet2 = tLRPC$StickerSetCovered.set;
                if (tLRPC$StickerSet2.emojis) {
                    this.emoji = true;
                } else if (!tLRPC$StickerSet2.masks) {
                    this.stickers = true;
                }
            }
        }
        int size = arrayList != null ? arrayList.size() : 0;
        ArrayList<TLRPC$StickerSetCovered> arrayList2 = this.sets;
        int size2 = size + (arrayList2 == null ? 0 : arrayList2.size());
        if (this.inputSets != null && arrayList != null && !arrayList.isEmpty()) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                TLRPC$InputStickerSet tLRPC$InputStickerSet = (TLRPC$InputStickerSet) arrayList.get(i3);
                long j = tLRPC$InputStickerSet.f1625id;
                int i4 = 0;
                while (true) {
                    if (i4 >= this.inputSets.size()) {
                        z = false;
                        break;
                    } else if (this.inputSets.get(i4).f1625id == j) {
                        z = true;
                        break;
                    } else {
                        i4++;
                    }
                }
                if (!z) {
                    this.inputSets.add(tLRPC$InputStickerSet);
                }
            }
            this.emoji = true;
        }
        if (size2 == 1) {
            if (this.sets.size() >= 1) {
                set(this.sets.get(0));
            } else if (arrayList != null && arrayList.size() >= 1) {
                zArr[0] = false;
                MediaDataController.getInstance(i).getStickerSet((TLRPC$InputStickerSet) arrayList.get(0), 0, false, new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoryContainsEmojiButton$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj2) {
                        StoryContainsEmojiButton.this.lambda$load$0((TLRPC$TL_messages_stickerSet) obj2);
                    }
                });
                return;
            } else {
                set(0);
            }
        } else {
            set(size2);
        }
        animateLoad(zArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$0(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        set(tLRPC$TL_messages_stickerSet);
        animateLoad(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$load$3(Object obj, int i, TLRPC$TL_messages_getAttachedStickers tLRPC$TL_messages_getAttachedStickers, RequestDelegate requestDelegate, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error != null && FileRefController.isFileRefError(tLRPC$TL_error.text) && obj != null) {
            FileRefController.getInstance(i).requestReference(obj, tLRPC$TL_messages_getAttachedStickers, requestDelegate);
        } else {
            requestDelegate.run(tLObject, tLRPC$TL_error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$4(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        set(tLRPC$TL_messages_stickerSet);
        animateLoad(true);
    }

    private void set(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        CharSequence charSequence;
        String string;
        if (tLRPC$TL_messages_stickerSet == null) {
            return;
        }
        SpannableString spannableString = new SpannableString("x " + tLRPC$TL_messages_stickerSet.set.title);
        spannableString.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_chat_messageLinkIn, this.loadingDrawable.resourcesProvider)), 0, spannableString.length(), 33);
        spannableString.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, spannableString.length(), 33);
        TLRPC$Document tLRPC$Document = null;
        ArrayList<TLRPC$Document> arrayList = tLRPC$TL_messages_stickerSet.documents;
        int i = 0;
        while (true) {
            if (i >= arrayList.size()) {
                break;
            } else if (arrayList.get(i).f1610id == tLRPC$TL_messages_stickerSet.set.thumb_document_id) {
                tLRPC$Document = arrayList.get(i);
                break;
            } else {
                i++;
            }
        }
        if (tLRPC$Document == null && !arrayList.isEmpty()) {
            tLRPC$Document = arrayList.get(0);
        }
        if (tLRPC$Document != null) {
            spannableString.setSpan(new AnimatedEmojiSpan(tLRPC$Document, this.textPaint.getFontMetricsInt()), 0, 1, 33);
            charSequence = spannableString;
        } else {
            charSequence = spannableString.subSequence(2, spannableString.length());
        }
        boolean z = this.emoji;
        if (z && this.stickers) {
            string = LocaleController.getString(C3632R.string.StoryContainsStickersEmojiFrom);
        } else if (z) {
            string = LocaleController.getString(C3632R.string.StoryContainsEmojiFrom);
        } else {
            string = LocaleController.getString(C3632R.string.StoryContainsStickersFrom);
        }
        setText(AndroidUtilities.replaceCharSequence("%s", string, charSequence));
    }

    private void set(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
        CharSequence charSequence;
        String string;
        SpannableString spannableString = new SpannableString("x " + tLRPC$StickerSetCovered.set.title);
        spannableString.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_chat_messageLinkIn, this.loadingDrawable.resourcesProvider)), 0, spannableString.length(), 33);
        spannableString.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, spannableString.length(), 33);
        TLRPC$Document tLRPC$Document = tLRPC$StickerSetCovered.cover;
        if (tLRPC$Document == null && (tLRPC$StickerSetCovered instanceof TLRPC$TL_stickerSetFullCovered)) {
            ArrayList<TLRPC$Document> arrayList = ((TLRPC$TL_stickerSetFullCovered) tLRPC$StickerSetCovered).documents;
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i).f1610id == tLRPC$StickerSetCovered.set.thumb_document_id) {
                    tLRPC$Document = arrayList.get(i);
                }
            }
            if (tLRPC$Document == null && !arrayList.isEmpty()) {
                tLRPC$Document = arrayList.get(0);
            }
        }
        if (tLRPC$Document != null) {
            spannableString.setSpan(new AnimatedEmojiSpan(tLRPC$Document, this.textPaint.getFontMetricsInt()), 0, 1, 33);
            charSequence = spannableString;
        } else {
            charSequence = spannableString.subSequence(2, spannableString.length());
        }
        boolean z = this.emoji;
        if (z && this.stickers) {
            string = LocaleController.getString(C3632R.string.StoryContainsStickersEmojiFrom);
        } else if (z) {
            string = LocaleController.getString(C3632R.string.StoryContainsEmojiFrom);
        } else {
            string = LocaleController.getString(C3632R.string.StoryContainsStickersFrom);
        }
        setText(AndroidUtilities.replaceCharSequence("%s", string, charSequence));
    }

    private void set(int i) {
        boolean z = this.emoji;
        if (z && this.stickers) {
            setText(AndroidUtilities.replaceSingleTag(LocaleController.formatPluralString("StoryContainsStickersEmoji", i, new Object[0]), 0, Theme.getColor(Theme.key_chat_messageLinkIn, this.loadingDrawable.resourcesProvider), null));
        } else if (z) {
            setText(AndroidUtilities.replaceSingleTag(LocaleController.formatPluralString("StoryContainsEmoji", i, new Object[0]), 0, Theme.getColor(Theme.key_chat_messageLinkIn, this.loadingDrawable.resourcesProvider), null));
        } else {
            setText(AndroidUtilities.replaceSingleTag(LocaleController.formatPluralString("StoryContainsStickers", i, new Object[0]), 0, Theme.getColor(Theme.key_chat_messageLinkIn, this.loadingDrawable.resourcesProvider), null));
        }
    }

    private void animateLoad(boolean z) {
        ValueAnimator valueAnimator = this.loadAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (z) {
            final boolean z2 = false;
            this.loadAnimator = ValueAnimator.ofFloat(this.loadT, 1.0f);
            if (this.layout == null || Math.abs(getMeasuredHeight() - ((getPaddingTop() + this.layout.getHeight()) + getPaddingBottom())) > AndroidUtilities.m107dp(3)) {
                z2 = true;
            }
            this.loadAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryContainsEmojiButton$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    StoryContainsEmojiButton.this.lambda$animateLoad$5(z2, valueAnimator2);
                }
            });
            this.loadAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.loadAnimator.setStartDelay(150L);
            this.loadAnimator.setDuration(400L);
            this.loadAnimator.start();
            return;
        }
        this.loadT = 1.0f;
        invalidate();
        post(new Runnable() { // from class: org.telegram.ui.Stories.StoryContainsEmojiButton$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                StoryContainsEmojiButton.this.requestLayout();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateLoad$5(boolean z, ValueAnimator valueAnimator) {
        this.loadT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
        if (z) {
            requestLayout();
        }
    }
}
