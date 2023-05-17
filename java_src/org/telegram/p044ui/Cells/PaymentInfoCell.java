package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.WebFile;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$TL_messageMediaInvoice;
import org.telegram.tgnet.TLRPC$TL_payments_paymentReceipt;
import org.telegram.tgnet.TLRPC$WebDocument;
/* renamed from: org.telegram.ui.Cells.PaymentInfoCell */
/* loaded from: classes5.dex */
public class PaymentInfoCell extends FrameLayout {
    private TextView detailExTextView;
    private TextView detailTextView;
    private BackupImageView imageView;
    private TextView nameTextView;

    public PaymentInfoCell(Context context) {
        super(context);
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.getImageReceiver().setRoundRadius(AndroidUtilities.m54dp(8));
        addView(this.imageView, LayoutHelper.createFrame(100, 100, LocaleController.isRTL ? 5 : 3, 10, 10, 10, 0));
        TextView textView = new TextView(context);
        this.nameTextView = textView;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i));
        this.nameTextView.setTextSize(1, 16.0f);
        this.nameTextView.setLines(1);
        this.nameTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.nameTextView.setMaxLines(1);
        this.nameTextView.setSingleLine(true);
        this.nameTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.nameTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        TextView textView2 = this.nameTextView;
        boolean z = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-1, -2, (z ? 5 : 3) | 48, z ? 10 : 123, 9, z ? 123 : 10, 0));
        TextView textView3 = new TextView(context);
        this.detailTextView = textView3;
        textView3.setTextColor(Theme.getColor(i));
        this.detailTextView.setTextSize(1, 14.0f);
        this.detailTextView.setMaxLines(3);
        this.detailTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.detailTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        TextView textView4 = this.detailTextView;
        boolean z2 = LocaleController.isRTL;
        addView(textView4, LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 48, z2 ? 10 : 123, 33, z2 ? 123 : 10, 0));
        TextView textView5 = new TextView(context);
        this.detailExTextView = textView5;
        textView5.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        this.detailExTextView.setTextSize(1, 14.0f);
        this.detailExTextView.setLines(1);
        this.detailExTextView.setMaxLines(1);
        this.detailExTextView.setSingleLine(true);
        this.detailExTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.detailExTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        TextView textView6 = this.detailExTextView;
        boolean z3 = LocaleController.isRTL;
        addView(textView6, LayoutHelper.createFrame(-1, -2, (z3 ? 5 : 3) | 48, z3 ? 10 : 123, 90, z3 ? 123 : 10, 9));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        if (this.imageView.getVisibility() != 8) {
            i3 = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(120), 1073741824);
        } else {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            measureChildWithMargins(this.detailTextView, i, 0, i2, 0);
            ((FrameLayout.LayoutParams) this.detailExTextView.getLayoutParams()).topMargin = AndroidUtilities.m54dp(33) + this.detailTextView.getMeasuredHeight() + AndroidUtilities.m54dp(3);
            i3 = makeMeasureSpec;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i3);
    }

    public void setInfo(String str, String str2, TLRPC$WebDocument tLRPC$WebDocument, String str3, Object obj) {
        int min;
        this.nameTextView.setText(str);
        this.detailTextView.setText(str2);
        this.detailExTextView.setText(str3);
        if (AndroidUtilities.isTablet()) {
            min = AndroidUtilities.getMinTabletSide();
        } else {
            Point point = AndroidUtilities.displaySize;
            min = Math.min(point.x, point.y);
        }
        float f = 640;
        float m54dp = f / (((int) (min * 0.7f)) - AndroidUtilities.m54dp(2));
        int i = (int) (f / m54dp);
        int i2 = (int) (360 / m54dp);
        if (tLRPC$WebDocument != null && tLRPC$WebDocument.mime_type.startsWith("image/")) {
            TextView textView = this.nameTextView;
            boolean z = LocaleController.isRTL;
            textView.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z ? 5 : 3) | 48, z ? 10 : 123, 9, z ? 123 : 10, 0));
            TextView textView2 = this.detailTextView;
            boolean z2 = LocaleController.isRTL;
            textView2.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 48, z2 ? 10 : 123, 33, z2 ? 123 : 10, 0));
            TextView textView3 = this.detailExTextView;
            boolean z3 = LocaleController.isRTL;
            textView3.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z3 ? 5 : 3) | 48, z3 ? 10 : 123, 90, z3 ? 123 : 10, 0));
            this.imageView.setVisibility(0);
            this.imageView.getImageReceiver().setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(tLRPC$WebDocument)), String.format(Locale.US, "%d_%d", Integer.valueOf(i), Integer.valueOf(i2)), null, null, -1L, null, obj, 1);
            return;
        }
        this.nameTextView.setLayoutParams(LayoutHelper.createFrame(-1, -2, (LocaleController.isRTL ? 5 : 3) | 48, 17, 9, 17, 0));
        this.detailTextView.setLayoutParams(LayoutHelper.createFrame(-1, -2, (LocaleController.isRTL ? 5 : 3) | 48, 17, 33, 17, 0));
        this.detailExTextView.setLayoutParams(LayoutHelper.createFrame(-1, -2, (LocaleController.isRTL ? 5 : 3) | 48, 17, 90, 17, 9));
        this.imageView.setVisibility(8);
    }

    public void setInvoice(TLRPC$TL_messageMediaInvoice tLRPC$TL_messageMediaInvoice, String str) {
        setInfo(tLRPC$TL_messageMediaInvoice.title, tLRPC$TL_messageMediaInvoice.description, tLRPC$TL_messageMediaInvoice.webPhoto, str, tLRPC$TL_messageMediaInvoice);
    }

    public void setReceipt(TLRPC$TL_payments_paymentReceipt tLRPC$TL_payments_paymentReceipt, String str) {
        setInfo(tLRPC$TL_payments_paymentReceipt.title, tLRPC$TL_payments_paymentReceipt.description, tLRPC$TL_payments_paymentReceipt.photo, str, tLRPC$TL_payments_paymentReceipt);
    }
}
