package org.telegram.p048ui.Components;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Outline;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.zxing.EncodeHintType;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.utils.extentions.common.ContextExtKt;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.RequestDelegateTimestamp;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_auth_authorization;
import org.telegram.tgnet.TLRPC$TL_auth_exportLoginToken;
import org.telegram.tgnet.TLRPC$TL_auth_importLoginToken;
import org.telegram.tgnet.TLRPC$TL_auth_loginToken;
import org.telegram.tgnet.TLRPC$TL_auth_loginTokenMigrateTo;
import org.telegram.tgnet.TLRPC$TL_auth_loginTokenSuccess;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$auth_LoginToken;
/* renamed from: org.telegram.ui.Components.QRCodeBottomSheet */
/* loaded from: classes6.dex */
public class QRCodeBottomSheet extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private String address;
    private TextView button2TextView;
    private final TextView buttonTextView;
    private boolean forceRefreshLoginToken;
    private final TextView help;
    RLottieImageView iconImage;
    int imageSize;
    private LoginTokenCallback loginTokenCallback;
    private int loginTokenRequestId;
    private ActionBarMenuItem optionsButton;
    Bitmap qrCode;
    private ImageView qrImageView;
    private Runnable refreshLoginTokenRunnable;
    private int type;

    /* renamed from: org.telegram.ui.Components.QRCodeBottomSheet$LoginTokenCallback */
    /* loaded from: classes6.dex */
    public interface LoginTokenCallback {
        void onAuthorized(TLRPC$TL_auth_authorization tLRPC$TL_auth_authorization);

        void onTwoStepVerificationNeeded();
    }

    public int getCustomQrCenterImageRes() {
        return -1;
    }

    public QRCodeBottomSheet(Context context, String str, String str2, String str3, boolean z) {
        this(context, str, str2, str3, z, UserConfig.selectedAccount);
    }

    public int getType() {
        return this.type;
    }

    public void setupWalletTypeReceive(String str, String str2, String str3, TokenCode tokenCode, BlockchainType blockchainType) {
        this.address = str3;
        setTitle(str, true);
        setTitleClickable(true);
        this.buttonTextView.setText(str2);
    }

    public void setupWalletTypeBackup(String str, String str2) {
        setTitle(str, true);
        setTitleClickable(false);
        this.buttonTextView.setText(str2);
    }

    public void setupLoginTokenType(LoginTokenCallback loginTokenCallback) {
        this.loginTokenCallback = loginTokenCallback;
        this.buttonTextView.setText(LocaleController.getString("Close", C3286R.string.Close));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isNeedOptionsMenu()) {
            addOptionMenu();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.loginTokenDidAccepted);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.loginTokenDidAccepted);
        AndroidUtilities.cancelRunOnUIThread(this.refreshLoginTokenRunnable);
        if (this.loginTokenRequestId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.loginTokenRequestId, true);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.loginTokenDidAccepted && getType() == 3) {
            if (this.loginTokenRequestId != 0) {
                this.forceRefreshLoginToken = true;
                return;
            }
            AndroidUtilities.cancelRunOnUIThread(this.refreshLoginTokenRunnable);
            refreshLoginToken();
        }
    }

    private boolean isNeedOptionsMenu() {
        return getType() == 1;
    }

    private void addOptionMenu() {
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(getContext(), null, 0, Theme.getColor("key_sheet_other"));
        this.optionsButton = actionBarMenuItem;
        actionBarMenuItem.setSubMenuOpenSide(2);
        this.optionsButton.setIcon(C3286R.C3288drawable.ic_ab_other);
        this.optionsButton.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor("player_actionBarSelector")));
        this.optionsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QRCodeBottomSheet.this.lambda$addOptionMenu$0(view);
            }
        });
        this.optionsButton.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3286R.string.AccDescrMoreOptions));
        if (getType() == 1) {
            this.optionsButton.addSubItem(IdFabric$Menu.COPY, C3286R.C3288drawable.msg_copy, LocaleController.getInternalString(C3286R.string.wallet_transaction_details_action_copy_address));
            this.optionsButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda7
                @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
                public final void onItemClick(int i) {
                    QRCodeBottomSheet.this.lambda$addOptionMenu$1(i);
                }
            });
        }
        this.containerView.addView(this.optionsButton, LayoutHelper.createFrame(40, 40, 53, 0, 5, 5, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addOptionMenu$0(View view) {
        this.optionsButton.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addOptionMenu$1(int i) {
        if (i == IdFabric$Menu.COPY) {
            ContextExtKt.copyToClipboard(this.address, LocaleController.getString("TextCopied", C3286R.string.TextCopied));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshLoginToken() {
        if (this.loginTokenRequestId != 0) {
            return;
        }
        TLRPC$TL_auth_exportLoginToken tLRPC$TL_auth_exportLoginToken = new TLRPC$TL_auth_exportLoginToken();
        tLRPC$TL_auth_exportLoginToken.api_id = BuildVars.APP_ID;
        tLRPC$TL_auth_exportLoginToken.api_hash = BuildVars.APP_HASH;
        for (int i = 0; i < 5; i++) {
            if (UserConfig.getInstance(i).isClientActivated()) {
                tLRPC$TL_auth_exportLoginToken.except_ids.add(Long.valueOf(UserConfig.getInstance(i).getClientUserId()));
            }
        }
        this.loginTokenRequestId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_auth_exportLoginToken, new RequestDelegate() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                QRCodeBottomSheet.this.lambda$refreshLoginToken$3(tLObject, tLRPC$TL_error);
            }
        }, 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshLoginToken$3(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                QRCodeBottomSheet.this.lambda$refreshLoginToken$2(tLRPC$TL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshLoginToken$2(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject) {
        if (tLRPC$TL_error != null) {
            handleLoginTokenError(tLRPC$TL_error);
        } else {
            handleLoginTokenResult((TLRPC$auth_LoginToken) tLObject);
        }
    }

    private void handleLoginTokenResult(TLRPC$auth_LoginToken tLRPC$auth_LoginToken) {
        if (tLRPC$auth_LoginToken instanceof TLRPC$TL_auth_loginToken) {
            this.loginTokenRequestId = 0;
            TLRPC$TL_auth_loginToken tLRPC$TL_auth_loginToken = (TLRPC$TL_auth_loginToken) tLRPC$auth_LoginToken;
            ImageView imageView = this.qrImageView;
            Context context = getContext();
            Bitmap createQR = createQR(context, "tg://login?token=" + Base64.encodeToString(tLRPC$TL_auth_loginToken.token, 10), this.qrCode);
            this.qrCode = createQR;
            imageView.setImageBitmap(createQR);
            if (this.forceRefreshLoginToken) {
                refreshLoginToken();
                return;
            }
            AndroidUtilities.runOnUIThread(this.refreshLoginTokenRunnable, Math.max(0L, TimeUnit.SECONDS.toMillis(tLRPC$TL_auth_loginToken.expires) - System.currentTimeMillis()));
        } else if (tLRPC$auth_LoginToken instanceof TLRPC$TL_auth_loginTokenMigrateTo) {
            TLRPC$TL_auth_loginTokenMigrateTo tLRPC$TL_auth_loginTokenMigrateTo = (TLRPC$TL_auth_loginTokenMigrateTo) tLRPC$auth_LoginToken;
            if (this.loginTokenRequestId == 0) {
                return;
            }
            TLRPC$TL_auth_importLoginToken tLRPC$TL_auth_importLoginToken = new TLRPC$TL_auth_importLoginToken();
            tLRPC$TL_auth_importLoginToken.token = tLRPC$TL_auth_loginTokenMigrateTo.token;
            this.loginTokenRequestId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_auth_importLoginToken, new RequestDelegateTimestamp() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda6
                @Override // org.telegram.tgnet.RequestDelegateTimestamp
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error, long j) {
                    QRCodeBottomSheet.this.lambda$handleLoginTokenResult$4(tLObject, tLRPC$TL_error, j);
                }
            }, 0, 1, tLRPC$TL_auth_loginTokenMigrateTo.dc_id);
        } else if (tLRPC$auth_LoginToken instanceof TLRPC$TL_auth_loginTokenSuccess) {
            dismiss();
            this.loginTokenCallback.onAuthorized((TLRPC$TL_auth_authorization) ((TLRPC$TL_auth_loginTokenSuccess) tLRPC$auth_LoginToken).authorization);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleLoginTokenResult$4(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error, long j) {
        if (tLRPC$TL_error != null) {
            handleLoginTokenError(tLRPC$TL_error);
        } else {
            handleLoginTokenResult((TLRPC$auth_LoginToken) tLObject);
        }
    }

    private void handleLoginTokenError(TLRPC$TL_error tLRPC$TL_error) {
        this.loginTokenRequestId = 0;
        if (tLRPC$TL_error.text.equals("SESSION_PASSWORD_NEEDED")) {
            dismiss();
            this.loginTokenCallback.onTwoStepVerificationNeeded();
        } else if (this.forceRefreshLoginToken) {
            refreshLoginToken();
        } else {
            ContextExtKt.toast(tLRPC$TL_error.text);
        }
    }

    public QRCodeBottomSheet(final Context context, String str, final String str2, String str3, boolean z, int i) {
        super(context, false);
        this.refreshLoginTokenRunnable = new Runnable() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                QRCodeBottomSheet.this.refreshLoginToken();
            }
        };
        this.currentAccount = i;
        fixNavigationBar();
        setTitle(str, true);
        final ImageView imageView = new ImageView(this, context) { // from class: org.telegram.ui.Components.QRCodeBottomSheet.1
            @Override // android.widget.ImageView, android.view.View
            protected void onMeasure(int i2, int i3) {
                int size = View.MeasureSpec.getSize(i2);
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size, 1073741824));
            }
        };
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        if (Build.VERSION.SDK_INT >= 21) {
            imageView.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.Components.QRCodeBottomSheet.2
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.m50dp(12));
                }
            });
            imageView.setClipToOutline(true);
        }
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, AndroidUtilities.m50dp(16), 0, 0);
        Bitmap createQR = createQR(context, str2, this.qrCode);
        this.qrCode = createQR;
        imageView.setImageBitmap(createQR);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.iconImage = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.iconImage.setBackgroundColor(-1);
        if (getCustomQrCenterImageRes() != -1) {
            this.iconImage.setImageResource(getCustomQrCenterImageRes());
        }
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.QRCodeBottomSheet.3
            float lastX;

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                float measuredHeight = (QRCodeBottomSheet.this.imageSize / 768.0f) * imageView.getMeasuredHeight();
                if (this.lastX != measuredHeight) {
                    this.lastX = measuredHeight;
                    ViewGroup.LayoutParams layoutParams = QRCodeBottomSheet.this.iconImage.getLayoutParams();
                    int i4 = (int) measuredHeight;
                    QRCodeBottomSheet.this.iconImage.getLayoutParams().width = i4;
                    layoutParams.height = i4;
                    super.onMeasure(i2, i3);
                }
            }
        };
        frameLayout.addView(imageView, LayoutHelper.createFrame(-1, -1));
        frameLayout.addView(this.iconImage, LayoutHelper.createFrame(60, 60, 17));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(220, 220, 1, 30, 0, 30, 0));
        TextView textView = new TextView(context);
        this.help = textView;
        textView.setTextSize(1, 14.0f);
        textView.setText(str3);
        textView.setGravity(1);
        this.qrImageView = imageView;
        if (getType() == 1 || getType() == 2) {
            textView.setTextSize(1, 17.0f);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
        }
        linearLayout.addView(textView, LayoutHelper.createFrame(-1, -2, 0, 40, (getType() == 1 || getType() == 2) ? 16 : 8, 40, 8));
        TextView textView2 = new TextView(context);
        this.buttonTextView = textView2;
        textView2.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
        textView2.setGravity(17);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setText(LocaleController.getString("ShareQrCode", C3286R.string.ShareQrCode));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QRCodeBottomSheet.this.lambda$new$5(context, view);
            }
        });
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 80, 16, 15, 16, 3));
        if (z) {
            TextView textView3 = new TextView(context);
            this.button2TextView = textView3;
            textView3.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
            this.button2TextView.setGravity(17);
            this.button2TextView.setTextSize(1, 14.0f);
            this.button2TextView.setText(LocaleController.getString("ShareLink", C3286R.string.ShareLink));
            this.button2TextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    QRCodeBottomSheet.lambda$new$6(str2, context, view);
                }
            });
            linearLayout.addView(this.button2TextView, LayoutHelper.createLinear(-1, 48, 80, 16, 3, 16, 16));
        }
        updateColors();
        ScrollView scrollView = new ScrollView(context);
        scrollView.addView(linearLayout);
        setCustomView(scrollView);
        if (getType() == 1 || getType() == 2 || getType() != 3) {
            return;
        }
        refreshLoginToken();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(Context context, View view) {
        if (getType() == 2 || getType() == 3) {
            dismiss();
            return;
        }
        Uri bitmapShareUri = AndroidUtilities.getBitmapShareUri(this.qrCode, "qr_tmp.png", Bitmap.CompressFormat.PNG);
        if (bitmapShareUri != null) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", bitmapShareUri);
            if (getType() == 1) {
                intent.putExtra("android.intent.extra.TEXT", this.address);
            }
            try {
                AndroidUtilities.findActivity(context).startActivityForResult(Intent.createChooser(intent, getTitleView().getText()), 500);
            } catch (ActivityNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$6(String str, Context context, View view) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str);
        Intent createChooser = Intent.createChooser(intent, LocaleController.getString("ShareLink", C3286R.string.ShareLink));
        createChooser.setFlags(268435456);
        context.startActivity(createChooser);
    }

    public Bitmap createQR(Context context, String str, Bitmap bitmap) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
            hashMap.put(EncodeHintType.MARGIN, 0);
            QRCodeWriter qRCodeWriter = new QRCodeWriter();
            if (getCustomQrCenterImageRes() != -1) {
                qRCodeWriter.setQrImageRes(getCustomQrCenterImageRes());
            }
            Bitmap encode = qRCodeWriter.encode(str, 768, 768, hashMap, bitmap);
            this.imageSize = qRCodeWriter.getImageSize();
            return encode;
        } catch (Exception e) {
            FileLog.m45e(e);
            return null;
        }
    }

    public void setCenterAnimation(int i) {
        this.iconImage.setAutoRepeat(true);
        this.iconImage.setAnimation(i, 60, 60);
        this.iconImage.playAnimation();
    }

    public void setCenterImage(Bitmap bitmap) {
        this.iconImage.setImageBitmap(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateColors() {
        ActionBarMenuItem actionBarMenuItem = this.optionsButton;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setIconColor(Theme.getColor("key_sheet_other"));
            this.optionsButton.setPopupItemsColor(Theme.getColor("actionBarDefaultSubmenuItem"), false);
            this.optionsButton.setPopupItemsColor(Theme.getColor("actionBarDefaultSubmenuItemIcon"), true);
            this.optionsButton.setPopupItemsSelectorColor(Theme.getColor("dialogButtonSelector"));
            this.optionsButton.redrawPopup(Theme.getColor("actionBarDefaultSubmenuBackground"));
        }
        this.buttonTextView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        this.buttonTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(6), Theme.getColor("featuredStickers_addButton"), Theme.getColor("featuredStickers_addButtonPressed")));
        TextView textView = this.button2TextView;
        if (textView != null) {
            textView.setTextColor(Theme.getColor("featuredStickers_addButton"));
            this.button2TextView.setBackground(Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(Theme.getColor("featuredStickers_addButton"), Math.min(255, Color.alpha(Theme.getColor("listSelectorSDK21")) * 2)), 7));
        }
        this.help.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
        this.help.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
        if (getTitleView() != null) {
            getTitleView().setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        }
        setBackgroundColor(Theme.getColor("dialogBackground"));
    }
}
