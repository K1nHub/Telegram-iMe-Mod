package org.telegram.p042ui.Components;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
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
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.BottomSheet;
import org.telegram.p042ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.QRCodeBottomSheet */
/* loaded from: classes6.dex */
public class QRCodeBottomSheet extends BottomSheet {
    private String address;
    private TextView button2TextView;
    private final TextView buttonTextView;
    private final TextView help;
    RLottieImageView iconImage;
    int imageSize;
    private ActionBarMenuItem optionsButton;
    private final RadialProgressView progressView;
    Bitmap qrCode;
    private final ImageView qrImageView;

    public int getCustomQrCenterImageRes() {
        return -1;
    }

    public String getCustomQrCenterImageUrl() {
        return "";
    }

    public int getType() {
        return 0;
    }

    public QRCodeBottomSheet(Context context, String str, String str2, String str3, boolean z) {
        this(context, str, str2, str3, z, UserConfig.selectedAccount);
    }

    public void setupWalletTypeReceive(String str, String str2, String str3) {
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

    public void setLoginToken(String str) {
        String str2;
        ImageView imageView = this.qrImageView;
        Context context = getContext();
        if (str != null) {
            str2 = "tg://login?token=" + str;
        } else {
            str2 = null;
        }
        Bitmap createQR = createQR(context, str2, this.qrCode);
        this.qrCode = createQR;
        imageView.setImageBitmap(createQR);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p042ui.ActionBar.BottomSheet, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isNeedOptionsMenu()) {
            addOptionMenu();
        }
    }

    private boolean isNeedOptionsMenu() {
        return getType() == IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_RECEIVE;
    }

