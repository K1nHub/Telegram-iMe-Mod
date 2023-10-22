package org.telegram.p042ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$Menu;
import com.iMe.storage.data.manager.analytics.AnalyticsManager;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ActionBar.ThemeDescription;
import org.telegram.p042ui.Cells.ShadowSectionCell;
import org.telegram.p042ui.Cells.TextInfoPrivacyCell;
import org.telegram.p042ui.Components.AlertsCreator;
import org.telegram.p042ui.Components.CombinedDrawable;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.FillLastLinearLayoutManager;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.Premium.AboutPremiumView;
import org.telegram.p042ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.p042ui.Components.Premium.PremiumButtonView;
import org.telegram.p042ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p042ui.Components.Premium.PremiumGradient;
import org.telegram.p042ui.Components.Premium.PremiumNotAvailableBottomSheet;
import org.telegram.p042ui.Components.Premium.PremiumTierCell;
import org.telegram.p042ui.Components.Premium.StarParticlesView;
import org.telegram.p042ui.Components.RecyclerListView;
import org.telegram.p042ui.Components.SimpleThemeDescription;
import org.telegram.p042ui.FilterCreateActivity;
import org.telegram.p042ui.PremiumPreviewFragment;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_dataJSON;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_help_premiumPromo;
import org.telegram.tgnet.TLRPC$TL_help_saveAppLog;
import org.telegram.tgnet.TLRPC$TL_inputAppEvent;
import org.telegram.tgnet.TLRPC$TL_inputStorePaymentPremiumSubscription;
import org.telegram.tgnet.TLRPC$TL_jsonNull;
import org.telegram.tgnet.TLRPC$TL_jsonObject;
import org.telegram.tgnet.TLRPC$TL_jsonObjectValue;
import org.telegram.tgnet.TLRPC$TL_jsonString;
import org.telegram.tgnet.TLRPC$TL_payments_assignPlayMarketTransaction;
import org.telegram.tgnet.TLRPC$TL_payments_canPurchasePremium;
import org.telegram.tgnet.TLRPC$TL_premiumSubscriptionOption;
import org.telegram.tgnet.TLRPC$Updates;
/* renamed from: org.telegram.ui.PremiumPreviewFragment */
/* loaded from: classes5.dex */
public class PremiumPreviewFragment extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    BackgroundView backgroundView;
    private FrameLayout buttonContainer;
    private View buttonDivider;
    private FrameLayout contentView;
    SubscriptionTier currentSubscriptionTier;
    private int currentYOffset;
    PremiumFeatureCell dummyCell;
    PremiumTierCell dummyTierCell;
    int featuresEndRow;
    int featuresStartRow;
    private int firstViewHeight;
    private boolean forcePremium;
    final Canvas gradientCanvas;
    final Bitmap gradientTextureBitmap;
    PremiumGradient.PremiumGradientTools gradientTools;
    int helpUsRow;
    boolean inc;
    private boolean isDialogVisible;
    boolean isLandscapeMode;
    private boolean isSettingsMode;
    int lastPaddingRow;
    FillLastLinearLayoutManager layoutManager;
    RecyclerListView listView;
    int paddingRow;
    StarParticlesView particlesView;
    private PremiumButtonView premiumButtonView;
    int privacyRow;
    float progress;
    float progressToFull;
    int rowCount;
    int sectionRow;
    private boolean selectAnnualByDefault;
    private ActionBarMenuItem settingsItem;
    FrameLayout settingsView;
    Shader shader;
    Drawable shadowDrawable;
    private String source;
    private int statusBarHeight;
    int statusRow;
    PremiumGradient.PremiumGradientTools tiersGradientTools;
    int totalGradientHeight;
    float totalProgress;
    int totalTiersGradientHeight;
    ArrayList<PremiumFeatureData> premiumFeatures = new ArrayList<>();
    ArrayList<SubscriptionTier> subscriptionTiers = new ArrayList<>();
    int selectedTierIndex = 0;
    Matrix matrix = new Matrix();
    Paint gradientPaint = new Paint(1);

    public static String featureTypeToServerString(int i) {
        switch (i) {
            case 0:
                return "double_limits";
            case 1:
                return "more_upload";
            case 2:
                return "faster_download";
            case 3:
                return "no_ads";
            case 4:
                return "infinite_reactions";
            case 5:
                return "premium_stickers";
            case 6:
                return "profile_badge";
            case 7:
                return "animated_userpics";
            case 8:
                return "voice_to_text";
            case 9:
                return "advanced_chat_management";
            case 10:
                return "app_icons";
            case 11:
                return "animated_emoji";
            case 12:
                return "emoji_status";
            case 13:
                return "translations";
            case 14:
                return "stories";
            case 15:
                return "stories__stealth_mode";
            case 16:
                return "stories__permanent_views_history";
            case 17:
                return "stories__expiration_durations";
            case 18:
                return "stories__save_stories_to_gallery";
            case 19:
                return "stories__links_and_formatting";
            case 20:
                return "stories__priority_order";
            case 21:
                return "stories__caption";
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sentPremiumButtonClick$15(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sentPremiumBuyCanceled$16(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sentShowFeaturePreview$17(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sentShowScreenStat$14(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateButtonText$12(View view) {
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return false;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public static void fillPremiumFeaturesList(ArrayList<PremiumFeatureData> arrayList, int i) {
        fillPremiumFeaturesList(arrayList, i, false);
    }

    private void updateSettingsItemVisibility() {
        ActionBarMenuItem actionBarMenuItem = this.settingsItem;
        if (actionBarMenuItem == null) {
            return;
        }
        actionBarMenuItem.setVisibility(!this.isSettingsMode ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSettingsMode(boolean z) {
        this.isSettingsMode = z;
        updateSettingsItemVisibility();
        this.backgroundView.updateText();
        this.premiumFeatures.clear();
        fillPremiumFeaturesList(this.premiumFeatures, this.currentAccount, this.isSettingsMode);
        updateRows();
        this.listView.getAdapter().notifyDataSetChanged();
        measureGradient(this.contentView.getMeasuredWidth(), this.contentView.getMeasuredHeight());
        this.contentView.invalidate();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int serverStringToFeatureType(String str) {
        char c;
        str.hashCode();
        switch (str.hashCode()) {
            case -2145993328:
                if (str.equals("animated_userpics")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -2080028929:
                if (str.equals("infinite_reactions")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -2022719725:
                if (str.equals("stories__caption")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1919626711:
                if (str.equals("stories__save_stories_to_gallery")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1884266413:
                if (str.equals("stories")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1755514268:
                if (str.equals("voice_to_text")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1425144150:
                if (str.equals("animated_emoji")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1225497630:
                if (str.equals("translations")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1040323278:
                if (str.equals("no_ads")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1023650261:
                if (str.equals("more_upload")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -969043445:
                if (str.equals("emoji_status")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -730864243:
                if (str.equals("profile_badge")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -448825858:
                if (str.equals("faster_download")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -165039170:
                if (str.equals("premium_stickers")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -96210874:
                if (str.equals("double_limits")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 234735554:
                if (str.equals("stories__expiration_durations")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 388416338:
                if (str.equals("stories__stealth_mode")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 705083174:
                if (str.equals("stories__priority_order")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 1080006662:
                if (str.equals("stories__links_and_formatting")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 1219849581:
                if (str.equals("advanced_chat_management")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 1438966047:
                if (str.equals("stories__permanent_views_history")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 1832801148:
                if (str.equals("app_icons")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 7;
            case 1:
                return 4;
            case 2:
                return 21;
            case 3:
                return 18;
            case 4:
                return 14;
            case 5:
                return 8;
            case 6:
                return 11;
            case 7:
                return 13;
            case '\b':
                return 3;
            case '\t':
                return 1;
            case '\n':
                return 12;
            case 11:
                return 6;
            case '\f':
                return 2;
            case '\r':
                return 5;
            case 14:
                return 0;
            case 15:
                return 17;
            case 16:
                return 15;
            case 17:
                return 20;
            case 18:
                return 19;
            case 19:
                return 9;
            case 20:
                return 16;
            case 21:
                return 10;
            default:
                return -1;
        }
    }

    public PremiumPreviewFragment setForcePremium() {
        this.forcePremium = true;
        return this;
    }

    public PremiumPreviewFragment(String str) {
        Bitmap createBitmap = Bitmap.createBitmap(100, 100, Bitmap.Config.ARGB_8888);
        this.gradientTextureBitmap = createBitmap;
        this.gradientCanvas = new Canvas(createBitmap);
        this.gradientTools = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradientBackground1, Theme.key_premiumGradientBackground2, Theme.key_premiumGradientBackground3, Theme.key_premiumGradientBackground4);
        PremiumGradient.PremiumGradientTools premiumGradientTools = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, -1, -1);
        this.tiersGradientTools = premiumGradientTools;
        premiumGradientTools.exactly = true;
        premiumGradientTools.f1903x1 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1905y1 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1904x2 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1906y2 = 1.0f;
        premiumGradientTools.f1901cx = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1902cy = BitmapDescriptorFactory.HUE_RED;
        this.source = str;
    }

    public PremiumPreviewFragment setSelectAnnualByDefault() {
        this.selectAnnualByDefault = true;
        return this;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.hasOwnBackground = true;
        LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 100.0f, new int[]{Theme.getColor(Theme.key_premiumGradient4), Theme.getColor(Theme.key_premiumGradient3), Theme.getColor(Theme.key_premiumGradient2), Theme.getColor(Theme.key_premiumGradient1), Theme.getColor(Theme.key_premiumGradient0)}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.32f, 0.5f, 0.7f, 1.0f}, Shader.TileMode.CLAMP);
        this.shader = linearGradient;
        linearGradient.setLocalMatrix(this.matrix);
        this.gradientPaint.setShader(this.shader);
        this.dummyCell = new PremiumFeatureCell(context);
        this.dummyTierCell = new PremiumTierCell(context);
        this.premiumFeatures.clear();
        fillPremiumFeaturesList(this.premiumFeatures, this.currentAccount);
        final Rect rect = new Rect();
        Drawable mutate = context.getResources().getDrawable(C3630R.C3632drawable.sheet_shadow_round).mutate();
        this.shadowDrawable = mutate;
        int i = Theme.key_dialogBackground;
        mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.MULTIPLY));
        this.shadowDrawable.getPadding(rect);
        if (Build.VERSION.SDK_INT >= 21) {
            this.statusBarHeight = AndroidUtilities.isTablet() ? 0 : AndroidUtilities.statusBarHeight;
        }
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.PremiumPreviewFragment.1
            boolean iconInterceptedTouch;
            int lastSize;
            boolean listInterceptedTouch;

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                float x = PremiumPreviewFragment.this.backgroundView.getX() + PremiumPreviewFragment.this.backgroundView.imageFrameLayout.getX();
                float y = PremiumPreviewFragment.this.backgroundView.getY() + PremiumPreviewFragment.this.backgroundView.imageFrameLayout.getY();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(x, y, PremiumPreviewFragment.this.backgroundView.imageView.getMeasuredWidth() + x, PremiumPreviewFragment.this.backgroundView.imageView.getMeasuredHeight() + y);
                if ((rectF.contains(motionEvent.getX(), motionEvent.getY()) || this.iconInterceptedTouch) && !PremiumPreviewFragment.this.listView.scrollingByUser) {
                    motionEvent.offsetLocation(-x, -y);
                    if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                        this.iconInterceptedTouch = true;
                    } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                        this.iconInterceptedTouch = false;
                    }
                    PremiumPreviewFragment.this.backgroundView.imageView.dispatchTouchEvent(motionEvent);
                    return true;
                }
                float x2 = PremiumPreviewFragment.this.backgroundView.getX() + PremiumPreviewFragment.this.backgroundView.tierListView.getX();
                float y2 = PremiumPreviewFragment.this.backgroundView.getY() + PremiumPreviewFragment.this.backgroundView.tierListView.getY();
                rectF.set(x2, y2, PremiumPreviewFragment.this.backgroundView.tierListView.getWidth() + x2, PremiumPreviewFragment.this.backgroundView.tierListView.getHeight() + y2);
                if ((rectF.contains(motionEvent.getX(), motionEvent.getY()) || this.listInterceptedTouch) && !PremiumPreviewFragment.this.listView.scrollingByUser) {
                    motionEvent.offsetLocation(-x2, -y2);
                    if (motionEvent.getAction() == 0) {
                        this.listInterceptedTouch = true;
                    } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                        this.listInterceptedTouch = false;
                    }
                    PremiumPreviewFragment.this.backgroundView.tierListView.dispatchTouchEvent(motionEvent);
                    if (this.listInterceptedTouch) {
                        return true;
                    }
                }
                return super.dispatchTouchEvent(motionEvent);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                if (View.MeasureSpec.getSize(i2) > View.MeasureSpec.getSize(i3)) {
                    PremiumPreviewFragment.this.isLandscapeMode = true;
                } else {
                    PremiumPreviewFragment.this.isLandscapeMode = false;
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    PremiumPreviewFragment.this.statusBarHeight = AndroidUtilities.isTablet() ? 0 : AndroidUtilities.statusBarHeight;
                }
                PremiumPreviewFragment.this.backgroundView.measure(i2, View.MeasureSpec.makeMeasureSpec(0, 0));
                PremiumPreviewFragment.this.particlesView.getLayoutParams().height = PremiumPreviewFragment.this.backgroundView.getMeasuredHeight();
                int m102dp = (PremiumPreviewFragment.this.buttonContainer == null || PremiumPreviewFragment.this.buttonContainer.getVisibility() == 8) ? 0 : AndroidUtilities.m102dp(68);
                if (PremiumPreviewFragment.this.isSettingsMode) {
                    PremiumPreviewFragment.this.layoutManager.setAdditionalHeight(0);
                } else {
                    PremiumPreviewFragment premiumPreviewFragment = PremiumPreviewFragment.this;
                    premiumPreviewFragment.layoutManager.setAdditionalHeight((premiumPreviewFragment.statusBarHeight + m102dp) - AndroidUtilities.m102dp(16));
                }
                PremiumPreviewFragment.this.layoutManager.setMinimumLastViewHeight(m102dp);
                super.onMeasure(i2, i3);
                if (this.lastSize != ((getMeasuredHeight() + getMeasuredWidth()) << 16)) {
                    PremiumPreviewFragment.this.updateBackgroundImage();
                }
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                super.onLayout(z, i2, i3, i4, i5);
                PremiumPreviewFragment.this.backgroundView.imageView.mRenderer.gradientScaleX = PremiumPreviewFragment.this.backgroundView.imageView.getMeasuredWidth() / getMeasuredWidth();
                PremiumPreviewFragment.this.backgroundView.imageView.mRenderer.gradientScaleY = PremiumPreviewFragment.this.backgroundView.imageView.getMeasuredHeight() / getMeasuredHeight();
                PremiumPreviewFragment.this.backgroundView.imageView.mRenderer.gradientStartX = (PremiumPreviewFragment.this.backgroundView.getX() + PremiumPreviewFragment.this.backgroundView.imageView.getX()) / getMeasuredWidth();
                PremiumPreviewFragment.this.backgroundView.imageView.mRenderer.gradientStartY = (PremiumPreviewFragment.this.backgroundView.getY() + PremiumPreviewFragment.this.backgroundView.imageView.getY()) / getMeasuredHeight();
            }

            @Override // android.view.View
            protected void onSizeChanged(int i2, int i3, int i4, int i5) {
                super.onSizeChanged(i2, i3, i4, i5);
                PremiumPreviewFragment.this.measureGradient(i2, i3);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                PremiumPreviewFragment premiumPreviewFragment;
                StarParticlesView starParticlesView;
                if (!PremiumPreviewFragment.this.isDialogVisible) {
                    PremiumPreviewFragment premiumPreviewFragment2 = PremiumPreviewFragment.this;
                    if (premiumPreviewFragment2.inc) {
                        float f = premiumPreviewFragment2.progress + 0.016f;
                        premiumPreviewFragment2.progress = f;
                        if (f > 3.0f) {
                            premiumPreviewFragment2.inc = false;
                        }
                    } else {
                        float f2 = premiumPreviewFragment2.progress - 0.016f;
                        premiumPreviewFragment2.progress = f2;
                        if (f2 < 1.0f) {
                            premiumPreviewFragment2.inc = true;
                        }
                    }
                }
                View findViewByPosition = PremiumPreviewFragment.this.listView.getLayoutManager() != null ? PremiumPreviewFragment.this.listView.getLayoutManager().findViewByPosition(0) : null;
                PremiumPreviewFragment.this.currentYOffset = findViewByPosition != null ? findViewByPosition.getBottom() : 0;
                int bottom = ((BaseFragment) PremiumPreviewFragment.this).actionBar.getBottom() + AndroidUtilities.m102dp(16);
                PremiumPreviewFragment.this.totalProgress = 1.0f - ((premiumPreviewFragment.currentYOffset - bottom) / (PremiumPreviewFragment.this.firstViewHeight - bottom));
                PremiumPreviewFragment premiumPreviewFragment3 = PremiumPreviewFragment.this;
                float f3 = premiumPreviewFragment3.totalProgress;
                float f4 = BitmapDescriptorFactory.HUE_RED;
                premiumPreviewFragment3.totalProgress = Utilities.clamp(f3, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                int bottom2 = ((BaseFragment) PremiumPreviewFragment.this).actionBar.getBottom() + AndroidUtilities.m102dp(16);
                if (PremiumPreviewFragment.this.currentYOffset < bottom2) {
                    PremiumPreviewFragment.this.currentYOffset = bottom2;
                }
                PremiumPreviewFragment premiumPreviewFragment4 = PremiumPreviewFragment.this;
                float f5 = premiumPreviewFragment4.progressToFull;
                premiumPreviewFragment4.progressToFull = BitmapDescriptorFactory.HUE_RED;
                if (premiumPreviewFragment4.currentYOffset < AndroidUtilities.m102dp(30) + bottom2) {
                    PremiumPreviewFragment.this.progressToFull = ((bottom2 + AndroidUtilities.m102dp(30)) - PremiumPreviewFragment.this.currentYOffset) / AndroidUtilities.m102dp(30);
                }
                PremiumPreviewFragment premiumPreviewFragment5 = PremiumPreviewFragment.this;
                if (premiumPreviewFragment5.isLandscapeMode || premiumPreviewFragment5.isSettingsMode) {
                    PremiumPreviewFragment premiumPreviewFragment6 = PremiumPreviewFragment.this;
                    premiumPreviewFragment6.progressToFull = 1.0f;
                    premiumPreviewFragment6.totalProgress = 1.0f;
                }
                PremiumPreviewFragment premiumPreviewFragment7 = PremiumPreviewFragment.this;
                if (f5 != premiumPreviewFragment7.progressToFull) {
                    premiumPreviewFragment7.listView.invalidate();
                }
                float max = Math.max((((((((BaseFragment) PremiumPreviewFragment.this).actionBar.getMeasuredHeight() - PremiumPreviewFragment.this.statusBarHeight) - PremiumPreviewFragment.this.backgroundView.titleView.getMeasuredHeight()) / 2.0f) + PremiumPreviewFragment.this.statusBarHeight) - PremiumPreviewFragment.this.backgroundView.getTop()) - PremiumPreviewFragment.this.backgroundView.titleView.getTop(), (PremiumPreviewFragment.this.currentYOffset - ((((BaseFragment) PremiumPreviewFragment.this).actionBar.getMeasuredHeight() + PremiumPreviewFragment.this.backgroundView.getMeasuredHeight()) - PremiumPreviewFragment.this.statusBarHeight)) + AndroidUtilities.m102dp(PremiumPreviewFragment.this.backgroundView.tierListView.getVisibility() == 0 ? 24 : 16));
                PremiumPreviewFragment.this.backgroundView.setTranslationY(max);
                PremiumPreviewFragment.this.backgroundView.imageView.setTranslationY(((-max) / 4.0f) + AndroidUtilities.m102dp(16) + AndroidUtilities.m102dp(16));
                PremiumPreviewFragment premiumPreviewFragment8 = PremiumPreviewFragment.this;
                float f6 = premiumPreviewFragment8.totalProgress;
                float f7 = ((1.0f - f6) * 0.4f) + 0.6f;
                float f8 = 1.0f - (f6 > 0.5f ? (f6 - 0.5f) / 0.5f : 0.0f);
                premiumPreviewFragment8.backgroundView.imageView.setScaleX(f7);
                PremiumPreviewFragment.this.backgroundView.imageView.setScaleY(f7);
                PremiumPreviewFragment.this.backgroundView.imageView.setAlpha(f8);
                PremiumPreviewFragment.this.backgroundView.subtitleView.setAlpha(f8);
                PremiumPreviewFragment.this.backgroundView.tierListView.setAlpha(f8);
                PremiumPreviewFragment premiumPreviewFragment9 = PremiumPreviewFragment.this;
                premiumPreviewFragment9.particlesView.setAlpha(1.0f - premiumPreviewFragment9.totalProgress);
                PremiumPreviewFragment.this.particlesView.setTranslationY(((-(starParticlesView.getMeasuredHeight() - PremiumPreviewFragment.this.backgroundView.imageView.getMeasuredWidth())) / 2.0f) + PremiumPreviewFragment.this.backgroundView.getY() + PremiumPreviewFragment.this.backgroundView.imageFrameLayout.getY());
                float m102dp = AndroidUtilities.m102dp(72) - PremiumPreviewFragment.this.backgroundView.titleView.getLeft();
                PremiumPreviewFragment premiumPreviewFragment10 = PremiumPreviewFragment.this;
                float f9 = premiumPreviewFragment10.totalProgress;
                if (f9 > 0.3f) {
                    f4 = (f9 - 0.3f) / 0.7f;
                }
                premiumPreviewFragment10.backgroundView.titleView.setTranslationX(m102dp * (1.0f - CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(1.0f - f4)));
                PremiumPreviewFragment.this.backgroundView.imageView.mRenderer.gradientStartX = ((PremiumPreviewFragment.this.backgroundView.getX() + PremiumPreviewFragment.this.backgroundView.imageFrameLayout.getX()) + ((getMeasuredWidth() * 0.1f) * PremiumPreviewFragment.this.progress)) / getMeasuredWidth();
                PremiumPreviewFragment.this.backgroundView.imageView.mRenderer.gradientStartY = (PremiumPreviewFragment.this.backgroundView.getY() + PremiumPreviewFragment.this.backgroundView.imageFrameLayout.getY()) / getMeasuredHeight();
                if (!PremiumPreviewFragment.this.isDialogVisible) {
                    invalidate();
                }
                PremiumPreviewFragment.this.gradientTools.gradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), (-getMeasuredWidth()) * 0.1f * PremiumPreviewFragment.this.progress, BitmapDescriptorFactory.HUE_RED);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), PremiumPreviewFragment.this.currentYOffset + AndroidUtilities.m102dp(20), PremiumPreviewFragment.this.gradientTools.paint);
                super.dispatchDraw(canvas);
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view == PremiumPreviewFragment.this.listView) {
                    canvas.save();
                    canvas.clipRect(0, ((BaseFragment) PremiumPreviewFragment.this).actionBar.getBottom(), getMeasuredWidth(), getMeasuredHeight());
                    super.drawChild(canvas, view, j);
                    canvas.restore();
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }
        };
        this.contentView = frameLayout;
        frameLayout.setFitsSystemWindows(true);
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.PremiumPreviewFragment.2
            @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
            public void onDraw(Canvas canvas) {
                Drawable drawable = PremiumPreviewFragment.this.shadowDrawable;
                PremiumPreviewFragment premiumPreviewFragment = PremiumPreviewFragment.this;
                drawable.setBounds((int) ((-rect.left) - (AndroidUtilities.m102dp(16) * premiumPreviewFragment.progressToFull)), (premiumPreviewFragment.currentYOffset - rect.top) - AndroidUtilities.m102dp(16), (int) (getMeasuredWidth() + rect.right + (AndroidUtilities.m102dp(16) * PremiumPreviewFragment.this.progressToFull)), getMeasuredHeight());
                PremiumPreviewFragment.this.shadowDrawable.draw(canvas);
                super.onDraw(canvas);
            }
        };
        this.listView = recyclerListView;
        FillLastLinearLayoutManager fillLastLinearLayoutManager = new FillLastLinearLayoutManager(context, (AndroidUtilities.m102dp(68) + this.statusBarHeight) - AndroidUtilities.m102dp(16), this.listView);
        this.layoutManager = fillLastLinearLayoutManager;
        recyclerListView.setLayoutManager(fillLastLinearLayoutManager);
        this.listView.setAdapter(new Adapter());
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.PremiumPreviewFragment.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                super.onScrollStateChanged(recyclerView, i2);
                if (i2 == 0) {
                    int bottom = ((BaseFragment) PremiumPreviewFragment.this).actionBar.getBottom() + AndroidUtilities.m102dp(16);
                    PremiumPreviewFragment premiumPreviewFragment = PremiumPreviewFragment.this;
                    if (premiumPreviewFragment.totalProgress > 0.5f) {
                        premiumPreviewFragment.listView.smoothScrollBy(0, premiumPreviewFragment.currentYOffset - bottom);
                    } else {
                        View findViewByPosition = premiumPreviewFragment.listView.getLayoutManager() != null ? PremiumPreviewFragment.this.listView.getLayoutManager().findViewByPosition(0) : null;
                        if (findViewByPosition != null && findViewByPosition.getTop() < 0) {
                            PremiumPreviewFragment.this.listView.smoothScrollBy(0, findViewByPosition.getTop());
                        }
                    }
                }
                PremiumPreviewFragment.this.checkButtonDivider();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                super.onScrolled(recyclerView, i2, i3);
                PremiumPreviewFragment.this.contentView.invalidate();
                PremiumPreviewFragment.this.checkButtonDivider();
            }
        });
        this.backgroundView = new BackgroundView(this, context) { // from class: org.telegram.ui.PremiumPreviewFragment.4
            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return true;
            }
        };
        this.particlesView = new StarParticlesView(context);
        this.backgroundView.imageView.setStarParticlesView(this.particlesView);
        this.contentView.addView(this.particlesView, LayoutHelper.createFrame(-1, -2));
        this.contentView.addView(this.backgroundView, LayoutHelper.createFrame(-1, -2));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda18
            @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                PremiumPreviewFragment.this.lambda$createView$0(view, i2);
            }
        });
        this.contentView.addView(this.listView);
        this.premiumButtonView = new PremiumButtonView(context, false, getResourceProvider());
        updateButtonText(false);
        this.buttonContainer = new FrameLayout(context);
        View view = new View(context);
        this.buttonDivider = view;
        view.setBackgroundColor(Theme.getColor(Theme.key_divider));
        this.buttonContainer.addView(this.buttonDivider, LayoutHelper.createFrame(-1, 1));
        this.buttonDivider.getLayoutParams().height = 1;
        AndroidUtilities.updateViewVisibilityAnimated(this.buttonDivider, true, 1.0f, false);
        this.buttonContainer.addView(this.premiumButtonView, LayoutHelper.createFrame(-1, 48, 16, 16, 0, 16, 0));
        this.buttonContainer.setBackgroundColor(getThemedColor(i));
        this.contentView.addView(this.buttonContainer, LayoutHelper.createFrame(-1, 68, 80));
        this.fragmentView = this.contentView;
        this.actionBar.setBackground(null);
        this.actionBar.setCastShadows(false);
        this.actionBar.setBackButtonImage(C3630R.C3632drawable.ic_ab_back);
        this.actionBar.setActionBarMenuOnItemClick(new C3702ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.PremiumPreviewFragment.5
            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == IdFabric$Menu.SETTINGS) {
                    PremiumPreviewFragment.this.setSettingsMode(true);
                } else if (i2 == -1) {
                    if (PremiumPreviewFragment.this.isSettingsMode) {
                        PremiumPreviewFragment.this.setSettingsMode(false);
                    } else {
                        PremiumPreviewFragment.this.finishFragment();
                    }
                }
            }
        });
        this.actionBar.setForceSkipTouches(true);
        this.settingsItem = this.actionBar.createMenu().addItem(IdFabric$Menu.SETTINGS, C3630R.C3632drawable.fork_settings_filled);
        updateSettingsItemVisibility();
        AnalyticsManager.trackEvent(AnalyticsEvent.OpenBuyTelegramPremiumScreen.INSTANCE);
        updateColors();
        updateRows();
        this.backgroundView.imageView.startEnterAnimation(-180, 200L);
        if (this.forcePremium) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    PremiumPreviewFragment.this.lambda$createView$1();
                }
            }, 400L);
        }
        MediaDataController.getInstance(this.currentAccount).preloadPremiumPreviewStickers();
        sentShowScreenStat(this.source);
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view, int i) {
        if (view instanceof PremiumFeatureCell) {
            PremiumFeatureCell premiumFeatureCell = (PremiumFeatureCell) view;
            if (this.isSettingsMode) {
                premiumFeatureCell.setChecked(!premiumFeatureCell.isChecked(), true);
                int i2 = premiumFeatureCell.data.type;
                if (i2 == 5) {
                    getForkCommonController().setPremiumAnimateStickers(!getForkCommonController().isPremiumAnimateStickers());
                } else if (i2 == 6) {
                    getForkCommonController().setShowPremiumBadgeEnabled(!getForkCommonController().isShowPremiumBadgeEnabled());
                } else if (i2 == 7) {
                    getForkCommonController().setPremiumAnimateAvatars(!getForkCommonController().isPremiumAnimateAvatars());
                } else if (i2 == 12) {
                    getForkCommonController().setShowPremiumStatusEnabled(!getForkCommonController().isShowPremiumStatusEnabled());
                }
                getForkCommonController().saveConfig();
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needUpdateMainActionBarMenu, new Object[0]);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.currentUserPremiumStatusChanged, new Object[0]);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_EMOJI_STATUS));
                return;
            }
            sentShowFeaturePreview(this.currentAccount, premiumFeatureCell.data.type);
            int i3 = this.selectedTierIndex;
            showDialog(new PremiumFeatureBottomSheet(this, premiumFeatureCell.data.type, false, (i3 < 0 || i3 >= this.subscriptionTiers.size()) ? null : this.subscriptionTiers.get(this.selectedTierIndex)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1() {
        getMediaDataController().loadPremiumPromo(false);
    }

    public static void buyPremium(BaseFragment baseFragment) {
        buyPremium(baseFragment, "settings");
    }

    public static void fillPremiumFeaturesList(ArrayList<PremiumFeatureData> arrayList, int i, boolean z) {
        final MessagesController messagesController = MessagesController.getInstance(i);
        boolean isPremium = UserConfig.getInstance(i).isPremium();
        int i2 = 0;
        if (!z) {
            arrayList.add(new PremiumFeatureData(0, C3630R.C3632drawable.msg_premium_limits, LocaleController.getString("PremiumPreviewLimits", C3630R.string.PremiumPreviewLimits), LocaleController.formatString("PremiumPreviewLimitsDescription", C3630R.string.PremiumPreviewLimitsDescription, Integer.valueOf(messagesController.channelsLimitPremium), Integer.valueOf(messagesController.dialogFiltersLimitPremium), Integer.valueOf(messagesController.dialogFiltersPinnedLimitPremium), Integer.valueOf(messagesController.publicLinksLimitPremium), 4)));
        }
        if (!z) {
            arrayList.add(new PremiumFeatureData(14, C3630R.C3632drawable.msg_filled_stories, applyNewSpan(LocaleController.getString("PremiumPreviewStories", C3630R.string.PremiumPreviewStories)), LocaleController.formatString("PremiumPreviewStoriesDescription", C3630R.string.PremiumPreviewStoriesDescription, new Object[0])));
        }
        if (!z) {
            arrayList.add(new PremiumFeatureData(1, C3630R.C3632drawable.msg_premium_uploads, LocaleController.getString("PremiumPreviewUploads", C3630R.string.PremiumPreviewUploads), LocaleController.getString("PremiumPreviewUploadsDescription", C3630R.string.PremiumPreviewUploadsDescription)));
        }
        if (!z) {
            arrayList.add(new PremiumFeatureData(2, C3630R.C3632drawable.msg_premium_speed, LocaleController.getString("PremiumPreviewDownloadSpeed", C3630R.string.PremiumPreviewDownloadSpeed), LocaleController.getString("PremiumPreviewDownloadSpeedDescription", C3630R.string.PremiumPreviewDownloadSpeedDescription)));
        }
        if (!z) {
            arrayList.add(new PremiumFeatureData(8, C3630R.C3632drawable.msg_premium_voice, LocaleController.getString("PremiumPreviewVoiceToText", C3630R.string.PremiumPreviewVoiceToText), LocaleController.getString("PremiumPreviewVoiceToTextDescription", C3630R.string.PremiumPreviewVoiceToTextDescription)));
        }
        if (!z) {
            arrayList.add(new PremiumFeatureData(3, C3630R.C3632drawable.msg_premium_ads, LocaleController.getString("PremiumPreviewNoAds", C3630R.string.PremiumPreviewNoAds), LocaleController.getString("PremiumPreviewNoAdsDescription", C3630R.string.PremiumPreviewNoAdsDescription)));
        }
        if (!z) {
            arrayList.add(new PremiumFeatureData(4, C3630R.C3632drawable.msg_premium_reactions, LocaleController.getString("PremiumPreviewReactions2", C3630R.string.PremiumPreviewReactions2), LocaleController.getString("PremiumPreviewReactions2Description", C3630R.string.PremiumPreviewReactions2Description)));
        }
        arrayList.add(new PremiumFeatureData(5, C3630R.C3632drawable.msg_premium_stickers, LocaleController.getString("PremiumPreviewStickers", C3630R.string.PremiumPreviewStickers), z ? LocaleController.getInternalString(C3630R.string.premium_settings_animate_stickers) : LocaleController.getString("PremiumPreviewStickersDescription", C3630R.string.PremiumPreviewStickersDescription)));
        if (!z) {
            arrayList.add(new PremiumFeatureData(11, C3630R.C3632drawable.msg_premium_emoji, LocaleController.getString("PremiumPreviewEmoji", C3630R.string.PremiumPreviewEmoji), LocaleController.getString("PremiumPreviewEmojiDescription", C3630R.string.PremiumPreviewEmojiDescription)));
        }
        if (!z) {
            arrayList.add(new PremiumFeatureData(9, C3630R.C3632drawable.msg_premium_tools, LocaleController.getString("PremiumPreviewAdvancedChatManagement", C3630R.string.PremiumPreviewAdvancedChatManagement), LocaleController.getString("PremiumPreviewAdvancedChatManagementDescription", C3630R.string.PremiumPreviewAdvancedChatManagementDescription)));
        }
        arrayList.add(new PremiumFeatureData(6, C3630R.C3632drawable.msg_premium_badge, LocaleController.getString("PremiumPreviewProfileBadge", C3630R.string.PremiumPreviewProfileBadge), (!z || isPremium) ? LocaleController.getString("PremiumPreviewProfileBadgeDescription", C3630R.string.PremiumPreviewProfileBadgeDescription) : LocaleController.getInternalString(C3630R.string.premium_settings_not_premium_show_badge)));
        arrayList.add(new PremiumFeatureData(7, C3630R.C3632drawable.msg_premium_avatar, LocaleController.getString("PremiumPreviewAnimatedProfiles", C3630R.string.PremiumPreviewAnimatedProfiles), (!z || isPremium) ? LocaleController.getString("PremiumPreviewAnimatedProfilesDescription", C3630R.string.PremiumPreviewAnimatedProfilesDescription) : LocaleController.getInternalString(C3630R.string.premium_settings_not_premium_animate_avatars)));
        if (!z) {
            arrayList.add(new PremiumFeatureData(10, C3630R.C3632drawable.msg_premium_icons, LocaleController.getString("PremiumPreviewAppIcon", C3630R.string.PremiumPreviewAppIcon), LocaleController.getString("PremiumPreviewAppIconDescription", C3630R.string.PremiumPreviewAppIconDescription)));
        }
        arrayList.add(new PremiumFeatureData(12, C3630R.C3632drawable.msg_premium_status, LocaleController.getString("PremiumPreviewEmojiStatus", C3630R.string.PremiumPreviewEmojiStatus), LocaleController.getString("PremiumPreviewEmojiStatusDescription", C3630R.string.PremiumPreviewEmojiStatusDescription)));
        if (!z) {
            arrayList.add(new PremiumFeatureData(13, C3630R.C3632drawable.msg_premium_translate, LocaleController.getString("PremiumPreviewTranslations", C3630R.string.PremiumPreviewTranslations), LocaleController.getString("PremiumPreviewTranslationsDescription", C3630R.string.PremiumPreviewTranslationsDescription)));
        }
        if (messagesController.premiumFeaturesTypesToPosition.size() > 0) {
            while (i2 < arrayList.size()) {
                if (messagesController.premiumFeaturesTypesToPosition.get(arrayList.get(i2).type, -1) == -1) {
                    arrayList.remove(i2);
                    i2--;
                }
                i2++;
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda10
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$fillPremiumFeaturesList$2;
                lambda$fillPremiumFeaturesList$2 = PremiumPreviewFragment.lambda$fillPremiumFeaturesList$2(MessagesController.this, (PremiumPreviewFragment.PremiumFeatureData) obj, (PremiumPreviewFragment.PremiumFeatureData) obj2);
                return lambda$fillPremiumFeaturesList$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$fillPremiumFeaturesList$2(MessagesController messagesController, PremiumFeatureData premiumFeatureData, PremiumFeatureData premiumFeatureData2) {
        return messagesController.premiumFeaturesTypesToPosition.get(premiumFeatureData.type, Integer.MAX_VALUE) - messagesController.premiumFeaturesTypesToPosition.get(premiumFeatureData2.type, Integer.MAX_VALUE);
    }

    public static CharSequence applyNewSpan(String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.append((CharSequence) "  d");
        FilterCreateActivity.NewSpan newSpan = new FilterCreateActivity.NewSpan(false);
        newSpan.setColor(Theme.getColor(Theme.key_premiumGradient1));
        spannableStringBuilder.setSpan(newSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackgroundImage() {
        if (this.contentView.getMeasuredWidth() == 0 || this.contentView.getMeasuredHeight() == 0) {
            return;
        }
        this.gradientTools.gradientMatrix(0, 0, this.contentView.getMeasuredWidth(), this.contentView.getMeasuredHeight(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        this.gradientCanvas.save();
        this.gradientCanvas.scale(100.0f / this.contentView.getMeasuredWidth(), 100.0f / this.contentView.getMeasuredHeight());
        this.gradientCanvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.contentView.getMeasuredWidth(), this.contentView.getMeasuredHeight(), this.gradientTools.paint);
        this.gradientCanvas.restore();
        this.backgroundView.imageView.setBackgroundBitmap(this.gradientTextureBitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkButtonDivider() {
        AndroidUtilities.updateViewVisibilityAnimated(this.buttonDivider, this.listView.canScrollVertically(1), 1.0f, true);
    }

    public static void buyPremium(BaseFragment baseFragment, String str) {
        buyPremium(baseFragment, null, str, true);
    }

    public static void buyPremium(BaseFragment baseFragment, SubscriptionTier subscriptionTier, String str) {
        buyPremium(baseFragment, subscriptionTier, str, true);
    }

    public static void buyPremium(BaseFragment baseFragment, SubscriptionTier subscriptionTier, String str, boolean z) {
        buyPremium(baseFragment, subscriptionTier, str, z, null);
    }

    public static void buyPremium(final BaseFragment baseFragment, final SubscriptionTier subscriptionTier, String str, final boolean z, final BillingFlowParams.SubscriptionUpdateParams subscriptionUpdateParams) {
        String str2;
        AnalyticsManager.trackEvent(AnalyticsEvent.ClickBuyPremiumButton.INSTANCE);
        if (BuildVars.IS_BILLING_UNAVAILABLE) {
            baseFragment.showDialog(new PremiumNotAvailableBottomSheet(baseFragment));
            return;
        }
        if (subscriptionTier == null) {
            TLRPC$TL_help_premiumPromo premiumPromo = baseFragment.getAccountInstance().getMediaDataController().getPremiumPromo();
            if (premiumPromo != null) {
                Iterator<TLRPC$TL_premiumSubscriptionOption> it = premiumPromo.period_options.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    TLRPC$TL_premiumSubscriptionOption next = it.next();
                    int i = next.months;
                    if (i == 1) {
                        subscriptionTier = new SubscriptionTier(next);
                    } else if (i == 12) {
                        subscriptionTier = new SubscriptionTier(next);
                        break;
                    }
                }
            }
            z = true;
        }
        if (subscriptionTier == null) {
            return;
        }
        sentPremiumButtonClick();
        if (BuildVars.useInvoiceBilling()) {
            Activity parentActivity = baseFragment.getParentActivity();
            if (parentActivity instanceof LaunchActivity) {
                LaunchActivity launchActivity = (LaunchActivity) parentActivity;
                TLRPC$TL_premiumSubscriptionOption tLRPC$TL_premiumSubscriptionOption = subscriptionTier.subscriptionOption;
                if (tLRPC$TL_premiumSubscriptionOption == null || (str2 = tLRPC$TL_premiumSubscriptionOption.bot_url) == null) {
                    if (!TextUtils.isEmpty(baseFragment.getMessagesController().premiumBotUsername)) {
                        launchActivity.setNavigateToPremiumBot(true);
                        launchActivity.onNewIntent(new Intent("android.intent.action.VIEW", Uri.parse("https://t.me/" + baseFragment.getMessagesController().premiumBotUsername + "?start=" + str)));
                        return;
                    } else if (TextUtils.isEmpty(baseFragment.getMessagesController().premiumInvoiceSlug)) {
                        return;
                    } else {
                        launchActivity.onNewIntent(new Intent("android.intent.action.VIEW", Uri.parse("https://t.me/$" + baseFragment.getMessagesController().premiumInvoiceSlug)));
                        return;
                    }
                }
                Uri parse = Uri.parse(str2);
                if (parse.getHost().equals("t.me") && !parse.getPath().startsWith("/$") && !parse.getPath().startsWith("/invoice/")) {
                    launchActivity.setNavigateToPremiumBot(true);
                }
                Browser.openUrl(launchActivity, subscriptionTier.subscriptionOption.bot_url);
                return;
            }
        }
        ProductDetails productDetails = BillingController.PREMIUM_PRODUCT_DETAILS;
        if (productDetails == null || productDetails.getSubscriptionOfferDetails().isEmpty()) {
            return;
        }
        if (subscriptionTier.getGooglePlayProductDetails() == null) {
            subscriptionTier.setGooglePlayProductDetails(BillingController.PREMIUM_PRODUCT_DETAILS);
        }
        if (subscriptionTier.getOfferDetails() == null) {
            return;
        }
        BillingController.getInstance().queryPurchases("subs", new PurchasesResponseListener() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda4
            @Override // com.android.billingclient.api.PurchasesResponseListener
            public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                PremiumPreviewFragment.lambda$buyPremium$10(BaseFragment.this, z, subscriptionUpdateParams, subscriptionTier, billingResult, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$buyPremium$10(final BaseFragment baseFragment, final boolean z, final BillingFlowParams.SubscriptionUpdateParams subscriptionUpdateParams, final SubscriptionTier subscriptionTier, final BillingResult billingResult, final List list) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                PremiumPreviewFragment.lambda$buyPremium$9(BillingResult.this, baseFragment, z, list, subscriptionUpdateParams, subscriptionTier);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$buyPremium$9(BillingResult billingResult, final BaseFragment baseFragment, final boolean z, List list, final BillingFlowParams.SubscriptionUpdateParams subscriptionUpdateParams, final SubscriptionTier subscriptionTier) {
        if (billingResult.getResponseCode() == 0) {
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    PremiumPreviewFragment.lambda$buyPremium$3(BaseFragment.this, z);
                }
            };
            if (list != null && !list.isEmpty() && !baseFragment.getUserConfig().isPremium()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Purchase purchase = (Purchase) it.next();
                    if (purchase.getProducts().contains(BillingController.PREMIUM_PRODUCT_ID)) {
                        final TLRPC$TL_payments_assignPlayMarketTransaction tLRPC$TL_payments_assignPlayMarketTransaction = new TLRPC$TL_payments_assignPlayMarketTransaction();
                        TLRPC$TL_dataJSON tLRPC$TL_dataJSON = new TLRPC$TL_dataJSON();
                        tLRPC$TL_payments_assignPlayMarketTransaction.receipt = tLRPC$TL_dataJSON;
                        tLRPC$TL_dataJSON.data = purchase.getOriginalJson();
                        TLRPC$TL_inputStorePaymentPremiumSubscription tLRPC$TL_inputStorePaymentPremiumSubscription = new TLRPC$TL_inputStorePaymentPremiumSubscription();
                        tLRPC$TL_inputStorePaymentPremiumSubscription.restore = true;
                        if (subscriptionUpdateParams != null) {
                            tLRPC$TL_inputStorePaymentPremiumSubscription.upgrade = true;
                        }
                        tLRPC$TL_payments_assignPlayMarketTransaction.purpose = tLRPC$TL_inputStorePaymentPremiumSubscription;
                        baseFragment.getConnectionsManager().sendRequest(tLRPC$TL_payments_assignPlayMarketTransaction, new RequestDelegate() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda11
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                                PremiumPreviewFragment.lambda$buyPremium$5(BaseFragment.this, runnable, tLRPC$TL_payments_assignPlayMarketTransaction, tLObject, tLRPC$TL_error);
                            }
                        }, 66);
                        return;
                    }
                }
            }
            BillingController.getInstance().addResultListener(BillingController.PREMIUM_PRODUCT_ID, new Consumer() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda3
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    PremiumPreviewFragment.lambda$buyPremium$6(runnable, (BillingResult) obj);
                }
            });
            final TLRPC$TL_payments_canPurchasePremium tLRPC$TL_payments_canPurchasePremium = new TLRPC$TL_payments_canPurchasePremium();
            final TLRPC$TL_inputStorePaymentPremiumSubscription tLRPC$TL_inputStorePaymentPremiumSubscription2 = new TLRPC$TL_inputStorePaymentPremiumSubscription();
            if (subscriptionUpdateParams != null) {
                tLRPC$TL_inputStorePaymentPremiumSubscription2.upgrade = true;
            }
            tLRPC$TL_payments_canPurchasePremium.purpose = tLRPC$TL_inputStorePaymentPremiumSubscription2;
            baseFragment.getConnectionsManager().sendRequest(tLRPC$TL_payments_canPurchasePremium, new RequestDelegate() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda12
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    PremiumPreviewFragment.lambda$buyPremium$8(BaseFragment.this, tLRPC$TL_inputStorePaymentPremiumSubscription2, subscriptionTier, subscriptionUpdateParams, tLRPC$TL_payments_canPurchasePremium, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$buyPremium$3(BaseFragment baseFragment, boolean z) {
        if (baseFragment instanceof PremiumPreviewFragment) {
            PremiumPreviewFragment premiumPreviewFragment = (PremiumPreviewFragment) baseFragment;
            if (z) {
                premiumPreviewFragment.setForcePremium();
            }
            premiumPreviewFragment.getMediaDataController().loadPremiumPromo(false);
            premiumPreviewFragment.listView.smoothScrollToPosition(0);
        } else {
            PremiumPreviewFragment premiumPreviewFragment2 = new PremiumPreviewFragment(null);
            if (z) {
                premiumPreviewFragment2.setForcePremium();
            }
            baseFragment.presentFragment(premiumPreviewFragment2);
        }
        if (baseFragment.getParentActivity() instanceof LaunchActivity) {
            try {
                baseFragment.getFragmentView().performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            ((LaunchActivity) baseFragment.getParentActivity()).getFireworksOverlay().start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$buyPremium$5(final BaseFragment baseFragment, Runnable runnable, final TLRPC$TL_payments_assignPlayMarketTransaction tLRPC$TL_payments_assignPlayMarketTransaction, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$Updates) {
            baseFragment.getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
            AndroidUtilities.runOnUIThread(runnable);
        } else if (tLRPC$TL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    PremiumPreviewFragment.lambda$buyPremium$4(BaseFragment.this, tLRPC$TL_error, tLRPC$TL_payments_assignPlayMarketTransaction);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$buyPremium$4(BaseFragment baseFragment, TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_payments_assignPlayMarketTransaction tLRPC$TL_payments_assignPlayMarketTransaction) {
        AlertsCreator.processError(baseFragment.getCurrentAccount(), tLRPC$TL_error, baseFragment, tLRPC$TL_payments_assignPlayMarketTransaction, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$buyPremium$6(Runnable runnable, BillingResult billingResult) {
        if (billingResult.getResponseCode() == 0) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$buyPremium$8(final BaseFragment baseFragment, final TLRPC$TL_inputStorePaymentPremiumSubscription tLRPC$TL_inputStorePaymentPremiumSubscription, final SubscriptionTier subscriptionTier, final BillingFlowParams.SubscriptionUpdateParams subscriptionUpdateParams, final TLRPC$TL_payments_canPurchasePremium tLRPC$TL_payments_canPurchasePremium, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                PremiumPreviewFragment.lambda$buyPremium$7(TLObject.this, baseFragment, tLRPC$TL_inputStorePaymentPremiumSubscription, subscriptionTier, subscriptionUpdateParams, tLRPC$TL_error, tLRPC$TL_payments_canPurchasePremium);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$buyPremium$7(TLObject tLObject, BaseFragment baseFragment, TLRPC$TL_inputStorePaymentPremiumSubscription tLRPC$TL_inputStorePaymentPremiumSubscription, SubscriptionTier subscriptionTier, BillingFlowParams.SubscriptionUpdateParams subscriptionUpdateParams, TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_payments_canPurchasePremium tLRPC$TL_payments_canPurchasePremium) {
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            BillingController.getInstance().launchBillingFlow(baseFragment.getParentActivity(), baseFragment.getAccountInstance(), tLRPC$TL_inputStorePaymentPremiumSubscription, Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(BillingController.PREMIUM_PRODUCT_DETAILS).setOfferToken(subscriptionTier.getOfferDetails().getOfferToken()).build()), subscriptionUpdateParams, false);
        } else {
            AlertsCreator.processError(baseFragment.getCurrentAccount(), tLRPC$TL_error, baseFragment, tLRPC$TL_payments_canPurchasePremium, new Object[0]);
        }
    }

    public static String getPremiumButtonText(int i, SubscriptionTier subscriptionTier) {
        return LocaleController.getString("Next", C3630R.string.Next);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void measureGradient(int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < this.premiumFeatures.size(); i4++) {
            this.dummyCell.setData(this.premiumFeatures.get(i4), false);
            this.dummyCell.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
            this.premiumFeatures.get(i4).yOffset = i3;
            i3 += this.dummyCell.getMeasuredHeight();
        }
        this.totalGradientHeight = i3;
    }

    private void updateRows() {
        SubscriptionTier subscriptionTier;
        this.rowCount = 0;
        this.sectionRow = -1;
        this.privacyRow = -1;
        boolean z = true;
        int i = 0 + 1;
        this.rowCount = i;
        this.paddingRow = 0;
        this.featuresStartRow = i;
        int size = i + this.premiumFeatures.size();
        this.rowCount = size;
        this.featuresEndRow = size;
        if (!this.isSettingsMode) {
            this.rowCount = size + 1;
            this.statusRow = size;
        }
        int i2 = this.rowCount;
        this.rowCount = i2 + 1;
        this.lastPaddingRow = i2;
        FrameLayout frameLayout = this.buttonContainer;
        if (getUserConfig().isPremium() && ((subscriptionTier = this.currentSubscriptionTier) == null || subscriptionTier.getMonths() >= this.subscriptionTiers.get(this.selectedTierIndex).getMonths() || this.forcePremium)) {
            z = false;
        }
        AndroidUtilities.updateViewVisibilityAnimated(frameLayout, z, 1.0f, false);
        int m102dp = this.buttonContainer.getVisibility() == 0 ? AndroidUtilities.m102dp(64) : 0;
        if (this.isSettingsMode) {
            this.layoutManager.setAdditionalHeight(0);
        } else {
            this.layoutManager.setAdditionalHeight((this.statusBarHeight + m102dp) - AndroidUtilities.m102dp(16));
        }
        this.layoutManager.setMinimumLastViewHeight(m102dp);
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        if (getMessagesController().premiumLocked) {
            return false;
        }
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.billingProductDetailsUpdated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        getNotificationCenter().addObserver(this, NotificationCenter.premiumPromoUpdated);
        if (getMediaDataController().getPremiumPromo() != null) {
            Iterator<TLRPC$Document> it = getMediaDataController().getPremiumPromo().videos.iterator();
            while (it.hasNext()) {
                FileLoader.getInstance(this.currentAccount).loadFile(it.next(), getMediaDataController().getPremiumPromo(), 3, 0);
            }
        }
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.billingProductDetailsUpdated);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        getNotificationCenter().removeObserver(this, NotificationCenter.premiumPromoUpdated);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.billingProductDetailsUpdated || i == NotificationCenter.premiumPromoUpdated) {
            updateButtonText(false);
            this.backgroundView.updatePremiumTiers();
        }
        if (i == NotificationCenter.currentUserPremiumStatusChanged || i == NotificationCenter.premiumPromoUpdated) {
            this.backgroundView.updateText();
            this.backgroundView.updatePremiumTiers();
            updateRows();
            this.listView.getAdapter().notifyDataSetChanged();
        }
    }

    /* renamed from: org.telegram.ui.PremiumPreviewFragment$Adapter */
    /* loaded from: classes5.dex */
    private class Adapter extends RecyclerListView.SelectionAdapter {
        private Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            Context context = viewGroup.getContext();
            if (i == 1) {
                view = new PremiumFeatureCell(context) { // from class: org.telegram.ui.PremiumPreviewFragment.Adapter.2
                    @Override // org.telegram.p042ui.PremiumFeatureCell, android.view.ViewGroup, android.view.View
                    protected void dispatchDraw(Canvas canvas) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(this.imageView.getLeft(), this.imageView.getTop(), this.imageView.getRight(), this.imageView.getBottom());
                        PremiumPreviewFragment.this.matrix.reset();
                        PremiumPreviewFragment premiumPreviewFragment = PremiumPreviewFragment.this;
                        premiumPreviewFragment.matrix.postScale(1.0f, premiumPreviewFragment.totalGradientHeight / 100.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                        PremiumPreviewFragment.this.matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, -this.data.yOffset);
                        PremiumPreviewFragment premiumPreviewFragment2 = PremiumPreviewFragment.this;
                        premiumPreviewFragment2.shader.setLocalMatrix(premiumPreviewFragment2.matrix);
                        canvas.drawRoundRect(rectF, AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), PremiumPreviewFragment.this.gradientPaint);
                        super.dispatchDraw(canvas);
                    }
                };
            } else if (i == 2) {
                int i2 = Theme.key_windowBackgroundGray;
                view = new ShadowSectionCell(context, 12, Theme.getColor(i2));
                CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(i2)), Theme.getThemedDrawable(context, C3630R.C3632drawable.greydivider_bottom, Theme.getColor(Theme.key_windowBackgroundGrayShadow)), 0, 0);
                combinedDrawable.setFullsize(true);
                view.setBackgroundDrawable(combinedDrawable);
            } else if (i == 4) {
                view = new AboutPremiumView(context);
            } else if (i == 5) {
                view = new TextInfoPrivacyCell(context);
            } else if (i != 6) {
                view = new View(context) { // from class: org.telegram.ui.PremiumPreviewFragment.Adapter.1
                    @Override // android.view.View
                    protected void onMeasure(int i3, int i4) {
                        if (PremiumPreviewFragment.this.isSettingsMode) {
                            PremiumPreviewFragment premiumPreviewFragment = PremiumPreviewFragment.this;
                            premiumPreviewFragment.firstViewHeight = ((BaseFragment) premiumPreviewFragment).actionBar.getMeasuredHeight();
                        } else {
                            PremiumPreviewFragment premiumPreviewFragment2 = PremiumPreviewFragment.this;
                            if (premiumPreviewFragment2.isLandscapeMode) {
                                premiumPreviewFragment2.firstViewHeight = (premiumPreviewFragment2.statusBarHeight + ((BaseFragment) PremiumPreviewFragment.this).actionBar.getMeasuredHeight()) - AndroidUtilities.m102dp(16);
                            } else {
                                int m102dp = AndroidUtilities.m102dp(300) + PremiumPreviewFragment.this.statusBarHeight;
                                if (PremiumPreviewFragment.this.backgroundView.getMeasuredHeight() + AndroidUtilities.m102dp(24) > m102dp) {
                                    m102dp = PremiumPreviewFragment.this.backgroundView.getMeasuredHeight() + AndroidUtilities.m102dp(24);
                                }
                                PremiumPreviewFragment.this.firstViewHeight = m102dp;
                            }
                        }
                        super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec(PremiumPreviewFragment.this.firstViewHeight, 1073741824));
                    }
                };
            } else {
                view = new View(context);
                view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
            }
            view.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(view);
        }

        /* JADX WARN: Removed duplicated region for block: B:85:0x028f  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x02a1 A[ADDED_TO_REGION, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r18, int r19) {
            /*
                Method dump skipped, instructions count: 683
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PremiumPreviewFragment.Adapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return PremiumPreviewFragment.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            PremiumPreviewFragment premiumPreviewFragment = PremiumPreviewFragment.this;
            if (i == premiumPreviewFragment.paddingRow) {
                return 0;
            }
            if (i < premiumPreviewFragment.featuresStartRow || i >= premiumPreviewFragment.featuresEndRow) {
                if (i == premiumPreviewFragment.sectionRow) {
                    return 2;
                }
                if (i == premiumPreviewFragment.helpUsRow) {
                    return 4;
                }
                if (i == premiumPreviewFragment.statusRow || i == premiumPreviewFragment.privacyRow) {
                    return 5;
                }
                return i == premiumPreviewFragment.lastPaddingRow ? 6 : 0;
            }
            return 1;
        }

        @Override // org.telegram.p042ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1;
        }
    }

    /* renamed from: org.telegram.ui.PremiumPreviewFragment$PremiumFeatureData */
    /* loaded from: classes5.dex */
    public static class PremiumFeatureData {
        public final String description;
        public final int icon;
        public final CharSequence title;
        public final int type;
        public int yOffset;

        public PremiumFeatureData(int i, int i2, CharSequence charSequence, String str) {
            this.type = i;
            this.icon = i2;
            this.title = charSequence;
            this.description = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PremiumPreviewFragment$BackgroundView */
    /* loaded from: classes5.dex */
    public class BackgroundView extends LinearLayout {
        private final FrameLayout imageFrameLayout;
        private final GLIconTextureView imageView;
        private boolean setTierListViewVisibility;
        private final TextView subtitleView;
        private RecyclerListView tierListView;
        private boolean tierListViewVisible;
        TextView titleView;

        public BackgroundView(Context context) {
            super(context);
            setOrientation(1);
            FrameLayout frameLayout = new FrameLayout(context);
            this.imageFrameLayout = frameLayout;
            addView(frameLayout, LayoutHelper.createLinear(190, 190, 1));
            GLIconTextureView gLIconTextureView = new GLIconTextureView(context, 0, PremiumPreviewFragment.this, context) { // from class: org.telegram.ui.PremiumPreviewFragment.BackgroundView.1
                final /* synthetic */ Context val$context;

                {
                    this.val$context = context;
                }

                @Override // org.telegram.p042ui.Components.Premium.GLIcon.GLIconTextureView
                public void onLongPress() {
                    super.onLongPress();
                    PremiumPreviewFragment premiumPreviewFragment = PremiumPreviewFragment.this;
                    if (premiumPreviewFragment.settingsView == null || BuildVars.DEBUG_PRIVATE_VERSION) {
                        premiumPreviewFragment.settingsView = new FrameLayout(this.val$context);
                        ScrollView scrollView = new ScrollView(this.val$context);
                        scrollView.addView(new GLIconSettingsView(this.val$context, BackgroundView.this.imageView.mRenderer));
                        PremiumPreviewFragment.this.settingsView.addView(scrollView);
                        PremiumPreviewFragment.this.settingsView.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground));
                        PremiumPreviewFragment.this.contentView.addView(PremiumPreviewFragment.this.settingsView, LayoutHelper.createFrame(-1, -1, 80));
                        ((ViewGroup.MarginLayoutParams) PremiumPreviewFragment.this.settingsView.getLayoutParams()).topMargin = PremiumPreviewFragment.this.currentYOffset;
                        PremiumPreviewFragment.this.settingsView.setTranslationY(AndroidUtilities.m102dp(1000));
                        PremiumPreviewFragment.this.settingsView.animate().translationY(1.0f).setDuration(300L);
                    }
                }
            };
            this.imageView = gLIconTextureView;
            frameLayout.addView(gLIconTextureView, LayoutHelper.createFrame(-1, -1));
            frameLayout.setClipChildren(false);
            setClipChildren(false);
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 22.0f);
            this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.titleView.setGravity(1);
            addView(this.titleView, LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED, 1, 16, 20, 16, 0));
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            textView2.setTextSize(1, 14.0f);
            textView2.setLineSpacing(AndroidUtilities.m102dp(2), 1.0f);
            textView2.setGravity(1);
            addView(textView2, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 16, 7, 16, 0));
            RecyclerListView recyclerListView = new RecyclerListView(context, PremiumPreviewFragment.this) { // from class: org.telegram.ui.PremiumPreviewFragment.BackgroundView.2
                Paint paint;

                {
                    Paint paint = new Paint(1);
                    this.paint = paint;
                    paint.setColor(Theme.getColor(Theme.key_dialogBackground));
                }

                @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
                public void draw(Canvas canvas) {
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
                    canvas.drawRoundRect(rectF, AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(12), this.paint);
                    super.draw(canvas);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p042ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
                public void onSizeChanged(int i, int i2, int i3, int i4) {
                    super.onSizeChanged(i, i2, i3, i4);
                    BackgroundView.this.measureGradient(i, i2);
                }
            };
            this.tierListView = recyclerListView;
            recyclerListView.setOverScrollMode(2);
            this.tierListView.setLayoutManager(new LinearLayoutManager(context));
            this.tierListView.setAdapter(new C67223(PremiumPreviewFragment.this, context));
            this.tierListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda2
                @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i) {
                    PremiumPreviewFragment.BackgroundView.this.lambda$new$0(view, i);
                }
            });
            final Path path = new Path();
            final float[] fArr = new float[8];
            this.tierListView.setSelectorTransformer(new Consumer() { // from class: org.telegram.ui.PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda1
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    PremiumPreviewFragment.BackgroundView.this.lambda$new$1(path, fArr, (Canvas) obj);
                }
            });
            addView(this.tierListView, LayoutHelper.createLinear(-1, -2, 12, 16, 12, 0));
            updatePremiumTiers();
            updateText();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.PremiumPreviewFragment$BackgroundView$3 */
        /* loaded from: classes5.dex */
        public class C67223 extends RecyclerListView.SelectionAdapter {
            final /* synthetic */ Context val$context;

            C67223(PremiumPreviewFragment premiumPreviewFragment, Context context) {
                this.val$context = context;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                final PremiumTierCell premiumTierCell = new PremiumTierCell(this.val$context) { // from class: org.telegram.ui.PremiumPreviewFragment.BackgroundView.3.1
                    @Override // org.telegram.p042ui.Components.Premium.PremiumTierCell, android.view.ViewGroup, android.view.View
                    protected void dispatchDraw(Canvas canvas) {
                        if (this.discountView.getVisibility() == 0) {
                            RectF rectF = AndroidUtilities.rectTmp;
                            rectF.set(this.discountView.getLeft(), this.discountView.getTop(), this.discountView.getRight(), this.discountView.getBottom());
                            PremiumPreviewFragment.this.tiersGradientTools.gradientMatrix(0, 0, getMeasuredWidth(), PremiumPreviewFragment.this.totalTiersGradientHeight, BitmapDescriptorFactory.HUE_RED, -this.tier.yOffset);
                            canvas.drawRoundRect(rectF, AndroidUtilities.m102dp(6), AndroidUtilities.m102dp(6), PremiumPreviewFragment.this.tiersGradientTools.paint);
                        }
                        super.dispatchDraw(canvas);
                    }
                };
                premiumTierCell.setCirclePaintProvider(new GenericProvider() { // from class: org.telegram.ui.PremiumPreviewFragment$BackgroundView$3$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.GenericProvider
                    public final Object provide(Object obj) {
                        Paint lambda$onCreateViewHolder$0;
                        lambda$onCreateViewHolder$0 = PremiumPreviewFragment.BackgroundView.C67223.this.lambda$onCreateViewHolder$0(premiumTierCell, (Void) obj);
                        return lambda$onCreateViewHolder$0;
                    }
                });
                return new RecyclerListView.Holder(premiumTierCell);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ Paint lambda$onCreateViewHolder$0(PremiumTierCell premiumTierCell, Void r9) {
                PremiumPreviewFragment.this.tiersGradientTools.gradientMatrix(0, 0, premiumTierCell.getMeasuredWidth(), PremiumPreviewFragment.this.totalTiersGradientHeight, BitmapDescriptorFactory.HUE_RED, -premiumTierCell.getTier().yOffset);
                return PremiumPreviewFragment.this.tiersGradientTools.paint;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                PremiumTierCell premiumTierCell = (PremiumTierCell) viewHolder.itemView;
                premiumTierCell.bind(PremiumPreviewFragment.this.subscriptionTiers.get(i), i != getItemCount() - 1);
                premiumTierCell.setChecked(PremiumPreviewFragment.this.selectedTierIndex == i, false);
            }

            @Override // org.telegram.p042ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return !PremiumPreviewFragment.this.subscriptionTiers.get(viewHolder.getAdapterPosition()).subscriptionOption.current;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return PremiumPreviewFragment.this.subscriptionTiers.size();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00ed, code lost:
            if (r5.this$0.forcePremium == false) goto L68;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$new$0(android.view.View r6, int r7) {
            /*
                r5 = this;
                boolean r7 = r6.isEnabled()
                if (r7 != 0) goto L7
                return
            L7:
                boolean r7 = r6 instanceof org.telegram.p042ui.Components.Premium.PremiumTierCell
                if (r7 == 0) goto Lf4
                org.telegram.ui.Components.Premium.PremiumTierCell r6 = (org.telegram.p042ui.Components.Premium.PremiumTierCell) r6
                org.telegram.ui.PremiumPreviewFragment r7 = org.telegram.p042ui.PremiumPreviewFragment.this
                java.util.ArrayList<org.telegram.ui.PremiumPreviewFragment$SubscriptionTier> r0 = r7.subscriptionTiers
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r1 = r6.getTier()
                int r0 = r0.indexOf(r1)
                r7.selectedTierIndex = r0
                org.telegram.ui.PremiumPreviewFragment r7 = org.telegram.p042ui.PremiumPreviewFragment.this
                r0 = 1
                org.telegram.p042ui.PremiumPreviewFragment.access$2600(r7, r0)
                r6.setChecked(r0, r0)
                r7 = 0
                r1 = r7
            L26:
                org.telegram.ui.Components.RecyclerListView r2 = r5.tierListView
                int r2 = r2.getChildCount()
                if (r1 >= r2) goto L4a
                org.telegram.ui.Components.RecyclerListView r2 = r5.tierListView
                android.view.View r2 = r2.getChildAt(r1)
                boolean r3 = r2 instanceof org.telegram.p042ui.Components.Premium.PremiumTierCell
                if (r3 == 0) goto L47
                org.telegram.ui.Components.Premium.PremiumTierCell r2 = (org.telegram.p042ui.Components.Premium.PremiumTierCell) r2
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r3 = r2.getTier()
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r4 = r6.getTier()
                if (r3 == r4) goto L47
                r2.setChecked(r7, r0)
            L47:
                int r1 = r1 + 1
                goto L26
            L4a:
                r1 = r7
            L4b:
                org.telegram.ui.Components.RecyclerListView r2 = r5.tierListView
                int r2 = r2.getHiddenChildCount()
                if (r1 >= r2) goto L6f
                org.telegram.ui.Components.RecyclerListView r2 = r5.tierListView
                android.view.View r2 = r2.getHiddenChildAt(r1)
                boolean r3 = r2 instanceof org.telegram.p042ui.Components.Premium.PremiumTierCell
                if (r3 == 0) goto L6c
                org.telegram.ui.Components.Premium.PremiumTierCell r2 = (org.telegram.p042ui.Components.Premium.PremiumTierCell) r2
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r3 = r2.getTier()
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r4 = r6.getTier()
                if (r3 == r4) goto L6c
                r2.setChecked(r7, r0)
            L6c:
                int r1 = r1 + 1
                goto L4b
            L6f:
                r1 = r7
            L70:
                org.telegram.ui.Components.RecyclerListView r2 = r5.tierListView
                int r2 = r2.getCachedChildCount()
                if (r1 >= r2) goto L94
                org.telegram.ui.Components.RecyclerListView r2 = r5.tierListView
                android.view.View r2 = r2.getCachedChildAt(r1)
                boolean r3 = r2 instanceof org.telegram.p042ui.Components.Premium.PremiumTierCell
                if (r3 == 0) goto L91
                org.telegram.ui.Components.Premium.PremiumTierCell r2 = (org.telegram.p042ui.Components.Premium.PremiumTierCell) r2
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r3 = r2.getTier()
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r4 = r6.getTier()
                if (r3 == r4) goto L91
                r2.setChecked(r7, r0)
            L91:
                int r1 = r1 + 1
                goto L70
            L94:
                r1 = r7
            L95:
                org.telegram.ui.Components.RecyclerListView r2 = r5.tierListView
                int r2 = r2.getAttachedScrapChildCount()
                if (r1 >= r2) goto Lb9
                org.telegram.ui.Components.RecyclerListView r2 = r5.tierListView
                android.view.View r2 = r2.getAttachedScrapChildAt(r1)
                boolean r3 = r2 instanceof org.telegram.p042ui.Components.Premium.PremiumTierCell
                if (r3 == 0) goto Lb6
                org.telegram.ui.Components.Premium.PremiumTierCell r2 = (org.telegram.p042ui.Components.Premium.PremiumTierCell) r2
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r3 = r2.getTier()
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r4 = r6.getTier()
                if (r3 == r4) goto Lb6
                r2.setChecked(r7, r0)
            Lb6:
                int r1 = r1 + 1
                goto L95
            Lb9:
                org.telegram.ui.PremiumPreviewFragment r6 = org.telegram.p042ui.PremiumPreviewFragment.this
                android.widget.FrameLayout r6 = org.telegram.p042ui.PremiumPreviewFragment.access$400(r6)
                org.telegram.ui.PremiumPreviewFragment r1 = org.telegram.p042ui.PremiumPreviewFragment.this
                org.telegram.messenger.UserConfig r1 = r1.getUserConfig()
                boolean r1 = r1.isPremium()
                if (r1 == 0) goto Lf1
                org.telegram.ui.PremiumPreviewFragment r1 = org.telegram.p042ui.PremiumPreviewFragment.this
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r1 = r1.currentSubscriptionTier
                if (r1 == 0) goto Lf0
                int r1 = r1.getMonths()
                org.telegram.ui.PremiumPreviewFragment r2 = org.telegram.p042ui.PremiumPreviewFragment.this
                java.util.ArrayList<org.telegram.ui.PremiumPreviewFragment$SubscriptionTier> r3 = r2.subscriptionTiers
                int r2 = r2.selectedTierIndex
                java.lang.Object r2 = r3.get(r2)
                org.telegram.ui.PremiumPreviewFragment$SubscriptionTier r2 = (org.telegram.p042ui.PremiumPreviewFragment.SubscriptionTier) r2
                int r2 = r2.getMonths()
                if (r1 >= r2) goto Lf0
                org.telegram.ui.PremiumPreviewFragment r1 = org.telegram.p042ui.PremiumPreviewFragment.this
                boolean r1 = org.telegram.p042ui.PremiumPreviewFragment.access$2700(r1)
                if (r1 != 0) goto Lf0
                goto Lf1
            Lf0:
                r0 = r7
            Lf1:
                org.telegram.messenger.AndroidUtilities.updateViewVisibilityAnimated(r6, r0)
            Lf4:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PremiumPreviewFragment.BackgroundView.lambda$new$0(android.view.View, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(Path path, float[] fArr, Canvas canvas) {
            View pressedChildView = this.tierListView.getPressedChildView();
            int adapterPosition = pressedChildView == null ? -1 : this.tierListView.getChildViewHolder(pressedChildView).getAdapterPosition();
            path.rewind();
            Rect selectorRect = this.tierListView.getSelectorRect();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(selectorRect.left, selectorRect.top, selectorRect.right, selectorRect.bottom);
            Arrays.fill(fArr, (float) BitmapDescriptorFactory.HUE_RED);
            if (adapterPosition == 0) {
                Arrays.fill(fArr, 0, 4, AndroidUtilities.m102dp(12));
            }
            if (adapterPosition == this.tierListView.getAdapter().getItemCount() - 1) {
                Arrays.fill(fArr, 4, 8, AndroidUtilities.m102dp(12));
            }
            path.addRoundRect(rectF, fArr, Path.Direction.CW);
            canvas.clipPath(path);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void measureGradient(int i, int i2) {
            int i3 = 0;
            for (int i4 = 0; i4 < PremiumPreviewFragment.this.subscriptionTiers.size(); i4++) {
                PremiumPreviewFragment premiumPreviewFragment = PremiumPreviewFragment.this;
                premiumPreviewFragment.dummyTierCell.bind(premiumPreviewFragment.subscriptionTiers.get(i4), false);
                PremiumPreviewFragment.this.dummyTierCell.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
                PremiumPreviewFragment.this.subscriptionTiers.get(i4).yOffset = i3;
                i3 += PremiumPreviewFragment.this.dummyTierCell.getMeasuredHeight();
            }
            PremiumPreviewFragment.this.totalTiersGradientHeight = i3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x00db, code lost:
            if (java.util.Objects.equals(r0, (r8 == null || (r8 = r8.transaction) == null) ? null : r8.replaceAll("^(.*?)(?:\\.\\.\\d*|)$", "$1")) != false) goto L98;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00e7, code lost:
            if (r0.getMonths() == 12) goto L96;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00e9, code lost:
            r12.this$0.subscriptionTiers.clear();
            r12.this$0.currentSubscriptionTier = null;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void updatePremiumTiers() {
            /*
                Method dump skipped, instructions count: 416
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PremiumPreviewFragment.BackgroundView.updatePremiumTiers():void");
        }

        public void updateText() {
            if (PremiumPreviewFragment.this.isSettingsMode) {
                this.titleView.setText(LocaleController.getString("Settings", C3630R.string.Settings));
            } else {
                this.titleView.setText(LocaleController.getString(PremiumPreviewFragment.this.forcePremium ? C3630R.string.TelegramPremiumSubscribedTitle : C3630R.string.TelegramPremium));
            }
            this.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.getString((PremiumPreviewFragment.this.getUserConfig().isPremium() || PremiumPreviewFragment.this.forcePremium) ? C3630R.string.TelegramPremiumSubscribedSubtitle : C3630R.string.TelegramPremiumSubtitle)));
            boolean z = PremiumPreviewFragment.this.forcePremium || BuildVars.IS_BILLING_UNAVAILABLE || PremiumPreviewFragment.this.subscriptionTiers.size() <= 1;
            if (!this.setTierListViewVisibility || !z) {
                this.tierListView.setVisibility(z ? 8 : 0);
                this.setTierListViewVisibility = true;
            } else if (this.tierListView.getVisibility() == 0 && z && this.tierListViewVisible == z) {
                final RecyclerListView recyclerListView = this.tierListView;
                final ValueAnimator duration = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED).setDuration(250L);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PremiumPreviewFragment.BackgroundView.this.lambda$updateText$2(recyclerListView, duration, valueAnimator);
                    }
                });
                duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PremiumPreviewFragment.BackgroundView.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        recyclerListView.setVisibility(8);
                        for (int i = 0; i < PremiumPreviewFragment.this.backgroundView.getChildCount(); i++) {
                            View childAt = PremiumPreviewFragment.this.backgroundView.getChildAt(i);
                            if (childAt != BackgroundView.this.tierListView) {
                                childAt.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                            }
                        }
                    }
                });
                duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
                duration.start();
            }
            this.tierListViewVisible = !z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateText$2(View view, ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
            float m102dp;
            float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
            view.setAlpha(floatValue);
            view.setScaleX(floatValue);
            view.setScaleY(floatValue);
            float animatedFraction = valueAnimator.getAnimatedFraction();
            for (int i = 0; i < PremiumPreviewFragment.this.backgroundView.getChildCount(); i++) {
                View childAt = PremiumPreviewFragment.this.backgroundView.getChildAt(i);
                if (childAt != this.tierListView) {
                    if (childAt == this.imageFrameLayout) {
                        m102dp = BitmapDescriptorFactory.HUE_RED - (AndroidUtilities.m102dp(15) * animatedFraction);
                    } else {
                        m102dp = BitmapDescriptorFactory.HUE_RED + (AndroidUtilities.m102dp(8) * animatedFraction);
                    }
                    childAt.setTranslationY((view.getMeasuredHeight() * animatedFraction) + m102dp);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtonText(boolean z) {
        if (this.premiumButtonView != null) {
            if (!getUserConfig().isPremium() || this.currentSubscriptionTier == null || this.subscriptionTiers.get(this.selectedTierIndex).getMonths() >= this.currentSubscriptionTier.getMonths()) {
                if (LocaleController.isRTL) {
                    z = false;
                }
                if (BuildVars.IS_BILLING_UNAVAILABLE) {
                    this.premiumButtonView.setButton(getPremiumButtonText(this.currentAccount, this.subscriptionTiers.get(this.selectedTierIndex)), new View.OnClickListener() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            PremiumPreviewFragment.this.lambda$updateButtonText$11(view);
                        }
                    }, z);
                } else if (!BuildVars.useInvoiceBilling() && (!BillingController.getInstance().isReady() || this.subscriptionTiers.isEmpty() || this.selectedTierIndex >= this.subscriptionTiers.size() || this.subscriptionTiers.get(this.selectedTierIndex).googlePlayProductDetails == null)) {
                    this.premiumButtonView.setButton(LocaleController.getString(C3630R.string.Loading), new View.OnClickListener() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            PremiumPreviewFragment.lambda$updateButtonText$12(view);
                        }
                    }, z);
                    this.premiumButtonView.setFlickerDisabled(true);
                } else if (this.subscriptionTiers.isEmpty()) {
                } else {
                    this.premiumButtonView.setButton(getPremiumButtonText(this.currentAccount, this.subscriptionTiers.get(this.selectedTierIndex)), new View.OnClickListener() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            PremiumPreviewFragment.this.lambda$updateButtonText$13(view);
                        }
                    }, z);
                    this.premiumButtonView.setFlickerDisabled(false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonText$11(View view) {
        buyPremium(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonText$13(View view) {
        TLRPC$TL_premiumSubscriptionOption tLRPC$TL_premiumSubscriptionOption;
        SubscriptionTier subscriptionTier = this.subscriptionTiers.get(this.selectedTierIndex);
        SubscriptionTier subscriptionTier2 = this.currentSubscriptionTier;
        buyPremium(this, subscriptionTier, "settings", true, (subscriptionTier2 == null || (tLRPC$TL_premiumSubscriptionOption = subscriptionTier2.subscriptionOption) == null || tLRPC$TL_premiumSubscriptionOption.transaction == null) ? null : BillingFlowParams.SubscriptionUpdateParams.newBuilder().setOldPurchaseToken(BillingController.getInstance().getLastPremiumToken()).setReplaceProrationMode(5).build());
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.backgroundView.imageView.setPaused(false);
        this.backgroundView.imageView.setDialogVisible(false);
        this.particlesView.setPaused(false);
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        this.backgroundView.imageView.setDialogVisible(true);
        this.particlesView.setPaused(true);
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        return !this.backgroundView.imageView.touched;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        return SimpleThemeDescription.createThemeDescriptions(new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda17
            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                PremiumPreviewFragment.this.updateColors();
            }

            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_premiumGradient1, Theme.key_premiumGradient2, Theme.key_premiumGradient3, Theme.key_premiumGradient4, Theme.key_premiumGradientBackground1, Theme.key_premiumGradientBackground2, Theme.key_premiumGradientBackground3, Theme.key_premiumGradientBackground4, Theme.key_premiumGradientBackgroundOverlay, Theme.key_premiumStartGradient1, Theme.key_premiumStartGradient2, Theme.key_premiumStartSmallStarsColor, Theme.key_premiumStartSmallStarsColor2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        C3702ActionBar c3702ActionBar;
        if (this.backgroundView == null || (c3702ActionBar = this.actionBar) == null) {
            return;
        }
        int i = Theme.key_premiumGradientBackgroundOverlay;
        c3702ActionBar.setItemsColor(Theme.getColor(i), false);
        this.actionBar.setItemsBackgroundColor(ColorUtils.setAlphaComponent(Theme.getColor(i), 60), false);
        this.backgroundView.titleView.setTextColor(Theme.getColor(i));
        this.backgroundView.subtitleView.setTextColor(Theme.getColor(i));
        this.particlesView.drawable.updateColors();
        if (this.backgroundView.imageView.mRenderer != null) {
            this.backgroundView.imageView.mRenderer.updateColors();
        }
        updateBackgroundImage();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        if (this.settingsView != null) {
            closeSetting();
            return false;
        } else if (this.isSettingsMode) {
            setSettingsMode(false);
            return false;
        } else {
            return super.onBackPressed();
        }
    }

    private void closeSetting() {
        this.settingsView.animate().translationY(AndroidUtilities.m102dp(1000)).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PremiumPreviewFragment.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PremiumPreviewFragment.this.contentView.removeView(PremiumPreviewFragment.this.settingsView);
                PremiumPreviewFragment.this.settingsView = null;
                super.onAnimationEnd(animator);
            }
        });
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public Dialog showDialog(Dialog dialog) {
        Dialog showDialog = super.showDialog(dialog);
        updateDialogVisibility(showDialog != null);
        return showDialog;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        super.onDialogDismiss(dialog);
        updateDialogVisibility(false);
    }

    private void updateDialogVisibility(boolean z) {
        if (z != this.isDialogVisible) {
            this.isDialogVisible = z;
            this.backgroundView.imageView.setDialogVisible(z);
            this.particlesView.setPaused(z);
            this.contentView.invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void sentShowScreenStat(String str) {
        TLRPC$TL_jsonNull tLRPC$TL_jsonNull;
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_help_saveAppLog tLRPC$TL_help_saveAppLog = new TLRPC$TL_help_saveAppLog();
        TLRPC$TL_inputAppEvent tLRPC$TL_inputAppEvent = new TLRPC$TL_inputAppEvent();
        tLRPC$TL_inputAppEvent.time = connectionsManager.getCurrentTime();
        tLRPC$TL_inputAppEvent.type = "premium.promo_screen_show";
        TLRPC$TL_jsonObject tLRPC$TL_jsonObject = new TLRPC$TL_jsonObject();
        tLRPC$TL_inputAppEvent.data = tLRPC$TL_jsonObject;
        TLRPC$TL_jsonObjectValue tLRPC$TL_jsonObjectValue = new TLRPC$TL_jsonObjectValue();
        if (str != null) {
            TLRPC$TL_jsonString tLRPC$TL_jsonString = new TLRPC$TL_jsonString();
            tLRPC$TL_jsonString.value = str;
            tLRPC$TL_jsonNull = tLRPC$TL_jsonString;
        } else {
            tLRPC$TL_jsonNull = new TLRPC$TL_jsonNull();
        }
        tLRPC$TL_jsonObjectValue.key = "source";
        tLRPC$TL_jsonObjectValue.value = tLRPC$TL_jsonNull;
        tLRPC$TL_jsonObject.value.add(tLRPC$TL_jsonObjectValue);
        tLRPC$TL_help_saveAppLog.events.add(tLRPC$TL_inputAppEvent);
        connectionsManager.sendRequest(tLRPC$TL_help_saveAppLog, new RequestDelegate() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda16
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PremiumPreviewFragment.lambda$sentShowScreenStat$14(tLObject, tLRPC$TL_error);
            }
        });
    }

    public static void sentPremiumButtonClick() {
        TLRPC$TL_help_saveAppLog tLRPC$TL_help_saveAppLog = new TLRPC$TL_help_saveAppLog();
        TLRPC$TL_inputAppEvent tLRPC$TL_inputAppEvent = new TLRPC$TL_inputAppEvent();
        tLRPC$TL_inputAppEvent.time = ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime();
        tLRPC$TL_inputAppEvent.type = "premium.promo_screen_accept";
        tLRPC$TL_inputAppEvent.data = new TLRPC$TL_jsonNull();
        tLRPC$TL_help_saveAppLog.events.add(tLRPC$TL_inputAppEvent);
        ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tLRPC$TL_help_saveAppLog, new RequestDelegate() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda13
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PremiumPreviewFragment.lambda$sentPremiumButtonClick$15(tLObject, tLRPC$TL_error);
            }
        });
    }

    public static void sentPremiumBuyCanceled() {
        TLRPC$TL_help_saveAppLog tLRPC$TL_help_saveAppLog = new TLRPC$TL_help_saveAppLog();
        TLRPC$TL_inputAppEvent tLRPC$TL_inputAppEvent = new TLRPC$TL_inputAppEvent();
        tLRPC$TL_inputAppEvent.time = ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime();
        tLRPC$TL_inputAppEvent.type = "premium.promo_screen_fail";
        tLRPC$TL_inputAppEvent.data = new TLRPC$TL_jsonNull();
        tLRPC$TL_help_saveAppLog.events.add(tLRPC$TL_inputAppEvent);
        ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tLRPC$TL_help_saveAppLog, new RequestDelegate() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda15
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PremiumPreviewFragment.lambda$sentPremiumBuyCanceled$16(tLObject, tLRPC$TL_error);
            }
        });
    }

    public static void sentShowFeaturePreview(int i, int i2) {
        TLRPC$TL_help_saveAppLog tLRPC$TL_help_saveAppLog = new TLRPC$TL_help_saveAppLog();
        TLRPC$TL_inputAppEvent tLRPC$TL_inputAppEvent = new TLRPC$TL_inputAppEvent();
        tLRPC$TL_inputAppEvent.time = ConnectionsManager.getInstance(i).getCurrentTime();
        tLRPC$TL_inputAppEvent.type = "premium.promo_screen_tap";
        TLRPC$TL_jsonObject tLRPC$TL_jsonObject = new TLRPC$TL_jsonObject();
        tLRPC$TL_inputAppEvent.data = tLRPC$TL_jsonObject;
        TLRPC$TL_jsonObjectValue tLRPC$TL_jsonObjectValue = new TLRPC$TL_jsonObjectValue();
        String featureTypeToServerString = featureTypeToServerString(i2);
        if (featureTypeToServerString != null) {
            TLRPC$TL_jsonString tLRPC$TL_jsonString = new TLRPC$TL_jsonString();
            tLRPC$TL_jsonString.value = featureTypeToServerString;
            tLRPC$TL_jsonObjectValue.value = tLRPC$TL_jsonString;
        } else {
            tLRPC$TL_jsonObjectValue.value = new TLRPC$TL_jsonNull();
        }
        tLRPC$TL_jsonObjectValue.key = "item";
        tLRPC$TL_jsonObject.value.add(tLRPC$TL_jsonObjectValue);
        tLRPC$TL_help_saveAppLog.events.add(tLRPC$TL_inputAppEvent);
        ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_help_saveAppLog, new RequestDelegate() { // from class: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda14
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PremiumPreviewFragment.lambda$sentShowFeaturePreview$17(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* renamed from: org.telegram.ui.PremiumPreviewFragment$SubscriptionTier */
    /* loaded from: classes5.dex */
    public static final class SubscriptionTier {
        private int discount;
        private ProductDetails googlePlayProductDetails;
        private ProductDetails.SubscriptionOfferDetails offerDetails;
        private long pricePerMonth;
        private long pricePerYear;
        private long pricePerYearRegular;
        public final TLRPC$TL_premiumSubscriptionOption subscriptionOption;
        public int yOffset;

        public SubscriptionTier(TLRPC$TL_premiumSubscriptionOption tLRPC$TL_premiumSubscriptionOption) {
            this.subscriptionOption = tLRPC$TL_premiumSubscriptionOption;
        }

        public ProductDetails getGooglePlayProductDetails() {
            return this.googlePlayProductDetails;
        }

        public ProductDetails.SubscriptionOfferDetails getOfferDetails() {
            checkOfferDetails();
            return this.offerDetails;
        }

        public void setGooglePlayProductDetails(ProductDetails productDetails) {
            this.googlePlayProductDetails = productDetails;
        }

        public void setPricePerYearRegular(long j) {
            this.pricePerYearRegular = j;
        }

        public int getMonths() {
            return this.subscriptionOption.months;
        }

        public int getDiscount() {
            if (this.discount == 0) {
                if (getPricePerMonth() == 0) {
                    return 0;
                }
                if (this.pricePerYearRegular != 0) {
                    int pricePerYear = (int) ((1.0d - (getPricePerYear() / this.pricePerYearRegular)) * 100.0d);
                    this.discount = pricePerYear;
                    if (pricePerYear == 0) {
                        this.discount = -1;
                    }
                }
            }
            return this.discount;
        }

        public long getPricePerYear() {
            if (this.pricePerYear == 0) {
                long price = getPrice();
                if (price != 0) {
                    this.pricePerYear = (long) ((price / this.subscriptionOption.months) * 12.0d);
                }
            }
            return this.pricePerYear;
        }

        public long getPricePerMonth() {
            if (this.pricePerMonth == 0) {
                long price = getPrice();
                if (price != 0) {
                    this.pricePerMonth = price / this.subscriptionOption.months;
                }
            }
            return this.pricePerMonth;
        }

        public String getFormattedPricePerYearRegular() {
            if (BuildVars.useInvoiceBilling() || this.subscriptionOption.store_product == null) {
                return BillingController.getInstance().formatCurrency(this.pricePerYearRegular, getCurrency());
            }
            return this.googlePlayProductDetails == null ? "" : BillingController.getInstance().formatCurrency(this.pricePerYearRegular, getCurrency(), 6);
        }

        public String getFormattedPricePerYear() {
            if (BuildVars.useInvoiceBilling() || this.subscriptionOption.store_product == null) {
                return BillingController.getInstance().formatCurrency(getPricePerYear(), getCurrency());
            }
            return this.googlePlayProductDetails == null ? "" : BillingController.getInstance().formatCurrency(getPricePerYear(), getCurrency(), 6);
        }

        public String getFormattedPricePerMonth() {
            if (BuildVars.useInvoiceBilling() || this.subscriptionOption.store_product == null) {
                return BillingController.getInstance().formatCurrency(getPricePerMonth(), getCurrency());
            }
            return this.googlePlayProductDetails == null ? "" : BillingController.getInstance().formatCurrency(getPricePerMonth(), getCurrency(), 6);
        }

        public long getPrice() {
            if (BuildVars.useInvoiceBilling() || this.subscriptionOption.store_product == null) {
                return this.subscriptionOption.amount;
            }
            if (this.googlePlayProductDetails == null) {
                return 0L;
            }
            checkOfferDetails();
            ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails = this.offerDetails;
            if (subscriptionOfferDetails == null) {
                return 0L;
            }
            return subscriptionOfferDetails.getPricingPhases().getPricingPhaseList().get(0).getPriceAmountMicros();
        }

        public String getCurrency() {
            if (BuildVars.useInvoiceBilling() || this.subscriptionOption.store_product == null) {
                return this.subscriptionOption.currency;
            }
            if (this.googlePlayProductDetails == null) {
                return "";
            }
            checkOfferDetails();
            ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails = this.offerDetails;
            return subscriptionOfferDetails == null ? "" : subscriptionOfferDetails.getPricingPhases().getPricingPhaseList().get(0).getPriceCurrencyCode();
        }

        private void checkOfferDetails() {
            ProductDetails productDetails = this.googlePlayProductDetails;
            if (productDetails != null && this.offerDetails == null) {
                for (ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails : productDetails.getSubscriptionOfferDetails()) {
                    String billingPeriod = subscriptionOfferDetails.getPricingPhases().getPricingPhaseList().get(0).getBillingPeriod();
                    if (getMonths() == 12) {
                        if (billingPeriod.equals("P1Y")) {
                            this.offerDetails = subscriptionOfferDetails;
                            return;
                        }
                    } else if (billingPeriod.equals(String.format(Locale.ROOT, "P%dM", Integer.valueOf(getMonths())))) {
                        this.offerDetails = subscriptionOfferDetails;
                        return;
                    }
                }
            }
        }
    }
}
