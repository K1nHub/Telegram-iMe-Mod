package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Premium.PremiumButtonView;
import org.telegram.p043ui.Components.Premium.StarParticlesView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.p043ui.Stories.recorder.HintView2;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$TL_documentAttributeImageSize;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.ChatGreetingsView */
/* loaded from: classes6.dex */
public class ChatGreetingsView extends LinearLayout {
    private final int currentAccount;
    private TextView descriptionView;
    boolean ignoreLayot;
    private Listener listener;
    private TLRPC$Document preloadedGreetingsSticker;
    private TextView premiumButtonView;
    private ImageView premiumIconView;
    private boolean premiumLock;
    private TextView premiumTextView;
    private final Theme.ResourcesProvider resourcesProvider;
    public BackupImageView stickerToSendView;
    private TextView titleView;
    boolean wasDraw;

    /* renamed from: org.telegram.ui.Components.ChatGreetingsView$Listener */
    /* loaded from: classes6.dex */
    public interface Listener {
        void onGreetings(TLRPC$Document tLRPC$Document);
    }

    public ChatGreetingsView(Context context, TLRPC$User tLRPC$User, int i, int i2, TLRPC$Document tLRPC$Document, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        setOrientation(1);
        this.currentAccount = i2;
        this.resourcesProvider = resourcesProvider;
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextSize(1, 14.0f);
        this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleView.setTextAlignment(4);
        this.titleView.setGravity(17);
        TextView textView2 = new TextView(context);
        this.descriptionView = textView2;
        textView2.setTextAlignment(4);
        this.descriptionView.setGravity(17);
        this.descriptionView.setTextSize(1, 14.0f);
        this.descriptionView.setGravity(1);
        this.stickerToSendView = new BackupImageView(context);
        updateLayout();
        updateColors();
        if (i <= 0) {
            this.titleView.setText(LocaleController.getString("NoMessages", C3632R.string.NoMessages));
            this.descriptionView.setText(LocaleController.getString("NoMessagesGreetingsDescription", C3632R.string.NoMessagesGreetingsDescription));
        } else {
            this.titleView.setText(LocaleController.formatString("NearbyPeopleGreetingsMessage", C3632R.string.NearbyPeopleGreetingsMessage, tLRPC$User.first_name, LocaleController.formatDistance(i, 1)));
            this.descriptionView.setText(LocaleController.getString("NearbyPeopleGreetingsDescription", C3632R.string.NearbyPeopleGreetingsDescription));
        }
        TextView textView3 = this.descriptionView;
        textView3.setMaxWidth(HintView2.cutInFancyHalf(textView3.getText(), this.descriptionView.getPaint()));
        this.stickerToSendView.setContentDescription(this.descriptionView.getText());
        this.preloadedGreetingsSticker = tLRPC$Document;
        if (tLRPC$Document == null) {
            this.preloadedGreetingsSticker = MediaDataController.getInstance(i2).getGreetingsSticker();
        }
    }

