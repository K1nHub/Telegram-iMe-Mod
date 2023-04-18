package org.telegram.p044ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.enums.LockedSection;
import com.iMe.fork.p024ui.fragment.MusicActivity;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.common.ScreenType;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.model.wallet.home.BannerSlide;
import com.iMe.navigation.wallet.coordinator.PinCodeCoordinator;
import com.iMe.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.p031ui.wallet.staking.StakingFragment;
import com.iMe.p031ui.wallet.swap.WalletSwapProtocolsFragment;
import com.iMe.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.wallet.GatePair;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.helper.wallet.WalletHelper;
import java.util.ArrayList;
import kotlin.Lazy;
import org.koin.java.KoinJavaComponent;
import org.telegram.PhoneFormat.C3159PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.LocationController;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.C3306ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.CameraScanActivity;
import org.telegram.p044ui.Components.AlertsCreator;
import org.telegram.p044ui.Components.BulletinFactory;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.RLottieImageView;
import org.telegram.p044ui.Components.ShareLocationDrawable;
import org.telegram.p044ui.Components.URLSpanNoUnderline;
import org.telegram.p044ui.Components.voip.CellFlickerDrawable;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.ActionIntroActivity */
/* loaded from: classes5.dex */
public class ActionIntroActivity extends BaseFragment implements LocationController.LocationFetchCallback {
    private final BannerSlide bannerSlide;
    private TextView buttonTextView;
    private int[] colors;
    private final Lazy<CryptoAccessManager> cryptoAccessManager;
    private final Lazy<CryptoPreferenceHelper> cryptoPreferenceHelper;
    private String currentGroupCreateAddress;
    private String currentGroupCreateDisplayAddress;
    private Location currentGroupCreateLocation;
    private int currentType;
    private LinearLayout descriptionLayout;
    private TextView descriptionText;
    private TextView descriptionText2;
    private TextView[] desctiptionLines;
    private Drawable drawable2;
    private boolean flickerButton;
    private final NetworkType forcedNetworkType;
    private RLottieImageView imageView;
    private final LockedSection lockedSection;
    private final Lazy<PinCodeCoordinator> pinCodeCoordinator;
    private ActionIntroQRLoginDelegate qrLoginDelegate;
    private final Lazy<ResourceManager> resourceManager;
    private boolean showingAsBottomSheet;
    private TextView subtitleTextView;
    private final SwapProtocol swapProtocol;
    private TextView titleTextView;
    private final TokenCode tokenCodeToSwap;

