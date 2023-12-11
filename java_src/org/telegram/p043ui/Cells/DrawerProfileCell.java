package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.C0485C;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.models.DrawerHeaderSettings;
import com.iMe.p030ui.drawer.DrawerAccountData;
import java.util.ArrayList;
import java.util.Iterator;
import org.telegram.PhoneFormat.C3546PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.DrawerLayoutContainer;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.Premium.StarParticlesView;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.Reactions.AnimatedEmojiEffect;
import org.telegram.p043ui.Components.Reactions.HwEmojis;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.Components.SnowflakesEffect;
import org.telegram.p043ui.ThemeActivity;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_availableReaction;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.DrawerProfileCell */
/* loaded from: classes5.dex */
public class DrawerProfileCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static RLottieDrawable sunDrawable;
    public static boolean switchingTheme;
    private boolean accountsShown;
    private AnimatedStatusView animatedStatus;
    private ImageView archiveButton;
    private ImageView arrowView;
    private BackupImageView avatarImageView;
    private Integer currentColor;
    private Integer currentMoonColor;
    private TLRPC$User currentUser;
    private RLottieImageView darkThemeView;
    private Rect destRect;
    public boolean drawPremium;
    public float drawPremiumProgress;
    private ImageView editButton;
    PremiumGradient.PremiumGradientTools gradientTools;
    private int lastAccount;
    private DrawerHeaderSettings lastSettings;
    private TLRPC$User lastUser;
    private SimpleTextView nameTextView;
    private Paint paint;
    private TextView phoneTextView;
    private Drawable premiumStar;
    private final boolean previewMode;
    private ImageView shadowView;
    private SnowflakesEffect snowflakesEffect;
    private Rect srcRect;
    StarParticlesView.Drawable starParticlesDrawable;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable status;
    private boolean switchThemeForDebug;
    private boolean updateRightDrawable;

    protected void onPremiumClick() {
    }

    public void setUser(TLRPC$User tLRPC$User, boolean z) {
        setUser(tLRPC$User, z, this.lastSettings);
    }

    public ImageView getArchiveButton() {
        return this.archiveButton;
    }

    public boolean isInArchive(float f, float f2) {
        return this.archiveButton.getVisibility() == 0 && f >= ((float) this.archiveButton.getLeft()) && f <= ((float) this.archiveButton.getRight()) && f2 >= ((float) this.archiveButton.getTop()) && f2 <= ((float) this.archiveButton.getBottom());
    }

    public boolean isInEdit(float f, float f2) {
        return this.editButton.getVisibility() == 0 && f >= ((float) this.editButton.getLeft()) && f <= ((float) this.editButton.getRight()) && f2 >= ((float) this.editButton.getTop()) && f2 <= ((float) this.editButton.getBottom());
    }

    private void applySettings(DrawerHeaderSettings drawerHeaderSettings) {
        DrawerAccountData drawerAccountData;
        DrawerAccountData drawerAccountData2;
        String str;
        String str2;
        if (this.currentUser == null) {
            return;
        }
        DrawerAccountData title = drawerHeaderSettings != null ? drawerHeaderSettings.getTitle() : SharedConfig.selectedDrawerHeaderTitle;
        DrawerAccountData subtitle = drawerHeaderSettings != null ? drawerHeaderSettings.getSubtitle() : SharedConfig.selectedDrawerHeaderSubtitle;
        boolean isShowTitle = drawerHeaderSettings != null ? drawerHeaderSettings.isShowTitle() : SharedConfig.isShowDrawerHeaderTitleEnabled;
        boolean isShowSubtitle = drawerHeaderSettings != null ? drawerHeaderSettings.isShowSubtitle() : SharedConfig.isShowDrawerHeaderSubtitleEnabled;
        boolean isShowAvatar = drawerHeaderSettings != null ? drawerHeaderSettings.isShowAvatar() : SharedConfig.isShowDrawerHeaderAvatarEnabled;
        boolean isShowArchive = drawerHeaderSettings != null ? drawerHeaderSettings.isShowArchive() : SharedConfig.isShowDrawerHeaderArchiveEnabled;
        int i = ((FrameLayout.LayoutParams) this.avatarImageView.getLayoutParams()).width;
        char c = 0;
        if (isShowAvatar) {
            this.avatarImageView.setAlpha(1.0f);
        } else {
            this.avatarImageView.setImageDrawable(Theme.createCircleDrawable(i, -16777216));
            this.avatarImageView.setAlpha(0.3f);
        }
        String charSequence = this.nameTextView.getText().toString();
        String charSequence2 = this.phoneTextView.getText().toString();
        int i2 = 0;
        while (i2 < 2) {
            boolean z = i2 == 0;
            boolean z2 = z ? isShowTitle : isShowSubtitle;
            View view = z ? this.nameTextView : this.phoneTextView;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            if (z2) {
                DrawerAccountData drawerAccountData3 = z ? title : subtitle;
                if (drawerAccountData3 == DrawerAccountData.PHONE) {
                    drawerAccountData = title;
                    drawerAccountData2 = subtitle;
                    str2 = charSequence2;
                } else if (drawerAccountData3 == DrawerAccountData.USERNAME) {
                    if (TextUtils.isEmpty(this.currentUser.username)) {
                        str2 = LocaleController.getInternalString(C3632R.string.drawer_profile_cell_alert_username);
                    } else {
                        str2 = LocaleController.formatStringInternal(C3632R.string.common_username, this.currentUser.username);
                    }
                    drawerAccountData = title;
                    drawerAccountData2 = subtitle;
                } else if (drawerAccountData3 == DrawerAccountData.NAME) {
                    drawerAccountData = title;
                    drawerAccountData2 = subtitle;
                    str2 = charSequence;
                } else if (drawerAccountData3 == DrawerAccountData.USER_ID) {
                    drawerAccountData = title;
                    drawerAccountData2 = subtitle;
                    str2 = LocaleController.formatStringInternal(C3632R.string.common_id, Long.valueOf(this.currentUser.f1749id));
                } else {
                    drawerAccountData = title;
                    drawerAccountData2 = subtitle;
                    str2 = null;
                }
                layoutParams.width = -1;
                layoutParams.height = -2;
                view.setBackgroundDrawable(null);
                view.setAlpha(1.0f);
                str = str2;
            } else {
                drawerAccountData = title;
                drawerAccountData2 = subtitle;
                layoutParams.width = (int) (i * (z ? 1.5f : 2.0f));
                layoutParams.height = AndroidUtilities.m104dp(z ? 14 : 12);
                view.setBackgroundDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m104dp(10), -16777216));
                view.setAlpha(0.3f);
                str = "";
            }
            if (z) {
                this.nameTextView.setPadding(z2 ? 0 : AndroidUtilities.m104dp(32), AndroidUtilities.m104dp(4), 0, AndroidUtilities.m104dp(4));
                this.nameTextView.setMinWidth(z2 ? 0 : AndroidUtilities.m104dp(64));
                this.nameTextView.setText(str);
            } else {
                this.phoneTextView.setText(str);
            }
            view.setLayoutParams(layoutParams);
            i2++;
            title = drawerAccountData;
            subtitle = drawerAccountData2;
            c = 0;
        }
        this.archiveButton.setVisibility(isShowArchive ? 0 : 8);
    }

    private void createEditButton(Context context) {
        ImageView imageView = new ImageView(context);
        this.editButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.editButton.setImageResource(C3632R.C3634drawable.fork_filter_icon_eye);
        this.editButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuName), PorterDuff.Mode.SRC_IN));
        addView(this.editButton, LayoutHelper.createFrame(59, 59, 8388693, 0, 0, 59, 0));
    }

    private void createArchiveButton(Context context) {
        ImageView imageView = new ImageView(context);
        this.archiveButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.archiveButton.setImageResource(C3632R.C3634drawable.msg_archive);
        this.archiveButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuName), PorterDuff.Mode.MULTIPLY));
        addView(this.archiveButton, LayoutHelper.createFrame(48, 48, 8388693, 0, 0, 64, 90));
    }

    public DrawerProfileCell(Context context, final DrawerLayoutContainer drawerLayoutContainer, final boolean z) {
        super(context);
        this.updateRightDrawable = true;
        this.srcRect = new Rect();
        this.destRect = new Rect();
        this.paint = new Paint();
        new Paint(1);
        this.lastAccount = -1;
        this.lastUser = null;
        this.premiumStar = null;
        this.previewMode = z;
        ImageView imageView = new ImageView(context);
        this.shadowView = imageView;
        imageView.setVisibility(4);
        this.shadowView.setScaleType(ImageView.ScaleType.FIT_XY);
        this.shadowView.setImageResource(C3632R.C3634drawable.bottom_shadow);
        addView(this.shadowView, LayoutHelper.createFrame(-1, 70, 83));
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarImageView = backupImageView;
        backupImageView.getImageReceiver().setRoundRadius(AndroidUtilities.m104dp(32));
        addView(this.avatarImageView, LayoutHelper.createFrame(64, 64, 83, 16, 0, 0, 67));
        SimpleTextView simpleTextView = new SimpleTextView(context) { // from class: org.telegram.ui.Cells.DrawerProfileCell.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.ActionBar.SimpleTextView, android.view.View
            public void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (DrawerProfileCell.this.updateRightDrawable) {
                    DrawerProfileCell.this.updateRightDrawable = false;
                    DrawerProfileCell drawerProfileCell = DrawerProfileCell.this;
                    Rect rect = AndroidUtilities.rectTmp2;
                    drawerProfileCell.getEmojiStatusLocation(rect);
                    DrawerProfileCell.this.animatedStatus.translate(rect.centerX(), rect.centerY());
                }
            }

            @Override // android.view.View
            public void invalidate() {
                if (HwEmojis.grab(this)) {
                    return;
                }
                super.invalidate();
            }

            @Override // android.view.View
            public void invalidate(int i, int i2, int i3, int i4) {
                if (HwEmojis.grab(this)) {
                    return;
                }
                super.invalidate(i, i2, i3, i4);
            }

            @Override // org.telegram.p043ui.ActionBar.SimpleTextView, android.view.View, android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                if (HwEmojis.grab(this)) {
                    return;
                }
                super.invalidateDrawable(drawable);
            }

            @Override // android.view.View
            public void invalidate(Rect rect) {
                if (HwEmojis.grab(this)) {
                    return;
                }
                super.invalidate(rect);
            }
        };
        this.nameTextView = simpleTextView;
        simpleTextView.setRightDrawableOnClick(new View.OnClickListener() { // from class: org.telegram.ui.Cells.DrawerProfileCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DrawerProfileCell.this.lambda$new$0(view);
            }
        });
        this.nameTextView.setPadding(0, AndroidUtilities.m104dp(4), 0, AndroidUtilities.m104dp(4));
        this.nameTextView.setTextSize(15);
        this.nameTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.nameTextView.setGravity(19);
        this.nameTextView.setEllipsizeByGradient(true);
        this.nameTextView.setRightDrawableOutside(true);
        addView(this.nameTextView, LayoutHelper.createFrame(-1, -2, 83, 16, 0, 111, 28));
        TextView textView = new TextView(context);
        this.phoneTextView = textView;
        textView.setTextSize(1, 13.0f);
        this.phoneTextView.setLines(1);
        this.phoneTextView.setMaxLines(1);
        this.phoneTextView.setSingleLine(true);
        this.phoneTextView.setGravity(3);
        addView(this.phoneTextView, LayoutHelper.createFrame(-1, -2, 83, 16, 0, 111, 9));
        ImageView imageView2 = new ImageView(context);
        this.arrowView = imageView2;
        int i = Theme.key_chats_menuName;
        imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
        this.arrowView.setScaleType(ImageView.ScaleType.CENTER);
        this.arrowView.setImageResource(C3632R.C3634drawable.msg_expand);
        addView(this.arrowView, LayoutHelper.createFrame(59, 59, 85));
        setArrowState(false);
        boolean z2 = sunDrawable == null;
        if (z2) {
            int i2 = C3632R.raw.sun;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i2, "" + i2, AndroidUtilities.m104dp(28), AndroidUtilities.m104dp(28), true, null);
            sunDrawable = rLottieDrawable;
            rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
            if (Theme.isCurrentThemeDay()) {
                sunDrawable.setCustomEndFrame(0);
                sunDrawable.setCurrentFrame(0);
            } else {
                sunDrawable.setCurrentFrame(35);
                sunDrawable.setCustomEndFrame(36);
            }
        }
        RLottieImageView rLottieImageView = new RLottieImageView(this, context) { // from class: org.telegram.ui.Cells.DrawerProfileCell.2
            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                if (Theme.isCurrentThemeDark()) {
                    accessibilityNodeInfo.setText(LocaleController.getString("AccDescrSwitchToDayTheme", C3632R.string.AccDescrSwitchToDayTheme));
                } else {
                    accessibilityNodeInfo.setText(LocaleController.getString("AccDescrSwitchToNightTheme", C3632R.string.AccDescrSwitchToNightTheme));
                }
            }
        };
        this.darkThemeView = rLottieImageView;
        rLottieImageView.setFocusable(true);
        this.darkThemeView.setBackground(Theme.createCircleSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector), 0, 0));
        sunDrawable.beginApplyLayerColors();
        int color = Theme.getColor(i);
        sunDrawable.setLayerColor("Sunny.**", color);
        sunDrawable.setLayerColor("Path 6.**", color);
        sunDrawable.setLayerColor("Path.**", color);
        sunDrawable.setLayerColor("Path 5.**", color);
        sunDrawable.commitApplyLayerColors();
        this.darkThemeView.setScaleType(ImageView.ScaleType.CENTER);
        this.darkThemeView.setAnimation(sunDrawable);
        if (Build.VERSION.SDK_INT >= 21) {
            this.darkThemeView.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 1, AndroidUtilities.m104dp(17)));
            Theme.setRippleDrawableForceSoftware((RippleDrawable) this.darkThemeView.getBackground());
        }
        if (!z2 && sunDrawable.getCustomEndFrame() != sunDrawable.getCurrentFrame()) {
            this.darkThemeView.playAnimation();
        }
        this.darkThemeView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.DrawerProfileCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DrawerProfileCell.this.lambda$new$2(z, drawerLayoutContainer, view);
            }
        });
        this.darkThemeView.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Cells.DrawerProfileCell$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean lambda$new$3;
                lambda$new$3 = DrawerProfileCell.lambda$new$3(DrawerLayoutContainer.this, view);
                return lambda$new$3;
            }
        });
        addView(this.darkThemeView, LayoutHelper.createFrame(48, 48, 85, 0, 0, 6, 90));
        if (Theme.getEventType() == 0) {
            SnowflakesEffect snowflakesEffect = new SnowflakesEffect(0);
            this.snowflakesEffect = snowflakesEffect;
            snowflakesEffect.setColorKey(i);
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m104dp(20));
        this.status = swapAnimatedEmojiDrawable;
        this.nameTextView.setRightDrawable(swapAnimatedEmojiDrawable);
        AnimatedStatusView animatedStatusView = new AnimatedStatusView(context, 20, 60);
        this.animatedStatus = animatedStatusView;
        addView(animatedStatusView, LayoutHelper.createFrame(20, 20, 51));
        createEditButton(context);
        createArchiveButton(context);
        if (z) {
            this.editButton.setAlpha(0.3f);
            this.arrowView.setAlpha(0.3f);
            this.darkThemeView.setAlpha(0.3f);
            this.darkThemeView.setBackground(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        TLRPC$User tLRPC$User = this.lastUser;
        if (tLRPC$User == null || !tLRPC$User.premium) {
            return;
        }
        onPremiumClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$new$2(boolean r6, final org.telegram.p043ui.ActionBar.DrawerLayoutContainer r7, android.view.View r8) {
        /*
            r5 = this;
            if (r6 == 0) goto L3
            return
        L3:
            boolean r6 = org.telegram.p043ui.Cells.DrawerProfileCell.switchingTheme
            if (r6 == 0) goto L8
            return
        L8:
            r6 = 1
            org.telegram.p043ui.Cells.DrawerProfileCell.switchingTheme = r6
            android.content.Context r6 = org.telegram.messenger.ApplicationLoader.applicationContext
            java.lang.String r8 = "themeconfig"
            r0 = 0
            android.content.SharedPreferences r6 = r6.getSharedPreferences(r8, r0)
            java.lang.String r8 = "lastDayTheme"
            java.lang.String r1 = "Blue"
            java.lang.String r8 = r6.getString(r8, r1)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r2 = org.telegram.p043ui.ActionBar.Theme.getTheme(r8)
            if (r2 == 0) goto L2c
            org.telegram.ui.ActionBar.Theme$ThemeInfo r2 = org.telegram.p043ui.ActionBar.Theme.getTheme(r8)
            boolean r2 = r2.isDark()
            if (r2 == 0) goto L2d
        L2c:
            r8 = r1
        L2d:
            java.lang.String r2 = "lastDarkTheme"
            java.lang.String r3 = "Dark Blue"
            java.lang.String r6 = r6.getString(r2, r3)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r2 = org.telegram.p043ui.ActionBar.Theme.getTheme(r6)
            if (r2 == 0) goto L45
            org.telegram.ui.ActionBar.Theme$ThemeInfo r2 = org.telegram.p043ui.ActionBar.Theme.getTheme(r6)
            boolean r2 = r2.isDark()
            if (r2 != 0) goto L46
        L45:
            r6 = r3
        L46:
            org.telegram.ui.ActionBar.Theme$ThemeInfo r2 = org.telegram.p043ui.ActionBar.Theme.getActiveTheme()
            boolean r4 = r8.equals(r6)
            if (r4 == 0) goto L66
            boolean r4 = r2.isDark()
            if (r4 != 0) goto L64
            boolean r4 = r8.equals(r3)
            if (r4 != 0) goto L64
            java.lang.String r4 = "Night"
            boolean r4 = r8.equals(r4)
            if (r4 == 0) goto L67
        L64:
            r3 = r6
            goto L68
        L66:
            r3 = r6
        L67:
            r1 = r8
        L68:
            java.lang.String r6 = r2.getKey()
            boolean r6 = r1.equals(r6)
            if (r6 == 0) goto L7e
            org.telegram.ui.ActionBar.Theme$ThemeInfo r8 = org.telegram.p043ui.ActionBar.Theme.getTheme(r3)
            org.telegram.ui.Components.RLottieDrawable r0 = org.telegram.p043ui.Cells.DrawerProfileCell.sunDrawable
            r1 = 36
            r0.setCustomEndFrame(r1)
            goto L87
        L7e:
            org.telegram.ui.ActionBar.Theme$ThemeInfo r8 = org.telegram.p043ui.ActionBar.Theme.getTheme(r1)
            org.telegram.ui.Components.RLottieDrawable r1 = org.telegram.p043ui.Cells.DrawerProfileCell.sunDrawable
            r1.setCustomEndFrame(r0)
        L87:
            org.telegram.ui.Components.RLottieImageView r0 = r5.darkThemeView
            r0.playAnimation()
            r5.switchTheme(r8, r6)
            if (r7 == 0) goto La9
            android.view.ViewParent r6 = r7.getParent()
            boolean r6 = r6 instanceof android.widget.FrameLayout
            if (r6 == 0) goto La0
            android.view.ViewParent r6 = r7.getParent()
            android.widget.FrameLayout r6 = (android.widget.FrameLayout) r6
            goto La1
        La0:
            r6 = 0
        La1:
            org.telegram.ui.Cells.DrawerProfileCell$$ExternalSyntheticLambda3 r8 = new org.telegram.ui.Cells.DrawerProfileCell$$ExternalSyntheticLambda3
            r8.<init>()
            org.telegram.p043ui.ActionBar.Theme.turnOffAutoNight(r6, r8)
        La9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DrawerProfileCell.lambda$new$2(boolean, org.telegram.ui.ActionBar.DrawerLayoutContainer, android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$1(DrawerLayoutContainer drawerLayoutContainer) {
        drawerLayoutContainer.closeDrawer(false);
        drawerLayoutContainer.presentFragment(new ThemeActivity(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$3(DrawerLayoutContainer drawerLayoutContainer, View view) {
        if (drawerLayoutContainer != null) {
            drawerLayoutContainer.presentFragment(new ThemeActivity(0));
            return true;
        }
        return false;
    }

    /* renamed from: org.telegram.ui.Cells.DrawerProfileCell$AnimatedStatusView */
    /* loaded from: classes5.dex */
    public static class AnimatedStatusView extends View {
        private int animationUniq;
        private ArrayList<Object> animations;
        private Integer color;
        private int effectsSize;
        private int renderedEffectsSize;
        private int stateSize;

        /* renamed from: y1 */
        private float f1796y1;

        /* renamed from: y2 */
        private float f1797y2;

        public AnimatedStatusView(Context context, int i, int i2) {
            super(context);
            this.animations = new ArrayList<>();
            this.stateSize = i;
            this.effectsSize = i2;
            this.renderedEffectsSize = i2;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(Math.max(this.renderedEffectsSize, Math.max(this.stateSize, this.effectsSize))), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(Math.max(this.renderedEffectsSize, Math.max(this.stateSize, this.effectsSize))), 1073741824));
        }

        public void translate(float f, float f2) {
            setTranslationX(f - (getMeasuredWidth() / 2.0f));
            float measuredHeight = f2 - (getMeasuredHeight() / 2.0f);
            this.f1796y1 = measuredHeight;
            setTranslationY(measuredHeight + this.f1797y2);
        }

        public void translateY2(float f) {
            float f2 = this.f1796y1;
            this.f1797y2 = f;
            setTranslationY(f2 + f);
        }

        @Override // android.view.View
        public void dispatchDraw(Canvas canvas) {
            int m104dp = AndroidUtilities.m104dp(this.renderedEffectsSize);
            int m104dp2 = AndroidUtilities.m104dp(this.effectsSize);
            for (int i = 0; i < this.animations.size(); i++) {
                Object obj = this.animations.get(i);
                if (obj instanceof ImageReceiver) {
                    ImageReceiver imageReceiver = (ImageReceiver) obj;
                    float f = m104dp2;
                    imageReceiver.setImageCoords((getMeasuredWidth() - m104dp2) / 2.0f, (getMeasuredHeight() - m104dp2) / 2.0f, f, f);
                    imageReceiver.draw(canvas);
                } else if (obj instanceof AnimatedEmojiEffect) {
                    AnimatedEmojiEffect animatedEmojiEffect = (AnimatedEmojiEffect) obj;
                    animatedEmojiEffect.setBounds((int) ((getMeasuredWidth() - m104dp) / 2.0f), (int) ((getMeasuredHeight() - m104dp) / 2.0f), (int) ((getMeasuredWidth() + m104dp) / 2.0f), (int) ((getMeasuredHeight() + m104dp) / 2.0f));
                    animatedEmojiEffect.draw(canvas);
                    if (animatedEmojiEffect.isDone()) {
                        animatedEmojiEffect.removeView(this);
                        this.animations.remove(animatedEmojiEffect);
                    }
                }
            }
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            detach();
        }

        private void detach() {
            if (!this.animations.isEmpty()) {
                Iterator<Object> it = this.animations.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof ImageReceiver) {
                        ((ImageReceiver) next).onDetachedFromWindow();
                    } else if (next instanceof AnimatedEmojiEffect) {
                        ((AnimatedEmojiEffect) next).removeView(this);
                    }
                }
            }
            this.animations.clear();
        }

        public void animateChange(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
            TLRPC$TL_availableReaction tLRPC$TL_availableReaction;
            AnimatedEmojiDrawable make;
            String findAnimatedEmojiEmoticon;
            if (visibleReaction == null) {
                detach();
                return;
            }
            TLRPC$Document tLRPC$Document = null;
            TLRPC$TL_availableReaction tLRPC$TL_availableReaction2 = visibleReaction.emojicon != null ? MediaDataController.getInstance(UserConfig.selectedAccount).getReactionsMap().get(visibleReaction.emojicon) : null;
            if (tLRPC$TL_availableReaction2 == null) {
                TLRPC$Document findDocument = AnimatedEmojiDrawable.findDocument(UserConfig.selectedAccount, visibleReaction.documentId);
                if (findDocument != null && (findAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(findDocument, null)) != null) {
                    tLRPC$TL_availableReaction2 = MediaDataController.getInstance(UserConfig.selectedAccount).getReactionsMap().get(findAnimatedEmojiEmoticon);
                }
                tLRPC$TL_availableReaction = tLRPC$TL_availableReaction2;
                tLRPC$Document = findDocument;
            } else {
                tLRPC$TL_availableReaction = tLRPC$TL_availableReaction2;
            }
            if (tLRPC$Document == null && tLRPC$TL_availableReaction != null) {
                ImageReceiver imageReceiver = new ImageReceiver();
                imageReceiver.setParentView(this);
                int i = this.animationUniq;
                this.animationUniq = i + 1;
                imageReceiver.setUniqKeyPrefix(Integer.toString(i));
                ImageLocation forDocument = ImageLocation.getForDocument(tLRPC$TL_availableReaction.around_animation);
                imageReceiver.setImage(forDocument, this.effectsSize + "_" + this.effectsSize + "_nolimit", null, "tgs", tLRPC$TL_availableReaction, 1);
                imageReceiver.setAutoRepeat(0);
                imageReceiver.onAttachedToWindow();
                this.animations.add(imageReceiver);
                invalidate();
                return;
            }
            if (tLRPC$Document == null) {
                make = AnimatedEmojiDrawable.make(2, UserConfig.selectedAccount, visibleReaction.documentId);
            } else {
                make = AnimatedEmojiDrawable.make(2, UserConfig.selectedAccount, tLRPC$Document);
            }
            if (this.color != null) {
                make.setColorFilter(new PorterDuffColorFilter(this.color.intValue(), PorterDuff.Mode.MULTIPLY));
            }
            AnimatedEmojiEffect createFrom = AnimatedEmojiEffect.createFrom(make, false, !make.canOverrideColor());
            createFrom.setView(this);
            this.animations.add(createFrom);
            invalidate();
        }

        public void setColor(int i) {
            this.color = Integer.valueOf(i);
            PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY);
            PorterDuffColorFilter porterDuffColorFilter2 = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
            for (int i2 = 0; i2 < this.animations.size(); i2++) {
                Object obj = this.animations.get(i2);
                if (obj instanceof ImageReceiver) {
                    ((ImageReceiver) obj).setColorFilter(porterDuffColorFilter);
                } else if (obj instanceof AnimatedEmojiEffect) {
                    ((AnimatedEmojiEffect) obj).animatedEmojiDrawable.setColorFilter(porterDuffColorFilter2);
                }
            }
        }
    }

    public void animateStateChange(long j) {
        this.animatedStatus.animateChange(ReactionsLayoutInBubble.VisibleReaction.fromCustomEmoji(Long.valueOf(j)));
        this.updateRightDrawable = true;
    }

    public void getEmojiStatusLocation(Rect rect) {
        if (this.nameTextView.getRightDrawable() == null) {
            rect.set(this.nameTextView.getWidth() - 1, (this.nameTextView.getHeight() / 2) - 1, this.nameTextView.getWidth() + 1, (this.nameTextView.getHeight() / 2) + 1);
            return;
        }
        rect.set(this.nameTextView.getRightDrawable().getBounds());
        rect.offset((int) this.nameTextView.getX(), (int) this.nameTextView.getY());
        this.animatedStatus.translate(rect.centerX(), rect.centerY());
    }

    private void switchTheme(Theme.ThemeInfo themeInfo, boolean z) {
        this.darkThemeView.getLocationInWindow(r1);
        int[] iArr = {iArr[0] + (this.darkThemeView.getMeasuredWidth() / 2), iArr[1] + (this.darkThemeView.getMeasuredHeight() / 2)};
        if (this.switchThemeForDebug) {
            iArr[0] = AndroidUtilities.displaySize.x / 2;
            iArr[1] = -this.darkThemeView.getMeasuredHeight();
            this.switchThemeForDebug = false;
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needSetDayNightTheme, themeInfo, Boolean.FALSE, iArr, -1, Boolean.valueOf(z), this.darkThemeView);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.status.attach();
        updateColors();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        for (int i = 0; i < 5; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.status.detach();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        for (int i = 0; i < 5; i++) {
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        }
        int i2 = this.lastAccount;
        if (i2 >= 0) {
            NotificationCenter.getInstance(i2).removeObserver(this, NotificationCenter.userEmojiStatusUpdated);
            NotificationCenter.getInstance(this.lastAccount).removeObserver(this, NotificationCenter.updateInterfaces);
            this.lastAccount = -1;
        }
        if (this.nameTextView.getRightDrawable() instanceof AnimatedEmojiDrawable.WrapSizeDrawable) {
            Drawable drawable = ((AnimatedEmojiDrawable.WrapSizeDrawable) this.nameTextView.getRightDrawable()).getDrawable();
            if (drawable instanceof AnimatedEmojiDrawable) {
                ((AnimatedEmojiDrawable) drawable).removeView(this.nameTextView);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (Build.VERSION.SDK_INT >= 21 && !this.previewMode) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(148) + AndroidUtilities.statusBarHeight, 1073741824));
            return;
        }
        try {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(148), 1073741824));
        } catch (Exception e) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m104dp(148));
            FileLog.m99e(e);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.drawPremium) {
            if (this.starParticlesDrawable == null) {
                StarParticlesView.Drawable drawable = new StarParticlesView.Drawable(15);
                this.starParticlesDrawable = drawable;
                drawable.init();
                StarParticlesView.Drawable drawable2 = this.starParticlesDrawable;
                drawable2.speedScale = 0.8f;
                drawable2.minLifeTime = C0485C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
            }
            this.starParticlesDrawable.rect.set(this.avatarImageView.getLeft(), this.avatarImageView.getTop(), this.avatarImageView.getRight(), this.avatarImageView.getBottom());
            this.starParticlesDrawable.rect.inset(-AndroidUtilities.m104dp(20), -AndroidUtilities.m104dp(20));
            this.starParticlesDrawable.resetPositions();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r13) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DrawerProfileCell.onDraw(android.graphics.Canvas):void");
    }

    public boolean isInAvatar(float f, float f2) {
        return f >= ((float) this.avatarImageView.getLeft()) && f <= ((float) this.avatarImageView.getRight()) && f2 >= ((float) this.avatarImageView.getTop()) && f2 <= ((float) this.avatarImageView.getBottom());
    }

    public boolean hasAvatar() {
        return this.avatarImageView.getImageReceiver().hasNotThumb();
    }

    public void setAccountsShown(boolean z, boolean z2) {
        if (this.accountsShown == z) {
            return;
        }
        this.accountsShown = z;
        setArrowState(z2);
    }

    public void setUser(TLRPC$User tLRPC$User, boolean z, DrawerHeaderSettings drawerHeaderSettings) {
        if (this.previewMode) {
            if (drawerHeaderSettings == null) {
                return;
            }
            this.lastSettings = drawerHeaderSettings;
        }
        int i = UserConfig.selectedAccount;
        int i2 = this.lastAccount;
        if (i != i2) {
            if (i2 >= 0) {
                NotificationCenter.getInstance(i2).removeObserver(this, NotificationCenter.userEmojiStatusUpdated);
                NotificationCenter.getInstance(this.lastAccount).removeObserver(this, NotificationCenter.updateInterfaces);
            }
            this.lastAccount = i;
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.userEmojiStatusUpdated);
            this.lastAccount = i;
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.updateInterfaces);
        }
        this.lastUser = tLRPC$User;
        if (tLRPC$User == null) {
            return;
        }
        this.currentUser = tLRPC$User;
        boolean isShowTitle = drawerHeaderSettings != null ? drawerHeaderSettings.isShowTitle() : SharedConfig.isShowDrawerHeaderTitleEnabled;
        boolean z2 = ForkCommonController.getInstance(i).isShowPremiumBadgeEnabled() && isShowTitle;
        boolean z3 = ForkCommonController.getInstance(i).isShowPremiumStatusEnabled() && isShowTitle;
        this.accountsShown = z;
        setArrowState(false);
        CharSequence userName = UserObject.getUserName(tLRPC$User);
        try {
            userName = Emoji.replaceEmoji(userName, this.nameTextView.getPaint().getFontMetricsInt(), AndroidUtilities.m104dp(22), false);
        } catch (Exception unused) {
        }
        this.drawPremium = false;
        this.nameTextView.setText(userName);
        Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(tLRPC$User);
        if (z3 && emojiStatusDocumentId != null) {
            if (this.previewMode) {
                this.animatedStatus.setAlpha(1.0f);
            } else {
                this.animatedStatus.animate().alpha(1.0f).setDuration(200L).start();
            }
            this.nameTextView.setDrawablePadding(AndroidUtilities.m104dp(4));
            this.status.set(emojiStatusDocumentId.longValue(), !this.previewMode);
        } else if ((z2 || z3) && tLRPC$User.premium) {
            if (this.previewMode) {
                this.animatedStatus.setAlpha(1.0f);
            } else {
                this.animatedStatus.animate().alpha(1.0f).setDuration(200L).start();
            }
            this.nameTextView.setDrawablePadding(AndroidUtilities.m104dp(4));
            if (this.premiumStar == null) {
                this.premiumStar = getResources().getDrawable(C3632R.C3634drawable.msg_premium_liststar).mutate();
            }
            this.premiumStar.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuPhoneCats), PorterDuff.Mode.MULTIPLY));
            this.status.set(this.premiumStar, !this.previewMode);
        } else {
            this.animatedStatus.animateChange(null);
            if (this.previewMode) {
                this.animatedStatus.setAlpha(BitmapDescriptorFactory.HUE_RED);
            } else {
                this.animatedStatus.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200L).start();
            }
            this.status.set((Drawable) null, !this.previewMode);
        }
        this.animatedStatus.setColor(Theme.getColor(Theme.isCurrentThemeDark() ? Theme.key_chats_verifiedBackground : Theme.key_chats_menuPhoneCats));
        this.status.setColor(Integer.valueOf(Theme.getColor(Theme.isCurrentThemeDark() ? Theme.key_chats_verifiedBackground : Theme.key_chats_menuPhoneCats)));
        TextView textView = this.phoneTextView;
        C3546PhoneFormat c3546PhoneFormat = C3546PhoneFormat.getInstance();
        textView.setText(c3546PhoneFormat.format("+" + tLRPC$User.phone));
        AvatarDrawable avatarDrawable = new AvatarDrawable(tLRPC$User);
        avatarDrawable.setColor(Theme.getColor(Theme.key_avatar_backgroundInProfileBlue));
        this.avatarImageView.setForUserOrChat(tLRPC$User, avatarDrawable);
        applyBackground(true);
        this.updateRightDrawable = true;
        applySettings(drawerHeaderSettings);
    }

    public Integer applyBackground(boolean z) {
        Integer num = (Integer) getTag();
        int i = Theme.key_chats_menuTopBackground;
        if (!Theme.hasThemeKey(i) || Theme.getColor(i) == 0) {
            i = Theme.key_chats_menuTopBackgroundCats;
        }
        if (z || num == null || i != num.intValue()) {
            setBackgroundColor(Theme.getColor(i));
            setTag(Integer.valueOf(i));
        }
        return Integer.valueOf(i);
    }

    public void updateColors() {
        SnowflakesEffect snowflakesEffect = this.snowflakesEffect;
        if (snowflakesEffect != null) {
            snowflakesEffect.updateColors();
        }
        AnimatedStatusView animatedStatusView = this.animatedStatus;
        if (animatedStatusView != null) {
            animatedStatusView.setColor(Theme.getColor(Theme.isCurrentThemeDark() ? Theme.key_chats_verifiedBackground : Theme.key_chats_menuPhoneCats));
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.status;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.isCurrentThemeDark() ? Theme.key_chats_verifiedBackground : Theme.key_chats_menuPhoneCats)));
        }
    }

    private void setArrowState(boolean z) {
        int i;
        String str;
        float f = this.accountsShown ? 180.0f : BitmapDescriptorFactory.HUE_RED;
        if (z) {
            this.arrowView.animate().rotation(f).setDuration(220L).setInterpolator(CubicBezierInterpolator.EASE_OUT).start();
        } else {
            this.arrowView.animate().cancel();
            this.arrowView.setRotation(f);
        }
        ImageView imageView = this.arrowView;
        if (this.accountsShown) {
            i = C3632R.string.AccDescrHideAccounts;
            str = "AccDescrHideAccounts";
        } else {
            i = C3632R.string.AccDescrShowAccounts;
            str = "AccDescrShowAccounts";
        }
        imageView.setContentDescription(LocaleController.getString(str, i));
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            this.nameTextView.invalidate();
        } else if (i == NotificationCenter.userEmojiStatusUpdated) {
            setUser((TLRPC$User) objArr[0], this.accountsShown);
        } else if (i == NotificationCenter.currentUserPremiumStatusChanged) {
            setUser(UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser(), this.accountsShown);
        } else if (i == NotificationCenter.updateInterfaces) {
            int intValue = ((Integer) objArr[0]).intValue();
            if ((MessagesController.UPDATE_MASK_NAME & intValue) == 0 && (MessagesController.UPDATE_MASK_AVATAR & intValue) == 0 && (MessagesController.UPDATE_MASK_STATUS & intValue) == 0 && (MessagesController.UPDATE_MASK_PHONE & intValue) == 0 && (intValue & MessagesController.UPDATE_MASK_EMOJI_STATUS) == 0) {
                return;
            }
            setUser(UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser(), this.accountsShown);
        }
    }

    public AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable getEmojiStatusDrawable() {
        return this.status;
    }

    public View getEmojiStatusDrawableParent() {
        return this.nameTextView;
    }
}