    private void addOptionMenu() {
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(getContext(), null, 0, Theme.getColor(Theme.key_sheet_other));
        this.optionsButton = actionBarMenuItem;
        actionBarMenuItem.setSubMenuOpenSide(2);
        this.optionsButton.setIcon(C3630R.C3632drawable.ic_ab_other);
        this.optionsButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_player_actionBarSelector)));
        this.optionsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QRCodeBottomSheet.this.lambda$addOptionMenu$0(view);
            }
        });
        this.optionsButton.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3630R.string.AccDescrMoreOptions));
        if (getType() == IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_RECEIVE) {
            this.optionsButton.addSubItem(IdFabric$Menu.COPY, C3630R.C3632drawable.msg_copy, LocaleController.getInternalString(C3630R.string.wallet_transaction_details_action_copy_address));
            this.optionsButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda4
                @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
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
            copyAddressToClipboard();
        }
    }

    private void copyAddressToClipboard() {
        ContextExtKt.copyToClipboard(this.address);
    }

    public QRCodeBottomSheet(final Context context, String str, final String str2, String str3, boolean z, int i) {
        super(context, false);
        this.currentAccount = i;
        RadialProgressView radialProgressView = new RadialProgressView(context, this.resourcesProvider);
        this.progressView = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.m102dp(50));
        radialProgressView.setProgressColor(getThemedColor(Theme.key_featuredStickers_addButton));
        radialProgressView.setVisibility(8);
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
                    outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.m102dp(12));
                }
            });
            imageView.setClipToOutline(true);
        }
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, AndroidUtilities.m102dp(16), 0, 0);
        Bitmap createQR = createQR(context, str2, this.qrCode);
        this.qrCode = createQR;
        imageView.setImageBitmap(createQR);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.iconImage = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.iconImage.setBackgroundColor(-1);
        if (!getCustomQrCenterImageUrl().isEmpty()) {
            ImageViewExtKt.loadFrom(this.iconImage, getCustomQrCenterImageUrl(), null, false);
        } else if (getCustomQrCenterImageRes() != -1) {
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
        frameLayout.addView(radialProgressView, LayoutHelper.createFrame(60, 60, 17));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(220, 220, 1, 30, 0, 30, 0));
        TextView textView = new TextView(context);
        this.help = textView;
        textView.setTextSize(1, 14.0f);
        textView.setText(str3);
        textView.setGravity(1);
        this.qrImageView = imageView;
        int type = getType();
        int i2 = IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_RECEIVE;
        if (type == i2 || getType() == IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_BACKUP) {
            textView.setTextSize(1, 17.0f);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
            if (getType() == i2) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        QRCodeBottomSheet.this.lambda$new$2(view);
                    }
                });
            }
        }
        linearLayout.addView(textView, LayoutHelper.createFrame(-1, -2, 0, 40, (getType() == i2 || getType() == IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_BACKUP) ? 16 : 8, 40, 8));
        TextView textView2 = new TextView(context);
        this.buttonTextView = textView2;
        textView2.setPadding(AndroidUtilities.m102dp(34), 0, AndroidUtilities.m102dp(34), 0);
        textView2.setGravity(17);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        if (getType() == IdFabric$CustomType.QR_BOTTOM_SHEET_LOGIN_TOKEN) {
            textView2.setText(LocaleController.getString("Close", C3630R.string.Close));
        } else {
            textView2.setText(LocaleController.getString("ShareQrCode", C3630R.string.ShareQrCode));
        }
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QRCodeBottomSheet.this.lambda$new$3(context, view);
            }
        });
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 80, 16, 15, 16, 3));
        if (z) {
            TextView textView3 = new TextView(context);
            this.button2TextView = textView3;
            textView3.setPadding(AndroidUtilities.m102dp(34), 0, AndroidUtilities.m102dp(34), 0);
            this.button2TextView.setGravity(17);
            this.button2TextView.setTextSize(1, 14.0f);
            this.button2TextView.setText(LocaleController.getString("ShareLink", C3630R.string.ShareLink));
            this.button2TextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.QRCodeBottomSheet$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    QRCodeBottomSheet.lambda$new$4(str2, context, view);
                }
            });
            linearLayout.addView(this.button2TextView, LayoutHelper.createLinear(-1, 48, 80, 16, 3, 16, 16));
        }
        updateColors();
        ScrollView scrollView = new ScrollView(context);
        scrollView.addView(linearLayout);
        setCustomView(scrollView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        copyAddressToClipboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(Context context, View view) {
        if (getType() == IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_BACKUP || getType() == IdFabric$CustomType.QR_BOTTOM_SHEET_LOGIN_TOKEN || this.qrCode == null) {
            dismiss();
            return;
        }
        int type = getType();
        int i = IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_RECEIVE;
        if (type == i) {
            Bitmap bitmap = ((BitmapDrawable) this.iconImage.getDrawable()).getBitmap();
            Canvas canvas = new Canvas(this.qrCode);
            int width = this.qrCode.getWidth();
            int width2 = (this.iconImage.getWidth() * width) / this.qrImageView.getWidth();
            int i2 = (width - width2) / 2;
            int i3 = width2 + i2;
            canvas.drawBitmap(bitmap, (Rect) null, new Rect(i2, i2, i3, i3), (Paint) null);
        }
        Uri bitmapShareUri = AndroidUtilities.getBitmapShareUri(this.qrCode, "qr_tmp.png", Bitmap.CompressFormat.PNG);
        if (bitmapShareUri != null) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", bitmapShareUri);
            if (getType() == i) {
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
    public static /* synthetic */ void lambda$new$4(String str, Context context, View view) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str);
        Intent createChooser = Intent.createChooser(intent, LocaleController.getString("ShareLink", C3630R.string.ShareLink));
        createChooser.setFlags(268435456);
        context.startActivity(createChooser);
    }

    public Bitmap createQR(Context context, String str, Bitmap bitmap) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
            hashMap.put(EncodeHintType.MARGIN, 0);
            QRCodeWriter qRCodeWriter = new QRCodeWriter();
            if (!getCustomQrCenterImageUrl().isEmpty()) {
                qRCodeWriter.setQrImageRes(C3630R.C3632drawable.fork_bg_white_circle);
            } else if (getCustomQrCenterImageRes() != -1) {
                qRCodeWriter.setQrImageRes(getCustomQrCenterImageRes());
            }
            RadialProgressView radialProgressView = this.progressView;
            if (radialProgressView != null) {
                radialProgressView.setVisibility(TextUtils.isEmpty(str) ? 0 : 8);
            }
            RLottieImageView rLottieImageView = this.iconImage;
            if (rLottieImageView != null) {
                rLottieImageView.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            }
            Bitmap encode = qRCodeWriter.encode(str, 768, 768, hashMap, bitmap);
            this.imageSize = qRCodeWriter.getImageSize();
            return encode;
        } catch (Exception e) {
            FileLog.m97e(e);
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
            actionBarMenuItem.setIconColor(Theme.getColor(Theme.key_sheet_other));
            this.optionsButton.setPopupItemsColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem), false);
            this.optionsButton.setPopupItemsColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon), true);
            this.optionsButton.setPopupItemsSelectorColor(Theme.getColor(Theme.key_dialogButtonSelector));
            this.optionsButton.redrawPopup(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
        }
        this.buttonTextView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        TextView textView = this.buttonTextView;
        int m102dp = AndroidUtilities.m102dp(6);
        int i = Theme.key_featuredStickers_addButton;
        textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(m102dp, Theme.getColor(i), Theme.getColor(Theme.key_featuredStickers_addButtonPressed)));
        TextView textView2 = this.button2TextView;
        if (textView2 != null) {
            textView2.setTextColor(Theme.getColor(i));
            this.button2TextView.setBackground(Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(Theme.getColor(i), Math.min(255, Color.alpha(Theme.getColor(Theme.key_listSelector)) * 2)), 7));
        }
        TextView textView3 = this.help;
        int i2 = Theme.key_windowBackgroundWhiteGrayText;
        textView3.setTextColor(Theme.getColor(i2));
        this.help.setTextColor(Theme.getColor(i2));
        if (getTitleView() != null) {
            getTitleView().setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        }
        setBackgroundColor(Theme.getColor(Theme.key_dialogBackground));
    }
}