    /* renamed from: org.telegram.ui.ActionIntroActivity$ActionIntroQRLoginDelegate */
    /* loaded from: classes5.dex */
    public interface ActionIntroQRLoginDelegate {
        void didFindQRCode(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createView$1(View view, MotionEvent motionEvent) {
        return true;
    }

    public ActionIntroActivity(int i) {
        this(i, null, null, null, null, null);
    }

    public void showNotAvailableToast() {
        BulletinFactory.m27of(this).createSimpleBulletin(C3242R.raw.info, LocaleController.getInternalString(C3242R.string.wallet_feature_not_available)).show();
    }

    public boolean isForkIntro() {
        int i = this.currentType;
        return i == 100 || i == 101 || i == 103 || i == 104 || i == 105 || i == 106 || i == 107 || i == 108 || i == 109 || i == 110;
    }

    private void showChooseGatePairDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(this.resourceManager.getValue().getString(C3242R.string.wallet_gate_select_pair_title));
        builder.setItems(GatePair.getTitlesAsArray(this.resourceManager.getValue()), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ActionIntroActivity.this.lambda$showChooseGatePairDialog$0(dialogInterface, i);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChooseGatePairDialog$0(DialogInterface dialogInterface, int i) {
        Browser.openUrl(getParentActivity(), this.resourceManager.getValue().getString(GatePair.values()[i].getUrl()));
        finishFragment();
    }

    private Wallet getWallet() {
        return this.cryptoAccessManager.getValue().getWallet(this.cryptoPreferenceHelper.getValue().getCurrentBlockchainType());
    }

    public ActionIntroActivity(int i, TokenCode tokenCode, SwapProtocol swapProtocol, NetworkType networkType, BannerSlide bannerSlide, LockedSection lockedSection) {
        this.cryptoAccessManager = KoinJavaComponent.inject(CryptoAccessManager.class);
        this.cryptoPreferenceHelper = KoinJavaComponent.inject(CryptoPreferenceHelper.class);
        this.resourceManager = KoinJavaComponent.inject(ResourceManager.class);
        this.pinCodeCoordinator = KoinJavaComponent.inject(PinCodeCoordinator.class);
        this.desctiptionLines = new TextView[6];
        this.currentType = i;
        this.tokenCodeToSwap = tokenCode == null ? TokenCode.LIME : tokenCode;
        this.swapProtocol = swapProtocol == null ? SwapProtocol.UNISWAP : swapProtocol;
        this.bannerSlide = bannerSlide;
        this.lockedSection = lockedSection;
        this.forcedNetworkType = networkType;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public View createView(Context context) {
        int i;
        int i2;
        super.createView(context);
        C3306ActionBar c3306ActionBar = this.actionBar;
        int i3 = 0;
        if (c3306ActionBar != null) {
            c3306ActionBar.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            this.actionBar.setBackButtonImage(C3242R.C3244drawable.ic_ab_back);
            this.actionBar.setItemsColor(Theme.getColor("windowBackgroundWhiteGrayText2"), false);
            this.actionBar.setItemsBackgroundColor(Theme.getColor("actionBarWhiteSelector"), false);
            this.actionBar.setCastShadows(false);
            this.actionBar.setAddToContainer(false);
            this.actionBar.setActionBarMenuOnItemClick(new C3306ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ActionIntroActivity.1
                @Override // org.telegram.p044ui.ActionBar.C3306ActionBar.ActionBarMenuOnItemClick
                public void onItemClick(int i4) {
                    if (i4 == -1) {
                        ActionIntroActivity.this.finishFragment();
                    }
                }
            });
        }
        ViewGroup viewGroup = new ViewGroup(context) { // from class: org.telegram.ui.ActionIntroActivity.2
            @Override // android.view.View
            protected void onMeasure(int i4, int i5) {
                int size = View.MeasureSpec.getSize(i4);
                int size2 = View.MeasureSpec.getSize(i5);
                if (((BaseFragment) ActionIntroActivity.this).actionBar != null) {
                    ((BaseFragment) ActionIntroActivity.this).actionBar.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i5);
                }
                if (ActionIntroActivity.this.isForkIntro()) {
                    if (ActionIntroActivity.this.currentType == 108 || ActionIntroActivity.this.currentType == 103) {
                        ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(200), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(200), 1073741824));
                        if (size > size2) {
                            int i6 = (int) (size * 0.6f);
                            ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                        } else {
                            ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                        }
                    } else if (ActionIntroActivity.this.currentType == 109) {
                        if (size > size2) {
                            float f = size;
                            ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f), 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.68f), 1073741824));
                            int i7 = (int) (f * 0.6f);
                            ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i7, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                        } else {
                            ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.399f), 1073741824));
                            ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                        }
                    } else if (size > size2) {
                        float f2 = size;
                        ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f2), 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.68f), 1073741824));
                        int i8 = (int) (f2 * 0.6f);
                        ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                    } else {
                        ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.399f), 1073741824));
                        ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                    }
                } else {
                    switch (ActionIntroActivity.this.currentType) {
                        case 0:
                            if (size > size2) {
                                float f3 = size;
                                ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f3), 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.68f), 1073741824));
                                int i9 = (int) (f3 * 0.6f);
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i9, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i9, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i9, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                                break;
                            } else {
                                ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.399f), 1073741824));
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(72), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(50), 1073741824));
                                break;
                            }
                        case 1:
                        case 4:
                        case 6:
                            if (ActionIntroActivity.this.currentType == 6) {
                                ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(140), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(140), 1073741824));
                            } else {
                                ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(100), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(100), 1073741824));
                            }
                            if (size > size2) {
                                int i10 = (int) (size * 0.6f);
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                                break;
                            } else {
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                if (ActionIntroActivity.this.currentType == 6) {
                                    ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(48), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(50), 1073741824));
                                    break;
                                } else {
                                    ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(72), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(50), 1073741824));
                                    break;
                                }
                            }
                        case 2:
                            if (size > size2) {
                                float f4 = size;
                                int i11 = (int) (0.45f * f4);
                                ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(i11, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.78f), Integer.MIN_VALUE));
                                ActionIntroActivity.this.subtitleTextView.measure(View.MeasureSpec.makeMeasureSpec(i11, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                int i12 = (int) (f4 * 0.6f);
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText2.measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                                break;
                            } else {
                                ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.44f), Integer.MIN_VALUE));
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.subtitleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText2.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                                break;
                            }
                        case 3:
                            ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), 1073741824));
                            if (size > size2) {
                                float f5 = size;
                                ActionIntroActivity.this.subtitleTextView.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f5), 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                int i13 = (int) (f5 * 0.6f);
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i13, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i13, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i13, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                                break;
                            } else {
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.subtitleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(48), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(50), 1073741824));
                                break;
                            }
                        case 5:
                            if (!ActionIntroActivity.this.showingAsBottomSheet) {
                                if (size > size2) {
                                    float f6 = size;
                                    ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f6), 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.68f), 1073741824));
                                    int i14 = (int) (f6 * 0.6f);
                                    ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i14, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                    ActionIntroActivity.this.descriptionLayout.measure(View.MeasureSpec.makeMeasureSpec(i14, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                    ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i14, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                                    break;
                                } else {
                                    ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.399f), 1073741824));
                                    ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                    ActionIntroActivity.this.descriptionLayout.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                    ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                                    break;
                                }
                            } else {
                                ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.32f), 1073741824));
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionLayout.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                                size2 = ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + ActionIntroActivity.this.imageView.getMeasuredHeight() + ActionIntroActivity.this.titleTextView.getMeasuredHeight() + AndroidUtilities.m50dp(20) + ActionIntroActivity.this.titleTextView.getMeasuredHeight() + ActionIntroActivity.this.descriptionLayout.getMeasuredHeight();
                                break;
                            }
                    }
                }
                setMeasuredDimension(size, size2);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i4, int i5, int i6, int i7) {
                float f;
                float f2;
                if (((BaseFragment) ActionIntroActivity.this).actionBar != null) {
                    ((BaseFragment) ActionIntroActivity.this).actionBar.layout(0, 0, i6, ((BaseFragment) ActionIntroActivity.this).actionBar.getMeasuredHeight());
                }
                int i8 = i6 - i4;
                int i9 = i7 - i5;
                if (ActionIntroActivity.this.isForkIntro()) {
                    if (ActionIntroActivity.this.currentType == 108 || ActionIntroActivity.this.currentType == 103) {
                        if (i6 > i7) {
                            int measuredHeight = (i9 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                            float f3 = i8;
                            int measuredWidth = ((int) ((0.5f * f3) - ActionIntroActivity.this.imageView.getMeasuredWidth())) / 2;
                            ActionIntroActivity.this.imageView.layout(measuredWidth, measuredHeight, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth, ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight);
                            float f4 = f3 * 0.4f;
                            int i10 = (int) f4;
                            float f5 = i9;
                            int i11 = (int) (f5 * 0.14f);
                            ActionIntroActivity.this.titleTextView.layout(i10, i11, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i10, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i11);
                            int i12 = (int) (f5 * 0.31f);
                            ActionIntroActivity.this.descriptionText.layout(i10, i12, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i10, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i12);
                            int measuredWidth2 = (int) (f4 + (((f3 * 0.6f) - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                            int i13 = (int) (f5 * 0.78f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth2, i13, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth2, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i13);
                            return;
                        }
                        float f6 = i9;
                        int i14 = (int) (f6 * 0.214f);
                        int measuredWidth3 = (i8 - ActionIntroActivity.this.imageView.getMeasuredWidth()) / 2;
                        ActionIntroActivity.this.imageView.layout(measuredWidth3, i14, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth3, ActionIntroActivity.this.imageView.getMeasuredHeight() + i14);
                        int i15 = (int) (0.543f * f6);
                        ActionIntroActivity.this.titleTextView.layout(0, i15, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i15);
                        int i16 = (int) (0.622f * f6);
                        ActionIntroActivity.this.descriptionText.layout(0, i16, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i16);
                        int measuredWidth4 = (i8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                        int i17 = (int) (f6 * 0.789f);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth4, i17, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth4, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i17);
                        return;
                    } else if (ActionIntroActivity.this.currentType != 109) {
                        if (i6 > i7) {
                            int measuredHeight2 = (i9 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                            ActionIntroActivity.this.imageView.layout(0, measuredHeight2, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight2);
                            float f7 = i8;
                            float f8 = f7 * 0.4f;
                            int i18 = (int) f8;
                            float f9 = i9;
                            int i19 = (int) (0.22f * f9);
                            ActionIntroActivity.this.titleTextView.layout(i18, i19, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i18, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i19);
                            int i20 = (int) (0.39f * f9);
                            ActionIntroActivity.this.descriptionText.layout(i18, i20, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i18, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i20);
                            int measuredWidth5 = (int) (f8 + (((f7 * 0.6f) - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                            int i21 = (int) (f9 * 0.69f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth5, i21, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth5, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i21);
                            return;
                        }
                        float f10 = i9;
                        int i22 = (int) (0.188f * f10);
                        ActionIntroActivity.this.imageView.layout(0, i22, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i22);
                        int i23 = (int) (0.651f * f10);
                        ActionIntroActivity.this.titleTextView.layout(0, i23, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i23);
                        int i24 = (int) (0.731f * f10);
                        ActionIntroActivity.this.descriptionText.layout(0, i24, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i24);
                        int measuredWidth6 = (i8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                        int i25 = (int) (f10 * 0.853f);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth6, i25, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth6, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i25);
                        return;
                    } else if (i6 > i7) {
                        int measuredHeight3 = (i9 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                        ActionIntroActivity.this.imageView.layout(0, measuredHeight3, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight3);
                        float f11 = i8;
                        float f12 = f11 * 0.4f;
                        int i26 = (int) f12;
                        float f13 = i9;
                        int i27 = (int) (0.08f * f13);
                        ActionIntroActivity.this.titleTextView.layout(i26, i27, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i26, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i27);
                        float f14 = f11 * 0.6f;
                        int measuredWidth7 = (int) (((f14 - ActionIntroActivity.this.descriptionText.getMeasuredWidth()) / 2.0f) + f12);
                        int i28 = (int) (0.25f * f13);
                        ActionIntroActivity.this.descriptionText.layout(measuredWidth7, i28, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + measuredWidth7, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i28);
                        int measuredWidth8 = (int) (f12 + ((f14 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                        int i29 = (int) (f13 * 0.78f);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth8, i29, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth8, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i29);
                        return;
                    } else {
                        if (AndroidUtilities.displaySize.y < 1800) {
                            float f15 = i9;
                            int i30 = (int) (0.06f * f15);
                            ActionIntroActivity.this.imageView.layout(0, i30, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i30);
                            int i31 = (int) (0.463f * f15);
                            ActionIntroActivity.this.titleTextView.layout(0, i31, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i31);
                            f2 = f15 * 0.543f;
                        } else {
                            float f16 = i9;
                            int i32 = (int) (0.148f * f16);
                            ActionIntroActivity.this.imageView.layout(0, i32, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i32);
                            int i33 = (int) (0.551f * f16);
                            ActionIntroActivity.this.titleTextView.layout(0, i33, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i33);
                            f2 = f16 * 0.631f;
                        }
                        int i34 = (int) f2;
                        int measuredWidth9 = (getMeasuredWidth() - ActionIntroActivity.this.descriptionText.getMeasuredWidth()) / 2;
                        ActionIntroActivity.this.descriptionText.layout(measuredWidth9, i34, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + measuredWidth9, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i34);
                        int measuredWidth10 = (i8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                        int i35 = (int) (i9 * 0.853f);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth10, i35, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth10, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i35);
                        return;
                    }
                }
                switch (ActionIntroActivity.this.currentType) {
                    case 0:
                        if (i6 > i7) {
                            int measuredHeight4 = (i9 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                            ActionIntroActivity.this.imageView.layout(0, measuredHeight4, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight4);
                            float f17 = i8;
                            float f18 = f17 * 0.4f;
                            int i36 = (int) f18;
                            float f19 = i9;
                            int i37 = (int) (0.22f * f19);
                            ActionIntroActivity.this.titleTextView.layout(i36, i37, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i36, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i37);
                            int i38 = (int) (0.39f * f19);
                            ActionIntroActivity.this.descriptionText.layout(i36, i38, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i36, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i38);
                            int measuredWidth11 = (int) (f18 + (((f17 * 0.6f) - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                            int i39 = (int) (f19 * 0.69f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth11, i39, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth11, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i39);
                            return;
                        }
                        float f20 = i9;
                        int i40 = (int) (0.188f * f20);
                        ActionIntroActivity.this.imageView.layout(0, i40, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i40);
                        int i41 = (int) (0.651f * f20);
                        ActionIntroActivity.this.titleTextView.layout(0, i41, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i41);
                        int i42 = (int) (0.731f * f20);
                        ActionIntroActivity.this.descriptionText.layout(0, i42, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i42);
                        int measuredWidth12 = (i8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                        int i43 = (int) (f20 * 0.853f);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth12, i43, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth12, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i43);
                        return;
                    case 1:
                    case 4:
                        if (i6 > i7) {
                            int measuredHeight5 = (i9 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                            float f21 = i8;
                            int measuredWidth13 = ((int) ((0.5f * f21) - ActionIntroActivity.this.imageView.getMeasuredWidth())) / 2;
                            ActionIntroActivity.this.imageView.layout(measuredWidth13, measuredHeight5, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth13, ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight5);
                            float f22 = f21 * 0.4f;
                            int i44 = (int) f22;
                            float f23 = i9;
                            int i45 = (int) (f23 * 0.14f);
                            ActionIntroActivity.this.titleTextView.layout(i44, i45, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i44, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i45);
                            int i46 = (int) (f23 * 0.31f);
                            ActionIntroActivity.this.descriptionText.layout(i44, i46, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i44, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i46);
                            int measuredWidth14 = (int) (f22 + (((f21 * 0.6f) - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                            int i47 = (int) (f23 * 0.78f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth14, i47, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth14, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i47);
                            return;
                        }
                        float f24 = i9;
                        int i48 = (int) (f24 * 0.214f);
                        int measuredWidth15 = (i8 - ActionIntroActivity.this.imageView.getMeasuredWidth()) / 2;
                        ActionIntroActivity.this.imageView.layout(measuredWidth15, i48, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth15, ActionIntroActivity.this.imageView.getMeasuredHeight() + i48);
                        int i49 = (int) (0.414f * f24);
                        ActionIntroActivity.this.titleTextView.layout(0, i49, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i49);
                        int i50 = (int) (0.493f * f24);
                        ActionIntroActivity.this.descriptionText.layout(0, i50, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i50);
                        int measuredWidth16 = (i8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                        int i51 = (int) (f24 * 0.853f);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth16, i51, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth16, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i51);
                        return;
                    case 2:
                        if (i6 > i7) {
                            float f25 = i9;
                            int measuredHeight6 = ((int) ((0.9f * f25) - ActionIntroActivity.this.imageView.getMeasuredHeight())) / 2;
                            ActionIntroActivity.this.imageView.layout(0, measuredHeight6, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight6);
                            int measuredHeight7 = measuredHeight6 + ActionIntroActivity.this.imageView.getMeasuredHeight() + AndroidUtilities.m50dp(10);
                            ActionIntroActivity.this.subtitleTextView.layout(0, measuredHeight7, ActionIntroActivity.this.subtitleTextView.getMeasuredWidth(), ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + measuredHeight7);
                            float f26 = i8;
                            float f27 = f26 * 0.4f;
                            int i52 = (int) f27;
                            int i53 = (int) (0.12f * f25);
                            ActionIntroActivity.this.titleTextView.layout(i52, i53, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i52, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i53);
                            int i54 = (int) (0.26f * f25);
                            ActionIntroActivity.this.descriptionText.layout(i52, i54, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i52, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i54);
                            int measuredWidth17 = (int) (f27 + (((f26 * 0.6f) - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                            int i55 = (int) (f25 * 0.6f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth17, i55, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth17, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i55);
                            int measuredHeight8 = (getMeasuredHeight() - ActionIntroActivity.this.descriptionText2.getMeasuredHeight()) - AndroidUtilities.m50dp(20);
                            ActionIntroActivity.this.descriptionText2.layout(i52, measuredHeight8, ActionIntroActivity.this.descriptionText2.getMeasuredWidth() + i52, ActionIntroActivity.this.descriptionText2.getMeasuredHeight() + measuredHeight8);
                            return;
                        }
                        float f28 = i9;
                        int i56 = (int) (0.197f * f28);
                        ActionIntroActivity.this.imageView.layout(0, i56, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i56);
                        int i57 = (int) (0.421f * f28);
                        ActionIntroActivity.this.titleTextView.layout(0, i57, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i57);
                        int i58 = (int) (0.477f * f28);
                        ActionIntroActivity.this.subtitleTextView.layout(0, i58, ActionIntroActivity.this.subtitleTextView.getMeasuredWidth(), ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + i58);
                        int i59 = (int) (0.537f * f28);
                        ActionIntroActivity.this.descriptionText.layout(0, i59, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i59);
                        int measuredWidth18 = (i8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                        int i60 = (int) (f28 * 0.71f);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth18, i60, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth18, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i60);
                        int measuredHeight9 = (getMeasuredHeight() - ActionIntroActivity.this.descriptionText2.getMeasuredHeight()) - AndroidUtilities.m50dp(20);
                        ActionIntroActivity.this.descriptionText2.layout(0, measuredHeight9, ActionIntroActivity.this.descriptionText2.getMeasuredWidth(), ActionIntroActivity.this.descriptionText2.getMeasuredHeight() + measuredHeight9);
                        return;
                    case 3:
                        if (i6 > i7) {
                            float f29 = i9;
                            int measuredHeight10 = ((int) ((0.95f * f29) - ActionIntroActivity.this.imageView.getMeasuredHeight())) / 2;
                            int width = (int) ((getWidth() * 0.35f) - ActionIntroActivity.this.imageView.getMeasuredWidth());
                            ActionIntroActivity.this.imageView.layout(width, measuredHeight10, ActionIntroActivity.this.imageView.getMeasuredWidth() + width, ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight10);
                            float f30 = i8;
                            float f31 = f30 * 0.4f;
                            int i61 = (int) f31;
                            int i62 = (int) (0.12f * f29);
                            ActionIntroActivity.this.titleTextView.layout(i61, i62, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i61, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i62);
                            int i63 = (int) (0.24f * f29);
                            ActionIntroActivity.this.descriptionText.layout(i61, i63, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i61, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i63);
                            float f32 = f30 * 0.6f;
                            int measuredWidth19 = (int) (((f32 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f) + f31);
                            int i64 = (int) (f29 * 0.8f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth19, i64, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth19, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i64);
                            int measuredWidth20 = (int) (f31 + ((f32 - ActionIntroActivity.this.subtitleTextView.getMeasuredWidth()) / 2.0f));
                            int measuredHeight11 = i64 - (ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + AndroidUtilities.m50dp(16));
                            ActionIntroActivity.this.subtitleTextView.layout(measuredWidth20, measuredHeight11, ActionIntroActivity.this.subtitleTextView.getMeasuredWidth() + measuredWidth20, ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + measuredHeight11);
                            return;
                        }
                        int i65 = (int) (i9 * 0.3f);
                        int measuredWidth21 = (i8 - ActionIntroActivity.this.imageView.getMeasuredWidth()) / 2;
                        ActionIntroActivity.this.imageView.layout(measuredWidth21, i65, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth21, ActionIntroActivity.this.imageView.getMeasuredHeight() + i65);
                        int measuredHeight12 = i65 + ActionIntroActivity.this.imageView.getMeasuredHeight() + AndroidUtilities.m50dp(24);
                        ActionIntroActivity.this.titleTextView.layout(0, measuredHeight12, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + measuredHeight12);
                        int textSize = (int) (measuredHeight12 + ActionIntroActivity.this.titleTextView.getTextSize() + AndroidUtilities.m50dp(16));
                        ActionIntroActivity.this.descriptionText.layout(0, textSize, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + textSize);
                        int measuredWidth22 = (i8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                        int measuredHeight13 = (i9 - ActionIntroActivity.this.buttonTextView.getMeasuredHeight()) - AndroidUtilities.m50dp(48);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth22, measuredHeight13, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth22, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + measuredHeight13);
                        int measuredWidth23 = (i8 - ActionIntroActivity.this.subtitleTextView.getMeasuredWidth()) / 2;
                        int measuredHeight14 = measuredHeight13 - (ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + AndroidUtilities.m50dp(32));
                        ActionIntroActivity.this.subtitleTextView.layout(measuredWidth23, measuredHeight14, ActionIntroActivity.this.subtitleTextView.getMeasuredWidth() + measuredWidth23, ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + measuredHeight14);
                        return;
                    case 5:
                        if (ActionIntroActivity.this.showingAsBottomSheet) {
                            ActionIntroActivity.this.imageView.layout(0, 0, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + 0);
                            float f33 = i9;
                            int i66 = (int) (0.403f * f33);
                            ActionIntroActivity.this.titleTextView.layout(0, i66, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i66);
                            int i67 = (int) (0.631f * f33);
                            int measuredWidth24 = (getMeasuredWidth() - ActionIntroActivity.this.descriptionLayout.getMeasuredWidth()) / 2;
                            ActionIntroActivity.this.descriptionLayout.layout(measuredWidth24, i67, ActionIntroActivity.this.descriptionLayout.getMeasuredWidth() + measuredWidth24, ActionIntroActivity.this.descriptionLayout.getMeasuredHeight() + i67);
                            int measuredWidth25 = (i8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                            int i68 = (int) (f33 * 0.853f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth25, i68, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth25, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i68);
                            return;
                        } else if (i6 > i7) {
                            int measuredHeight15 = (i9 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                            ActionIntroActivity.this.imageView.layout(0, measuredHeight15, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight15);
                            float f34 = i8;
                            float f35 = f34 * 0.4f;
                            int i69 = (int) f35;
                            float f36 = i9;
                            int i70 = (int) (0.08f * f36);
                            ActionIntroActivity.this.titleTextView.layout(i69, i70, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i69, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i70);
                            float f37 = f34 * 0.6f;
                            int measuredWidth26 = (int) (((f37 - ActionIntroActivity.this.descriptionLayout.getMeasuredWidth()) / 2.0f) + f35);
                            int i71 = (int) (0.25f * f36);
                            ActionIntroActivity.this.descriptionLayout.layout(measuredWidth26, i71, ActionIntroActivity.this.descriptionLayout.getMeasuredWidth() + measuredWidth26, ActionIntroActivity.this.descriptionLayout.getMeasuredHeight() + i71);
                            int measuredWidth27 = (int) (f35 + ((f37 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                            int i72 = (int) (f36 * 0.78f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth27, i72, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth27, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i72);
                            return;
                        } else {
                            if (AndroidUtilities.displaySize.y < 1800) {
                                float f38 = i9;
                                int i73 = (int) (0.06f * f38);
                                ActionIntroActivity.this.imageView.layout(0, i73, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i73);
                                int i74 = (int) (0.463f * f38);
                                ActionIntroActivity.this.titleTextView.layout(0, i74, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i74);
                                f = f38 * 0.543f;
                            } else {
                                float f39 = i9;
                                int i75 = (int) (0.148f * f39);
                                ActionIntroActivity.this.imageView.layout(0, i75, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i75);
                                int i76 = (int) (0.551f * f39);
                                ActionIntroActivity.this.titleTextView.layout(0, i76, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i76);
                                f = f39 * 0.631f;
                            }
                            int i77 = (int) f;
                            int measuredWidth28 = (getMeasuredWidth() - ActionIntroActivity.this.descriptionLayout.getMeasuredWidth()) / 2;
                            ActionIntroActivity.this.descriptionLayout.layout(measuredWidth28, i77, ActionIntroActivity.this.descriptionLayout.getMeasuredWidth() + measuredWidth28, ActionIntroActivity.this.descriptionLayout.getMeasuredHeight() + i77);
                            int measuredWidth29 = (i8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                            int i78 = (int) (i9 * 0.853f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth29, i78, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth29, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i78);
                            return;
                        }
                    case 6:
                        if (i6 > i7) {
                            int measuredHeight16 = (i9 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                            float f40 = i8;
                            int measuredWidth30 = ((int) ((0.5f * f40) - ActionIntroActivity.this.imageView.getMeasuredWidth())) / 2;
                            ActionIntroActivity.this.imageView.layout(measuredWidth30, measuredHeight16, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth30, ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight16);
                            float f41 = f40 * 0.4f;
                            int i79 = (int) f41;
                            float f42 = i9;
                            int i80 = (int) (f42 * 0.14f);
                            ActionIntroActivity.this.titleTextView.layout(i79, i80, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i79, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i80);
                            int i81 = (int) (f42 * 0.31f);
                            ActionIntroActivity.this.descriptionText.layout(i79, i81, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i79, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i81);
                            int measuredWidth31 = (int) (f41 + (((f40 * 0.6f) - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                            int i82 = (int) (f42 * 0.78f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth31, i82, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth31, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i82);
                            return;
                        }
                        int i83 = (int) (i9 * 0.3f);
                        int measuredWidth32 = (i8 - ActionIntroActivity.this.imageView.getMeasuredWidth()) / 2;
                        ActionIntroActivity.this.imageView.layout(measuredWidth32, i83, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth32, ActionIntroActivity.this.imageView.getMeasuredHeight() + i83);
                        int measuredHeight17 = i83 + ActionIntroActivity.this.imageView.getMeasuredHeight() + AndroidUtilities.m50dp(24);
                        ActionIntroActivity.this.titleTextView.layout(0, measuredHeight17, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + measuredHeight17);
                        int textSize2 = (int) (measuredHeight17 + ActionIntroActivity.this.titleTextView.getTextSize() + AndroidUtilities.m50dp(16));
                        ActionIntroActivity.this.descriptionText.layout(0, textSize2, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + textSize2);
                        int measuredWidth33 = (i8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                        int measuredHeight18 = (i9 - ActionIntroActivity.this.buttonTextView.getMeasuredHeight()) - AndroidUtilities.m50dp(48);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth33, measuredHeight18, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth33, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + measuredHeight18);
                        return;
                    default:
                        return;
                }
            }
        };
        this.fragmentView = viewGroup;
        viewGroup.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        ViewGroup viewGroup2 = (ViewGroup) this.fragmentView;
        viewGroup2.setOnTouchListener(ActionIntroActivity$$ExternalSyntheticLambda7.INSTANCE);
        C3306ActionBar c3306ActionBar2 = this.actionBar;
        if (c3306ActionBar2 != null) {
            viewGroup2.addView(c3306ActionBar2);
        }
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        viewGroup2.addView(rLottieImageView);
        TextView textView = new TextView(context);
        this.titleTextView = textView;
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        int i4 = 1;
        this.titleTextView.setGravity(1);
        this.titleTextView.setPadding(AndroidUtilities.m50dp(32), 0, AndroidUtilities.m50dp(32), 0);
        this.titleTextView.setTextSize(1, 24.0f);
        viewGroup2.addView(this.titleTextView);
        TextView textView2 = new TextView(context);
        this.subtitleTextView = textView2;
        int i5 = 3;
        textView2.setTextColor(Theme.getColor(this.currentType == 3 ? "featuredStickers_addButton" : "windowBackgroundWhiteBlackText"));
        this.subtitleTextView.setGravity(1);
        float f = 15.0f;
        this.subtitleTextView.setTextSize(1, 15.0f);
        this.subtitleTextView.setSingleLine(true);
        this.subtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        int i6 = 2;
        if (this.currentType == 2) {
            this.subtitleTextView.setPadding(AndroidUtilities.m50dp(24), 0, AndroidUtilities.m50dp(24), 0);
        } else {
            this.subtitleTextView.setPadding(AndroidUtilities.m50dp(32), 0, AndroidUtilities.m50dp(32), 0);
        }
        this.subtitleTextView.setVisibility(8);
        viewGroup2.addView(this.subtitleTextView);
        TextView textView3 = new TextView(context);
        this.descriptionText = textView3;
        textView3.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText6"));
        this.descriptionText.setGravity(1);
        this.descriptionText.setLineSpacing(AndroidUtilities.m50dp(2), 1.0f);
        this.descriptionText.setTextSize(1, 15.0f);
        int i7 = this.currentType;
        if (i7 == 6 || i7 == 3) {
            this.descriptionText.setPadding(AndroidUtilities.m50dp(48), 0, AndroidUtilities.m50dp(48), 0);
        } else if (i7 == 2) {
            this.descriptionText.setPadding(AndroidUtilities.m50dp(24), 0, AndroidUtilities.m50dp(24), 0);
        } else {
            this.descriptionText.setPadding(AndroidUtilities.m50dp(32), 0, AndroidUtilities.m50dp(32), 0);
        }
        viewGroup2.addView(this.descriptionText);
        int i8 = 5;
        if (this.currentType == 5) {
            LinearLayout linearLayout = new LinearLayout(context);
            this.descriptionLayout = linearLayout;
            linearLayout.setOrientation(1);
            this.descriptionLayout.setPadding(AndroidUtilities.m50dp(24), 0, AndroidUtilities.m50dp(24), 0);
            this.descriptionLayout.setGravity(LocaleController.isRTL ? 5 : 3);
            viewGroup2.addView(this.descriptionLayout);
            int i9 = 0;
            while (i9 < i5) {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(i3);
                this.descriptionLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, 0, 0, 0, i9 != i6 ? 7 : i3));
                int i10 = i9 * 2;
                this.desctiptionLines[i10] = new TextView(context);
                this.desctiptionLines[i10].setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
                this.desctiptionLines[i10].setGravity(LocaleController.isRTL ? i8 : 3);
                this.desctiptionLines[i10].setTextSize(i4, f);
                TextView textView4 = this.desctiptionLines[i10];
                String str = LocaleController.isRTL ? ".%d" : "%d.";
                Object[] objArr = new Object[i4];
                int i11 = i9 + 1;
                objArr[i3] = Integer.valueOf(i11);
                textView4.setText(String.format(str, objArr));
                this.desctiptionLines[i10].setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                int i12 = i10 + 1;
                this.desctiptionLines[i12] = new TextView(context);
                this.desctiptionLines[i12].setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
                this.desctiptionLines[i12].setGravity(LocaleController.isRTL ? 5 : 3);
                this.desctiptionLines[i12].setTextSize(i4, f);
                if (i9 == 0) {
                    this.desctiptionLines[i12].setLinkTextColor(Theme.getColor("windowBackgroundWhiteLinkText"));
                    this.desctiptionLines[i12].setHighlightColor(Theme.getColor("windowBackgroundWhiteLinkSelection"));
                    String string = LocaleController.getString("AuthAnotherClientInfo1", C3242R.string.AuthAnotherClientInfo1);
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                    int indexOf = string.indexOf(42);
                    int lastIndexOf = string.lastIndexOf(42);
                    if (indexOf != -1 && lastIndexOf != -1 && indexOf != lastIndexOf) {
                        this.desctiptionLines[i12].setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                        spannableStringBuilder.replace(lastIndexOf, lastIndexOf + 1, (CharSequence) "");
                        spannableStringBuilder.replace(indexOf, indexOf + 1, (CharSequence) "");
                        spannableStringBuilder.setSpan(new URLSpanNoUnderline(LocaleController.getString("AuthAnotherClientDownloadClientUrl", C3242R.string.AuthAnotherClientDownloadClientUrl)), indexOf, lastIndexOf - 1, 33);
                    }
                    this.desctiptionLines[i12].setText(spannableStringBuilder);
                } else if (i9 == i4) {
                    this.desctiptionLines[i12].setText(LocaleController.getString("AuthAnotherClientInfo2", C3242R.string.AuthAnotherClientInfo2));
                } else {
                    this.desctiptionLines[i12].setText(LocaleController.getString("AuthAnotherClientInfo3", C3242R.string.AuthAnotherClientInfo3));
                }
                if (LocaleController.isRTL) {
                    i2 = 5;
                    linearLayout2.setGravity(5);
                    linearLayout2.addView(this.desctiptionLines[i12], LayoutHelper.createLinear(0, -2, 1.0f));
                    linearLayout2.addView(this.desctiptionLines[i10], LayoutHelper.createLinear(-2, -2, 4, 0, 0, 0));
                } else {
                    i2 = 5;
                    linearLayout2.addView(this.desctiptionLines[i10], LayoutHelper.createLinear(-2, -2, 0, 0, 4, 0));
                    linearLayout2.addView(this.desctiptionLines[i12], LayoutHelper.createLinear(-2, -2));
                }
                i8 = i2;
                i9 = i11;
                i3 = 0;
                i4 = 1;
                f = 15.0f;
                i5 = 3;
                i6 = 2;
            }
            this.descriptionText.setVisibility(8);
        }
        TextView textView5 = new TextView(context);
        this.descriptionText2 = textView5;
        textView5.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText6"));
        this.descriptionText2.setGravity(1);
        this.descriptionText2.setLineSpacing(AndroidUtilities.m50dp(2), 1.0f);
        this.descriptionText2.setTextSize(1, 13.0f);
        this.descriptionText2.setVisibility(8);
        if (this.currentType == 2) {
            i = 0;
            this.descriptionText2.setPadding(AndroidUtilities.m50dp(18), 0, AndroidUtilities.m50dp(18), 0);
        } else {
            i = 0;
            this.descriptionText2.setPadding(AndroidUtilities.m50dp(32), 0, AndroidUtilities.m50dp(32), 0);
        }
        viewGroup2.addView(this.descriptionText2);
        TextView textView6 = new TextView(context) { // from class: org.telegram.ui.ActionIntroActivity.3
            CellFlickerDrawable cellFlickerDrawable;

            @Override // android.widget.TextView, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (ActionIntroActivity.this.flickerButton) {
                    if (this.cellFlickerDrawable == null) {
                        CellFlickerDrawable cellFlickerDrawable = new CellFlickerDrawable();
                        this.cellFlickerDrawable = cellFlickerDrawable;
                        cellFlickerDrawable.drawFrame = false;
                        cellFlickerDrawable.repeatProgress = 2.0f;
                    }
                    this.cellFlickerDrawable.setParentWidth(getMeasuredWidth());
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                    this.cellFlickerDrawable.draw(canvas, rectF, AndroidUtilities.m50dp(4), null);
                    invalidate();
                }
            }
        };
        this.buttonTextView = textView6;
        textView6.setPadding(AndroidUtilities.m50dp(34), i, AndroidUtilities.m50dp(34), i);
        this.buttonTextView.setGravity(17);
        this.buttonTextView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        this.buttonTextView.setTextSize(1, 14.0f);
        this.buttonTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        int i13 = this.currentType;
        this.buttonTextView.setBackground(Theme.AdaptiveRipple.filledRect("featuredStickers_addButton", (i13 == 6 || i13 == 3 || i13 == 0) ? 6 : 4));
        viewGroup2.addView(this.buttonTextView);
        this.buttonTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActionIntroActivity.this.lambda$createView$5(view);
            }
        });
        if (isForkIntro()) {
            this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            int i14 = this.currentType;
            if (i14 == 100 || i14 == 110) {
                this.imageView.setImageResource(C3242R.C3244drawable.fork_cloud_albums_intro);
                this.titleTextView.setText(LocaleController.getInternalString(C3242R.string.cloud_albums_intro_title));
                this.descriptionText.setText(LocaleController.getInternalString(C3242R.string.cloud_albums_intro_subtitle));
                this.buttonTextView.setText(this.currentType == 100 ? LocaleController.getString("Continue", C3242R.string.Continue) : LocaleController.getInternalString(C3242R.string.cloud_albums_intro_button));
            } else if (i14 == 101) {
                this.imageView.setImageResource(C3242R.C3244drawable.fork_music_intro);
                this.titleTextView.setText(LocaleController.getString("AttachMusic", C3242R.string.AttachMusic));
                this.descriptionText.setText(LocaleController.getInternalString(C3242R.string.music_intro_subtitle));
                this.buttonTextView.setText(LocaleController.getString("Continue", C3242R.string.Continue));
            } else if (i14 == 103) {
                this.imageView.setAutoRepeat(true);
                this.imageView.setAnimation(C3242R.raw.fork_swap, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                this.imageView.playAnimation();
                this.titleTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_banner_slide_swap_title));
                this.descriptionText.setText(LocaleController.getInternalString(C3242R.string.wallet_banner_slide_swap_long_description));
                this.buttonTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_swap_process_button_exchange));
            } else if (i14 == 104) {
                this.imageView.setImageResource(C3242R.C3244drawable.fork_img_intro_channels);
                this.titleTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_internal_point_channels_catalog_title));
                this.descriptionText.setText(LocaleController.getInternalString(C3242R.string.wallet_internal_point_channels_catalog_subtitle));
                this.buttonTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_feature_in_developing));
            } else if (i14 == 105) {
                this.imageView.setImageResource(C3242R.C3244drawable.fork_img_intro_bot);
                this.titleTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_internal_point_neurobots_store_title));
                this.descriptionText.setText(LocaleController.getInternalString(C3242R.string.wallet_internal_point_neurobots_store_subtitle));
                this.buttonTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_feature_in_developing));
            } else if (i14 == 107) {
                this.imageView.setImageResource(C3242R.C3244drawable.fork_img_intro_premium);
                this.titleTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_internal_point_premium_account_title));
                this.descriptionText.setText(LocaleController.getInternalString(C3242R.string.wallet_internal_point_premium_account_subtitle));
                this.buttonTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_feature_in_developing));
            } else if (i14 == 106) {
                this.imageView.setImageResource(C3242R.C3244drawable.fork_img_intro_ads);
                this.titleTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_internal_point_ads_title));
                this.descriptionText.setText(LocaleController.getInternalString(C3242R.string.wallet_internal_point_ads_subtitle));
                this.buttonTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_feature_in_developing));
            } else if (i14 == 109) {
                this.colors = new int[8];
                updateColors();
                this.imageView.setAutoRepeat(true);
                this.imageView.setAnimation(C3242R.raw.fork_binance_pay_scan, 334, 334, this.colors);
                this.imageView.setScaleType(ImageView.ScaleType.CENTER);
                this.imageView.playAnimation();
                this.titleTextView.setText(LocaleController.getInternalString(C3242R.string.wallet_binance_pay_intro_scan_title));
                this.descriptionText.setText(LocaleController.getInternalString(C3242R.string.wallet_binance_pay_intro_scan_description));
                this.buttonTextView.setText(LocaleController.getString("AuthAnotherClientScan", C3242R.string.AuthAnotherClientScan));
            } else if (i14 == 108 && this.bannerSlide != null) {
                this.imageView.setAutoRepeat(true);
                this.imageView.setAnimation(this.bannerSlide.getAnimatedIcon(), ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                this.imageView.playAnimation();
                this.titleTextView.setText(LocaleController.getInternalString(this.bannerSlide.getTitle()));
                this.descriptionText.setText(LocaleController.getInternalString(this.bannerSlide.getLongDescription()));
                this.buttonTextView.setText(LocaleController.getInternalString(this.bannerSlide.getActionButtonText(this.cryptoAccessManager.getValue())));
            }
        } else {
            switch (this.currentType) {
                case 0:
                    this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    this.imageView.setAnimation(C3242R.raw.channel_create, 200, 200);
                    this.titleTextView.setText(LocaleController.getString("ChannelAlertTitle", C3242R.string.ChannelAlertTitle));
                    this.descriptionText.setText(LocaleController.getString("ChannelAlertText", C3242R.string.ChannelAlertText));
                    this.buttonTextView.setText(LocaleController.getString("ChannelAlertCreate2", C3242R.string.ChannelAlertCreate2));
                    this.imageView.playAnimation();
                    this.flickerButton = true;
                    break;
                case 1:
                    this.imageView.setBackgroundDrawable(Theme.createCircleDrawable(AndroidUtilities.m50dp(100), Theme.getColor("chats_archiveBackground")));
                    this.imageView.setImageDrawable(new ShareLocationDrawable(context, 3));
                    this.imageView.setScaleType(ImageView.ScaleType.CENTER);
                    this.titleTextView.setText(LocaleController.getString("PeopleNearby", C3242R.string.PeopleNearby));
                    this.descriptionText.setText(LocaleController.getString("PeopleNearbyAccessInfo", C3242R.string.PeopleNearbyAccessInfo));
                    this.buttonTextView.setText(LocaleController.getString("PeopleNearbyAllowAccess", C3242R.string.PeopleNearbyAllowAccess));
                    this.flickerButton = true;
                    break;
                case 2:
                    this.subtitleTextView.setVisibility(0);
                    this.descriptionText2.setVisibility(0);
                    this.imageView.setImageResource(Theme.getCurrentTheme().isDark() ? C3242R.C3244drawable.groupsintro2 : C3242R.C3244drawable.groupsintro);
                    this.imageView.setScaleType(ImageView.ScaleType.CENTER);
                    TextView textView7 = this.subtitleTextView;
                    String str2 = this.currentGroupCreateDisplayAddress;
                    textView7.setText(str2 != null ? str2 : "");
                    this.titleTextView.setText(LocaleController.getString("NearbyCreateGroup", C3242R.string.NearbyCreateGroup));
                    this.descriptionText.setText(LocaleController.getString("NearbyCreateGroupInfo", C3242R.string.NearbyCreateGroupInfo));
                    this.descriptionText2.setText(LocaleController.getString("NearbyCreateGroupInfo2", C3242R.string.NearbyCreateGroupInfo2));
                    this.buttonTextView.setText(LocaleController.getString("NearbyStartGroup", C3242R.string.NearbyStartGroup));
                    break;
                case 3:
                    this.subtitleTextView.setVisibility(0);
                    this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    this.imageView.setAnimation(C3242R.raw.utyan_change_number, 200, 200);
                    this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ActionIntroActivity.this.lambda$createView$7(view);
                        }
                    });
                    UserConfig userConfig = getUserConfig();
                    TLRPC$User user = getMessagesController().getUser(Long.valueOf(userConfig.clientUserId));
                    if (user == null) {
                        user = userConfig.getCurrentUser();
                    }
                    if (user != null) {
                        this.subtitleTextView.setText(LocaleController.formatString("PhoneNumberKeepButton", C3242R.string.PhoneNumberKeepButton, C3159PhoneFormat.getInstance().format("+" + user.phone)));
                    }
                    this.subtitleTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ActionIntroActivity.this.lambda$createView$8(view);
                        }
                    });
                    TextView textView8 = this.titleTextView;
                    int i15 = C3242R.string.PhoneNumberChange2;
                    textView8.setText(LocaleController.getString("PhoneNumberChange2", i15));
                    this.descriptionText.setText(AndroidUtilities.replaceTags(LocaleController.getString("PhoneNumberHelp", C3242R.string.PhoneNumberHelp)));
                    this.buttonTextView.setText(LocaleController.getString("PhoneNumberChange2", i15));
                    this.imageView.playAnimation();
                    this.flickerButton = true;
                    break;
                case 4:
                    this.imageView.setBackgroundDrawable(Theme.createCircleDrawable(AndroidUtilities.m50dp(100), Theme.getColor("chats_archiveBackground")));
                    this.imageView.setImageDrawable(new ShareLocationDrawable(context, 3));
                    this.imageView.setScaleType(ImageView.ScaleType.CENTER);
                    this.titleTextView.setText(LocaleController.getString("PeopleNearby", C3242R.string.PeopleNearby));
                    this.descriptionText.setText(LocaleController.getString("PeopleNearbyGpsInfo", C3242R.string.PeopleNearbyGpsInfo));
                    this.buttonTextView.setText(LocaleController.getString("PeopleNearbyGps", C3242R.string.PeopleNearbyGps));
                    break;
                case 5:
                    this.colors = new int[8];
                    updateColors();
                    this.imageView.setAnimation(C3242R.raw.qr_login, 334, 334, this.colors);
                    this.imageView.setScaleType(ImageView.ScaleType.CENTER);
                    this.titleTextView.setText(LocaleController.getString("AuthAnotherClient", C3242R.string.AuthAnotherClient));
                    this.buttonTextView.setText(LocaleController.getString("AuthAnotherClientScan", C3242R.string.AuthAnotherClientScan));
                    this.imageView.playAnimation();
                    break;
                case 6:
                    this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    this.imageView.setAnimation(C3242R.raw.utyan_passcode, 200, 200);
                    this.imageView.setFocusable(false);
                    this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ActionIntroActivity.this.lambda$createView$6(view);
                        }
                    });
                    LockedSection lockedSection = this.lockedSection;
                    if (lockedSection != null) {
                        this.titleTextView.setText(LocaleController.getInternalString(lockedSection.getNameResId()));
                        this.descriptionText.setVisibility(8);
                    } else {
                        this.titleTextView.setText(LocaleController.getString("Passcode", C3242R.string.Passcode));
                    }
                    this.descriptionText.setText(LocaleController.getString("ChangePasscodeInfoShort", C3242R.string.ChangePasscodeInfoShort));
                    this.buttonTextView.setText(LocaleController.getString("EnablePasscode", C3242R.string.EnablePasscode));
                    this.imageView.playAnimation();
                    this.flickerButton = true;
                    break;
            }
        }
        if (this.flickerButton) {
            this.buttonTextView.setPadding(AndroidUtilities.m50dp(34), AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(34), AndroidUtilities.m50dp(8));
            this.buttonTextView.setTextSize(1, 15.0f);
        }
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        if (getParentActivity() == null) {
            return;
        }
        int i = this.currentType;
        if (i == 100 || i == 110) {
            SharedConfig.setAlbumsIntroShown(true);
            if (this.currentType == 100) {
                presentFragment(DialogsActivity.newInstanceInAlbumsMode(), true);
            } else {
                presentFragment(ChannelCreateActivity.newInstanceInAlbumMode(new Callbacks$Callback1() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda8
                    @Override // com.iMe.fork.utils.Callbacks$Callback1
                    public final void invoke(Object obj) {
                        ActionIntroActivity.this.lambda$createView$2((Long) obj);
                    }
                }), true);
            }
        } else if (i == 101) {
            SharedConfig.setMusicIntroShown(true);
            presentFragment(new MusicActivity(), true);
        } else if (i == 103) {
            presentFragment(WalletSwapProcessFragment.newInstance(new WalletSwapProcessFragment.ScreenType.Crypto(this.swapProtocol, null, this.tokenCodeToSwap, this.forcedNetworkType)), true);
        } else if (i == 106) {
            showNotAvailableToast();
        } else if (i == 104) {
            showNotAvailableToast();
        } else if (i == 105) {
            showNotAvailableToast();
        } else if (i == 107) {
            showNotAvailableToast();
        } else if (i == 109) {
            if (getParentActivity() == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 23 && getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
                getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
            } else {
                processOpenQrReader();
            }
        } else if (i == 108) {
            BannerSlide bannerSlide = this.bannerSlide;
            if (bannerSlide != null) {
                switch (C34125.$SwitchMap$com$iMe$model$wallet$home$BannerSlide[bannerSlide.ordinal()]) {
                    case 1:
                        Browser.openUrl(getParentActivity(), LocaleController.getInternalString(C3242R.string.common_wallet_faq_url));
                        finishFragment();
                        return;
                    case 2:
                        if (this.cryptoAccessManager.getValue().isCurrentBlockchainWalletCreated()) {
                            presentFragment(WalletSwapProtocolsFragment.newInstance(ScreenType.FULLSCREEN, null), true);
                            return;
                        } else {
                            finishFragment();
                            return;
                        }
                    case 3:
                        Wallet wallet2 = getWallet();
                        if (wallet2 != null) {
                            this.pinCodeCoordinator.getValue().start(this.parentLayout, CreateWalletFragment.newInstance(new CreateWalletScreenType.SecretWords("", "", wallet2)), new PinCodeCoordinator.Args(EnterPinCodeScreenType.CHECK), true);
                            return;
                        } else {
                            finishFragment();
                            return;
                        }
                    case 4:
                        finishFragment();
                        return;
                    case 5:
                        finishFragment();
                        return;
                    case 6:
                        showChooseGatePairDialog();
                        return;
                    case 7:
                        WalletHelper.runWithCheckIsCryptoWalletCreated(this, new Callbacks$Callback() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda9
                            @Override // com.iMe.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                ActionIntroActivity.this.finishFragment();
                            }
                        }, this.cryptoPreferenceHelper.getValue().getCurrentBlockchainType(), new Callbacks$Callback() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda10
                            @Override // com.iMe.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                ActionIntroActivity.this.lambda$createView$3();
                            }
                        });
                        return;
                    case 8:
                        finishFragment();
                        return;
                    case 9:
                        finishFragment();
                        return;
                    case 10:
                        Browser.openUrl(getParentActivity(), LocaleController.getInternalString(C3242R.string.common_ascendeex_url));
                        finishFragment();
                        return;
                    case 11:
                        BlockchainType blockchainType = BlockchainType.EVM;
                        if (this.cryptoAccessManager.getValue().isWalletCreated(blockchainType)) {
                            presentFragment(StakingFragment.newInstance());
                            finishFragment();
                            return;
                        }
                        showDialog(DialogsFactoryKt.createWalletCreatedRequiredDialog(this, blockchainType, new Callbacks$Callback() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda9
                            @Override // com.iMe.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                ActionIntroActivity.this.finishFragment();
                            }
                        }));
                        return;
                    case 12:
                        Browser.openUrl(getParentActivity(), LocaleController.getInternalString(C3242R.string.wallet_banner_slide_binance_pay_faq_action_link));
                        finishFragment();
                        return;
                    case 13:
                        Browser.openUrl(getParentActivity(), LocaleController.getInternalString(C3242R.string.wallet_banner_slide_binance_pay_marketplace_action_link));
                        finishFragment();
                        return;
                    default:
                        return;
                }
            }
        } else {
            switch (i) {
                case 0:
                    Bundle bundle = new Bundle();
                    bundle.putInt("step", 0);
                    presentFragment(new ChannelCreateActivity(bundle), true);
                    return;
                case 1:
                    getParentActivity().requestPermissions(new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}, 2);
                    return;
                case 2:
                    if (this.currentGroupCreateAddress == null || this.currentGroupCreateLocation == null) {
                        return;
                    }
                    Bundle bundle2 = new Bundle();
                    bundle2.putLongArray("result", new long[]{getUserConfig().getClientUserId()});
                    bundle2.putInt("chatType", 4);
                    bundle2.putString("address", this.currentGroupCreateAddress);
                    bundle2.putParcelable("location", this.currentGroupCreateLocation);
                    presentFragment(new GroupCreateFinalActivity(bundle2), true);
                    return;
                case 3:
                    AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                    builder.setTitle(LocaleController.getString("PhoneNumberChangeTitle", C3242R.string.PhoneNumberChangeTitle));
                    builder.setMessage(LocaleController.getString("PhoneNumberAlert", C3242R.string.PhoneNumberAlert));
                    builder.setPositiveButton(LocaleController.getString("Change", C3242R.string.Change), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            ActionIntroActivity.this.lambda$createView$4(dialogInterface, i2);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString("Cancel", C3242R.string.Cancel), null);
                    showDialog(builder.create());
                    return;
                case 4:
                    try {
                        getParentActivity().startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
                        return;
                    } catch (Exception e) {
                        FileLog.m45e(e);
                        return;
                    }
                case 5:
                    if (getParentActivity() == null) {
                        return;
                    }
                    if (Build.VERSION.SDK_INT >= 23 && getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
                        getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
                        return;
                    } else {
                        processOpenQrReader();
                        return;
                    }
                case 6:
                    presentFragment(new PasscodeActivity(1, this.lockedSection), true);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(Long l) {
        presentFragment(ChatActivity.newInstanceForDialogId(l.longValue(), 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ActionIntroActivity$5 */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class C34125 {
        static final /* synthetic */ int[] $SwitchMap$com$iMe$model$wallet$home$BannerSlide;

        static {
            int[] iArr = new int[BannerSlide.values().length];
            $SwitchMap$com$iMe$model$wallet$home$BannerSlide = iArr;
            try {
                iArr[BannerSlide.FAQ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.SWAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.NON_CUSTODIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.SAFE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.MULTI_NETWORKS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.GATE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.CRYPTO_TRANSFERS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.BINANCE_PAY_INFORMATION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.BINANCE_PAY_OPERATION_WITHOUT_FEE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.ASCENDEEX.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.STAKING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.BINANCE_PAY_FAQ.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$iMe$model$wallet$home$BannerSlide[BannerSlide.BINANCE_PAY_MARKETPLACE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3() {
        presentFragment(ManageLinksActivity.newInstanceForType(ManageLinksActivity.WALLET_TRANSFER_SCREEN_TYPE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(DialogInterface dialogInterface, int i) {
        presentFragment(new LoginActivity().changePhoneNumber(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view) {
        if (this.imageView.getAnimatedDrawable().isRunning()) {
            return;
        }
        this.imageView.getAnimatedDrawable().setCurrentFrame(0, false);
        this.imageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(View view) {
        if (this.imageView.getAnimatedDrawable().isRunning()) {
            return;
        }
        this.imageView.getAnimatedDrawable().setCurrentFrame(0, false);
        this.imageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(View view) {
        getParentLayout().closeLastFragment(true);
    }

    @Override // org.telegram.messenger.LocationController.LocationFetchCallback
    public void onLocationAddressAvailable(String str, String str2, Location location) {
        TextView textView = this.subtitleTextView;
        if (textView == null) {
            return;
        }
        textView.setText(str);
        this.currentGroupCreateAddress = str;
        this.currentGroupCreateDisplayAddress = str2;
        this.currentGroupCreateLocation = location;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        boolean z;
        super.onResume();
        if (this.currentType == 4) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 28) {
                z = ((LocationManager) ApplicationLoader.applicationContext.getSystemService("location")).isLocationEnabled();
            } else {
                if (i >= 19) {
                    try {
                        if (Settings.Secure.getInt(ApplicationLoader.applicationContext.getContentResolver(), "location_mode", 0) == 0) {
                            z = false;
                        }
                    } catch (Throwable th) {
                        FileLog.m45e(th);
                    }
                }
                z = true;
            }
            if (z) {
                presentFragment(new PeopleNearbyActivity(), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        int[] iArr = this.colors;
        if (iArr == null || this.imageView == null) {
            return;
        }
        iArr[0] = 3355443;
        iArr[1] = Theme.getColor("windowBackgroundWhiteBlackText");
        int[] iArr2 = this.colors;
        iArr2[2] = 16777215;
        iArr2[3] = Theme.getColor("windowBackgroundWhite");
        int[] iArr3 = this.colors;
        iArr3[4] = 5285866;
        iArr3[5] = Theme.getColor("featuredStickers_addButton");
        int[] iArr4 = this.colors;
        iArr4[6] = 2170912;
        iArr4[7] = Theme.getColor("windowBackgroundWhite");
        this.imageView.replaceColors(this.colors);
    }

    public void setGroupCreateAddress(String str, String str2, Location location) {
        this.currentGroupCreateAddress = str;
        this.currentGroupCreateDisplayAddress = str2;
        this.currentGroupCreateLocation = location;
        if (location == null || str != null) {
            return;
        }
        LocationController.fetchLocationAddress(location, this);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (getParentActivity() == null) {
            return;
        }
        if (i == 2) {
            if (iArr == null || iArr.length == 0) {
                return;
            }
            if (iArr[0] != 0) {
                showDialog(AlertsCreator.createLocationRequiredDialog(getParentActivity(), false));
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActionIntroActivity.this.lambda$onRequestPermissionsResultFragment$9();
                    }
                });
            }
        } else if (i == 34) {
            if (iArr.length > 0 && iArr[0] == 0) {
                processOpenQrReader();
            } else {
                new AlertDialog.Builder(getParentActivity()).setMessage(AndroidUtilities.replaceTags(LocaleController.getString("QRCodePermissionNoCameraWithHint", C3242R.string.QRCodePermissionNoCameraWithHint))).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3242R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ActionIntroActivity.this.lambda$onRequestPermissionsResultFragment$10(dialogInterface, i2);
                    }
                }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3242R.string.ContactsPermissionAlertNotNow), null).setTopAnimation(C3242R.raw.permission_request_camera, 72, false, Theme.getColor("dialogTopBackground")).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$9() {
        presentFragment(new PeopleNearbyActivity(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$10(DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            getParentActivity().startActivity(intent);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public void setQrLoginDelegate(ActionIntroQRLoginDelegate actionIntroQRLoginDelegate) {
        this.qrLoginDelegate = actionIntroQRLoginDelegate;
    }

    private void processOpenQrReader() {
        boolean z = this.currentType == 109;
        CameraScanActivity.showAsSheet(this, z, 1, new CameraScanActivity.CameraScanActivityDelegate() { // from class: org.telegram.ui.ActionIntroActivity.4
            @Override // org.telegram.p044ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.p044ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.p044ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.p044ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.p044ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String str) {
                ActionIntroActivity.this.finishFragment(false);
                ActionIntroActivity.this.qrLoginDelegate.didFindQRCode(str);
            }
        }, z);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda12
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ActionIntroActivity.this.updateColors();
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, themeDescriptionDelegate, "windowBackgroundWhite"));
        if (this.actionBar != null) {
            arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"));
            arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "windowBackgroundWhiteGrayText2"));
            arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarWhiteSelector"));
        }
        arrayList.add(new ThemeDescription(this.titleTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, themeDescriptionDelegate, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.subtitleTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.descriptionText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteGrayText6"));
        arrayList.add(new ThemeDescription(this.buttonTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "featuredStickers_buttonText"));
        arrayList.add(new ThemeDescription(this.buttonTextView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, null, null, null, themeDescriptionDelegate, "featuredStickers_addButton"));
        arrayList.add(new ThemeDescription(this.buttonTextView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, "featuredStickers_addButtonPressed"));
        arrayList.add(new ThemeDescription(this.desctiptionLines[0], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.desctiptionLines[1], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.desctiptionLines[1], ThemeDescription.FLAG_LINKCOLOR, null, null, null, null, "windowBackgroundWhiteLinkText"));
        arrayList.add(new ThemeDescription(this.desctiptionLines[2], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.desctiptionLines[3], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.desctiptionLines[4], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.desctiptionLines[5], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(null, ThemeDescription.FLAG_TEXTCOLOR, null, null, new Drawable[]{this.drawable2}, null, "changephoneinfo_image2"));
        return arrayList;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(Theme.getColor("windowBackgroundWhite", null, true)) > 0.699999988079071d;
    }
}
