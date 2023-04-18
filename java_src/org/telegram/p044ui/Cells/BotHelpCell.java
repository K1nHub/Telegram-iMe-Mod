package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileRefController;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SharedConfig;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LinkSpanDrawable;
import org.telegram.p044ui.Components.TypefaceSpan;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInfo;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_photo;
import org.telegram.tgnet.TLRPC$TL_photoStrippedSize;
/* renamed from: org.telegram.ui.Cells.BotHelpCell */
/* loaded from: classes5.dex */
public class BotHelpCell extends View {
    private boolean animating;
    private String currentPhotoKey;
    private BotHelpCellDelegate delegate;
    private int height;
    private int imagePadding;
    private ImageReceiver imageReceiver;
    private boolean isPhotoVisible;
    private boolean isTextVisible;
    private LinkSpanDrawable.LinkCollector links;
    private String oldText;
    private int photoHeight;
    private LinkSpanDrawable<ClickableSpan> pressedLink;
    private Theme.ResourcesProvider resourcesProvider;
    private Drawable selectorDrawable;
    private int selectorDrawableRadius;
    private StaticLayout textLayout;
    private int textX;
    private int textY;
    private int width;

    /* renamed from: org.telegram.ui.Cells.BotHelpCell$BotHelpCellDelegate */
    /* loaded from: classes5.dex */
    public interface BotHelpCellDelegate {
        void didPressUrl(String str);
    }