    public void setPremiumLock(boolean z, long j) {
        String formatString;
        TLRPC$User user;
        if (this.premiumLock == z) {
            return;
        }
        this.premiumLock = z;
        if (z) {
            if (this.premiumIconView == null) {
                ImageView imageView = new ImageView(getContext());
                this.premiumIconView = imageView;
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                this.premiumIconView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                this.premiumIconView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m107dp(78), 469762048));
                this.premiumIconView.setImageResource(C3632R.C3634drawable.large_message_lock);
            }
            if (this.premiumTextView == null) {
                TextView textView = new TextView(getContext());
                this.premiumTextView = textView;
                textView.setTextAlignment(4);
                this.premiumTextView.setGravity(17);
                this.premiumTextView.setTextSize(1, 13.0f);
            }
            String userName = (j < 0 || (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j))) == null) ? "" : UserObject.getUserName(user);
            if (MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked()) {
                formatString = LocaleController.formatString(C3632R.string.MessageLockedPremiumLocked, userName);
            } else {
                formatString = LocaleController.formatString(C3632R.string.MessageLockedPremium, userName);
            }
            this.premiumTextView.setText(AndroidUtilities.replaceTags(formatString));
            TextView textView2 = this.premiumTextView;
            textView2.setMaxWidth(HintView2.cutInFancyHalf(textView2.getText(), this.premiumTextView.getPaint()));
            TextView textView3 = this.premiumTextView;
            int i = Theme.key_chat_serviceText;
            textView3.setTextColor(getThemedColor(i));
            this.premiumTextView.setLineSpacing(AndroidUtilities.m108dp(2.0f), 1.0f);
            if (this.premiumButtonView == null) {
                TextView textView4 = new TextView(this, getContext()) { // from class: org.telegram.ui.Components.ChatGreetingsView.1
                    private final Path clipPath = new Path();
                    StarParticlesView.Drawable starParticlesDrawable;

                    @Override // android.widget.TextView, android.view.View
                    protected void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
                        super.onLayout(z2, i2, i3, i4, i5);
                        StarParticlesView.Drawable drawable = new StarParticlesView.Drawable(10);
                        this.starParticlesDrawable = drawable;
                        drawable.type = 100;
                        drawable.isCircle = false;
                        drawable.roundEffect = true;
                        drawable.useRotate = false;
                        drawable.useBlur = true;
                        drawable.checkBounds = true;
                        drawable.size1 = 1;
                        drawable.f1928k3 = 0.98f;
                        drawable.f1927k2 = 0.98f;
                        drawable.f1926k1 = 0.98f;
                        drawable.paused = false;
                        drawable.speedScale = BitmapDescriptorFactory.HUE_RED;
                        drawable.minLifeTime = 750L;
                        drawable.randLifeTime = 750;
                        drawable.init();
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
                        this.starParticlesDrawable.rect.set(rectF);
                        this.starParticlesDrawable.rect2.set(rectF);
                        this.starParticlesDrawable.resetPositions();
                        this.clipPath.reset();
                        this.clipPath.addRoundRect(rectF, getHeight() / 2.0f, getHeight() / 2.0f, Path.Direction.CW);
                    }

                    @Override // android.widget.TextView, android.view.View
                    protected void onDraw(Canvas canvas) {
                        if (this.starParticlesDrawable != null) {
                            canvas.save();
                            canvas.clipPath(this.clipPath);
                            this.starParticlesDrawable.onDraw(canvas);
                            canvas.restore();
                            invalidate();
                        }
                        super.onDraw(canvas);
                    }
                };
                this.premiumButtonView = textView4;
                textView4.setTextAlignment(4);
                this.premiumButtonView.setGravity(17);
                this.premiumButtonView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.premiumButtonView.setTextSize(1, 14.0f);
                this.premiumButtonView.setPadding(AndroidUtilities.m107dp(13), AndroidUtilities.m108dp(6.66f), AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(7));
                this.premiumButtonView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(15), 503316480, AndroidUtilities.DARK_STATUS_BAR_OVERLAY));
                ScaleStateListAnimator.apply(this.premiumButtonView);
            }
            this.premiumButtonView.setText(LocaleController.getString(C3632R.string.MessagePremiumUnlock));
            this.premiumButtonView.setTextColor(getThemedColor(i));
            this.premiumButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatGreetingsView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatGreetingsView.lambda$setPremiumLock$0(view);
                }
            });
        }
        updateLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setPremiumLock$0(View view) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            lastFragment.presentFragment(new PremiumPreviewFragment("contact"));
        }
    }

    private void updateLayout() {
        removeAllViews();
        if (this.premiumLock) {
            addView(this.premiumIconView, LayoutHelper.createLinear(78, 78, 49, 20, 17, 20, 9));
            boolean premiumFeaturesBlocked = MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked();
            addView(this.premiumTextView, LayoutHelper.createLinear(-2, -2, 49, 20, 0, 20, premiumFeaturesBlocked ? 13 : 9));
            if (premiumFeaturesBlocked) {
                return;
            }
            addView(this.premiumButtonView, LayoutHelper.createLinear(-2, 30, 49, 20, 2, 20, 13));
            return;
        }
        addView(this.titleView, LayoutHelper.createLinear(-2, -2, 1, 20, 14, 20, 6));
        addView(this.descriptionView, LayoutHelper.createLinear(-2, -2, 1, 20, 6, 20, 0));
        addView(this.stickerToSendView, LayoutHelper.createLinear(112, 112, 1, 0, 16, 0, 16));
    }

    private void setSticker(final TLRPC$Document tLRPC$Document) {
        if (tLRPC$Document == null) {
            return;
        }
        SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tLRPC$Document, Theme.key_chat_serviceBackground, 1.0f);
        if (svgThumb != null) {
            this.stickerToSendView.setImage(ImageLocation.getForDocument(tLRPC$Document), createFilter(tLRPC$Document), svgThumb, 0, tLRPC$Document);
        } else {
            this.stickerToSendView.setImage(ImageLocation.getForDocument(tLRPC$Document), createFilter(tLRPC$Document), ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90), tLRPC$Document), (String) null, 0, tLRPC$Document);
        }
        this.stickerToSendView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatGreetingsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatGreetingsView.this.lambda$setSticker$1(tLRPC$Document, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setSticker$1(TLRPC$Document tLRPC$Document, View view) {
        Listener listener = this.listener;
        if (listener != null) {
            listener.onGreetings(tLRPC$Document);
        }
    }

    public static String createFilter(TLRPC$Document tLRPC$Document) {
        float min;
        float f;
        int i;
        int i2;
        if (AndroidUtilities.isTablet()) {
            min = AndroidUtilities.getMinTabletSide();
            f = 0.4f;
        } else {
            Point point = AndroidUtilities.displaySize;
            min = Math.min(point.x, point.y);
            f = 0.5f;
        }
        float f2 = min * f;
        int i3 = 0;
        while (true) {
            if (i3 >= tLRPC$Document.attributes.size()) {
                i = 0;
                i2 = 0;
                break;
            }
            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i3);
            if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeImageSize) {
                i = tLRPC$DocumentAttribute.f1613w;
                i2 = tLRPC$DocumentAttribute.f1612h;
                break;
            }
            i3++;
        }
        if (MessageObject.isAnimatedStickerDocument(tLRPC$Document, true) && i == 0 && i2 == 0) {
            i = 512;
            i2 = 512;
        }
        if (i == 0) {
            i2 = (int) f2;
            i = i2 + AndroidUtilities.m107dp(100);
        }
        int i4 = (int) (i2 * (f2 / i));
        int i5 = (int) f2;
        float f3 = i4;
        if (f3 > f2) {
            i5 = (int) (i5 * (f2 / f3));
            i4 = i5;
        }
        float f4 = i5;
        float f5 = AndroidUtilities.density;
        return String.format(Locale.US, "%d_%d", Integer.valueOf((int) (f4 / f5)), Integer.valueOf((int) (i4 / f5)));
    }

    private void updateColors() {
        TextView textView = this.titleView;
        int i = Theme.key_chat_serviceText;
        textView.setTextColor(getThemedColor(i));
        this.descriptionView.setTextColor(getThemedColor(i));
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        this.ignoreLayot = true;
        this.descriptionView.setVisibility(0);
        this.stickerToSendView.setVisibility(0);
        super.onMeasure(i, i2);
        if (getMeasuredHeight() > View.MeasureSpec.getSize(i2)) {
            this.descriptionView.setVisibility(8);
            this.stickerToSendView.setVisibility(8);
        } else {
            this.descriptionView.setVisibility(0);
            this.stickerToSendView.setVisibility(0);
        }
        this.ignoreLayot = false;
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (!this.wasDraw) {
            this.wasDraw = true;
            setSticker(this.preloadedGreetingsSticker);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayot) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        fetchSticker();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    private void fetchSticker() {
        if (this.preloadedGreetingsSticker == null) {
            TLRPC$Document greetingsSticker = MediaDataController.getInstance(this.currentAccount).getGreetingsSticker();
            this.preloadedGreetingsSticker = greetingsSticker;
            if (this.wasDraw) {
                setSticker(greetingsSticker);
            }
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public static void showPremiumSheet(Context context, int i, long j, Theme.ResourcesProvider resourcesProvider) {
        final BottomSheet bottomSheet = new BottomSheet(context, false, resourcesProvider);
        bottomSheet.fixNavigationBar(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.m107dp(16), 0, AndroidUtilities.m107dp(16), 0);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        rLottieImageView.setAnimation(C3632R.raw.large_message_lock, 80, 80);
        rLottieImageView.playAnimation();
        rLottieImageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        rLottieImageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m107dp(80), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider)));
        linearLayout.addView(rLottieImageView, LayoutHelper.createLinear(80, 80, 1, 0, 16, 0, 16));
        boolean premiumFeaturesBlocked = MessagesController.getInstance(i).premiumFeaturesBlocked();
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(17);
        int i2 = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setText(LocaleController.getString(premiumFeaturesBlocked ? C3632R.string.PremiumMessageHeaderLocked : C3632R.string.PremiumMessageHeader));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 12, 0, 12, 0));
        TextView textView2 = new TextView(context);
        textView2.setGravity(17);
        textView2.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        String firstName = j > 0 ? UserObject.getFirstName(MessagesController.getInstance(i).getUser(Long.valueOf(j))) : "";
        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(premiumFeaturesBlocked ? C3632R.string.PremiumMessageTextLocked : C3632R.string.PremiumMessageText, firstName, firstName)));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 12, 9, 12, 19));
        if (!premiumFeaturesBlocked) {
            PremiumButtonView premiumButtonView = new PremiumButtonView(context, true, resourcesProvider);
            premiumButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatGreetingsView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatGreetingsView.lambda$showPremiumSheet$2(BottomSheet.this, view);
                }
            });
            premiumButtonView.setOverlayText(LocaleController.getString(C3632R.string.PremiumMessageButton), false, false);
            linearLayout.addView(premiumButtonView, LayoutHelper.createLinear(-1, 48, 1, 0, 0, 0, 4));
        }
        bottomSheet.setCustomView(linearLayout);
        bottomSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showPremiumSheet$2(BottomSheet bottomSheet, View view) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            lastFragment.presentFragment(new PremiumPreviewFragment("contact"));
            bottomSheet.dismiss();
        }
    }
}