    public BotHelpCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.links = new LinkSpanDrawable.LinkCollector(this);
        this.imagePadding = AndroidUtilities.m50dp(4);
        this.resourcesProvider = resourcesProvider;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        imageReceiver.setInvalidateAll(true);
        this.imageReceiver.setCrossfadeWithOldImage(true);
        this.imageReceiver.setCrossfadeDuration(300);
        int color = Theme.getColor("listSelectorSDK21", resourcesProvider);
        int i = SharedConfig.bubbleRadius;
        this.selectorDrawableRadius = i;
        Drawable createRadSelectorDrawable = Theme.createRadSelectorDrawable(color, i, i);
        this.selectorDrawable = createRadSelectorDrawable;
        createRadSelectorDrawable.setCallback(this);
    }

    public void setDelegate(BotHelpCellDelegate botHelpCellDelegate) {
        this.delegate = botHelpCellDelegate;
    }

    private void resetPressedLink() {
        if (this.pressedLink != null) {
            this.pressedLink = null;
        }
        this.links.clear();
        invalidate();
    }

    public void setText(boolean z, String str) {
        setText(z, str, null, null);
    }

    public void setText(boolean z, String str, TLObject tLObject, TLRPC$BotInfo tLRPC$BotInfo) {
        int min;
        boolean z2 = tLObject != null;
        boolean z3 = !TextUtils.isEmpty(str);
        if ((str == null || str.length() == 0) && !z2) {
            setVisibility(8);
            return;
        }
        String str2 = str == null ? "" : str;
        if (str2.equals(this.oldText) && this.isPhotoVisible == z2) {
            return;
        }
        this.isPhotoVisible = z2;
        this.isTextVisible = z3;
        if (z2) {
            String keyForParentObject = FileRefController.getKeyForParentObject(tLRPC$BotInfo);
            if (!Objects.equals(this.currentPhotoKey, keyForParentObject)) {
                this.currentPhotoKey = keyForParentObject;
                if (tLObject instanceof TLRPC$TL_photo) {
                    TLRPC$Photo tLRPC$Photo = (TLRPC$Photo) tLObject;
                    this.imageReceiver.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, 400), tLRPC$Photo), "400_400", null, "jpg", tLRPC$BotInfo, 0);
                } else if (tLObject instanceof TLRPC$Document) {
                    TLRPC$Document tLRPC$Document = (TLRPC$Document) tLObject;
                    TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 400);
                    BitmapDrawable bitmapDrawable = null;
                    if (SharedConfig.getDevicePerformanceClass() != 0) {
                        Iterator<TLRPC$PhotoSize> it = tLRPC$Document.thumbs.iterator();
                        while (it.hasNext()) {
                            TLRPC$PhotoSize next = it.next();
                            if (next instanceof TLRPC$TL_photoStrippedSize) {
                                bitmapDrawable = new BitmapDrawable(getResources(), ImageLoader.getStrippedPhotoBitmap(next.bytes, "b"));
                            }
                        }
                    }
                    this.imageReceiver.setImage(ImageLocation.getForDocument(tLRPC$Document), ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForDocument(MessageObject.getDocumentVideoThumb(tLRPC$Document), tLRPC$Document), null, ImageLocation.getForDocument(closestPhotoSizeWithSize, tLRPC$Document), "86_86_b", bitmapDrawable, tLRPC$Document.size, "mp4", tLRPC$BotInfo, 0);
                }
                int m50dp = AndroidUtilities.m50dp(SharedConfig.bubbleRadius) - AndroidUtilities.m50dp(2);
                int m50dp2 = AndroidUtilities.m50dp(4);
                if (!this.isTextVisible) {
                    m50dp2 = m50dp;
                }
                this.imageReceiver.setRoundRadius(m50dp, m50dp, m50dp2, m50dp2);
            }
        }
        this.oldText = AndroidUtilities.getSafeString(str2);
        setVisibility(0);
        if (AndroidUtilities.isTablet()) {
            min = AndroidUtilities.getMinTabletSide();
        } else {
            Point point = AndroidUtilities.displaySize;
            min = Math.min(point.x, point.y);
        }
        int i = (int) (min * 0.7f);
        if (this.isTextVisible) {
            String[] split = str2.split("\n");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            String string = LocaleController.getString(C3242R.string.BotInfoTitle);
            if (z) {
                spannableStringBuilder.append((CharSequence) string);
                spannableStringBuilder.append((CharSequence) "\n\n");
            }
            for (int i2 = 0; i2 < split.length; i2++) {
                spannableStringBuilder.append((CharSequence) split[i2].trim());
                if (i2 != split.length - 1) {
                    spannableStringBuilder.append((CharSequence) "\n");
                }
            }
            MessageObject.addLinks(false, spannableStringBuilder);
            if (z) {
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, string.length(), 33);
            }
            Emoji.replaceEmoji(spannableStringBuilder, Theme.chat_msgTextPaint.getFontMetricsInt(), AndroidUtilities.m50dp(20), false);
            try {
                StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, Theme.chat_msgTextPaint, i - (this.isPhotoVisible ? AndroidUtilities.m50dp(5) : 0), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.textLayout = staticLayout;
                this.width = 0;
                this.height = staticLayout.getHeight() + AndroidUtilities.m50dp(22);
                int lineCount = this.textLayout.getLineCount();
                for (int i3 = 0; i3 < lineCount; i3++) {
                    this.width = (int) Math.ceil(Math.max(this.width, this.textLayout.getLineWidth(i3) + this.textLayout.getLineLeft(i3)));
                }
                if (this.width > i || this.isPhotoVisible) {
                    this.width = i;
                }
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        } else if (this.isPhotoVisible) {
            this.width = i;
        }
        int m50dp3 = this.width + AndroidUtilities.m50dp(22);
        this.width = m50dp3;
        if (this.isPhotoVisible) {
            int i4 = this.height;
            int i5 = (int) (m50dp3 * 0.5625d);
            this.photoHeight = i5;
            this.height = i4 + i5 + AndroidUtilities.m50dp(4);
        }
    }

    public CharSequence getText() {
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout == null) {
            return null;
        }
        return staticLayout.getText();
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0179  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.BotHelpCell.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), this.height + AndroidUtilities.m50dp(8));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int width = (getWidth() - this.width) / 2;
        int m50dp = this.photoHeight + AndroidUtilities.m50dp(2);
        Drawable shadowDrawable = Theme.chat_msgInMediaDrawable.getShadowDrawable();
        if (shadowDrawable != null) {
            shadowDrawable.setBounds(width, m50dp, this.width + width, this.height + m50dp);
            shadowDrawable.draw(canvas);
        }
        Point point = AndroidUtilities.displaySize;
        int i2 = point.x;
        int i3 = point.y;
        if (getParent() instanceof View) {
            View view = (View) getParent();
            i2 = view.getMeasuredWidth();
            i3 = view.getMeasuredHeight();
        }
        int i4 = i3;
        Theme.MessageDrawable messageDrawable = (Theme.MessageDrawable) getThemedDrawable("drawableMsgInMedia");
        messageDrawable.setTop((int) getY(), i2, i4, false, false);
        messageDrawable.setBounds(width, 0, this.width + width, this.height);
        messageDrawable.draw(canvas);
        Drawable drawable = this.selectorDrawable;
        if (drawable != null) {
            int i5 = this.selectorDrawableRadius;
            int i6 = SharedConfig.bubbleRadius;
            if (i5 != i6) {
                this.selectorDrawableRadius = i6;
                Theme.setMaskDrawableRad(drawable, i6, i6);
            }
            this.selectorDrawable.setBounds(AndroidUtilities.m50dp(2) + width, AndroidUtilities.m50dp(2), (this.width + width) - AndroidUtilities.m50dp(2), this.height - AndroidUtilities.m50dp(2));
            this.selectorDrawable.draw(canvas);
        }
        this.imageReceiver.setImageCoords(width + i, this.imagePadding, this.width - (i * 2), this.photoHeight - i);
        this.imageReceiver.draw(canvas);
        Theme.chat_msgTextPaint.setColor(getThemedColor("chat_messageTextIn"));
        Theme.chat_msgTextPaint.linkColor = getThemedColor("chat_messageLinkIn");
        canvas.save();
        int m50dp2 = AndroidUtilities.m50dp(this.isPhotoVisible ? 14 : 11) + width;
        this.textX = m50dp2;
        float f = m50dp2;
        int m50dp3 = AndroidUtilities.m50dp(11) + m50dp;
        this.textY = m50dp3;
        canvas.translate(f, m50dp3);
        if (this.links.draw(canvas)) {
            invalidate();
        }
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout != null) {
            staticLayout.draw(canvas);
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.imageReceiver.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.imageReceiver.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout != null) {
            accessibilityNodeInfo.setText(staticLayout.getText());
        }
    }

    public boolean animating() {
        return this.animating;
    }

    public void setAnimating(boolean z) {
        this.animating = z;
    }

    private int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }

    private Drawable getThemedDrawable(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Drawable drawable = resourcesProvider != null ? resourcesProvider.getDrawable(str) : null;
        return drawable != null ? drawable : Theme.getThemeDrawable(str);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.selectorDrawable || super.verifyDrawable(drawable);
    }
}
